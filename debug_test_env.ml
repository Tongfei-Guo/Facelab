	#require "llvm";;
	module L = Llvm;;
	module H = Hashtbl;;
	open Str;;

	type op = Add | Sub | Mult | Div | Equal | Neq | Less | Leq | Greater | Geq |
		  And | Or | Rmdr

	type uop = Neg | Not

	type typ = Int | Bool | Image | Double | Matrix | Void | String | 
		   (* below are auxiliary or debug entities, not for other use *)
		   Sizedmat of int * int | Bug

	type bind = typ * string

	type expr =
	    IntLit of int
	  | StringLit of string
	  | DoubleLit of float
	  | BoolLit of bool
	  | MatrixLit of float array array * (int * int)
	  | Id of string
	  | Binop of expr * op * expr
	  | Unop of uop * expr
	  | Assign of string * expr
	  | Call of string * expr list
	  | Noexpr
	  | Noassign


	module StringMap = Map.Make(String);;
	let context = L.global_context ();;
	let the_module = L.create_module context "MicroC";;
	let double_t = L.double_type context;;
	let i32_t  = L.i32_type  context;;
	let i8_t   = L.i8_type   context;;
	let str_t  = L.pointer_type i8_t;;
	let i1_t   = L.i1_type   context;;
let matrix_t = L.named_struct_type context "matrix_t";;
  L.struct_set_body matrix_t [|L.pointer_type double_t; i32_t; i32_t|] false;;
	let main = L.define_function "main" (L.function_type i32_t [||]) the_module;;
	let builder = L.builder_at_end context (L.entry_block main);;
	let v1 = L.const_int i32_t 0;;
	let v2 = L.const_int i1_t 0;;
	let v3 = L.const_float double_t 2.3;;
	let str = L.build_global_string "str" "system_string" builder;;
	let mat = 
	  let element_type = L.double_type context in
	  let row_type = L.array_type element_type 3 in
	  L.const_array row_type [|L.const_array element_type [|L.const_float element_type 1.; L.const_float element_type 2.; L.const_float element_type 3.|];
		                 L.const_array element_type [|L.const_float element_type 4.; L.const_float element_type 5.; L.const_float element_type 6.|]|];;
	let m = L.build_array_alloca (L.array (L.array_type double_t 3) 2) (L.const_int i32_t 2) "m" builder;;

	let arr = L.build_array_alloca i32_t (L.const_int i32_t 1) "arr" builder;;
    let string_format_str = L.build_global_stringptr "%s" "fmt_str" builder;;
    let double_format_str = L.build_global_stringptr "%f" "fmt_double" builder;;
    let int_format_str = L.build_global_stringptr "%d" "fmt_int" builder ;;
    let new_line_str = L.build_global_stringptr "\n" "fmt_int" builder ;;
let empty_str = L.build_global_stringptr "" "fmt_int" builder ;;
    let two_space_str = L.build_global_stringptr "  " "fmt_int" builder ;;
  let printf_t = L.var_arg_function_type i32_t [| L.pointer_type i8_t |];;
  let printf_func = L.declare_function "printf" printf_t the_module ;;

let f = L.define_function "sys_func" (L.function_type (L.pointer_type matrix_t) [|(L.pointer_type matrix_t)|]) the_module;;
let builder2 = L.builder_at_end context (L.entry_block f);;
L.build_ret (Array.get (L.params f) 0) builder2;;
let m5 = L.build_malloc matrix_t "m5" builder;;
L.build_store (L.const_int i32_t 112233) (L.build_struct_gep m5 1 "tmp" builder) builder;;
L.build_store (L.const_int i32_t 556677) (L.build_struct_gep m5 2 "tmp" builder) builder;;
let m6 = L.build_call f [|m5|] "m6" builder;;
L.build_call printf_func [| int_format_str ; L.build_load (L.build_struct_gep m5 1 "tmp" builder) "tmp" builder |] "printf" builder;;
L.build_call printf_func [| int_format_str ; L.build_load (L.build_struct_gep m5 2 "tmp" builder) "tmp" builder |] "printf" builder;;
L.build_call printf_func [| int_format_str ; L.build_load (L.build_struct_gep m6 1 "tmp" builder) "tmp" builder |] "printf" builder;;
L.build_call printf_func [| int_format_str ; L.build_load (L.build_struct_gep m6 2 "tmp" builder) "tmp" builder |] "printf" builder;;
L.build_free m5 builder;;
for i = 1 to 10000 do
    ignore(L.build_malloc matrix_t "m" builder)
done;;
L.build_call printf_func [| int_format_str ; L.build_load (L.build_struct_gep m5 1 "tmp" builder) "tmp" builder |] "printf" builder;;
L.build_call printf_func [| int_format_str ; L.build_load (L.build_struct_gep m5 2 "tmp" builder) "tmp" builder |] "printf" builder;;
L.build_call printf_func [| int_format_str ; L.build_load (L.build_struct_gep m6 1 "tmp" builder) "tmp" builder |] "printf" builder;;
L.build_call printf_func [| int_format_str ; L.build_load (L.build_struct_gep m6 2 "tmp" builder) "tmp" builder |] "printf" builder;;
L.build_ret (L.const_int i32_t 0) builder;;
L.print_module "t2.ir" the_module;;

let f = L.define_function "sys_func" (L.function_type (L.pointer_type (L.pointer_type matrix_t)) [||]) the_module;;
let builder2 = L.builder_at_end context (L.entry_block f);;
let m4 = L.build_malloc matrix_t "m4" builder2;;
L.build_store (L.const_int i32_t 112233) (L.build_struct_gep m4 1 "tmp" builder2) builder2;;
L.build_store (L.const_int i32_t 556677) (L.build_struct_gep m4 2 "tmp" builder2) builder2;;
let p = L.build_malloc (L.pointer_type matrix_t) "p" builder2;;
L.build_store m4 p builder2;;
L.build_ret p builder2;;
let exp = L.build_call f [||] "ret" builder;;
let m5 = L.build_load exp "m5" builder;;
L.build_call printf_func [| int_format_str ; L.build_load (L.build_struct_gep m5 1 "tmp" builder) "tmp" builder |] "printf" builder;;
L.build_call printf_func [| int_format_str ; L.build_load (L.build_struct_gep m5 2 "tmp" builder) "tmp" builder |] "printf" builder;;
L.build_free exp builder;;
for i = 1 to 5000 do
    ignore(L.build_malloc matrix_t "m" builder)
done;;
L.build_call printf_func [| int_format_str ; L.build_load (L.build_struct_gep m5 1 "tmp" builder) "tmp" builder |] "printf" builder;;
L.build_call printf_func [| int_format_str ; L.build_load (L.build_struct_gep m5 2 "tmp" builder) "tmp" builder |] "printf" builder;;
L.build_free m5 builder;;
for i = 1 to 5000 do
    ignore(L.build_malloc matrix_t "m" builder)
done;;
L.build_call printf_func [| int_format_str ; L.build_load (L.build_struct_gep m5 1 "tmp" builder) "tmp" builder |] "printf" builder;;
L.build_call printf_func [| int_format_str ; L.build_load (L.build_struct_gep m5 2 "tmp" builder) "tmp" builder |] "printf" builder;;

let build_mat_init r c builder =
    let size = L.build_mul r c "size" builder in
    let mat = L.build_array_alloca double_t size "system_mat" builder in
    let m = L.build_alloca matrix_t "m" builder in
    let m_mat = L.build_struct_gep mat 0 "m_mat" builder in
    ignore(L.build_store mat m_mat builder);
    let row = L.build_alloca i32_t "row" builder in
    ignore(L.build_store r row builder);
    let m_r = L.build_struct_gep mat 1 "m_r" builder in
    ignore(L.build_store row m_r builder);
    let col = L.build_alloca i32_t "col" builder in
    ignore(L.build_store c col builder);
    let m_c = L.build_struct_gep mat 2 "m_c" builder in
    ignore(L.build_store col m_c builder); m



let m_type = L.named_struct_type context "m_type";;
L.struct_set_body m_type [|L.pointer_type i32_t; i32_t; i32_t|] false;;
let m = L.build_alloca m_type "m" builder;;
let m_1 = L.build_struct_gep m 1 "m_1" builder;;
L.string_of_lltype (L.type_of m_1);;
L.print_module "t.ir" the_module;;

(*
let build_mat_lit (m, (r,c)) builder= 
    let mat = L.build_array_alloca (L.array_type double_t c) (L.const_int i32_t r) "system_mat" builder in
    (for i = 0 to (r-1) do
      for j = 0 to (c-1) do
        let element_ptr = L.build_gep mat [|L.const_int i32_t i; L.const_int i32_t j|] "element_ptr" builder in
        ignore(L.build_store (L.const_float double_t m.(i).(j)) element_ptr builder)
      done
    done); mat;;

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
    | false -> ();;
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
    done);L.build_call printf_func [| string_format_str ; empty_str |] "printf" builder;;
  (* convert A.index type to corresponding integral index in a matrix of size r by c *)
  let index_converter d ind r c= 
    match ind with
      A.Beg -> 0
    | A.End -> (match d with
                 "x" -> r-1
               | "y" -> c-1)
    | A.IntInd(i) -> i;;
let m = build_mat_lit ([|[|1.;2.;3.|];[|4.;5.;6.|];[|7.;8.;9.|]|], (3,3)) builder;;
*)

let size = L.build_alloca i32_t "size" builder;;
L.build_store (L.const_int i32_t 4) size builder;;
let m = L.build_array_alloca i32_t (L.build_load size "size" builder) "m" builder;;
let ptr = L.build_gep m [|L.const_int i32_t 0|] "ptr" builder;;
L.build_store (L.const_int i32_t 1) ptr builder;;
let ptr = L.build_gep m [|L.const_int i32_t 1|] "ptr" builder;;
L.build_store (L.const_int i32_t 2) ptr builder;;
let ptr = L.build_gep m [|L.const_int i32_t 2|] "ptr" builder;;
L.build_store (L.const_int i32_t 3) ptr builder;;
let ptr = L.build_gep m [|L.const_int i32_t 3|] "ptr" builder;;
L.build_store (L.const_int i32_t 4) ptr builder;;
let ptr = L.build_gep m [|L.const_int i32_t 0|] "ptr" builder;;
let tmp = L.build_load ptr "tmp" builder;;
L.build_call printf_func [| int_format_str ; tmp|] "printf" builder;;
L.build_call printf_func [| string_format_str ; two_space_str |] "printf" builder;;
let ptr = L.build_gep m [|L.const_int i32_t 1|] "ptr" builder;;
let tmp = L.build_load ptr "tmp" builder;;
L.build_call printf_func [| int_format_str ; tmp|] "printf" builder;;
L.build_call printf_func [| string_format_str ; two_space_str |] "printf" builder;;
let ptr = L.build_gep m [|L.const_int i32_t 2|] "ptr" builder;;
let tmp = L.build_load ptr "tmp" builder;;
L.build_call printf_func [| int_format_str ; tmp|] "printf" builder;;
L.build_call printf_func [| string_format_str ; two_space_str |] "printf" builder;;
let ptr = L.build_gep m [|L.const_int i32_t 3|] "ptr" builder;;
let tmp = L.build_load ptr "tmp" builder;;
L.build_call printf_func [| int_format_str ; tmp|] "printf" builder;;
L.build_call printf_func [| string_format_str ; two_space_str |] "printf" builder;;
let ptr = L.build_gep m [|L.const_int i32_t 4|] "ptr" builder;;
L.build_store (L.const_int i32_t 5) ptr builder;;
let ptr = L.build_gep m [|L.const_int i32_t 4|] "ptr" builder;;
let tmp = L.build_load ptr "tmp" builder;;
L.build_call printf_func [| int_format_str ; tmp|] "printf" builder;;
L.build_call printf_func [| string_format_str ; two_space_str |] "printf" builder;;




  (* expression construction *)
(* Return the value for a variable or formal argument *)
    
  let rec expr builder e= 
    let lookup n = try H.find local_vars n
                   with Not_found -> H.find global_vars n 
    in
    match e with
      A.IntLit i -> L.const_int i32_t i
    | A.DoubleLit d -> L.const_float double_t d
    | A.StringLit s -> L.build_global_stringptr s "system_string" builder
    | A.BoolLit b -> L.const_int i1_t (if b then 1 else 0)
    | A.MatrixLit (m, (r, c)) -> build_mat_lit (m, (r,c)) builder(* matrix is represented as arrays of arrays of double in LLVM *) 
    | A.Noexpr -> L.const_int i32_t 0
    | A.NoassignExpr -> L.const_int noassign_t 0
    | A.Id s ->
        let ptr = lookup s in
        (match (is_matrix ptr) with
          true -> ptr
        | false -> L.build_load ptr s builder)
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
	) exp1 exp2 "tmp" builder
    | A.Unop(op, e) ->
	let e' = expr  builder e in
	(match op with
	  A.Neg     -> L.build_neg
        | A.Not     -> L.build_not) e' "tmp" builder
    | A.Assign (e1, e2) -> 
        let value = expr  builder e2 in
        (match e1 with
          A.Id s -> 
            let ptr = lookup s in
            (match (is_matrix ptr) with
              true -> mat_assign ptr (L.const_int i32_t 0) x_high (L.const_int i32_t 0) y_high value function_ptr builder
            | false -> L.build_store value ptr builder)
        | A.Index (s, (Range(x_low, x_high), Range(y_low, y_high))) ->
            let ptr = lookup s in
            let A.Sizedmat(r, c) = t in
            mat_assign ptr (index_converter "x" x_low r c) (index_converter "x" x_high r c) 
                           (index_converter "y" y_low r c) (index_converter "y" y_high r c) value builder
        );value
    (*| A.Index (s, (Range(x_low, x_high), Range(y_low, y_high))) ->
        let (t,ptr) = lookup s in
        let A.Sizedmat(r, c) = t in
        ptr*)
    | A.Call ("printf", [e]) -> 
        let exp1 = expr builder e in 
        (match (typ_of_lvalue exp1) with
          A.Double -> L.build_call printf_func [| double_format_str ; (exp1) |] "printf" builder
        | A.Int -> L.build_call printf_func [| int_format_str ; (exp1) |] "printf" builder
        | A.Matrix -> mat_print exp1 builder
        | _ -> L.build_call printf_func [| string_format_str ; (exp1) |] "printf" builder
        )
    | A.Call (f, act) ->
       let (fdef, fdecl) = H.find function_decls f in
       let actuals = List.rev (List.map (expr builder) (List.rev act)) in
       let result = (match fdecl.A.typ with A.Void -> ""
                                          | _ -> f ^ "_result") in
       L.build_call fdef (Array.of_list actuals) result builder (* corresponding to call void @foo(i32 2, i32 1) *)
  in





  A.Block sl -> List.fold_left (build_stmt (fdecl, function_ptr) local_vars) builder sl
      | A.Expr e -> ignore (expr builder e); builder
      | A.Return e -> ignore (match fdecl.A.typ with
	  A.Void -> L.build_ret_void builder
	| _ -> L.build_ret (expr builder e) builder); builder
      | A.If (predicate, then_stmt, else_stmt) -> 
        let pred builder = expr builder predicate in
        let then_st builder = build_stmt (fdecl, function_ptr) local_vars builder then_stmt in
        let else_st builder = build_stmt(fdecl, function_ptr) local_vars builder else_stmt in
        llvm_if function_ptr builder (pred, then_st, else_st)
         
      | A.While (predicate, body) ->
        let pred builder = expr builder predicate in
        let body_st builder = build_stmt (fdecl, function_ptr) local_vars builder body in
        llvm_if function_ptr builder (pred, body_st)

      | A.For (e1, e2, e3, body) -> 
        let init_st builder = expr builder e1 in
        let pred builder = expr builder e2 in
        let update builder = expr builder e3 in
        let body_st builder = build_stmt (fdecl, function_ptr) local_vars builder body in
        llvm_for function_ptr builder (init, predicate, update, body_stmt)
      | A.Local (t, n, v) -> let v' = expr builder v in
                             let typ = typ_of_lvalue v' in
                             (match t with 
                               A.Matrix -> 
                                 let init_mat r c init_v typ= 
                                   let local = L.build_array_alloca (L.array_type double_t c) (L.const_int i32_t r) n builder in
                                   mat_print init_v r c builder;mat_assign local 0 (r-1) 0 (c-1) init_v builder;
                                   H.add local_vars n local
                                 in
                                 (match typ with
                                   A.Noassign -> init_mat 0 0 (build_mat_lit ([||],(0,0)) builder) (A.Sizedmat(0,0))
                                 | A.Sizedmat(r, c) -> init_mat r c v' typ)
                             | _ -> 
                                 let local = L.build_alloca (ltype_of_typ t) n builder in   
                                 H.add local_vars n local;
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
                             ); builder
  in

(match (is_matrix e') with
               true -> current_return := L.pointer_type matrix_t
             | false ->



(* Add a return if the last block falls off the end *)
      (*let const_struct_builder struct_type = 
        let element_type = L.struct_element_types struct_type in
        let const_constructor ltyp = 
          match (type_of_lltype ltyp) with
            A.Int -> L.const_int i32_t 0
          | A.Double -> L.const_float double_t 0.0
          | A.String -> L.build_global_stringptr "" "system_string" !builder (*empty string*)
          | A.Bool -> L.const_int i1_t 0
          | A.Matrix -> L.const_struct context [|L.const_array double_t [||]; L.const_int i32_t 0; L.const_int i32_t 0|]
          | A.Void -> failwith ("const_struct_builder error?") (*not gonna occur*) 
        in
        L.const_struct context (Array.map const_constructor element_type)
      in*)
   (*acutally this add_terminal has no functional use, just some special case, for example in a if clause, its then clause and else clause both returns, but if still builds a merge block, though it will not be used, and we need this add_terminal to give that non-useful merge block a return, otherwise llvm is gonna complain. *)
