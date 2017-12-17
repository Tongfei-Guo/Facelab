(* Code generation: translate takes a semantically checked AST and
produces LLVM IR

LLVM tutorial: Make sure to read the OCaml version of the tutorial

http://llvm.org/docs/tutorial/index.html

Detailed documentation on the OCaml LLVM library:

http://llvm.moe/
http://llvm.moe/ocaml/

*)

module L = Llvm
module A = Ast
module M = Matrix
module H = Hashtbl
(*open Str*)
module StringMap = Map.Make(String)
type ret_typ = Returnstruct of L.lltype | Lltypearray of L.lltype array | Voidtype of L.lltype | Maintype
type access_link = Access of access_link * (string, L.llvalue) H.t | Null
let translate (functions, main_stmt) =

(* sample code structure 
  1. default value: int:0 ; double:0. ; bool:true ; string:"" ; matrix:[] 
  2. matrix operation:
      for each operation below: matrix dimension must agree
   
      i). matrix number element-wise : matrix op number | number op matrix  (op : + - * / )
      ii). matrix matrix element-wise : matrix op matrix (op : + - * / $)
      iii). matrix product : matrix .* matrix 
      iv). matrix indexing : matrix[x1, y1] | matrix[x1:x2, y1:y2] | matrix[x1:, y1] | matrix[:, y1] | matrix[:, :y2] | etc. basically the syntax of Matlab.
      v). matrix assignment : m1 = m2[x1:x2, y1:y2] | m1[x:, :y] = m2[x1:x2, y1:y2] | etc.
      vi). matrix equality and inequality : m1 == m2 | m1[x1:, :] != m2[x2:x3, y1:y2] | etc. 
  3. built-in functions : 
      i). size : syntax : i, j = size(m), return size of a matrix.
      ii). zeros: syntax : zeros(i, j), return a zero matrix of size i by j.
      iii). int2double : syntax : int2double(i), convert an int to double.
      iv). double2int : syntax : double2int(d), convert a double to int.
      v). save(m_r, m_g, m_b, path) : save image to path.
      vi). m_r, m_g, m_b = load(path) : load image.
      vii). m = face(path) : detect faces in the image at given path, return m is a 4 by n matrix, n is the number of faces, row 1 stores coordinates of the center of faces at which row, row 2 stores coordinates of the center of faces at which col, row 3 stores the height of the faces, row 4 stores the length of faces.
  4. std functions:
  5. error messages:
      i). Compiler error : used for debug purpose, it's very unlikely that user would see any of them.
      ii). Syntax error : followed by a description on the error.
      iii). Semantic error : followed by description on the error. 
func f1(...) { return;}
func f2(matrix m, int i, double d, string s) { return m1, m2, d1, s1;}
matrix m1 = [1.0,2.0;3.0,4.0];
matrix m2;
double d1 =3.4;
string s;
m1[1:,:], m2, d1, s = f2([1.0;3.0], 5, 2.3, "facelab");
*)


(* 1. Auxiliary definitions *)
  let context = L.global_context () in
  let the_module = L.create_module context "Facelab" 
  and double_t = L.double_type context
  and i32_t  = L.i32_type  context 
  and i8_t   = L.i8_type   context in
  let str_t  = L.pointer_type i8_t 
  and i1_t   = L.i1_type   context
  and void_t = L.void_type context in
  let matrix_t = L.named_struct_type context "matrix_t" in
  L.struct_set_body matrix_t [|L.pointer_type double_t; i32_t; i32_t|] false;

(* declare main first, so that some of the global variables can be stored in the stack of main. Its body will be populated in later section *)

  let main_name = "main" in
  let main_define = (* main_define the "the_function" equivalent of main function *)
    let main_formal = [| |] in (* empty array *) 
    let main_type = L.function_type i32_t main_formal in
    L.define_function main_name main_type the_module in 
  let main_builder = ref (*  main_builder the "builder" equivalent of main function *) 
    (L.builder_at_end context (L.entry_block main_define)) in

  let function_decls = H.create (List.length functions + 1000) in 
  
  
  (* AST.expr type to LLVM type conversion *)
  let ltype_of_typ = function
      A.Int -> i32_t
    | A.Double -> double_t
    | A.String -> str_t (* pointer to store string *)
    | A.Bool -> i1_t
    | A.Void -> void_t 
    | A.Matrix -> matrix_t
    | _ -> failwith("Compiler error : ltype_of_typ function matching error.")
  in

  let type_of_lltype typ =
    let ltype_string = L.string_of_lltype typ in
    match ltype_string with
      "void" -> A.Void
    | "i32" ->  A.Int
    | "double" -> A.Double
    | "i1" -> A.Bool
    | "i8*" -> A.String
    | "%matrix_t*" -> A.Matrix
    | _ -> failwith("Compiler error : type_of_lltype function matching error.")
  in
  
  let typ_of_lvalue lv =
    let lltype = L.type_of lv in
    type_of_lltype lltype
  in

  let is_matrix ptr = 
    let ltype_string = L.string_of_lltype (L.type_of ptr) in
    match ltype_string with
      "%matrix_t*" -> true
    | _ -> false
  in
      
(* currently not used 
  (* LLVM value to its corresponding AST.expr Literal type conversion *)
  let lit_of_lvalue lv =
    let ltype = L.type_of lv in
    let ltype_string = L.string_of_lltype ltype in
    let lvalue = L.string_of_llvalue lv in
    let type_len = String.length ltype_string in
    let num_retrieve converter = converter (Str.string_after lvalue (Str.search_forward (Str.regexp "-?[0-9]+\\(\\.[0-9]*e[+-][0-9][0-9]\\)?") lvalue type_len))
    and bool_retrieve converter = converter (Str.string_after lvalue (Str.search_forward (Str.regexp "[a-zA-Z]+") lvalue type_len))
    and str_retrieve converter = let size = 
                                   let beg_ind = Str.search_forward (Str.regexp "[0-9]+") ltype_string 0 in
                                   let end_ind = match_end() in
                                   int_of_string (String.sub ltype_string beg_ind (end_ind-beg_ind))
                                 in
                                 let beg_ind = (Str.search_forward (Str.regexp "\".*\"") lvalue 0)+1 in
                                 converter (String.sub lvalue beg_ind (size-1))
    in
    let string_identity s = s in (* some auxiliary function return a string itself *)
    match ltype_string with
      "i32" ->  IntLit(num_retrieve int_of_string)
    | "double" -> DoubleLit(num_retrieve float_of_string)
    | "i1" -> BoolLit(bool_retrieve bool_of_string)
    | _ -> if Str.string_match (Str.regexp "\\[[0-9]+ x i8\\]*") ltype_string 0 then StringLit(str_retrieve string_identity)
           else if Str.string_match (Str.regexp "\\[[0-9]+ x \\[[0-9]+ x double\\]\\]") ltype_string 0
           then if Str.string_match (Str.regexp "\\[[0-9]+ x \\[[0-9]+ x double\\]\\] zeroinitializer") lvalue 0 then MatrixLit([||], (0,0))
                else let beg_ind = Str.search_forward (Str.regexp "[0-9]+") ltype_string 0 in
                     let end_ind = match_end() in
                     let r = int_of_string (String.sub ltype_string beg_ind (end_ind-beg_ind)) in
                     let beg_ind = Str.search_forward (Str.regexp "[0-9]+") ltype_string end_ind in
                     let end_ind = match_end() in
                     let c = int_of_string (String.sub ltype_string beg_ind (end_ind-beg_ind)) in
                     let mat = String.sub lvalue type_len ((String.length lvalue) - 1 - type_len) in
                     Bytes.set mat 0 ','; Bytes.set mat 1 ' ';
                     let llvm_rows = Array.of_list (Str.split (Str.regexp ", \\[[0-9]+ x double\\] ") mat) in
                     let build_row l llvm_row =
                       let beg_ind = ref 0
                       and end_ind = ref 0 in
                       try for i = 0 to (c-1) do beg_ind := Str.search_forward (Str.regexp "-?[0-9]+\\(\\.[0-9]*e[+-][0-9][0-9]\\)?") llvm_row !end_ind; end_ind := match_end();
                                           l.(i) <- float_of_string (String.sub llvm_row !beg_ind (!end_ind - !beg_ind)) done; l
                       with Not_found -> l
                     in
                     let add_row m llvm_row = Array.append m [|build_row (Array.make c 0.) llvm_row|] in
                     MatrixLit(Array.fold_left add_row [||] llvm_rows, (r,c))
           else Bug
  in
  *)
  
  (* Declare printf(), which the print built-in function will call *)
  let printf_t = L.var_arg_function_type i32_t [| L.pointer_type i8_t |] in
  let printf_func = L.declare_function "printf" printf_t the_module in
 
  (* use to interrupt the function flow and throw run-time exception *)
  let abort_func = L.declare_function "abort" (L.function_type void_t [||]) the_module in

  (* Invoke "f builder" if the current block doesn't already
       have a terminal (e.g., a branch). *)
  let add_terminal builder f =
    match L.block_terminator (L.insertion_block !builder) with (* block terminator is one of the following in a block : ret, br, switch, indirectbr, invoke, unwind, unreachable*)
      Some _ -> () (* Some a ocaml construct matching with a not null set, None match a null set *)
    | None -> ignore (f !builder) 
  in   
  
  (* format strings *)
  let string_format_str = L.build_global_stringptr "%s" "fmt_str" !main_builder in
  let double_format_str = L.build_global_stringptr "%f" "fmt_double" !main_builder in
  let int_format_str = L.build_global_stringptr "%d" "fmt_int" !main_builder in
  let new_line_str = L.build_global_stringptr "\n" "fmt_str" !main_builder in
  let two_space_str = L.build_global_stringptr "  " "fmt_str" !main_builder in
  let empty_str = L.build_global_stringptr "" "fmt_str" !main_builder in
  let true_str = L.build_global_stringptr "true" "fmt_str" !main_builder in
  let false_str = L.build_global_stringptr "false" "fmt_str" !main_builder in
  let mat_dim_err_str = L.build_global_stringptr "Semantic error : wrong dimension of operands of matrix operation." "fmt_str" !main_builder in
  let mat_bound_err_str = L.build_global_stringptr "Semantic error : matrix index out of bounds." "fmt_str" !main_builder in
  let mat_assign_err_str = L.build_global_stringptr "Semantic error : matrix block assignment must have agreeable dimension on both sides." "fmt_str" !main_builder in


  (* following function builds llvm control flow *)
  (* llvm if *)
  let llvm_if function_ptr builder (predicate, then_stmt, else_stmt) =
    let merge_bb = L.append_block context "merge" function_ptr in (* "merge" is something like an entry, so are the rest *)

    let then_bb = L.append_block context "then" function_ptr in
    let then_builder = ref (L.builder_at_end context then_bb) in
    add_terminal (then_stmt then_builder) (L.build_br merge_bb); (* L.build_br syntax : br entry *)

    let else_bb = L.append_block context "else" function_ptr in
    let else_builder = ref (L.builder_at_end context else_bb) in
    add_terminal (else_stmt else_builder) (L.build_br merge_bb);

    let bool_val = predicate builder in
    ignore (L.build_cond_br bool_val then_bb else_bb !builder); (* L.build_cond_br syntax : br bool entry1 entry2 *)
    let merge_builder = ref (L.builder_at_end context merge_bb) in
    builder := !merge_builder; merge_builder
  in
  (* llvm while *)
  let llvm_while function_ptr builder (predicate, body_stmt) = 
    let pred_bb = L.append_block context "while" function_ptr in
    let pred_builder = ref (L.builder_at_end context pred_bb) in
    ignore (L.build_br pred_bb !builder);

    let body_bb = L.append_block context "while_body" function_ptr in
    let body_builder = ref (L.builder_at_end context body_bb) in
    add_terminal (body_stmt body_builder)
    (L.build_br pred_bb);

    let merge_bb = L.append_block context "merge" function_ptr in
    
    let bool_var = predicate pred_builder in
    ignore (L.build_cond_br bool_var body_bb merge_bb !pred_builder);
    let merge_builder = ref (L.builder_at_end context merge_bb) in
    builder := !merge_builder; merge_builder
  in
  (* llvm for *)
  let llvm_for function_ptr builder (init, predicate, update, body_stmt) =
    ignore(init builder);
    let combined_stmt builder = body_stmt builder; update builder in
    llvm_while function_ptr builder (predicate, combined_stmt)
  in
(* matrix auxiliaries *)

  (* access an entries in a matrix *)
  let access mat r c x y builder =
    ignore(r); (* no use but suppress warning *) 
    let index = L.build_add y (L.build_mul c x "tmp" !builder) "index" !builder in
    L.build_gep mat [|index|] "element_ptr" !builder
  in

  (* matrix literal building helper *)
  let build_mat_lit (v, (r,c)) builder= 
    let mat = L.build_array_alloca double_t (L.const_int i32_t (r*c)) "system_mat" !builder in
    (for i = 0 to (r-1) do
      for j = 0 to (c-1) do
        let element_ptr = access mat (L.const_int i32_t r) (L.const_int i32_t c) (L.const_int i32_t i) (L.const_int i32_t j) builder in
        ignore(L.build_store (L.const_float double_t v.(i).(j)) element_ptr !builder)
      done
    done);
    let m = L.build_alloca matrix_t "m" !builder in
    let m_mat = L.build_struct_gep m 0 "m_mat" !builder in
    ignore(L.build_store mat m_mat !builder);
    let m_r = L.build_struct_gep m 1 "m_r" !builder in
    ignore(L.build_store (L.const_int i32_t r) m_r !builder);
    let m_c = L.build_struct_gep m 2 "m_c" !builder in
    ignore(L.build_store (L.const_int i32_t c) m_c !builder); m
  in

  (* create a matrix of size r by c (where r c are llvalues) *)
  let build_mat_init alloc_func array_alloc_func r c function_ptr builder =
    let size = L.build_mul r c "size" !builder in
    let mat = array_alloc_func double_t size "system_mat" !builder in
    let m = alloc_func matrix_t "m" !builder in
    let m_mat = L.build_struct_gep m 0 "m_mat" !builder in
    ignore(L.build_store mat m_mat !builder);
    let m_r = L.build_struct_gep m 1 "m_r" !builder in
    ignore(L.build_store r m_r !builder);
    let m_c = L.build_struct_gep m 2 "m_c" !builder in
    ignore(L.build_store c m_c !builder);
    let r_high = L.build_sub r (L.const_int i32_t 1) "tmp" !builder in
    let c_high = L.build_sub c (L.const_int i32_t 1) "tmp" !builder in
    (*IMPORTANT: initialize to 0, otherwise it will start with some garbage value, and therefore give wrong results.*)
    let i = L.build_alloca i32_t "i" !builder in
    let init_i builder = L.build_store (L.const_int i32_t 0) i !builder in
    let predicate_i builder = L.build_icmp L.Icmp.Sle (L.build_load i "i_v" !builder) r_high "bool_val" !builder in
    let update_i builder = ignore(L.build_store (L.build_add (L.build_load i "i_v" !builder) (L.const_int i32_t 1) "tmp" !builder) i !builder);builder in
    let body_stmt_i builder = 
      let j = L.build_alloca i32_t "j" !builder in
      let init_j builder = L.build_store (L.const_int i32_t 0) j !builder in
      let predicate_j builder = L.build_icmp L.Icmp.Sle (L.build_load j "j_v" !builder) c_high "bool_val" !builder in
      let update_j builder = ignore(L.build_store (L.build_add (L.build_load j "j_v" !builder) (L.const_int i32_t 1) "tmp" !builder) j !builder);builder in
      let body_stmt_j builder = 
        let mat_element_ptr = access mat r c (L.build_load i "i_v" !builder) (L.build_load j "j_v" !builder) builder in
        ignore(L.build_store (L.const_float double_t 0.0) mat_element_ptr !builder) in
      ignore(llvm_for function_ptr builder (init_j, predicate_j, update_j, body_stmt_j)) in
    ignore(llvm_for function_ptr builder (init_i, predicate_i, update_i, body_stmt_i));m
  in
  let stack_build_mat_init r c function_ptr builder =
    build_mat_init L.build_alloca L.build_array_alloca r c function_ptr builder in
  let heap_build_mat_init r c function_ptr builder =
    build_mat_init L.build_malloc L.build_array_malloc r c function_ptr builder in
  
  (* assign an array to an array on the stack *)
  let mat_assign m_mat x_low x_high y_low y_high v_mat v_x_low v_y_low function_ptr builder =
    let mat = L.build_load (L.build_struct_gep m_mat 0 "m_mat" !builder) "mat_mat" !builder in
    let r_mat = L.build_load (L.build_struct_gep m_mat 1 "m_r" !builder) "r_mat" !builder in
    let c_mat = L.build_load (L.build_struct_gep m_mat 2 "m_c" !builder) "c_mat" !builder in
    let v = L.build_load (L.build_struct_gep v_mat 0 "m_mat" !builder) "mat_v" !builder in
    let r_v = L.build_load (L.build_struct_gep v_mat 1 "m_r" !builder) "r_v" !builder  in
    let c_v = L.build_load (L.build_struct_gep v_mat 2 "m_c" !builder) "c_v" !builder in  
    let i = L.build_alloca i32_t "i" !builder in
    let init_i builder = L.build_store x_low i !builder in
    let predicate_i builder = L.build_icmp L.Icmp.Sle (L.build_load i "i_v" !builder) x_high "bool_val" !builder in
    let update_i builder = ignore(L.build_store (L.build_add (L.build_load i "i_v" !builder) (L.const_int i32_t 1) "tmp" !builder) i !builder);builder in
    let body_stmt_i builder = 
      let j = L.build_alloca i32_t "j" !builder in
      let init_j builder = L.build_store y_low j !builder in
      let predicate_j builder = L.build_icmp L.Icmp.Sle (L.build_load j "j_v" !builder) y_high "bool_val" !builder in
      let update_j builder = ignore(L.build_store (L.build_add (L.build_load j "j_v" !builder) (L.const_int i32_t 1) "tmp" !builder) j !builder);builder in
      let body_stmt_j builder = 
        let mat_element_ptr = access mat r_mat c_mat (L.build_load i "i_v" !builder) (L.build_load j "j_v" !builder) builder in
        let v_element_ptr = access v r_v c_v (L.build_add (L.build_sub (L.build_load i "i_v" !builder) x_low "tmp" !builder) v_x_low "tmp" !builder)
                                             (L.build_add (L.build_sub (L.build_load j "j_v" !builder) y_low "tmp" !builder) v_y_low "tmp" !builder) builder in
        let tmp_element = L.build_load v_element_ptr "tmp_element" !builder in
        ignore(L.build_store tmp_element mat_element_ptr !builder) in
      llvm_for function_ptr builder (init_j, predicate_j, update_j, body_stmt_j) in
    llvm_for function_ptr builder (init_i, predicate_i, update_i, body_stmt_i)
  in

  (* print an array *)
  let mat_print m_mat function_ptr builder=
    let mat = L.build_load (L.build_struct_gep m_mat 0 "m_mat" !builder) "mat_mat" !builder in
    let r_mat = L.build_load (L.build_struct_gep m_mat 1 "m_r" !builder) "r_mat" !builder in
    let c_mat = L.build_load (L.build_struct_gep m_mat 2 "m_c" !builder) "c_mat" !builder in
    let r'_mat = L.build_sub r_mat (L.const_int i32_t 1) "tmp" !builder in
    let c'_mat = L.build_sub c_mat (L.const_int i32_t 1) "tmp" !builder in
    let i = L.build_alloca i32_t "i" !builder in
    let init_i builder = L.build_store (L.const_int i32_t 0) i !builder in
    let predicate_i builder = L.build_icmp L.Icmp.Sle (L.build_load i "i_v" !builder) r'_mat "bool_val" !builder in
    let update_i builder = ignore(L.build_store (L.build_add (L.build_load i "i_v" !builder) (L.const_int i32_t 1) "tmp" !builder) i !builder);builder in
    let body_stmt_i builder = 
      let j = L.build_alloca i32_t "j" !builder in
      let init_j builder = L.build_store (L.const_int i32_t 0) j !builder in
      let predicate_j builder = L.build_icmp L.Icmp.Sle (L.build_load j "j_v" !builder) c'_mat "bool_val" !builder in
      let update_j builder = ignore(L.build_store (L.build_add (L.build_load j "j_v" !builder) (L.const_int i32_t 1) "tmp" !builder) j !builder);builder in
      let body_stmt_j builder = 
        let mat_element_ptr = access mat r_mat c_mat (L.build_load i "i_v" !builder) (L.build_load j "j_v" !builder) builder in
        let tmp_element = L.build_load mat_element_ptr "tmp_element" !builder in
        ignore(L.build_call printf_func [| double_format_str ; tmp_element|] "printf" !builder);
        ignore(L.build_call printf_func [| string_format_str ; two_space_str |] "printf" !builder) in
      ignore(llvm_for function_ptr builder (init_j, predicate_j, update_j, body_stmt_j));
      ignore(L.build_call printf_func [| string_format_str ; new_line_str |] "printf" !builder) in
    ignore(llvm_for function_ptr builder (init_i, predicate_i, update_i, body_stmt_i));
    L.build_call printf_func [| string_format_str ; empty_str |] "printf" !builder
  in

  
 (* matrix matrix element wise operation *)
  let mat_mat_element_wise m1_mat m2_mat operator function_ptr builder=
    let m1 = L.build_load (L.build_struct_gep m1_mat 0 "m_mat" !builder) "mat_mat" !builder in
    let r = L.build_load (L.build_struct_gep m1_mat 1 "m_r" !builder) "r_mat" !builder in
    let r_high = L.build_sub r (L.const_int i32_t 1) "tmp" !builder in
    let c = L.build_load (L.build_struct_gep m1_mat 2 "m_c" !builder) "c_mat" !builder in
    let c_high = L.build_sub c (L.const_int i32_t 1) "tmp" !builder in
    let m2 = L.build_load (L.build_struct_gep m2_mat 0 "m_mat" !builder) "mat_v" !builder in
    let result_mat = stack_build_mat_init r c function_ptr builder in
    let result = L.build_load (L.build_struct_gep result_mat 0 "m_mat" !builder) "mat_mat" !builder in
    let i = L.build_alloca i32_t "i" !builder in
    let init_i builder = L.build_store (L.const_int i32_t 0) i !builder in
    let predicate_i builder = L.build_icmp L.Icmp.Sle (L.build_load i "i_v" !builder) r_high "bool_val" !builder in
    let update_i builder = ignore(L.build_store (L.build_add (L.build_load i "i_v" !builder) (L.const_int i32_t 1) "tmp" !builder) i !builder);builder in
    let body_stmt_i builder = 
      let j = L.build_alloca i32_t "j" !builder in
      let init_j builder = L.build_store (L.const_int i32_t 0) j !builder in
      let predicate_j builder = L.build_icmp L.Icmp.Sle (L.build_load j "j_v" !builder) c_high "bool_val" !builder in
      let update_j builder = ignore(L.build_store (L.build_add (L.build_load j "j_v" !builder) (L.const_int i32_t 1) "tmp" !builder) j !builder);builder in
      let body_stmt_j builder = 
        let m1_element_ptr = access m1 r c (L.build_load i "i_v" !builder) (L.build_load j "j_v" !builder) builder in
        let m1_element = L.build_load m1_element_ptr "tmp_element" !builder in
        let m2_element_ptr = access m2 r c (L.build_load i "i_v" !builder) (L.build_load j "j_v" !builder) builder in
        let m2_element = L.build_load m2_element_ptr "tmp_element" !builder in
        let result_element_ptr = access result r c (L.build_load i "i_v" !builder) (L.build_load j "j_v" !builder) builder in
        let tmp_element = operator m1_element m2_element "tmp_element" !builder in
        ignore(L.build_store tmp_element result_element_ptr !builder) in
      ignore(llvm_for function_ptr builder (init_j, predicate_j, update_j, body_stmt_j)) in
    ignore(llvm_for function_ptr builder (init_i, predicate_i, update_i, body_stmt_i)); result_mat
  in

  (*matrix equality *)
  let mat_equal m1_mat m2_mat function_ptr builder=
    let m1 = L.build_load (L.build_struct_gep m1_mat 0 "m_mat" !builder) "mat_mat" !builder in
    let r = L.build_load (L.build_struct_gep m1_mat 1 "m_r" !builder) "r_mat" !builder in
    let r_high = L.build_sub r (L.const_int i32_t 1) "tmp" !builder in
    let c = L.build_load (L.build_struct_gep m1_mat 2 "m_c" !builder) "c_mat" !builder in
    let c_high = L.build_sub c (L.const_int i32_t 1) "tmp" !builder in
    let m2 = L.build_load (L.build_struct_gep m2_mat 0 "m_mat" !builder) "mat_v" !builder in
    let result = L.build_alloca i1_t "result" !builder in
    ignore(L.build_store (L.const_int i1_t 1) result !builder);
    let i = L.build_alloca i32_t "i" !builder in
    let init_i builder = L.build_store (L.const_int i32_t 0) i !builder in
    let predicate_i builder = L.build_icmp L.Icmp.Sle (L.build_load i "i_v" !builder) r_high "bool_val" !builder in
    let update_i builder = ignore(L.build_store (L.build_add (L.build_load i "i_v" !builder) (L.const_int i32_t 1) "tmp" !builder) i !builder);builder in
    let body_stmt_i builder = 
      let j = L.build_alloca i32_t "j" !builder in
      let init_j builder = L.build_store (L.const_int i32_t 0) j !builder in
      let predicate_j builder = L.build_icmp L.Icmp.Sle (L.build_load j "j_v" !builder) c_high "bool_val" !builder in
      let update_j builder = ignore(L.build_store (L.build_add (L.build_load j "j_v" !builder) (L.const_int i32_t 1) "tmp" !builder) j !builder);builder in
      let body_stmt_j builder = 
        let m1_element_ptr = access m1 r c (L.build_load i "i_v" !builder) (L.build_load j "j_v" !builder) builder in
        let m1_element = L.build_load m1_element_ptr "tmp_element" !builder in
        let m2_element_ptr = access m2 r c (L.build_load i "i_v" !builder) (L.build_load j "j_v" !builder) builder in
        let m2_element = L.build_load m2_element_ptr "tmp_element" !builder in
        let predicate builder = L.build_fcmp L.Fcmp.One m1_element m2_element "tmp" !builder in
        let then_stmt builder = ignore(L.build_store (L.const_int i1_t 0) result !builder); builder in
        let else_stmt builder = builder in 
        ignore(llvm_if function_ptr builder (predicate, then_stmt, else_stmt)) in
      ignore(llvm_for function_ptr builder (init_j, predicate_j, update_j, body_stmt_j)) in
    ignore(llvm_for function_ptr builder (init_i, predicate_i, update_i, body_stmt_i));
    L.build_load result "result" !builder
  in

  let mat_not_equal m1_mat m2_mat function_ptr builder=
    let result = L.build_alloca i1_t "result" !builder in
    let tmp = mat_equal m1_mat m2_mat function_ptr builder in
    let predicate builder = L.build_icmp L.Icmp.Ne tmp (L.const_int i1_t 1) "tmp" !builder in
    let then_stmt builder = ignore(L.build_store (L.const_int i1_t 1) result !builder); builder in
    let else_stmt builder = ignore(L.build_store (L.const_int i1_t 0) result !builder); builder in 
    ignore(llvm_if function_ptr builder (predicate, then_stmt, else_stmt));
    L.build_load result "result" !builder
  in

  (* matrix number element wise operation *)
  let mat_num_element_wise m1_mat num operator function_ptr builder=
    let m1 = L.build_load (L.build_struct_gep m1_mat 0 "m_mat" !builder) "mat_mat" !builder in
    let r = L.build_load (L.build_struct_gep m1_mat 1 "m_r" !builder) "r_mat" !builder in
    let r_high = L.build_sub r (L.const_int i32_t 1) "tmp" !builder in
    let c = L.build_load (L.build_struct_gep m1_mat 2 "m_c" !builder) "c_mat" !builder in
    let c_high = L.build_sub c (L.const_int i32_t 1) "tmp" !builder in
    let result_mat = stack_build_mat_init r c function_ptr builder in
    let result = L.build_load (L.build_struct_gep result_mat 0 "m_mat" !builder) "mat_mat" !builder in
    let i = L.build_alloca i32_t "i" !builder in
    let init_i builder = L.build_store (L.const_int i32_t 0) i !builder in
    let predicate_i builder = L.build_icmp L.Icmp.Sle (L.build_load i "i_v" !builder) r_high "bool_val" !builder in
    let update_i builder = ignore(L.build_store (L.build_add (L.build_load i "i_v" !builder) (L.const_int i32_t 1) "tmp" !builder) i !builder);builder in
    let body_stmt_i builder = 
      let j = L.build_alloca i32_t "j" !builder in
      let init_j builder = L.build_store (L.const_int i32_t 0) j !builder in
      let predicate_j builder = L.build_icmp L.Icmp.Sle (L.build_load j "j_v" !builder) c_high "bool_val" !builder in
      let update_j builder = ignore(L.build_store (L.build_add (L.build_load j "j_v" !builder) (L.const_int i32_t 1) "tmp" !builder) j !builder);builder in
      let body_stmt_j builder = 
        let m1_element_ptr = access m1 r c (L.build_load i "i_v" !builder) (L.build_load j "j_v" !builder) builder in
        let m1_element = L.build_load m1_element_ptr "tmp_element" !builder in
        let result_element_ptr = access result r c (L.build_load i "i_v" !builder) (L.build_load j "j_v" !builder) builder in
        let tmp_element = operator m1_element num "tmp_element" !builder in
        ignore(L.build_store tmp_element result_element_ptr !builder) in
      ignore(llvm_for function_ptr builder (init_j, predicate_j, update_j, body_stmt_j)) in
    ignore(llvm_for function_ptr builder (init_i, predicate_i, update_i, body_stmt_i)); result_mat
  in

  
  (*matrix product*)
  let mat_mat_product m1_mat m2_mat function_ptr builder=
    let m1 = L.build_load (L.build_struct_gep m1_mat 0 "m_mat" !builder) "mat_mat" !builder in
    let m2 = L.build_load (L.build_struct_gep m2_mat 0 "m_mat" !builder) "mat_v" !builder in
    let r = L.build_load (L.build_struct_gep m1_mat 1 "m_r" !builder) "r_mat" !builder in
    let r_high = L.build_sub r (L.const_int i32_t 1) "tmp" !builder in
    let c = L.build_load (L.build_struct_gep m2_mat 2 "m_c" !builder) "c_mat" !builder in
    let c_high = L.build_sub c (L.const_int i32_t 1) "tmp" !builder in
    let l = L.build_load (L.build_struct_gep m1_mat 2 "m_l" !builder) "l_mat" !builder in
    let l_high = L.build_sub l (L.const_int i32_t 1) "tmp" !builder in
    let result_mat = stack_build_mat_init r c function_ptr builder in
    let result = L.build_load (L.build_struct_gep result_mat 0 "m_mat" !builder) "mat_mat" !builder in
    let i = L.build_alloca i32_t "i" !builder in
    let init_i builder = L.build_store (L.const_int i32_t 0) i !builder in
    let predicate_i builder = L.build_icmp L.Icmp.Sle (L.build_load i "i_v" !builder) r_high "bool_val" !builder in
    let update_i builder = ignore(L.build_store (L.build_add (L.build_load i "i_v" !builder) (L.const_int i32_t 1) "tmp" !builder) i !builder);builder in
    let body_stmt_i builder = 
      let j = L.build_alloca i32_t "j" !builder in
      let init_j builder = L.build_store (L.const_int i32_t 0) j !builder in
      let predicate_j builder = L.build_icmp L.Icmp.Sle (L.build_load j "j_v" !builder) c_high "bool_val" !builder in
      let update_j builder = ignore(L.build_store (L.build_add (L.build_load j "j_v" !builder) (L.const_int i32_t 1) "tmp" !builder) j !builder);builder in
      let body_stmt_j builder =
        let result_element_ptr = access result r c (L.build_load i "i_v" !builder) (L.build_load j "j_v" !builder) builder in
        let tmp_element = L.build_alloca double_t "tmp_element" !builder in
        ignore(L.build_store (L.const_float double_t 0.0) tmp_element !builder); (*IMPORTANT: initialize to 0, otherwise it will start with some garbage value, and therefore give wrong results.*)
        let k = L.build_alloca i32_t "k" !builder in
        let init_k builder = L.build_store (L.const_int i32_t 0) k !builder in
        let predicate_k builder = L.build_icmp L.Icmp.Sle (L.build_load k "k_v" !builder) l_high "bool_val" !builder in
        let update_k builder = ignore(L.build_store (L.build_add (L.build_load k "k_v" !builder) (L.const_int i32_t 1) "tmp" !builder) k !builder);builder in
        let body_stmt_k builder = 
          let m1_element_ptr = access m1 r l (L.build_load i "i_v" !builder) (L.build_load k "k_v" !builder) builder in
          let m1_element = L.build_load m1_element_ptr "tmp_element" !builder in
          let m2_element_ptr = access m2 l c (L.build_load k "k_v" !builder) (L.build_load j "j_v" !builder) builder in
          let m2_element = L.build_load m2_element_ptr "tmp_element" !builder in
          ignore(L.build_store (L.build_fadd (L.build_fmul m1_element m2_element "tmp" !builder) (L.build_load tmp_element "tmp" !builder) "tmp" !builder) tmp_element !builder) in
        ignore(llvm_for function_ptr builder (init_k, predicate_k, update_k, body_stmt_k));
        ignore(L.build_store (L.build_load tmp_element "tmp" !builder) result_element_ptr !builder) in
      ignore(llvm_for function_ptr builder (init_j, predicate_j, update_j, body_stmt_j)) in
    ignore(llvm_for function_ptr builder (init_i, predicate_i, update_i, body_stmt_i)); result_mat
  in

  (* rgb array to rgb matrix *)
  let to_rgb_matrix mat_arr mat_r mat_g mat_b r c function_ptr builder =
    let m_r = L.build_load (L.build_struct_gep mat_r 0 "mat_r" !builder) "mat_mat" !builder in
    let m_g = L.build_load (L.build_struct_gep mat_g 0 "mat_g" !builder) "mat_mat" !builder in
    let m_b = L.build_load (L.build_struct_gep mat_b 0 "mat_b" !builder) "mat_mat" !builder in
    let r_high = L.build_sub r (L.const_int i32_t 1) "tmp" !builder in
    let c_high = L.build_sub c (L.const_int i32_t 1) "tmp" !builder in
    let counter = L.build_alloca i32_t "counter" !builder in
    ignore(L.build_store (L.const_int i32_t 2) counter !builder);
    let i = L.build_alloca i32_t "i" !builder in
    let init_i builder = L.build_store (L.const_int i32_t 0) i !builder in
    let predicate_i builder = L.build_icmp L.Icmp.Sle (L.build_load i "i_v" !builder) r_high "bool_val" !builder in
    let update_i builder = ignore(L.build_store (L.build_add (L.build_load i "i_v" !builder) (L.const_int i32_t 1) "tmp" !builder) i !builder);builder in
    let body_stmt_i builder = 
      let j = L.build_alloca i32_t "j" !builder in
      let init_j builder = L.build_store (L.const_int i32_t 0) j !builder in
      let predicate_j builder = L.build_icmp L.Icmp.Sle (L.build_load j "j_v" !builder) c_high "bool_val" !builder in
      let update_j builder = ignore(L.build_store (L.build_add (L.build_load j "j_v" !builder) (L.const_int i32_t 1) "tmp" !builder) j !builder);builder in
      let body_stmt_j builder = 
        let m_r_element_ptr = access m_r r c (L.build_load i "i_v" !builder) (L.build_load j "j_v" !builder) builder in
        let m_g_element_ptr = access m_g r c (L.build_load i "i_v" !builder) (L.build_load j "j_v" !builder) builder in
        let m_b_element_ptr = access m_b r c (L.build_load i "i_v" !builder) (L.build_load j "j_v" !builder) builder in
        ignore(L.build_store (L.build_load (L.build_gep mat_arr [|(L.build_load counter "counter" !builder)|] "element_ptr" !builder) "tmp_element" !builder) m_b_element_ptr !builder);
        let tmp = L.build_add (L.build_load counter "counter" !builder) (L.const_int i32_t 1) "tmp" !builder in
        ignore(L.build_store tmp counter !builder);
        ignore(L.build_store (L.build_load (L.build_gep mat_arr [|(L.build_load counter "counter" !builder)|] "element_ptr" !builder) "tmp_element" !builder) m_g_element_ptr !builder);
        let tmp = L.build_add (L.build_load counter "counter" !builder) (L.const_int i32_t 1) "tmp" !builder in
        ignore(L.build_store tmp counter !builder);
        ignore(L.build_store (L.build_load (L.build_gep mat_arr [|(L.build_load counter "counter" !builder)|] "element_ptr" !builder) "tmp_element" !builder) m_r_element_ptr !builder);
        let tmp = L.build_add (L.build_load counter "counter" !builder) (L.const_int i32_t 1) "tmp" !builder in
        ignore(L.build_store tmp counter !builder) in
      ignore(llvm_for function_ptr builder (init_j, predicate_j, update_j, body_stmt_j)) in
    ignore(llvm_for function_ptr builder (init_i, predicate_i, update_i, body_stmt_i))
  in

(* rgb matrix to rgb array *)
  let from_rgb_matrix mat_arr mat_r mat_g mat_b r c function_ptr builder =
    let m_r = L.build_load (L.build_struct_gep mat_r 0 "mat_r" !builder) "mat_mat" !builder in
    let m_g = L.build_load (L.build_struct_gep mat_g 0 "mat_g" !builder) "mat_mat" !builder in
    let m_b = L.build_load (L.build_struct_gep mat_b 0 "mat_b" !builder) "mat_mat" !builder in
    let r_high = L.build_sub r (L.const_int i32_t 1) "tmp" !builder in
    let c_high = L.build_sub c (L.const_int i32_t 1) "tmp" !builder in
    ignore(L.build_store (L.build_sitofp r double_t "tmp" !builder) (L.build_gep mat_arr [|(L.const_int i32_t 0)|] "element_ptr" !builder) !builder);
    ignore(L.build_store (L.build_sitofp c double_t "tmp" !builder)  (L.build_gep mat_arr [|(L.const_int i32_t 1)|] "element_ptr" !builder) !builder);
    let counter = L.build_alloca i32_t "counter" !builder in
    ignore(L.build_store (L.const_int i32_t 2) counter !builder);
    let i = L.build_alloca i32_t "i" !builder in
    let init_i builder = L.build_store (L.const_int i32_t 0) i !builder in
    let predicate_i builder = L.build_icmp L.Icmp.Sle (L.build_load i "i_v" !builder) r_high "bool_val" !builder in
    let update_i builder = ignore(L.build_store (L.build_add (L.build_load i "i_v" !builder) (L.const_int i32_t 1) "tmp" !builder) i !builder);builder in
    let body_stmt_i builder = 
      let j = L.build_alloca i32_t "j" !builder in
      let init_j builder = L.build_store (L.const_int i32_t 0) j !builder in
      let predicate_j builder = L.build_icmp L.Icmp.Sle (L.build_load j "j_v" !builder) c_high "bool_val" !builder in
      let update_j builder = ignore(L.build_store (L.build_add (L.build_load j "j_v" !builder) (L.const_int i32_t 1) "tmp" !builder) j !builder);builder in
      let body_stmt_j builder = 
        let m_r_element_ptr = access m_r r c (L.build_load i "i_v" !builder) (L.build_load j "j_v" !builder) builder in
        let m_g_element_ptr = access m_g r c (L.build_load i "i_v" !builder) (L.build_load j "j_v" !builder) builder in
        let m_b_element_ptr = access m_b r c (L.build_load i "i_v" !builder) (L.build_load j "j_v" !builder) builder in
        ignore(L.build_store (L.build_load m_b_element_ptr "tmp_element" !builder) (L.build_gep mat_arr [|(L.build_load counter "counter" !builder)|] "element_ptr" !builder) !builder);
        let tmp = L.build_add (L.build_load counter "counter" !builder) (L.const_int i32_t 1) "tmp" !builder in
        ignore(L.build_store tmp counter !builder);
        ignore(L.build_store (L.build_load m_g_element_ptr "tmp_element" !builder) (L.build_gep mat_arr [|(L.build_load counter "counter" !builder)|] "element_ptr" !builder) !builder);
        let tmp = L.build_add (L.build_load counter "counter" !builder) (L.const_int i32_t 1) "tmp" !builder in
        ignore(L.build_store tmp counter !builder);
        ignore(L.build_store (L.build_load m_r_element_ptr "tmp_element" !builder) (L.build_gep mat_arr [|(L.build_load counter "counter" !builder)|] "element_ptr" !builder) !builder);
        let tmp = L.build_add (L.build_load counter "counter" !builder) (L.const_int i32_t 1) "tmp" !builder in
        ignore(L.build_store tmp counter !builder) in
      ignore(llvm_for function_ptr builder (init_j, predicate_j, update_j, body_stmt_j)) in
    ignore(llvm_for function_ptr builder (init_i, predicate_i, update_i, body_stmt_i))
  in


  (* face array to face matrix *)
  let face_matrix mat_arr mat num function_ptr builder = 
    let m = L.build_load (L.build_struct_gep mat 0 "mat_r" !builder) "mat_mat" !builder in
    let counter = L.build_alloca i32_t "counter" !builder in
    ignore(L.build_store (L.const_int i32_t 1) counter !builder);
    let num_high = L.build_sub num (L.const_int i32_t 1) "tmp" !builder in
    let i = L.build_alloca i32_t "i" !builder in
    let init_i builder = L.build_store (L.const_int i32_t 0) i !builder in
    let predicate_i builder = L.build_icmp L.Icmp.Sle (L.build_load i "i_v" !builder) num_high "bool_val" !builder in
    let update_i builder = ignore(L.build_store (L.build_add (L.build_load i "i_v" !builder) (L.const_int i32_t 1) "tmp" !builder) i !builder);builder in
    let body_stmt_i builder = 
      let j = L.build_alloca i32_t "j" !builder in
      let init_j builder = L.build_store (L.const_int i32_t 0) j !builder in
      let predicate_j builder = L.build_icmp L.Icmp.Sle (L.build_load j "j_v" !builder) (L.const_int i32_t 3) "bool_val" !builder in
      let update_j builder = ignore(L.build_store (L.build_add (L.build_load j "j_v" !builder) (L.const_int i32_t 1) "tmp" !builder) j !builder);builder in
      let body_stmt_j builder = 
        let m_element_ptr = access m (L.const_int i32_t 4) num (L.build_load i "i_v" !builder) (L.build_load j "j_v" !builder) builder in
        ignore(L.build_store (L.build_load (L.build_gep mat_arr [|(L.build_load counter "counter" !builder)|] "element_ptr" !builder) "tmp_element" !builder) m_element_ptr !builder);
        let tmp = L.build_add (L.build_load counter "counter" !builder) (L.const_int i32_t 1) "tmp" !builder in
        ignore(L.build_store tmp counter !builder) in
      ignore(llvm_for function_ptr builder (init_j, predicate_j, update_j, body_stmt_j)) in
    ignore(llvm_for function_ptr builder (init_i, predicate_i, update_i, body_stmt_i))
  in


(* 2. Statement construction *)
  (* part of code for generating statement, which used both in main function and function definition *)
  let rec build_stmt (fdecl, function_ptr) local_vars builder stmt current_return=

(* Return the value for a variable or formal argument *)
    
    let rec expr builder e=
     (*expr builder e auxiliaries *)
      let return_aux e t = 
        match t with
          A.Matrix ->
            let m = L.build_load (L.build_struct_gep e 0 "m_mat" !builder) "mat_mat" !builder in
            let r = L.build_load (L.build_struct_gep e 1 "m_r" !builder) "r_mat" !builder in
            let c = L.build_load (L.build_struct_gep e 2 "m_c" !builder) "c_mat" !builder in
            let mat = stack_build_mat_init r c function_ptr builder in
            ignore(mat_assign mat (L.const_int i32_t 0) (L.build_sub r (L.const_int i32_t 1) "tmp" !builder)
                                  (L.const_int i32_t 0) (L.build_sub c (L.const_int i32_t 1) "tmp" !builder)
                                  e (L.const_int i32_t 0) (L.const_int i32_t 0) function_ptr builder);
            ignore(L.build_free m !builder); ignore(L.build_free e !builder);mat
        | _ -> e
      in
      let rec lookup n access= 
        match access with
          Access(prev_access, map) ->
            (try (H.find map n, map)
            with Not_found -> lookup n prev_access)
        | Null -> failwith("Semantic error : variable " ^ n ^ " not declared")
      in 
      (* convert A.index type to corresponding integral index in a matrix of size r by c *)
      
      (* for run time dimension check on matrix *)
      let run_time_property_check function_ptr builder err_msg v1 op v2 else_stmt =
        let predicate builder= op v1 v2 "tmp" !builder in
        let then_stmt builder = ignore(L.build_call printf_func [| string_format_str ; err_msg |] "printf" !builder);
                                ignore(L.build_call abort_func [| |] "" !builder); builder in
        llvm_if function_ptr builder (predicate, then_stmt, else_stmt)
      in
      let run_time_dim_check function_ptr builder v1 op v2 else_stmt =
        run_time_property_check function_ptr builder mat_dim_err_str v1 op v2 else_stmt
      in
 
      let index_converter d ind r c builder= 
        match ind with
          A.Beg -> L.const_int i32_t 0
        | A.End -> (match d with
                     "x" -> L.build_sub r (L.const_int i32_t 1) "tmp" !builder
                   | "y" -> L.build_sub c (L.const_int i32_t 1) "tmp" !builder
                   | _ -> failwith ("Compiler error : index_converter wrong dimension symbol. "))
        | A.ExprInd(e) -> let e' = expr builder e in
                          if (L.string_of_lltype (L.type_of e')) <> "i32" then failwith ("Semantic error : matrix index must be integer.");
                          let else_stmt builder = builder in
                          (match d with
                            "x" -> ignore(run_time_property_check function_ptr builder mat_bound_err_str (L.const_int i32_t 0) (L.build_icmp L.Icmp.Sgt) e' else_stmt);
                                   ignore(run_time_property_check function_ptr builder mat_bound_err_str (L.build_sub r (L.const_int i32_t 1) "tmp" !builder) (L.build_icmp L.Icmp.Slt) e' else_stmt);
                          | "y" -> ignore(run_time_property_check function_ptr builder mat_bound_err_str (L.const_int i32_t 0) (L.build_icmp L.Icmp.Sgt) e' else_stmt);
                                   ignore(run_time_property_check function_ptr builder mat_bound_err_str (L.build_sub c (L.const_int i32_t 1) "tmp" !builder) (L.build_icmp L.Icmp.Slt) e' else_stmt);
                          | _ -> failwith ("Compiler error : index_converter wrong dimension symbol. ")); e'
      in
      

      match e with
        A.IntLit i -> L.const_int i32_t i
      | A.DoubleLit d -> L.const_float double_t d
      | A.StringLit s -> L.build_global_stringptr s "system_string" !builder
      | A.BoolLit b -> L.const_int i1_t (if b then 1 else 0)
      | A.MatrixLit (m, (r, c)) -> build_mat_lit (m, (r,c)) builder(* matrix is represented as arrays of arrays of double in LLVM *) 
      | A.Noexpr -> L.const_int i32_t 0
      | A.Noassign -> L.const_int i32_t 0
      | A.Id s ->
          let ptr,_ = lookup s local_vars in
          (match (is_matrix ptr) with
            true -> ptr
          | false -> L.build_load ptr s !builder)
      | A.Binop (e1, op, e2) -> 
          let exp1 = expr builder e1
          and exp2 = expr builder e2 in
          (match (is_matrix exp1, is_matrix exp2) with
            (false, false)-> 
              (let typ1 = L.string_of_lltype (L.type_of exp1) 
              and typ2 = L.string_of_lltype (L.type_of exp2) in
              (match (typ1, typ2) with
                ("i1", "i1") -> (match op with
	                          A.And     -> L.build_and
	                        | A.Or      -> L.build_or
	                        | A.Equal   -> L.build_icmp L.Icmp.Eq
	                        | A.Neq     -> L.build_icmp L.Icmp.Ne
                                | _         -> failwith("Semantic error : wrong operator used on boolean operands.")
                                ) exp1 exp2 "tmp" !builder
              | ("double", "double") | ("i32", "i32") | ("double", "i32") | ("i32", "double") ->
                let build_op_by_type opf opi = 
                  (match (typ1, typ2) with
                    ("double", "double") -> opf
                  | ("i32", "i32") -> opi
                  | ("double", "i32") ->
                      (fun e1 e2 n bdr -> let e2' = L.build_sitofp e2 double_t n bdr in
                                           opf e1 e2' "tmp" bdr)
                  | ("i32", "double") ->
                      (fun e1 e2 n bdr -> let e1' = L.build_sitofp e1 double_t n bdr in
                                           opf e1' e2 "tmp" bdr)
                  | _ -> failwith ("Compiler error : numerical operation matching error at build_op_by_type.") )
                in
                (match op with
                  A.Add     -> build_op_by_type L.build_fadd L.build_add
                | A.Sub     -> build_op_by_type L.build_fsub L.build_sub
                | A.Mult    -> build_op_by_type L.build_fmul L.build_mul
                | A.Div     -> build_op_by_type L.build_fdiv L.build_sdiv
                | A.Rmdr    -> build_op_by_type L.build_frem L.build_srem 
	        | A.Equal   -> build_op_by_type (L.build_fcmp L.Fcmp.Oeq) (L.build_icmp L.Icmp.Eq) 
	        | A.Neq     -> build_op_by_type (L.build_fcmp L.Fcmp.One) (L.build_icmp L.Icmp.Ne) 
	        | A.Less    -> build_op_by_type (L.build_fcmp L.Fcmp.Olt) (L.build_icmp L.Icmp.Slt)  
	        | A.Leq     -> build_op_by_type (L.build_fcmp L.Fcmp.Ole) (L.build_icmp L.Icmp.Sle) 
	        | A.Greater -> build_op_by_type (L.build_fcmp L.Fcmp.Ogt) (L.build_icmp L.Icmp.Sgt) 
	        | A.Geq     -> build_op_by_type (L.build_fcmp L.Fcmp.Oge) (L.build_icmp L.Icmp.Sge) 
                | _ -> failwith ("Semantic error : wrong operator used on numerical operands.")
	        ) exp1 exp2 "tmp" !builder
              | _ -> failwith ("semantic error : invalid numerical operation between type " ^ typ1 ^ " and " ^ typ2)))
          (* matrix operation *)
          | (true, false) | (false, true) -> 
              let operator = 
                (match op with
                  A.Add     -> L.build_fadd 
                | A.Sub     -> L.build_fsub 
                | A.Mult    -> L.build_fmul 
                | A.Div     -> L.build_fdiv
                | _         -> failwith ("Semantic error : wrong operator used on matrix non-matrix operation.")
                )
              in
              (match (is_matrix exp1, is_matrix exp2) with
              | (true, false) -> let typ2 = L.string_of_lltype (L.type_of exp2) in
                                 (match typ2 with
                                   "double" -> mat_num_element_wise exp1 exp2 operator function_ptr builder
                                 | _ -> failwith("Semantic error : invalid numerical operation between type matrix and "^ typ2))
              | (false, true) -> let typ1 = L.string_of_lltype (L.type_of exp1) in
                                 (match typ1 with
                                   "double" -> mat_num_element_wise exp2 exp1 operator function_ptr builder
                                 | _ -> failwith("Semantic error : invalid numerical operation between type " ^ typ1 ^ " and matrix."))
              | _ -> failwith("Compiler error : Binop operator matching error."))
          | (true, true) -> 
              (match op with 
                A.Filter -> expr builder (A.Call("filter",[e1; e2]))
              | A.Matprod -> 
                  let j1 = L.build_load (L.build_struct_gep exp1 2 "m_c" !builder) "c_mat" !builder in 
                  let i2 = L.build_load (L.build_struct_gep exp2 1 "m_r" !builder) "r_mat" !builder in 
                  let else_stmt builder= builder in 
                  ignore(run_time_dim_check function_ptr builder j1 (L.build_icmp L.Icmp.Ne) i2 else_stmt);
                  mat_mat_product exp1 exp2 function_ptr builder
              | _ ->
                  let i1 = L.build_load (L.build_struct_gep exp1 1 "m_r" !builder) "r_mat" !builder in
                  let i2 = L.build_load (L.build_struct_gep exp2 1 "m_r" !builder) "r_mat" !builder in
                  let else_stmt builder = 
                    let j1 = L.build_load (L.build_struct_gep exp1 2 "m_c" !builder) "c_mat" !builder in
                    let j2 = L.build_load (L.build_struct_gep exp2 2 "m_c" !builder) "c_mat" !builder in
                    let else_stmt builder = 
                      builder
                    in
                    run_time_dim_check function_ptr builder j1 (L.build_icmp L.Icmp.Ne) j2 else_stmt
                  in
                  ignore(run_time_dim_check function_ptr builder i1 (L.build_icmp L.Icmp.Ne) i2 else_stmt);
                  (match op with 
                        A.Equal -> mat_equal exp1 exp2 function_ptr builder
                      | A.Neq -> mat_not_equal exp1 exp2 function_ptr builder
                      | A.Add     -> mat_mat_element_wise exp1 exp2 L.build_fadd function_ptr builder 
                      | A.Sub     -> mat_mat_element_wise exp1 exp2 L.build_fsub function_ptr builder  
                      | A.Mult    -> mat_mat_element_wise exp1 exp2 L.build_fmul function_ptr builder  
                      | A.Div     -> mat_mat_element_wise exp1 exp2 L.build_fdiv function_ptr builder 
                      | _         -> failwith ("Semantic error : wrong operator used on matrix operation.")) ))
      | A.Unop(op, e) ->
	  let e' = expr builder e in
          let typ = L.string_of_lltype (L.type_of e') in
	  (match op with
	    A.Neg -> 
              (match typ with
                "i32" -> L.build_neg
              | "double" -> L.build_fneg
              | _ -> failwith ("Semantic error : wrong operands for unary negation operator."))
          | A.Not when typ = "i1"-> L.build_not 
          | _ -> failwith ("Semantic error : illegal unary operation.") )e' "tmp" !builder
      | A.Assign (e1, e2) -> 
          let single_assign e1 value = 
            (match e1 with
              A.Id s -> 
                let ptr,map = lookup s local_vars in
                (match (is_matrix ptr) with
                  true -> 
                    if (L.string_of_lltype (L.type_of value) <> "%matrix_t*") 
                    then failwith("Semantic error : matrix must be assigned to a matrix.");
                    let r = L.build_load (L.build_struct_gep value 1 "m_r" !builder) "r_mat" !builder in
                    let c = L.build_load (L.build_struct_gep value 2 "m_c" !builder) "c_mat" !builder in 
                    let m = stack_build_mat_init r c function_ptr builder in
                    H.replace map s m; 
                    ignore(mat_assign m (L.const_int i32_t 0) (L.build_sub r (L.const_int i32_t 1) "tmp" !builder) 
                                   (L.const_int i32_t 0) (L.build_sub c (L.const_int i32_t 1) "tmp" !builder) 
                                   value (L.const_int i32_t 0) (L.const_int i32_t 0) function_ptr builder); value
                | false -> 
                    let typ1 = L.string_of_lltype (L.type_of (L.build_load ptr "tmp" !builder)) in
                    let typ2 = L.string_of_lltype (L.type_of value) in
                    if (typ1 <> typ2) then failwith ("Semantic error : type "^typ1^" is assigned with type " ^typ2);
                    ignore(L.build_store value ptr !builder); value)
            | A.Index (s, (A.Range(x_low, x_high), A.Range(y_low, y_high))) ->
                let ptr,_ = lookup s local_vars in
                let r = L.build_load (L.build_struct_gep ptr 1 "m_r" !builder) "r_mat" !builder in
                let c = L.build_load (L.build_struct_gep ptr 2 "m_c" !builder) "c_mat" !builder in
                let x_l = index_converter "x" x_low r c builder in
                let x_h = index_converter "x" x_high r c builder in
                let y_l = index_converter "y" y_low r c builder in
                let y_h = index_converter "y" y_high r c builder in              
                if ((x_low = x_high) && (y_low = y_high))
                then (
                  if (L.string_of_lltype (L.type_of value)) <> "double" then failwith ("Syntax error : single matrix entry must be assigned with a double");
                  let mat = L.build_load (L.build_struct_gep ptr 0 "mat" !builder) "mat" !builder in
                  L.build_store value (access mat r c x_l y_l builder) !builder) 
                else (
                  let i1 = L.build_add (L.build_sub x_h x_l "tmp" !builder) (L.const_int i32_t 1) "tmp" !builder in
                  let i2 = L.build_load (L.build_struct_gep value 1 "m_r" !builder) "r_mat" !builder in
                  ignore(run_time_property_check function_ptr builder mat_assign_err_str i1 (L.build_icmp L.Icmp.Ne) i2 (fun builder -> builder));
                  let j1 = L.build_add (L.build_sub y_h y_l "tmp" !builder) (L.const_int i32_t 1) "tmp" !builder in
                  let j2 = L.build_load (L.build_struct_gep value 2 "m_r" !builder) "r_mat" !builder in
                  ignore(run_time_property_check function_ptr builder mat_assign_err_str j1 (L.build_icmp L.Icmp.Ne) j2 (fun builder -> builder));
                  ignore(mat_assign ptr x_l x_h y_l y_h value (L.const_int i32_t 0) (L.const_int i32_t 0) function_ptr builder); value)
            | _ -> failwith ("Semantic error : only variable and matrix indexing can be assigned to."))             
          in
          let value = expr builder e2 in
          (match e1 with
            A.Comma s_list -> 
             (match e2 with 
               A.Call(f,_) ->
                 let (_, fdecl) = H.find function_decls f in
                 let l = match fdecl.A.typ with A.Mulret li -> li | _ -> failwith("Compiler error : Assign expr at A.Call return type is not Mulret") in
                 let l1 = List.length s_list in
                 let l2 = List.length l in
                 if (l1 <> l2) then failwith("Semantic error : "^string_of_int(l1)^" variables are assigned to function call "^f^" which returns "^string_of_int(l2)^" variables.");
                 (for i = 0 to ((List.length l) - 1) do
                   let v = L.build_load (L.build_struct_gep value i "v_ptr" !builder) "v" !builder in
                   ignore (single_assign (List.nth s_list i) (return_aux v (List.nth l i)))
                 done);
                 ignore(L.build_free value !builder);
             | _ -> failwith("Syntax error: multiple variables must be assigned with a function call that has multiple return values.") ); value
          | _ -> single_assign e1 value
          )
               
      | A.Index (s, (A.Range(x_low, x_high), A.Range(y_low, y_high))) ->
          let ptr, _ = lookup s local_vars in
          let r = L.build_load (L.build_struct_gep ptr 1 "m_r" !builder) "r_mat" !builder in
          let c = L.build_load (L.build_struct_gep ptr 2 "m_c" !builder) "c_mat" !builder in
          let x_l = index_converter "x" x_low r c builder in
          let x_h = index_converter "x" x_high r c builder in
          let y_l = index_converter "y" y_low r c builder in
          let y_h = index_converter "y" y_high r c builder in
          if ((x_low = x_high) && (y_low = y_high))
          then (
            let mat = L.build_load (L.build_struct_gep ptr 0 "mat" !builder) "mat" !builder in
            L.build_load (access mat r c x_l y_l builder) "element" !builder) 
          else (
            let x_size = L.build_sub x_h x_l "tmp" !builder in
            let y_size = L.build_sub y_h y_l "tmp" !builder in
            let m = stack_build_mat_init (L.build_add x_size (L.const_int i32_t 1) "tmp" !builder)
                                         (L.build_add y_size (L.const_int i32_t 1) "tmp" !builder) function_ptr builder in
            ignore(mat_assign m (L.const_int i32_t 0) x_size (L.const_int i32_t 0) y_size ptr x_l y_l function_ptr builder); m)
      (*| A.Index (s, (Range(x_low, x_high), Range(y_low, y_high))) ->
          let (t,ptr) = lookup s in
          let A.Sizedmat(r, c) = t in
          ptr*)
      | A.Call ("printf", [e]) -> 
          let exp1 = expr builder e in 
          (match (typ_of_lvalue exp1) with
            A.Double -> L.build_call printf_func [| double_format_str ; (exp1) |] "printf" !builder
          | A.Int -> L.build_call printf_func [| int_format_str ; (exp1) |] "printf" !builder
          | A.Bool ->
              let predicate builder = L.build_icmp L.Icmp.Ne (L.const_int i1_t 1) exp1 "tmp" !builder in
              let then_stmt builder = ignore(L.build_call printf_func [| string_format_str ; false_str |] "printf" !builder); builder in
              let else_stmt builder = ignore(L.build_call printf_func [| string_format_str ; true_str |] "printf" !builder); builder in 
              ignore(llvm_if function_ptr builder (predicate, then_stmt, else_stmt));
              L.build_call printf_func [| string_format_str ; empty_str |] "printf" !builder
          | A.Matrix -> mat_print exp1 function_ptr builder
          | A.String -> L.build_call printf_func [| string_format_str ; (exp1) |] "printf" !builder
          | _ -> failwith("Compiler error : unknown type expr passed to printf.")
          )
      | A.Call ("printend", []) -> 
          L.build_call printf_func [| string_format_str ; new_line_str |] "printf" !builder
      | A.Call (f, act) ->
         let (fdef, fdecl) = 
           match !current_return with 
             Maintype | Returnstruct(_) ->
               (try H.find function_decls f with Not_found -> failwith ("Semantic error : function "^f^" not defined."))
           | _ -> H.find function_decls f
         in
         let actuals = List.rev (List.map (expr builder) (List.rev act)) in
         if (List.length actuals) <> (List.length fdecl.A.formals) 
         then failwith("Semantic error : expecting " ^ string_of_int (List.length fdecl.A.formals) ^ " arguments in function call "^f);
         List.iter2 (fun (t, _) actual -> if typ_of_lvalue(actual) <> t 
                                          then failwith ("Semantic error : wrong type of arguments in function call "^f)) fdecl.A.formals actuals;
         let result = 
           (match fdecl.A.typ with 
             A.Void -> ""
           | _ -> f ^ "_result") 
         in
         let exp = L.build_call fdef (Array.of_list actuals) result !builder in(* corresponding to call void @foo(i32 2, i32 1) *)
         
         (match fdecl.A.typ with
           A.Void -> exp
         | A.Mulret l -> 
             (match (List.length l) with
               1 -> let v = L.build_load (L.build_struct_gep exp 0 "v_ptr" !builder) "v" !builder in
                    ignore(L.build_free exp !builder); 
                    return_aux v (List.hd l)
             | _ -> exp)(* multi return case, can only be used in A.Assign, and we will deal with it there. *)  (* there is a memory leak here due to possible multi-return funciton call without assignment, haven't got time to tie up *)
         | _ -> failwith ("Compiler error : Call expr function return type neither Void nor Mulret.")) 
      | A.Comma(_) -> failwith("Syntax error : Wrong usage of comma seperated list.") 
      | _ -> failwith("Syntax error : Wrong usage of matrix indexing, possible standalone indexing expressions.")
    in

    match stmt with
    (* Build the code for the given statement; return the builder for
       the statement's successor *)
      A.Block sl -> 
        let local_vars = Access(local_vars, H.create 1000) in
        let build_st st = ignore (build_stmt (fdecl, function_ptr) local_vars builder st current_return) in
        List.iter build_st sl; builder
    | A.Expr e -> ignore (expr builder e); builder
    | A.Return e ->
  (* Since we are infering return type from e, we need to consider if a funciton is recursive, and thus when we build the function return in its body, its return type has not yet been inferred, and its definition is not seen, so it cannot call itself because it cannot find itself in function_decls, but the thing is that recursive function always has a base case (i.e. a return whose return value is not recursing on itself, and that we can infer on, so we just need to find that return, and use its type as our return type *)
        (let eval_return e=
          let e' = expr builder e in
          match (is_matrix e') with
            true -> (* alloca space in heap to temporarily store the matrix struct, otherwise the matrix struct is stored in the stack of the function that is returning, so after return, the stack would be cleared, and we might have the matrix just storing garbage information. *)
              let r = L.build_load (L.build_struct_gep e' 1 "m_r" !builder) "r_mat" !builder in
              let c = L.build_load (L.build_struct_gep e' 2 "m_c" !builder) "c_mat" !builder in
              let mat = heap_build_mat_init r c function_ptr builder in
              ignore(mat_assign mat (L.const_int i32_t 0) (L.build_sub r (L.const_int i32_t 1) "tmp" !builder)
                                    (L.const_int i32_t 0) (L.build_sub c (L.const_int i32_t 1) "tmp" !builder)
                                    e' (L.const_int i32_t 0) (L.const_int i32_t 0) function_ptr builder);mat
          | false -> e'
        in
        let build_return l t= 
          let build_return_struct l return=
            for i = 0 to ((List.length l)-1) do
              let e = List.nth l i in
              let e' = eval_return e in
              ignore(L.build_store e' (L.build_struct_gep return i ("return"^string_of_int(i)) !builder) !builder);
            done
          in
          let return = L.build_malloc t "return" !builder in
          (*L.build_store (L.const_int i32_t (List.length l)) (L.build_struct_gep return 0 "return_size" !builder) !builder;*)
          build_return_struct l return;
          ignore(L.build_ret return !builder)
        in
        match !current_return with
          Maintype -> ignore(L.build_ret (L.const_int i32_t 0) !builder)
        | Returnstruct t -> (* this is used to build actual function body *)
            (match e with
              A.Noexpr -> ignore(L.build_ret_void !builder)
            | A.Comma l-> build_return l t; 
            | _ -> let l = [e] in build_return l t); 
        | Lltypearray ltyp_arr->  (* this is used for return type inference *) 
            (match e with 
              A.Noexpr -> current_return := Voidtype(void_t)
            | A.Comma l -> 
              (match ltyp_arr with
                [||] -> current_return := Lltypearray(Array.make (List.length l) void_t)
              | _ -> ());
              let ltyp_arr = match !current_return with Lltypearray l -> l | _ -> failwith("Compiler error : Lltypearray wrong matching.") in
              for i = 0 to ((List.length l)-1) do
                try let e'= expr builder (List.nth l i) in
                  ltyp_arr.(i) <- L.type_of e';
                with Not_found -> ()
              done
            | _ -> 
              (match ltyp_arr with
                [||] -> current_return := Lltypearray([|void_t|])
              | _ -> ());
              let ltyp_arr = match !current_return with Lltypearray l -> l | _ -> failwith("Compiler error : Lltypearray wrong matching.") in
              try let e'= expr builder e in
                ltyp_arr.(0) <- L.type_of e';
              with Not_found -> ())
        | Voidtype(_) -> ()
        );builder
    | A.If (predicate, then_stmt, else_stmt) -> 
      let cond = expr builder predicate in
      if ((L.string_of_lltype (L.type_of cond)) <> "i1") then failwith ("Semantic error : predicate of if clause is not boolean.");
      let pred builder = expr builder predicate in
      let then_st builder = build_stmt (fdecl, function_ptr) local_vars builder then_stmt current_return in
      let else_st builder = build_stmt(fdecl, function_ptr) local_vars builder else_stmt current_return in
      ignore(llvm_if function_ptr builder (pred, then_st, else_st)); builder
         
    | A.While (predicate, body) ->
      let cond = expr builder predicate in
      if ((L.string_of_lltype (L.type_of cond)) <> "i1") then failwith ("Semantic error : predicate of while loop is not boolean.");
      let pred builder = expr builder predicate in
      let body_st builder = build_stmt (fdecl, function_ptr) local_vars builder body current_return in
      ignore(llvm_while function_ptr builder (pred, body_st)); builder

    | A.For (e1, e2, e3, body) -> 
      let cond = expr builder e2 in
      if ((L.string_of_lltype (L.type_of cond)) <> "i1") then failwith ("Semantic error : predicate of for loop is not boolean.");
      let init_st builder = expr builder e1 in
      let pred builder = expr builder e2 in
      let update builder = ignore(expr builder e3); builder in
      let body_st builder = build_stmt (fdecl, function_ptr) local_vars builder body current_return in
      ignore(llvm_for function_ptr builder (init_st, pred, update, body_st)); builder
    | A.Local (t, n, v) -> let map = match local_vars with Access(_, map) -> map | Null -> failwith("Compiler error : local access link error") in
                           (match t with
                             A.Matrix ->
                               (match v with
                                 A.Noassign -> let local = stack_build_mat_init (L.const_int i32_t 0) (L.const_int i32_t 0) function_ptr builder in
                                               H.add map n local;
                               | _-> let v' = expr builder v in
                                     if ((L.string_of_lltype (L.type_of v')) <> "%matrix_t*") then failwith ("Semantic error : Right hand side of the matrix definition of "^n^" is not a matrix expression");
                                     let r = L.build_load (L.build_struct_gep v' 1 "m_r" !builder) "r_mat" !builder in
                                     let c = L.build_load (L.build_struct_gep v' 2 "m_c" !builder) "c_mat" !builder in
                                     let local = stack_build_mat_init r c function_ptr builder in
                                     ignore(mat_assign local (L.const_int i32_t 0) (L.build_sub r (L.const_int i32_t 1) "tmp" !builder)
                                                  (L.const_int i32_t 0) (L.build_sub c (L.const_int i32_t 1) "tmp" !builder)
                                                  v' (L.const_int i32_t 0) (L.const_int i32_t 0) function_ptr builder);
                                     H.add map n local)
                           | _ -> 
                               let local = L.build_alloca (ltype_of_typ t) n !builder in 
                               H.add map n local;
                               let init_v =
                                 (match v with
                                   A.Noassign ->
                                     (match t with
                                       A.Int -> L.const_int i32_t 0
                                     | A.Double -> L.const_float double_t 0.
                                     | A.String -> L.build_global_stringptr "" "system_string" !builder (*empty string*)
                                     | A.Bool -> L.const_int i1_t 0
                                     | _ -> failwith ("Compiler error : local variable type matching error."))
                                 | _ -> expr builder v)
                               in
                               let typ = L.string_of_lltype (L.type_of (L.build_load local "tmp" !builder)) in
                               if ((L.string_of_lltype (L.type_of init_v)) <> typ) then failwith ("Semantic error : Right hand side of the definition of "^n^" is not type " ^ typ);
                               ignore(L.build_store init_v local !builder)
                           );builder
  in



(* 3. User-defined function *)
  (* Fill in the body of the given function *)
  let build_function_body fdecl =
    let current_return = ref (Lltypearray([||])) in (* will be used to stored the lltype of last return expression encountered in a function body*)
    let formal_types = 
      let f(t,_) =
        match t with
          A.Matrix -> L.pointer_type matrix_t
        | _ -> ltype_of_typ t
      in
      Array.of_list (List.map f fdecl.A.formals) in
     (* User-defined function body construction *)
    let body_building function_ptr = 
      let builder = ref (L.builder_at_end context (L.entry_block function_ptr)) in
      (* imagine entry_block returns a block (i.e. {block} ), and builder_at_end enables adding instructions at the end of the block??*)
      (* Construct the function's "locals": formal arguments and locally
       declared variables.  Allocate each on the stack, initialize their
       value, if appropriate, and remember their values in the "locals" map *)
      let local_vars =
        let add_formal m (t, n) p =  (* L.set_value_name n p; *)(* p is a value not a ptr? *) (*!! set_value_name returns () *)  
          match t with
            A.Matrix -> 
              let r = L.build_load (L.build_struct_gep p 1 "m_r" !builder) "r_mat" !builder in
              let c = L.build_load (L.build_struct_gep p 2 "m_c" !builder) "c_mat" !builder in
              let local = stack_build_mat_init r c function_ptr builder in
              ignore(mat_assign local (L.const_int i32_t 0) (L.build_sub r (L.const_int i32_t 1) "tmp" !builder)
                               (L.const_int i32_t 0) (L.build_sub c (L.const_int i32_t 1) "tmp" !builder)
                               p (L.const_int i32_t 0) (L.const_int i32_t 0) function_ptr builder);
              H.add m n local;m
          | _ -> 
            let local = L.build_alloca (ltype_of_typ t) n !builder in
            ignore (L.build_store p local !builder);
            H.add m n local;m(* local is a ptr? *)
        in
        let func_local_access = Access(Null, H.create (1000 + List.length fdecl.A.formals)) in
        let map = match func_local_access with Access(_, map) -> map | Null -> failwith("Compiler error : function local access link error") in
        ignore(List.fold_left2 add_formal map fdecl.A.formals (Array.to_list (L.params function_ptr))); func_local_access
      in
      (* Build the code for each statement in the function *)
      builder := !(build_stmt (fdecl, function_ptr) local_vars builder (A.Block fdecl.A.body) current_return); 
      match !current_return with
        Returnstruct t ->
          add_terminal builder (match fdecl.A.typ with  
            A.Void -> L.build_ret_void
          | _ -> L.build_ret (L.build_alloca t "tmp" !builder))
      | _ -> () (* this is when doing type inference, the system function is going to be deleted anyway, so we don't care if all its blocks have ret or not *) 
    in
    (* temporary function to go through code once, so that we can do return type inference *)
    let system_function = L.define_function "system_function" (L.function_type void_t formal_types) the_module in
    body_building system_function;
    (* find return type from current_return *)
    let return_t = L.named_struct_type context "return_t" in
    (match !current_return with
      Voidtype(_) -> current_return := Returnstruct (void_t); ignore(fdecl.A.typ <- A.Void)
    | Lltypearray ltyp_arr -> L.struct_set_body return_t ltyp_arr false; current_return := Returnstruct (return_t); 
                              let f m t = (type_of_lltype t)::m in
                              ignore(fdecl.A.typ <- A.Mulret (List.rev (Array.fold_left f [] ltyp_arr)))
    | Returnstruct(_) -> failwith ("Compiler error : type inference bug")
    | Maintype -> failwith ("Compiler error : type inference bug") );
    (* User-defined function declarations *)
    let name = fdecl.A.fname in
    let return_type = 
      let ret = match !current_return with Returnstruct t -> t | _-> failwith ("Compiler error : type inference bug") in
      match (L.string_of_lltype ret) with
        "void" -> void_t
      | _ -> L.pointer_type ret
    in
    let ftype = L.function_type return_type formal_types in
    let function_decl = L.define_function name ftype the_module in
    H.add function_decls name (function_decl, fdecl); 
    body_building function_decl;
    L.delete_function system_function (*for some unknown reason, it seems that deleting this auxiliary function would trigger stack protector and segment fault, so we have to let it be *)
  in


(* 4. Main function body construction *)

  (* build main function *)
  let build_main main_body =
    let current_return = ref Maintype in


 (* continue with building main function *)
    let main_fdecl = {
      A.typ = A.Int;
      A.fname = main_name;
      A.formals = [];
      A.body = main_body;
      } in
      
    
    let local_vars = Access(Null, H.create 1000) in
    main_builder := !(build_stmt (main_fdecl, main_define) local_vars main_builder (A.Block main_fdecl.A.body) current_return);
    (* Add a return if the last block falls off the end *)

    add_terminal main_builder (L.build_ret (L.const_int i32_t 0)) in


(* 5. Combine all *)
 
 (* built-in functions *)
  let built_in_body_building f body= 
    let (fdef, _) = H.find function_decls f in
    body fdef
  in

 (* i. size() *)
(* define size(), which return matrix size *)
  let size_func_decl = 
    { A.typ = A.Mulret([A.Int; A.Int]);
      A.fname = "size";
      A.formals = [(A.Matrix, "mat")];
      A.body = [] }
  in
  let matrix_size_t = L.named_struct_type context "matrix_size_t" in
  L.struct_set_body matrix_size_t [|i32_t; i32_t|] false;
  let size_func = 
    L.define_function "size" (L.function_type (L.pointer_type matrix_size_t) [| L.pointer_type matrix_t |]) the_module
  in
  H.add function_decls "size" (size_func, size_func_decl);
   (* size function body *)
  let size_func_body function_ptr =
    let builder = ref (L.builder_at_end context (L.entry_block function_ptr)) in
    let return = L.build_malloc matrix_size_t "return" !builder in
    let p = List.hd (Array.to_list (L.params function_ptr)) in
    let r = L.build_load (L.build_struct_gep p 1 "m_r" !builder) "r_mat" !builder in
    ignore(L.build_store r (L.build_struct_gep return 0 "row_size" !builder) !builder);
    let c = L.build_load (L.build_struct_gep p 2 "m_c" !builder) "c_mat" !builder in
    ignore(L.build_store c (L.build_struct_gep return 1 "col_size" !builder) !builder);
    ignore(L.build_ret return !builder)
  in
  built_in_body_building "size" size_func_body;

 (* ii. zeros(i,j) *)
(* define zeros(i,j), which return a zero matrix *)
  let zero_matrix_func_decl = 
    { A.typ = A.Mulret([A.Matrix]);
      A.fname = "zeros";
      A.formals = [(A.Int, "i"); (A.Int, "j")];
      A.body = [] }
  in
  let zero_matrix_t = L.named_struct_type context "zero_matrix_t" in
  L.struct_set_body zero_matrix_t [| L.pointer_type matrix_t |] false;
  let zero_matrix_func = 
    L.define_function "zeros" (L.function_type (L.pointer_type zero_matrix_t) [| i32_t; i32_t |]) the_module
  in
  H.add function_decls "zeros" (zero_matrix_func, zero_matrix_func_decl);
   (* zeros function body *)
  let zero_matrix_func_body function_ptr =
    let builder = ref (L.builder_at_end context (L.entry_block function_ptr)) in
    let return = L.build_malloc zero_matrix_t "return" !builder in
    let i = List.hd (Array.to_list (L.params function_ptr)) in
    let j = List.hd (List.tl (Array.to_list (L.params function_ptr))) in
    let m = heap_build_mat_init i j function_ptr builder in
    ignore(L.build_store m (L.build_struct_gep return 0 "m" !builder) !builder);
    ignore(L.build_ret return !builder)
  in
  built_in_body_building "zeros" zero_matrix_func_body;

  (*iii. int2double(i) *)
 let int_to_double_func_decl = 
    { A.typ = A.Mulret([A.Double]);
      A.fname = "int2double";
      A.formals = [(A.Int, "i")];
      A.body = [] }
  in
  let int_to_double_t = L.named_struct_type context "int_to_double_t" in
  L.struct_set_body int_to_double_t [| double_t |] false;
  let int_to_double_func = 
    L.define_function "int2double" (L.function_type (L.pointer_type int_to_double_t) [| i32_t |]) the_module
  in
  H.add function_decls "int2double" (int_to_double_func, int_to_double_func_decl);
   (* int2double function body *)
  let int_to_double_func_body function_ptr =
    let builder = ref (L.builder_at_end context (L.entry_block function_ptr)) in
    let return = L.build_malloc int_to_double_t "return" !builder in
    let i = List.hd (Array.to_list (L.params function_ptr)) in
    let d = L.build_sitofp i double_t "tmp" !builder in
    ignore(L.build_store d (L.build_struct_gep return 0 "converted_double" !builder) !builder);
    ignore(L.build_ret return !builder)
  in
  built_in_body_building "int2double" int_to_double_func_body;

(*iv. double2int(d) *)
 let double_to_int_func_decl = 
    { A.typ = A.Mulret([A.Int]);
      A.fname = "double2int";
      A.formals = [(A.Double, "d")];
      A.body = [] }
  in
  let double_to_int_t = L.named_struct_type context "double_to_int_t" in
  L.struct_set_body double_to_int_t [| i32_t |] false;
  let double_to_int_func = 
    L.define_function "double2int" (L.function_type (L.pointer_type double_to_int_t) [| double_t |]) the_module
  in
  H.add function_decls "double2int" (double_to_int_func, double_to_int_func_decl);
   (* double2int function body *)
  let double_to_int_func_body function_ptr =
    let builder = ref (L.builder_at_end context (L.entry_block function_ptr)) in
    let return = L.build_malloc double_to_int_t "return" !builder in
    let d = List.hd (Array.to_list (L.params function_ptr)) in
    let i = L.build_fptosi d i32_t "tmp" !builder in
    ignore(L.build_store i (L.build_struct_gep return 0 "converted_int" !builder) !builder);
    ignore(L.build_ret return !builder)
  in
  built_in_body_building "double2int" double_to_int_func_body;

 (*v. load(filename) *)
  let load_cpp_t = L.function_type (L.pointer_type double_t) [| str_t |] in
  let load_cpp_func = L.declare_function "load_cpp" load_cpp_t the_module in
  let load_func_decl = 
    { A.typ = A.Mulret([A.Matrix; A.Matrix; A.Matrix]);
      A.fname = "load";
      A.formals = [(A.String, "filename")];
      A.body = [] }
  in
  let load_t = L.named_struct_type context "load_t" in
  L.struct_set_body load_t [| L.pointer_type matrix_t ; L.pointer_type matrix_t ; L.pointer_type matrix_t |] false;
  let load_func = 
    L.define_function "load" (L.function_type (L.pointer_type load_t) [| str_t |]) the_module
  in
  H.add function_decls "load" (load_func, load_func_decl);
  let load_func_body function_ptr =
    let builder = ref (L.builder_at_end context (L.entry_block function_ptr)) in
    let return = L.build_malloc load_t "return" !builder in
    let path = List.hd (Array.to_list (L.params function_ptr)) in
    let mat_arr = L.build_call load_cpp_func [| path |] "mat_arr" !builder in
    let i = L.build_fptosi (L.build_load (L.build_gep mat_arr [|L.const_int i32_t 0|] "element_ptr" !builder) "tmp" !builder) i32_t "tmp" !builder in
    let j = L.build_fptosi (L.build_load (L.build_gep mat_arr [|L.const_int i32_t 1|] "element_ptr" !builder) "tmp" !builder) i32_t "tmp" !builder in 
    let return_mat_r = heap_build_mat_init i j function_ptr builder in
    let return_mat_g = heap_build_mat_init i j function_ptr builder in
    let return_mat_b = heap_build_mat_init i j function_ptr builder in
    to_rgb_matrix mat_arr return_mat_r return_mat_g return_mat_b i j function_ptr builder;
    ignore(L.build_store return_mat_r (L.build_struct_gep return 0 "mat_r" !builder) !builder);
    ignore(L.build_store return_mat_g (L.build_struct_gep return 1 "mat_r" !builder) !builder);
    ignore(L.build_store return_mat_b (L.build_struct_gep return 2 "mat_r" !builder) !builder);
    ignore(L.build_ret return !builder)
  in
  built_in_body_building "load" load_func_body;

(*vi. save(mat_r, mat_g, mat_b, filename) *)
  let save_cpp_t = L.function_type void_t [| L.pointer_type double_t; str_t |] in
  let save_cpp_func = L.declare_function "save_cpp" save_cpp_t the_module in
  let save_func_decl = 
    { A.typ = A.Void;
      A.fname = "save";
      A.formals = [(A.Matrix, "r");(A.Matrix, "g");(A.Matrix, "b");(A.String, "filename")];
      A.body = [] }
  in
  let save_func = 
    L.define_function "save" (L.function_type void_t [| L.pointer_type matrix_t; L.pointer_type matrix_t; L.pointer_type matrix_t; str_t |]) the_module
  in
  H.add function_decls "save" (save_func, save_func_decl);
  let save_func_body function_ptr =
    let builder = ref (L.builder_at_end context (L.entry_block function_ptr)) in
    let act = Array.to_list (L.params function_ptr) in
    let m_r = List.nth act 0 in
    let m_g = List.nth act 1 in 
    let m_b = List.nth act 2 in 
    let path = List.nth act 3 in 
    let i = L.build_load (L.build_struct_gep m_r 1 "m_r" !builder) "r_mat" !builder in
    let j = L.build_load (L.build_struct_gep m_r 2 "m_c" !builder) "c_mat" !builder in
    let size = L.build_add (L.build_mul (L.build_mul i j "tmp" !builder) (L.const_int i32_t 3) "tmp" !builder) (L.const_int i32_t 2) "tmp" !builder in
    let return_arr = L.build_array_malloc double_t size "return_arr" !builder in 
    from_rgb_matrix return_arr m_r m_g m_b i j function_ptr builder;
    ignore(L.build_call save_cpp_func [| return_arr; path |] "" !builder);
    ignore(L.build_ret_void !builder)
  in
  built_in_body_building "save" save_func_body;


(*vii. face(filename) *)
  let faceDetect_t = L.function_type (L.pointer_type double_t) [| str_t |] in
  let faceDetect_func = L.declare_function "faceDetect" faceDetect_t the_module in
  let face_func_decl = 
    { A.typ = A.Mulret([A.Matrix]);
      A.fname = "face";
      A.formals = [(A.String, "filename")];
      A.body = [] }
  in
  let face_t = L.named_struct_type context "face_t" in
  L.struct_set_body face_t [| L.pointer_type matrix_t|] false;
  let face_func = 
    L.define_function "face" (L.function_type (L.pointer_type face_t) [| str_t |]) the_module
  in
  H.add function_decls "face" (face_func, face_func_decl);
  let face_func_body function_ptr =
    let builder = ref (L.builder_at_end context (L.entry_block function_ptr)) in
    let return = L.build_malloc face_t "return" !builder in
    let path = List.hd (Array.to_list (L.params function_ptr)) in
    let mat_arr = L.build_call faceDetect_func [| path |] "mat_arr" !builder in
    let num = L.build_fptosi (L.build_load (L.build_gep mat_arr [|L.const_int i32_t 0|] "element_ptr" !builder) "tmp" !builder) i32_t "tmp" !builder in
    let return_mat_r = heap_build_mat_init (L.const_int i32_t 4) num function_ptr builder in
    face_matrix mat_arr return_mat_r  num function_ptr builder;
    ignore(L.build_store return_mat_r (L.build_struct_gep return 0 "mat_r" !builder) !builder);
    ignore(L.build_ret return !builder)
  in
  built_in_body_building "face" face_func_body;

  List.iter build_function_body functions; build_main main_stmt;
  the_module 
