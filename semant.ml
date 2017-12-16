(* Semantic checking for the MicroC compiler *)

open Ast

module StringMap = Map.Make(String)

(* Semantic checking of a program. Returns void if successful,
   throws an exception if something is wrong. *)

let check (functions, main_stmt) =

  (* Raise an exception if the given list has a duplicate *)
  let report_duplicate exceptf list =
    let rec helper = function
	n1 :: n2 :: _ when n1 = n2 -> raise (Failure (exceptf n1))
      | _ :: t -> helper t
      | [] -> ()
    in helper (List.sort compare list)
  in

  (* Raise an exception if a given binding is to a void type *)
  let check_not_void exceptf = function
      (Void, n) -> raise (Failure (exceptf n))
    | _ -> ()
  in
  
  (* Raise an exception of the given rvalue type cannot be assigned to
     the given lvalue type *)
  let check_assign lvaluet rvaluet err =
     if lvaluet == rvaluet then lvaluet else raise err
  in
   

  (**** Checking Functions ****)

  report_duplicate (fun n -> "Semantic error : duplicate function " ^ n)
    (List.map (fun fd -> fd.fname) functions);


  let check_function func =

    List.iter (check_not_void (fun n -> "illegal void formal " ^ n ^
      " in " ^ func.fname)) func.formals;

    report_duplicate (fun n -> "duplicate formal " ^ n ^ " in " ^ func.fname)
      (List.map snd func.formals);
    (* check built-in functions names are not used by users *)
    let report_built_in_duplicate list =
      let rec helper = function
	"size" :: t -> raise (Failure ("Semantic error : name size is reserved."))
      | "zeros" :: t -> raise (Failure ("Semantic error : name zeros is reserved."))
      | "bitwise" :: -> raise (Failure ("Semantic error : name bitwise is reserved."))
      | "filter" :: -> raise (Failure ("Semantic error : name filter is reserved."))
      | _ :: t -> helper t
      | [] -> ()
      in helper list
    in
    report_built_in_duplicate (List.map (fun fd -> fd.fname) functions);
      

    (* Return the type of an expression or throw an exception *)

    let check_bool_expr e = if expr e != Bool
     then raise (Failure ("expected Boolean expression in " ^ string_of_expr e))
     else () in

    (* Verify a statement or throw an exception *)
    let rec stmt = function
	Block sl -> let rec check_block = function
           [Return _ as s] -> stmt s
         | Return _ :: _ -> raise (Failure "nothing may follow a return")
         | Block sl :: ss -> check_block (sl @ ss)
         | s :: ss -> stmt s ; check_block ss
         | [] -> ()
        in check_block sl
           
      | If(p, b1, b2) -> check_bool_expr p; stmt b1; stmt b2
      | For(e1, e2, e3, st) -> ignore (expr e1); check_bool_expr e2;
                               ignore (expr e3); stmt st
      | While(p, s) -> check_bool_expr p; stmt s
    in

  in
  List.iter check_function functions
