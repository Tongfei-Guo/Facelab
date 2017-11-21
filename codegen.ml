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
(* globals cannot have string, otherwise the string assignment would fail due to some global pointer assignment complication, and we force globals to be either uninitilized or initialized with literals *)
let translate (globals, functions, main_stmt) =

(* sample code structure *)
(* 1. default value: int:0 ; double:0. ; bool:true ; string:"" ; matrix:[] *)
(*
global int g1 = 2;
global double g2; //default value 0.

func f1(...) { return;}
func f2(...) { return;}

int l1 = 4;
string l2; //default value empty string.
printf(l1);
printf(l2);

*)


(* 1. Auxiliary definitions *)
  let context = L.global_context () in
  let the_module = L.create_module context "MicroC" 
  and double_t = L.double_type context
  and i32_t  = L.i32_type  context 
  and i8_t   = L.i8_type   context in
  let str_t  = L.pointer_type i8_t 
  and i1_t   = L.i1_type   context
  and void_t = L.void_type context
  and noassign_t  = L.i16_type context (* this type corresponding to A.Noassign reserved for this use only *)
  in

(* declare main first, so that some of the global variables can be stored in the stack of main. Its body will be populated in later section *)

  let main_name = "main" in
  let main_define = (* main_define the "the_function" equivalent of main function *)
    let main_formal = [| |] in (* empty array *) 
    let main_type = L.function_type i32_t main_formal in
    L.define_function main_name main_type the_module in 
  let main_builder = (*  main_builder the "builder" equivalent of main function *) 
    L.builder_at_end context (L.entry_block main_define) in


  (* AST.expr type to LLVM type conversion *)
  let ltype_of_typ = function
      A.Int -> i32_t
    | A.Double -> double_t
    | A.String -> str_t (* pointer to store string *)
    | A.Bool -> i1_t
    | A.Void -> void_t 
  in

  let typ_of_lvalue lv =
    let ltype = L.type_of lv in
    let ltype_string = L.string_of_lltype ltype in
    let lvalue = L.string_of_llvalue lv in
    let type_len = String.length ltype_string in
    match ltype_string with
      "i32" ->  A.Int
    | "double" -> A.Double
    | "i1" -> A.Bool
    | "i16"-> A.Noassign
    | "i8*" -> A.String
    | _ -> try 
             let beg_ind = Str.search_forward (Str.regexp "alloca") lvalue 0 in
             let end_ind = match_end() in
             let beg_ind = Str.search_forward (Str.regexp "[0-9]+") lvalue end_ind in
             let end_ind = match_end() in
             let c = int_of_string (String.sub lvalue beg_ind (end_ind-beg_ind)) in
             let beg_ind = Str.search_forward (Str.regexp "[0-9]+") lvalue end_ind in
             let end_ind = match_end() in
             let beg_ind = Str.search_forward (Str.regexp "[0-9]+") lvalue end_ind in
             let end_ind = match_end() in
             let r = int_of_string (String.sub lvalue beg_ind (end_ind-beg_ind)) in
             A.Sizedmat(r, c)
           with Not_found -> A.Bug
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
    match L.block_terminator (L.insertion_block builder) with (* block terminator is one of the following in a block : ret, br, switch, indirectbr, invoke, unwind, unreachable*)
      Some _ -> () (* Some a ocaml construct matching with a not null set, None match a null set *)
    | None -> ignore (f builder) 
  in   
  
  (* format strings *)
  let string_format_str = L.build_global_stringptr "%s" "fmt_str" main_builder in
  let double_format_str = L.build_global_stringptr "%f" "fmt_double" main_builder in
  let int_format_str = L.build_global_stringptr "%d" "fmt_int" main_builder in
  let new_line_str = L.build_global_stringptr "\n" "fmt_int" main_builder in
  let two_space_str = L.build_global_stringptr "  " "fmt_int" main_builder in
  let empty_str = L.build_global_stringptr "" "fmt_int" main_builder in

  (* matrix auxiliaries *)
  (* matrix literal building helper *)
  let build_mat_lit (m, (r,c)) builder= 
    let mat = L.build_array_alloca (L.array_type double_t c) (L.const_int i32_t r) "system_mat" builder in
    (for i = 0 to (r-1) do
      for j = 0 to (c-1) do
        let element_ptr = L.build_gep mat [|L.const_int i32_t i; L.const_int i32_t j|] "element_ptr" builder in
        ignore(L.build_store (L.const_float double_t m.(i).(j)) element_ptr builder)
      done
    done); mat
  in

  (* assign a const_array to an array on the stack *)
  let mat_assign mat x_low x_high y_low y_high v builder= 
    match (x_low <= x_high) && (y_low <= y_high) with
      true ->
        for i = x_low to x_high do
          for j = y_low to y_high do
            let mat_element_ptr = L.build_gep mat [|L.const_int i32_t i; L.const_int i32_t j|] "mat_ptr_element" builder in
            let v_element_ptr = L.build_gep v [|L.const_int i32_t (i-x_low); L.const_int i32_t (j-y_low)|] "v_element_ptr" builder in
            let tmp_element = L.build_load v_element_ptr "tmp_element" builder in
            ignore(L.build_store tmp_element mat_element_ptr builder)
          done
        done
    | false -> ()
  in 
  (* print a const_array *)
  let mat_print mat r c builder=
    (for i = 0 to (r-1) do
      (for j = 0 to (c-1) do
        let mat_element_ptr = L.build_gep mat [|L.const_int i32_t i; L.const_int i32_t j|] "mat_element_ptr" builder in
        let tmp_element = L.build_load mat_element_ptr "tmp_element" builder in
        ignore(L.build_call printf_func [| double_format_str ; tmp_element|] "printf" builder);
        ignore(L.build_call printf_func [| string_format_str ; two_space_str |] "printf" builder)
      done);
      ignore(L.build_call printf_func [| string_format_str ; new_line_str |] "printf" builder)
    done);L.build_call printf_func [| string_format_str ; empty_str |] "printf" builder
  in
  (* convert A.index type to corresponding integral index in a matrix of size r by c *)
  let index_converter d ind r c= 
    match ind with
      A.Beg -> 0
    | A.End -> (match d with
                 "x" -> r-1
               | "y" -> c-1)
    | A.IntInd(i) -> i
  in



(* 2. Type inference *)
  let type_infer globals fdecl fdecl_m expression = (* takes an expression and return its type *)
    (* build global and local variable type table, so in case there are variables in the return statement, we can infer on return type by infer on the type of those variables*)
    let global_vars_typ_table = 
      let global_var m (t, n, v) = H.add m n t;m in
      List.fold_left global_var (H.create (List.length globals)) globals in
    let local_vars_typ_table =
      let add_formal m (t, n) = H.add m n t;m in
      let add_local m (t, n) = H.add m n t;m in
      let rec local_stmt_finder local_expr stmt = match stmt with (* find return stmt in the function body and give back the expr that's being returned*)
	  A.Block sl -> List.fold_left local_stmt_finder local_expr sl
        | A.Local (t, n, v) -> (t, n)::local_expr
        | _ -> local_expr
      in
      let local_list = local_stmt_finder [] (A.Block fdecl.A.body) in
      let formals = List.fold_left add_formal (H.create (1000 + List.length fdecl.A.formals)) fdecl.A.formals in
      List.fold_left add_local formals local_list 
    in
    
    let lookup n = try H.find local_vars_typ_table n
                   with Not_found -> H.find global_vars_typ_table n
    in
    let type_infer_aux1 expr = match expr with  
        A.IntLit i -> A.Int
      | A.StringLit s -> A.String
      | A.BoolLit b -> A.Bool
      | A.Noexpr -> A.Void (* void type return *)
      | A.Id s -> lookup s 
      | A.Binop (e1, op, e2) ->
          (match op with
	    A.Add     -> A.Int
	  | A.Sub     -> A.Int
	  | A.Mult    -> A.Int
          | A.Div     -> A.Int
	  | A.And     -> A.Bool
	  | A.Or      -> A.Bool
	  | A.Equal   -> A.Bool
	  | A.Neq     -> A.Bool
	  | A.Less    -> A.Bool
	  | A.Leq     -> A.Bool
	  | A.Geq     -> A.Bool
	  ) 
      | A.Unop(op, e) ->
	  (match op with
	    A.Neg     -> A.Int
          | A.Not     -> A.Bool)
      | A.Call ("printf", [e]) -> A.Int
      | A.Call ("print_int", [e]) -> A.Int
      | A.Call (f, act) ->
          let (fdef, fdecl) = H.find fdecl_m f in
          fdecl.A.typ
    in 
    type_infer_aux1 expression
  in



(* 3. global variable declarations *)
  let global_vars =
    let global_var m (t, n, v) =
      let typ_stored = ref t in
      let init typ value = (* init for globals *)
        match value with 
          A.NoassignExpr -> 
            (match typ with
              A.Int -> L.const_int i32_t 0
            | A.Double -> L.const_float double_t 0.
            (* no global string as mentioned earlier *)
            | A.Bool -> L.const_int i1_t 0
            | A.Matrix -> typ_stored := A.Sizedmat(0,0);build_mat_lit ([||], (0,0)) main_builder )
        | A.IntLit i -> L.const_int i32_t i
        | A.DoubleLit d -> L.const_float double_t d
        | A.BoolLit b -> L.const_int i1_t (if b then 1 else 0)
        | A.MatrixLit (m, (r, c)) -> typ_stored := A.Sizedmat(r,c);build_mat_lit (m, (r,c)) main_builder
      in
      H.add m n (!typ_stored,(L.define_global n (init t v) the_module));m in
    List.fold_left global_var (H.create (List.length globals)) globals
  in



(* 4. User-defined function declarations *)
  (* Define each function (arguments and return type) so we can call it *)
  let function_decls =(* its a map; "functions" is a list of func_decl type in AST *)
    let function_decl m fdecl =
      let name = fdecl.A.fname
      and formal_types = 
	Array.of_list (List.map (fun (t,_) -> ltype_of_typ t) fdecl.A.formals) in

      let rec return_stmt_finder ret_expr stmt = match stmt with (* find return stmt in the function body and give back the expr that's being returned*)
	  A.Block sl -> List.fold_left return_stmt_finder ret_expr sl
        | A.Return e -> e::ret_expr
        | _ -> ret_expr
      in
      let return_expr = List.hd (return_stmt_finder [] (A.Block fdecl.A.body)) in
      let return_type = type_infer globals fdecl m return_expr in
      let ftype = L.function_type (ltype_of_typ return_type) formal_types in
      ignore(fdecl.A.typ <- return_type); H.add m name (L.define_function name ftype the_module, fdecl);m in
    List.fold_left function_decl (H.create (List.length functions)) functions in
  



(* 5. Statement construction *)
  (* part of code for generating statement, which used both in main function and function definition *)
  let rec build_stmt (fdecl, function_ptr) local_vars builder stmt=

  (* Return the value for a variable or formal argument *)
    let lookup n = try H.find local_vars n
                   with Not_found -> H.find global_vars n 
    in

  (* Construct code for an expression; return a tuple containing its value in llvm and its value in ocaml (stored in AST.expr type), so that later we can perform matrix arithmetics in ocaml instead of in LLVM which is essential C, and has no support on matrix or matrix arithmetics *)
    let rec expr builder e = match e with
        A.IntLit i -> L.const_int i32_t i
      | A.DoubleLit d -> L.const_float double_t d
      | A.StringLit s -> L.build_global_stringptr s "system_string" builder
      | A.BoolLit b -> L.const_int i1_t (if b then 1 else 0)
      | A.MatrixLit (m, (r, c)) -> build_mat_lit (m, (r,c)) builder(* matrix is represented as arrays of arrays of double in LLVM *) 
      | A.Noexpr -> L.const_int i32_t 0
      | A.NoassignExpr -> L.const_int noassign_t 0
      | A.Id s ->
          let (t, ptr) = lookup s in
          (match t with
            A.Sizedmat(r,c) -> ptr
          | _-> L.build_load ptr s builder)
      | A.Binop (e1, op, e2) -> 
          let exp1 = expr builder e1
          and exp2 = expr builder e2 in
          let typ1 = L.string_of_lltype (L.type_of exp1) 
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
            | _ -> raise (Failure "not a valid type")
            ) 
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
	  ) exp1 exp2 "tmp" builder
      | A.Unop(op, e) ->
	  let e' = expr builder e in
	  (match op with
	    A.Neg     -> L.build_neg
          | A.Not     -> L.build_not) e' "tmp" builder
      | A.Assign (e1, e2) -> 
          let value = expr builder e2 in
          (match e1 with
            A.Id s -> 
              let (t, ptr) = lookup s in
              ignore(L.build_store value ptr builder);
          | A.Index (s, (Range(x_low, x_high), Range(y_low, y_high))) ->
              let (t,ptr) = lookup s in
              let A.Sizedmat(r, c) = t in
              mat_assign ptr (index_converter "x" x_low r c) (index_converter "x" x_high r c) 
                             (index_converter "y" y_low r c) (index_converter "y" y_high r c) value builder
          );value
            
      | A.Index (s, (Range(x_low, x_high), Range(y_low, y_high))) ->
          let (t,ptr) = lookup s in
          let A.Sizedmat(r, c) = t in
          ptr
      | A.Call ("printf", [e]) -> 
          let exp1 = expr builder e in 
          (match (typ_of_lvalue exp1) with
            A.Double -> L.build_call printf_func [| double_format_str ; (exp1) |] "printf" builder
          | A.Int -> L.build_call printf_func [| int_format_str ; (exp1) |] "printf" builder
          | A.Sizedmat(r, c) -> mat_print exp1 r c builder
          | _ -> L.build_call printf_func [| string_format_str ; (exp1) |] "printf" builder
          )
      | A.Call (f, act) ->
         let (fdef, fdecl) = H.find function_decls f in
	 let actuals = List.rev (List.map (expr builder) (List.rev act)) in
	 let result = (match fdecl.A.typ with A.Void -> ""
                                            | _ -> f ^ "_result") in
         L.build_call fdef (Array.of_list actuals) result builder (* corresponding to call void @foo(i32 2, i32 1) *)
    in
    
  (match stmt with (* the actual body of build_stmt function *)
	
    (* Build the code for the given statement; return the builder for
       the statement's successor *)
	A.Block sl -> List.fold_left (build_stmt (fdecl, function_ptr) local_vars) builder sl
      | A.Expr e -> ignore (expr builder e); builder
      | A.Return e -> ignore (match fdecl.A.typ with
	  A.Void -> L.build_ret_void builder
	| _ -> L.build_ret (expr builder e) builder); builder
      | A.If (predicate, then_stmt, else_stmt) ->
         let bool_val = expr builder predicate in
	 let merge_bb = L.append_block context "merge" function_ptr in (* "merge" is something like an entry, so are the rest *)

	 let then_bb = L.append_block context "then" function_ptr in
	 add_terminal (build_stmt (fdecl, function_ptr) local_vars (L.builder_at_end context then_bb) then_stmt) 
	   (L.build_br merge_bb); (* L.build_br syntax : br entry *)

	 let else_bb = L.append_block context "else" function_ptr in
	 add_terminal (build_stmt(fdecl, function_ptr) local_vars (L.builder_at_end context else_bb) else_stmt)
	   (L.build_br merge_bb);

	 ignore (L.build_cond_br bool_val then_bb else_bb builder); (* L.build_cond_br syntax : br bool entry1 entry2 *)
	 L.builder_at_end context merge_bb

      | A.While (predicate, body) ->
	  let pred_bb = L.append_block context "while" function_ptr in
	  ignore (L.build_br pred_bb builder);

	  let body_bb = L.append_block context "while_body" function_ptr in
	  add_terminal (build_stmt (fdecl, function_ptr) local_vars (L.builder_at_end context body_bb) body)
	    (L.build_br pred_bb);

	  let pred_builder = L.builder_at_end context pred_bb in
	  let bool_val = expr pred_builder predicate in

	  let merge_bb = L.append_block context "merge" function_ptr in
	  ignore (L.build_cond_br bool_val body_bb merge_bb pred_builder);
	  L.builder_at_end context merge_bb

      | A.For (e1, e2, e3, body) -> build_stmt (fdecl, function_ptr) local_vars builder ( A.Block [A.Expr e1 ; A.While (e2, A.Block [body ; A.Expr e3]) ] )
      | A.Local (t, n, v) -> let v' = expr builder v in
                             let typ = typ_of_lvalue v' in
                             (match t with 
                               A.Matrix -> 
                                 let init_mat r c init_v typ= 
                                   let local = L.build_array_alloca (L.array_type double_t c) (L.const_int i32_t r) n builder in
                                   mat_print init_v r c builder;mat_assign local 0 (r-1) 0 (c-1) init_v builder;
                                   H.add local_vars n (typ,local)
                                 in
                                 (match typ with
                                   A.Noassign -> init_mat 0 0 (build_mat_lit ([||],(0,0)) builder) (A.Sizedmat(0,0))
                                 | A.Sizedmat(r, c) -> init_mat r c v' typ)
                             | _ -> 
                                 let local = L.build_alloca (ltype_of_typ t) n builder in   
                                 H.add local_vars n (t,local);
                                 let init_v = 
                                   (match typ with 
                                     A.Noassign -> 
                                       (match t with
                                         A.Int -> L.const_int i32_t 0
                                       | A.Double -> L.const_float double_t 0.
                                       | A.String -> L.build_global_stringptr "" "system_string" builder (*empty string*)
                                       | A.Bool -> L.const_int i1_t 0)
                                   | _ -> v')
                                 in
                                 ignore(L.build_store init_v local builder)
                             ); builder)
  in

  

(* 7. Main function body construction *)

  (* build main function *)
  let build_main main_body =



 (* continue with building main function *)
    let main_fdecl = {
      A.typ = A.Int;
      A.fname = main_name;
      A.formals = [];
      A.body = main_body;
      } in
      
    let local_vars = H.create 1000 in
      
    let main_builder = build_stmt (main_fdecl, main_define) local_vars main_builder (A.Block main_fdecl.A.body) in

    (* Add a return if the last block falls off the end *)

    add_terminal main_builder (L.build_ret (L.const_int i32_t 0)) in



(* 6. User-defined function body construction *)

  (* Fill in the body of the given function *)
  let build_function_body fdecl =
    let (the_function, _) = H.find function_decls fdecl.A.fname in (*the_function corresponds to L.define_function return value in line 60, presumably is a pointer or something like that *)
    let builder = L.builder_at_end context (L.entry_block the_function) in
    (* imagine entry_block returns a block (i.e. {block} ), and builder_at_end enables adding instructions at the end of the block??*)
    
    (* Construct the function's "locals": formal arguments and locally
       declared variables.  Allocate each on the stack, initialize their
       value, if appropriate, and remember their values in the "locals" map *)
    let local_vars =
      let add_formal m (t, n) p = L.set_value_name n p;(* p is a value not a ptr? *) (*!! set_value_name returns () *)
	let local = L.build_alloca (ltype_of_typ t) n builder in
	ignore (L.build_store p local builder);(* local is a ptr? *)
	H.add m n (t,local);m in
      List.fold_left2 add_formal (H.create (1000 + List.length fdecl.A.formals)) fdecl.A.formals (Array.to_list (L.params the_function)) in

    (* Build the code for each statement in the function *)
    let builder = build_stmt (fdecl, the_function) local_vars builder (A.Block fdecl.A.body) in

    (* Add a return if the last block falls off the end *)

    add_terminal builder (match fdecl.A.typ with
        A.Void -> L.build_ret_void
      | t -> L.build_ret (L.const_int (ltype_of_typ t) 0)) in



(* 8. Combine all *)
  build_main main_stmt; List.iter build_function_body functions; 
  the_module 
