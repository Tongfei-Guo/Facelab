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


