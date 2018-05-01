
let process_file filename1 =
	let read_all_lines file_name =
	let lines = ref [] in
let chan = open_in file_name in
try
  while true; do
    lines := input_line chan :: !lines
  done; []
with End_of_file ->
  close_in chan;
  List.rev !lines in 

	let concat = List.fold_left (fun a x -> a ^ x) "" 
in " \n " ^ concat (read_all_lines filename1) ^ " \n " 