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

module StringMap = Map.Make(String)

let translate (main_stmt, globals, functions) =
  let context = L.global_context () in
  let the_module = L.create_module context "MicroC"
  and i32_t  = L.i32_type  context
  and i8_t   = L.i8_type   context
  and i1_t   = L.i1_type   context
  and void_t = L.void_type context in
  let str_t = L.pointer_type i8_t in

  let ltype_of_typ = function
      A.Int -> i32_t
    | A.String -> i8_t (* pointer to store string *)
    | A.Bool -> i1_t
    | A.String -> str_t
    | A.Void -> void_t in

  (* Declare each global variable; remember its value in a map *)
  let global_vars =
    let global_var m (t, n) =
      let init = L.const_int (ltype_of_typ t) 0
      in StringMap.add n (L.define_global n init the_module) m in
    List.fold_left global_var StringMap.empty globals in

  (* Declare printf(), which the print built-in function will call *)
  let printf_t = L.var_arg_function_type i32_t [| L.pointer_type i8_t |] in
  let printf_func = L.declare_function "printf" printf_t the_module in

  (* Declare the built-in printbig() function | difference between var_arg_fun and fun? *)
  let printint_t = L.var_arg_function_type i32_t [| L.pointer_type i8_t |] in
  let printint_func = L.declare_function "printf" printf_t the_module in

  (* Define each function (arguments and return type) so we can call it *)
  let function_decls =(* its a map; "functions" is a list of func_decl type in AST *)
    let function_decl m fdecl =
      let name = fdecl.A.fname
      and formal_types =
	Array.of_list (List.map (fun (t,_) -> ltype_of_typ t) fdecl.A.formals)
      in let ftype = L.function_type (ltype_of_typ fdecl.A.typ) formal_types in
      StringMap.add name (L.define_function name ftype the_module, fdecl) m in
    List.fold_left function_decl StringMap.empty functions in
  
  (* Invoke "f builder" if the current block doesn't already
       have a terminal (e.g., a branch). *)
  let add_terminal builder f =
    match L.block_terminator (L.insertion_block builder) with (* block terminator is one of the following in a block : ret, br, switch, indirectbr, invoke, unwind, unreachable*)
      Some _ -> () (* Some a ocaml construct matching with a not null set, None match a null set *)
    | None -> ignore (f builder) 
  in   

  (* part of code for generating statement, which used both in main function and function definition *)
  let rec build_stmt (fdecl, function_ptr) local_vars builder stmt=
  (* format_string for printing str *)
    let string_format_str = L.build_global_stringptr "%s\n" "fmt_str" builder in
  (* format_string for printing str *)
    let int_format_str = L.build_global_stringptr "%d\n" "fmt_int" builder in
  (* Return the value for a variable or formal argument *)
    let lookup n = try StringMap.find n local_vars
                   with Not_found -> StringMap.find n global_vars
    in
  (* Construct code for an expression; return its value *)
    let rec expr builder = function 
	A.IntLit i -> L.const_int i32_t i
      | A.StringLit s -> L.build_global_stringptr s "system_string" builder
      | A.BoolLit b -> L.const_int i1_t (if b then 1 else 0)
      | A.Noexpr -> L.const_int i32_t 0
      | A.Id s -> L.build_load (lookup s) s builder
      | A.Binop (e1, op, e2) ->
	  let e1' = expr builder e1
	  and e2' = expr builder e2 in
	  (match op with
	    A.Add     -> L.build_add
	  | A.Sub     -> L.build_sub
	  | A.Mult    -> L.build_mul
          | A.Div     -> L.build_sdiv
	  | A.And     -> L.build_and
	  | A.Or      -> L.build_or
	  | A.Equal   -> L.build_icmp L.Icmp.Eq
	  | A.Neq     -> L.build_icmp L.Icmp.Ne
	  | A.Less    -> L.build_icmp L.Icmp.Slt
	  | A.Leq     -> L.build_icmp L.Icmp.Sle
	  | A.Greater -> L.build_icmp L.Icmp.Sgt
	  | A.Geq     -> L.build_icmp L.Icmp.Sge
	  ) e1' e2' "tmp" builder
      | A.Unop(op, e) ->
	  let e' = expr builder e in
	  (match op with
	    A.Neg     -> L.build_neg
          | A.Not     -> L.build_not) e' "tmp" builder
      | A.Assign (s, e) -> let e' = expr builder e in
	                   ignore (L.build_store e' (lookup s) builder); e'
      | A.Call ("printf", [e]) ->
	  L.build_call printf_func [| string_format_str ; (expr builder e) |]
	    "printf" builder
      | A.Call ("print_int", [e]) ->
	  L.build_call printint_func [| int_format_str ; (expr builder e) |] 
            "print_int" builder
      | A.Call (f, act) ->
         let (fdef, fdecl) = StringMap.find f function_decls in
	 let actuals = List.rev (List.map (expr builder) (List.rev act)) in
	 let result = (match fdecl.A.typ with A.Void -> ""
                                            | _ -> f ^ "_result") in
         L.build_call fdef (Array.of_list actuals) result builder (* corresponding to call void @foo(i32 2, i32 1) *)
    in
    
  (match stmt with (* the actual body of build_stmt function *)
	
    (* Build the code for the given statement; return the builder for
       the statement's successor *)
	A.Block sl -> List.fold_left (build_stmt (fdecl, function_ptr) local_vars) builder (List.rev sl)
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

      | A.For (e1, e2, e3, body) -> build_stmt (fdecl, function_ptr) local_vars builder ( A.Block [A.Expr e1 ; A.While (e2, A.Block [body ; A.Expr e3]) ] ))
  in




  (* Fill in the body of the given function *)
  let build_function_body fdecl =
    let (the_function, _) = StringMap.find fdecl.A.fname function_decls in (*the_function corresponds to L.define_function return value in line 60, presumably is a pointer or something like that *)
    let builder = L.builder_at_end context (L.entry_block the_function) in
    (* imagine entry_block returns a block (i.e. {block} ), and builder_at_end enables adding instructions at the end of the block??*)
    
    (* Construct the function's "locals": formal arguments and locally
       declared variables.  Allocate each on the stack, initialize their
       value, if appropriate, and remember their values in the "locals" map *)
    let local_vars =
      let add_formal m (t, n) p = L.set_value_name n p;(* p is a value not a ptr? *) (*!! set_value_name returns () *)
	let local = L.build_alloca (ltype_of_typ t) n builder in
	ignore (L.build_store p local builder);(* local is a ptr? *)
	StringMap.add n local m in
	
      let add_local m (t, n) =
	let local_var = L.build_alloca (ltype_of_typ t) n builder	
	in StringMap.add n local_var m in

      let formals = List.fold_left2 add_formal StringMap.empty fdecl.A.formals
          (Array.to_list (L.params the_function)) in
      List.fold_left add_local formals fdecl.A.locals in

    (* Build the code for each statement in the function *)
    let builder = build_stmt (fdecl, the_function) local_vars builder (A.Block fdecl.A.body) in

    (* Add a return if the last block falls off the end *)

    add_terminal builder (match fdecl.A.typ with
        A.Void -> L.build_ret_void
      | t -> L.build_ret (L.const_int (ltype_of_typ t) 0)) in


  (* build main function *)
  let build_main main_body =
    let main_name = "main" in
    let main_define = (* main_define the "the_function" equivalent of main function *)
      let main_formal = [| |] (* empty array *)
      in let main_type = L.function_type i32_t main_formal in
      L.define_function main_name main_type the_module in 

    let main_builder = (*  main_builder the "builder" equivalent of main function *) 
      L.builder_at_end context (L.entry_block main_define) in
    let main_fdecl = {
      A.typ = A.Int;
      A.fname = main_name;
      A.formals = [];
      A.locals = [];
      A.body = main_body;
      } in
    (* There is no "locals" *)
    let local_vars = StringMap.empty in
    let main_builder = build_stmt (main_fdecl, main_define) local_vars main_builder (A.Block main_fdecl.A.body) in

    (* Add a return if the last block falls off the end *)

    add_terminal main_builder (L.build_ret (L.const_int i32_t 0)) in

  List.iter build_function_body functions; build_main main_stmt;
  the_module
