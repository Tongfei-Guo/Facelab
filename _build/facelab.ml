(* Top-level of the MicroC compiler: scan & parse the input,
   check the resulting AST, generate LLVM IR, and dump the module *)

module StringMap = Map.Make(String)

type action = Ast | LLVM_IR | Compile

let _ =
  let action = ref Compile in
  let set_action a () = action := a in
  let speclist = [
    ("-a", Arg.Unit (set_action Ast), "Print the SAST");
    ("-l", Arg.Unit (set_action LLVM_IR), "Print the generated LLVM IR");
    ("-c", Arg.Unit (set_action Compile),
      "Check and print the generated LLVM IR (default)");
  ] in  
  let usage_msg = "usage: ./facelab.native [-a|-l|-c] [file.fb]" in
  let channel = ref stdin in
  Arg.parse speclist (fun filename -> channel := open_in filename) usage_msg;
  let lexbuf = Lexing.from_channel !channel in
  let (fdecl2, stmt2) = Parser.program Scanner.token lexbuf in
  (*let lexbuf2 = Lexing.from_string (process.process_file Sys.argv.(1))in
  let (global2, fdecl2, stmt2) = Parser.program Scanner.token lexbuf2 in *)
  let lexbuf1 = Lexing.from_string (Preprocess.process_file "std.fb")in
  let (fdecl1, _) = Parser.program Scanner.token lexbuf1 in
  let ast = (fdecl1@fdecl2, stmt2) in
  Semant.check ast;
  match !action with
    Ast -> () (*print_string (Ast.string_of_program ast)*)
  | LLVM_IR -> print_string (Llvm.string_of_llmodule (Codegen.translate ast))
  | Compile -> let m = Codegen.translate ast in
    (*Llvm_analysis.assert_valid_module m;*)
    print_string (Llvm.string_of_llmodule m)
