type token =
  | SEMI
  | LPAREN
  | RPAREN
  | LBRACE
  | RBRACE
  | LBRACKET
  | RBRACKET
  | COLON
  | COMMA
  | ID_SEP_COMMA
  | PLUS
  | MINUS
  | TIMES
  | DIVIDE
  | ASSIGN
  | NOT
  | REMAINDER
  | MATPRODUCT
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
  | STRING
  | ELIF
  | BREAK
  | CONTINUE
  | VOID
  | FUNCTION
  | MATRIX
  | IMAGE
  | FILTER
  | INT_LITERAL of (int)
  | DOUBLE_LITERAL of (float)
  | STRING_LITERAL of (string)
  | ID of (string)
  | GLOBAL
  | EOF

val program :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.program
