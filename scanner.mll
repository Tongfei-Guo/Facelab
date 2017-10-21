(* Ocamllex scanner for Facelab *)

{ open Parser }

rule token = parse
  [' ' '\t' '\r' '\n'] { token lexbuf } (* Whitespace *)
| "/*"     { comment lexbuf }           (* Comments *)
| "//"     { quote lexbuf}
| '('      { LPAREN }
| ')'      { RPAREN }
| '{'      { LBRACE }
| '}'      { RBRACE }
| '['      { LBRACKET }
| ']'      { RBRACKET }
| ';'      { SEMI }
| ','      { COMMA }
| '+'      { PLUS }
| '-'      { MINUS }
| '*'      { TIMES }
| '/'      { DIVIDE }
| '%'      { REMAINDER }
| '='      { ASSIGN }
| '$'      { FILTER }
| ".*"     { INNERPRODUCT }
| "=="     { EQ }
| "!="     { NEQ }
| '<'      { LT }
| "<="     { LEQ }
| ">"      { GT }
| ">="     { GEQ }
| "&&"     { AND }
| "||"     { OR }
| "!"      { NOT }
| "if"     { IF }
| "else"   { ELSE }
| "elseif" { ELIF }
| "for"    { FOR }
| "while"  { WHILE }
| "return" { RETURN }
| "break"  { BREAK }
| "continue" { CONTINUE }
| "func"   { FUNCTION }
| "matrix" { MATRIX }
| "image"  { IMAGE }
| "int"    { INT }
| "double" { DOUBLE }
| "bool"   { BOOL }
| "true"   { TRUE }
| "false"  { FALSE }
| ['0'-'9']+ as lxm { INT_LITERAL(int_of_string lxm) }
| ['0'-'9']+'.'['0'-'9']+ as lxm { DOUBLE_LITERAL{float_of_string lxm}}
| ['a'-'z' 'A'-'Z']['a'-'z' 'A'-'Z' '0'-'9' '_']* as lxm { ID(lxm) }
| ^'"' my_s '"'$ when my_s = _* {STRING_LITERAL(my_s)}
| eof { EOF }
| _ as char { raise (Failure("illegal character " ^ Char.escaped char)) }

and comment = parse
  "*/" { token lexbuf }
| _    { comment lexbuf }

and quote = parse
  ['\n' '\r'] { token lexbuf }
| _    { comment lexbuf }
