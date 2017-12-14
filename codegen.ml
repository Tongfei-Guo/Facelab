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
open Str
module StringMap = Map.Make(String)
type ret_typ = Returnstruct of L.lltype | Lltypearray of L.lltype array | Voidtype of L.lltype | Maintype
type access_link = Access of access_link * (string, L.llvalue) H.t | Null
(* globals cannot have string, otherwise the string assignment would fail due to some global pointer assignment complication, and we force globals to be either uninitilized or initialized with literals *)
let translate (globals, functions, main_stmt) =

(* sample code structure *)
(* 1. default value: int:0 ; double:0. ; bool:true ; string:"" ; matrix:[] *)
(* 2. matrix operation:
      for each operation below: matrix dimension must agree
   
      i). matrix number element-wise : matrix op number | number op matrix  (op : + - * / )
      ii). matrix product : matrix .* matrix 
      iii). matrix indexing : matrix[x1, y1] | matrix[x1:x2, y1:y2] | matrix[x1:, y1] | matrix[:, y1] | matrix[:, :y2] | etc. basically the syntax of Matlab.
      iv). matrix assignment : m1 = m2[x1:x2, y1:y2] | m1[x:, :y] = m2[x1:x2, y1:y2] | etc.
      v). matrix equality and inequality : m1 == m2 | m1[x1:, :] != m2[x2:x3, y1:y2] | etc. 

global int g1 = 2;
global double g2; //default value 0.

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
  let the_module = L.create_module context "MicroC" 
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

  let function_decls = H.create (List.length functions) in 
  
  
  
  (* AST.expr type to LLVM type conversion *)
  let ltype_of_typ = function
      A.Int -> i32_t
    | A.Double -> double_t
    | A.String -> str_t (* pointer to store string *)
    | A.Bool -> i1_t
    | A.Void -> void_t 
    | A.Matrix -> matrix_t
  in

  let type_of_lltype typ =
    let ltype_string = L.string_of_lltype typ in
    match ltype_string with
    | "void" -> A.Void
    | "i32" ->  A.Int
    | "double" -> A.Double
    | "i1" -> A.Bool
    | "i8*" -> A.String
    | "%matrix_t*" -> A.Matrix
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
      llvm_for function_ptr builder (init_j, predicate_j, update_j, body_stmt_j) in
    llvm_for function_ptr builder (init_i, predicate_i, update_i, body_stmt_i);m
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
      llvm_for function_ptr builder (init_j, predicate_j, update_j, body_stmt_j);
      ignore(L.build_call printf_func [| string_format_str ; new_line_str |] "printf" !builder) in
    llvm_for function_ptr builder (init_i, predicate_i, update_i, body_stmt_i);
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
      llvm_for function_ptr builder (init_j, predicate_j, update_j, body_stmt_j) in
    llvm_for function_ptr builder (init_i, predicate_i, update_i, body_stmt_i); result_mat
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
        llvm_if function_ptr builder (predicate, then_stmt, else_stmt) in
      llvm_for function_ptr builder (init_j, predicate_j, update_j, body_stmt_j) in
    llvm_for function_ptr builder (init_i, predicate_i, update_i, body_stmt_i);
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
      llvm_for function_ptr builder (init_j, predicate_j, update_j, body_stmt_j) in
    llvm_for function_ptr builder (init_i, predicate_i, update_i, body_stmt_i); result_mat
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
        llvm_for function_ptr builder (init_k, predicate_k, update_k, body_stmt_k);
        ignore(L.build_store (L.build_load tmp_element "tmp" !builder) result_element_ptr !builder) in
      llvm_for function_ptr builder (init_j, predicate_j, update_j, body_stmt_j) in
    llvm_for function_ptr builder (init_i, predicate_i, update_i, body_stmt_i); result_mat
  in



(* 2. global variable declarations *)
  let global_vars =
    let global_var m (t, n, v) =
      (match t with
        A.Matrix ->
          (match v with
            A.Noassign -> let global = stack_build_mat_init (L.const_int i32_t 0) (L.const_int i32_t 0) main_define main_builder in
                          H.add m n global;m
          | A.MatrixLit (mat,(r,c))-> 
                let global = build_mat_lit (mat, (r,c)) main_builder in
                H.add m n global;m)
      | _ -> 
          let global = L.build_alloca (ltype_of_typ t) n !main_builder in 
          H.add m n global;
          let init_v =
            (match v with
              A.Noassign ->
                (match t with
                  A.Int -> L.const_int i32_t 0
                | A.Double -> L.const_float double_t 0.
                | A.String -> L.build_global_stringptr "" "system_string" !main_builder (*empty string*)
                | A.Bool -> L.const_int i1_t 0)
            | A.IntLit i -> L.const_int i32_t i
            | A.DoubleLit d -> L.const_float double_t d
            | A.StringLit s -> L.build_global_stringptr "" "system_string" !main_builder (*empty string*)
            | A.BoolLit b -> L.const_int i1_t (if b then 1 else 0))
          in
          ignore(L.build_store init_v global !main_builder);m
      )
    in
    let global_access = Access(Null, H.create (List.length globals)) in
    let map = match global_access with Access(_, map) -> map | Null -> failwith("global access link error") in
    ignore(List.fold_left global_var map globals); global_access
  in





(* 3. Statement construction *)
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
        | Null -> failwith("variable " ^ n ^ " not declared")
      in 
      (* convert A.index type to corresponding integral index in a matrix of size r by c *)
      let index_converter d ind r c builder= 
        match ind with
          A.Beg -> L.const_int i32_t 0
        | A.End -> (match d with
                     "x" -> L.build_sub r (L.const_int i32_t 1) "tmp" !builder
                   | "y" -> L.build_sub c (L.const_int i32_t 1) "tmp" !builder)
        | A.ExprInd(e) -> expr builder e
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
          let ptr,map = lookup s local_vars in
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
              let build_op_by_type opf opi = (match (typ1, typ2) with
                  ("double", "double") -> opf
                | ("i32", "i32") -> opi
                | ("double", "i32") ->
                    (fun e1 e2 n bdr -> let e2' = L.build_sitofp e2 double_t n bdr in
                                         opf e1 e2' "tmp" bdr)
                | ("i32", "double") ->
                    (fun e1 e2 n bdr -> let e1' = L.build_sitofp e1 double_t n bdr in
                                         opf e1' e2 "tmp" bdr)
                | _ -> raise (Failure "not a valid type") ) 
              in
              (match op with
                A.Add     -> build_op_by_type L.build_fadd L.build_add
              | A.Sub     -> build_op_by_type L.build_fsub L.build_sub
              | A.Mult    -> build_op_by_type L.build_fmul L.build_mul
              | A.Div     -> build_op_by_type L.build_fdiv L.build_sdiv
              | A.Rmdr    -> L.build_srem
	      | A.And     -> L.build_and
	      | A.Or      -> L.build_or
	      | A.Equal   -> L.build_icmp L.Icmp.Eq
	      | A.Neq     -> L.build_icmp L.Icmp.Ne
	      | A.Less    -> L.build_icmp L.Icmp.Slt
	      | A.Leq     -> L.build_icmp L.Icmp.Sle
	      | A.Greater -> L.build_icmp L.Icmp.Sgt
	      | A.Geq     -> L.build_icmp L.Icmp.Sge
	      ) exp1 exp2 "tmp" !builder)
          |_ -> (* matrix operation *)
            (match op with
              A.Matprod -> mat_mat_product exp1 exp2 function_ptr builder
            | A.Equal -> mat_equal exp1 exp2 function_ptr builder
            | A.Neq -> mat_not_equal exp1 exp2 function_ptr builder
            | _ ->
                let operator = 
                  (match op with
                    A.Add     -> L.build_fadd 
                  | A.Sub     -> L.build_fsub 
                  | A.Mult    -> L.build_fmul 
                  | A.Div     -> L.build_fdiv
                  )
                in
                (match (is_matrix exp1, is_matrix exp2) with
                  (true, true) -> mat_mat_element_wise exp1 exp2 operator function_ptr builder
                | (true, false) -> mat_num_element_wise exp1 exp2 operator function_ptr builder
                | (false, true) -> mat_num_element_wise exp2 exp1 operator function_ptr builder)))
      | A.Unop(op, e) ->
	  let e' = expr builder e in
	  (match op with
	    A.Neg     -> L.build_neg
          | A.Not     -> L.build_not) e' "tmp" !builder
      | A.Assign (e1, e2) -> 
          let single_assign e1 value = 
            (match e1 with
              A.Id s -> 
                let ptr,map = lookup s local_vars in
                (match (is_matrix ptr) with
                  true -> 
                    let r = L.build_load (L.build_struct_gep value 1 "m_r" !builder) "r_mat" !builder in
                    let c = L.build_load (L.build_struct_gep value 2 "m_c" !builder) "c_mat" !builder in 
                    let m = stack_build_mat_init r c function_ptr builder in
                    H.replace map s m; 
                    mat_assign m (L.const_int i32_t 0) (L.build_sub r (L.const_int i32_t 1) "tmp" !builder) 
                                   (L.const_int i32_t 0) (L.build_sub c (L.const_int i32_t 1) "tmp" !builder) 
                                   value (L.const_int i32_t 0) (L.const_int i32_t 0) function_ptr builder; value
                | false -> ignore(L.build_store value ptr !builder); value)
            | A.Index (s, (Range(x_low, x_high), Range(y_low, y_high))) ->
                let ptr,map = lookup s local_vars in
                let r = L.build_load (L.build_struct_gep ptr 1 "m_r" !builder) "r_mat" !builder in
                let c = L.build_load (L.build_struct_gep ptr 2 "m_c" !builder) "c_mat" !builder in
                let x_l = index_converter "x" x_low r c builder in
                let x_h = index_converter "x" x_high r c builder in
                let y_l = index_converter "y" y_low r c builder in
                let y_h = index_converter "y" y_high r c builder in              
                mat_assign ptr x_l x_h y_l y_h value (L.const_int i32_t 0) (L.const_int i32_t 0) function_ptr builder; value)
          in
          let value = expr builder e2 in
          (match e1 with
            A.Comma s_list -> 
             (match e2 with 
               A.Call(f,act) ->
                 let (fdef, fdecl) = H.find function_decls f in
                 let l = match fdecl.A.typ with A.Mulret li -> li in
                   (for i = 0 to ((List.length l) - 1) do
                     let v = L.build_load (L.build_struct_gep value i "v_ptr" !builder) "v" !builder in
                     ignore (single_assign (List.nth s_list i) (return_aux v (List.nth l i)))
                   done);
                   ignore(L.build_free value !builder);
             | _ -> failwith("Multiple variables must be assigned with a function call that has multiple return values.") ); value
          | _ -> single_assign e1 value
          )
               
      | A.Index (s, (Range(x_low, x_high), Range(y_low, y_high))) ->
          let ptr, map = lookup s local_vars in
          let r = L.build_load (L.build_struct_gep ptr 1 "m_r" !builder) "r_mat" !builder in
          let c = L.build_load (L.build_struct_gep ptr 2 "m_c" !builder) "c_mat" !builder in
          let x_l = index_converter "x" x_low r c builder in
          let x_h = index_converter "x" x_high r c builder in
          let y_l = index_converter "y" y_low r c builder in
          let y_h = index_converter "y" y_high r c builder in
          let x_size = L.build_sub x_h x_l "tmp" !builder in
          let y_size = L.build_sub y_h y_l "tmp" !builder in
          let m = stack_build_mat_init (L.build_add x_size (L.const_int i32_t 1) "tmp" !builder)
                                 (L.build_add y_size (L.const_int i32_t 1) "tmp" !builder) function_ptr builder in
          mat_assign m (L.const_int i32_t 0) x_size (L.const_int i32_t 0) y_size ptr x_l y_l function_ptr builder; m
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
          )
      | A.Call ("printend", []) -> 
          L.build_call printf_func [| string_format_str ; new_line_str |] "printf" !builder
      | A.Call (f, act) ->
         let (fdef, fdecl) = H.find function_decls f in
         let actuals = List.rev (List.map (expr builder) (List.rev act)) in
         let result = 
           (match fdecl.A.typ with 
             A.Void -> ""
           | _ -> f ^ "_result") 
         in
         let exp = L.build_call fdef (Array.of_list actuals) result !builder in(* corresponding to call void @foo(i32 2, i32 1) *)
         
         (match fdecl.A.typ with
           A.Void -> exp
         | A.Mulret l -> 
             match (List.length l) with
               1 -> let v = L.build_load (L.build_struct_gep exp 0 "v_ptr" !builder) "v" !builder in
                    ignore(L.build_free exp !builder); 
                    return_aux v (List.hd l)
             | _ -> exp) (* multi return case, can only be used in A.Assign, and we will deal with it there. *)  
      | A.Comma l -> failwith("Syntax error at comma separated list") 
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
              let ltyp_arr = match !current_return with Lltypearray l -> l in
              for i = 0 to ((List.length l)-1) do
                try let e'= expr builder (List.nth l i) in
                  ltyp_arr.(i) <- L.type_of e';
                with Not_found -> ()
              done
            | _ -> 
              (match ltyp_arr with
                [||] -> current_return := Lltypearray([|void_t|])
              | _ -> ());
              let ltyp_arr = match !current_return with Lltypearray l -> l in
              try let e'= expr builder e in
                ltyp_arr.(0) <- L.type_of e';
              with Not_found -> ())
        | Voidtype t -> ()
        );builder
    | A.If (predicate, then_stmt, else_stmt) -> 
      let pred builder = expr builder predicate in
      let then_st builder = build_stmt (fdecl, function_ptr) local_vars builder then_stmt current_return in
      let else_st builder = build_stmt(fdecl, function_ptr) local_vars builder else_stmt current_return in
      llvm_if function_ptr builder (pred, then_st, else_st); builder
         
    | A.While (predicate, body) ->
      let pred builder = expr builder predicate in
      let body_st builder = build_stmt (fdecl, function_ptr) local_vars builder body current_return in
      llvm_while function_ptr builder (pred, body_st); builder

    | A.For (e1, e2, e3, body) -> 
      let init_st builder = expr builder e1 in
      let pred builder = expr builder e2 in
      let update builder = ignore(expr builder e3); builder in
      let body_st builder = build_stmt (fdecl, function_ptr) local_vars builder body current_return in
      llvm_for function_ptr builder (init_st, pred, update, body_st); builder
    | A.Local (t, n, v) -> let map = match local_vars with Access(_, map) -> map | Null -> failwith("local access link error") in
                           (match t with
                             A.Matrix ->
                               (match v with
                                 A.Noassign -> let local = stack_build_mat_init (L.const_int i32_t 0) (L.const_int i32_t 0) function_ptr builder in
                                               H.add map n local;
                               | _-> let v' = expr builder v in
                                     let r = L.build_load (L.build_struct_gep v' 1 "m_r" !builder) "r_mat" !builder in
                                     let c = L.build_load (L.build_struct_gep v' 2 "m_c" !builder) "c_mat" !builder in
                                     let local = stack_build_mat_init r c function_ptr builder in
                                     mat_assign local (L.const_int i32_t 0) (L.build_sub r (L.const_int i32_t 1) "tmp" !builder)
                                                  (L.const_int i32_t 0) (L.build_sub c (L.const_int i32_t 1) "tmp" !builder)
                                                  v' (L.const_int i32_t 0) (L.const_int i32_t 0) function_ptr builder;
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
                                     | A.Bool -> L.const_int i1_t 0)
                                 | _ -> expr builder v)
                               in
                               ignore(L.build_store init_v local !builder)
                           );builder
  in



(* 4. User-defined function *)
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
              mat_assign local (L.const_int i32_t 0) (L.build_sub r (L.const_int i32_t 1) "tmp" !builder)
                               (L.const_int i32_t 0) (L.build_sub c (L.const_int i32_t 1) "tmp" !builder)
                               p (L.const_int i32_t 0) (L.const_int i32_t 0) function_ptr builder;
              H.add m n local;m
          | _ -> 
            let local = L.build_alloca (ltype_of_typ t) n !builder in
            ignore (L.build_store p local !builder);
            H.add m n local;m(* local is a ptr? *)
        in
        let func_local_access = Access(global_vars, H.create (1000 + List.length fdecl.A.formals)) in
        let map = match func_local_access with Access(_, map) -> map | Null -> failwith("function local access link error") in
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
      Voidtype t -> current_return := Returnstruct (void_t); ignore(fdecl.A.typ <- A.Void)
    | Lltypearray ltyp_arr -> L.struct_set_body return_t ltyp_arr false; current_return := Returnstruct (return_t); 
                              let f m t = (type_of_lltype t)::m in
                              ignore(fdecl.A.typ <- A.Mulret (List.rev (Array.fold_left f [] ltyp_arr)))
    | Returnstruct t -> failwith ("type inference bug")
    | Maintype -> failwith ("type inference bug") );
    (* User-defined function declarations *)
    let name = fdecl.A.fname in
    let return_type = 
      let ret = match !current_return with Returnstruct t -> t | _-> failwith "type inference bug" in
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


(* 5. Main function body construction *)

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
      
    
    let local_vars = Access(global_vars, H.create 1000) in
    main_builder := !(build_stmt (main_fdecl, main_define) local_vars main_builder (A.Block main_fdecl.A.body) current_return);
    (* Add a return if the last block falls off the end *)

    add_terminal main_builder (L.build_ret (L.const_int i32_t 0)) in


(* 6. Combine all *)
 
(* define size(), which return matrix size *)
  let size_func_decl = 
    { A.typ = Mulret([A.Int; A.Int]);
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

 (* built-in functions *)
  let built_in_body_building f body= 
    let (fdef, fdecl) = H.find function_decls f in
    body fdef
  in
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

  List.iter build_function_body functions; build_main main_stmt;
  the_module 
