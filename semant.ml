(* Semantic checking for the MicroC compiler *)

open Ast

module StringMap = Map.Make(String)

(* Semantic checking of a program. Returns void if successful,
   throws an exception if something is wrong. *)

let check (functions, _) =

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
   

  (**** Checking Functions ****)

  (* check built-in functions names are not used by users *)
  let report_built_in_duplicate list =
    let rec helper = function
      "size" :: _ -> raise (Failure ("Semantic error : name size is reserved."))
    | "zeros" :: _ -> raise (Failure ("Semantic error : name zeros is reserved."))
    | "double2int" :: _ -> raise (Failure ("Semantic error : name double2int is reserved."))
    | "int2double" :: _ -> raise (Failure ("Semantic error : name int2double is reserved."))
    | "load_cpp" :: _ -> raise (Failure ("Semantic error : name load_cpp is reserved."))
    | "load" :: _ -> raise (Failure ("Semantic error : name load is reserved."))
    | "save_cpp" :: _ -> raise (Failure ("Semantic error : name save_cpp is reserved."))
    | "save" :: _ -> raise (Failure ("Semantic error : name save is reserved."))
    | _ :: t -> helper t
    | [] -> ()
    in helper list
  in
  report_built_in_duplicate (List.map (fun fd -> fd.fname) functions);

  report_duplicate (fun n -> "Semantic error : duplicate function " ^ n)
    (List.map (fun fd -> fd.fname) functions);

  let check_function func =

    List.iter (check_not_void (fun n -> "illegal void formal " ^ n ^
      " in " ^ func.fname)) func.formals;

    report_duplicate (fun n -> "duplicate formal " ^ n ^ " in " ^ func.fname)
      (List.map snd func.formals);

  in
  List.iter check_function functions
