type token =
  | SEMI
  | LPAREN
  | RPAREN
  | LBRACE
  | RBRACE
  | COMMA
  | LBRACKET
  | RBRACKET
  | PLUS
  | MINUS
  | TIMES
  | DIVIDE
  | ASSIGN
  | NOT
  | REMAINDER
  | INNERPRODUCT
  | EQ
  | NEQ
  | LT
  | LEQ
  | GT
  | GEQ
  | TRUE
  | FALSE
  | AND
  | OR
  | RETURN
  | IF
  | ELSE
  | FOR
  | WHILE
  | INT
  | DOUBLE
  | BOOL
  | ELIF
  | BREAK
  | CONTINUE
  | FUNCTION
  | MATRIX
  | IMAGE
  | FILTER
  | INT_LITERAL of (int)
  | DOUBLE_LITERAL of (float)
  | STRING_LITERAL of (string)
  | ID of (string)
  | EOF

val program :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.program
