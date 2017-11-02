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
  | EOF

open Parsing;;
let _ = parse_error;;
# 4 "parser.mly"
open Ast
# 56 "parser.ml"
let yytransl_const = [|
  257 (* SEMI *);
  258 (* LPAREN *);
  259 (* RPAREN *);
  260 (* LBRACE *);
  261 (* RBRACE *);
  262 (* COMMA *);
  263 (* LBRACKET *);
  264 (* RBRACKET *);
  265 (* PLUS *);
  266 (* MINUS *);
  267 (* TIMES *);
  268 (* DIVIDE *);
  269 (* ASSIGN *);
  270 (* NOT *);
  271 (* REMAINDER *);
  272 (* INNERPRODUCT *);
  273 (* EQ *);
  274 (* NEQ *);
  275 (* LT *);
  276 (* LEQ *);
  277 (* GT *);
  278 (* GEQ *);
  279 (* TRUE *);
  280 (* FALSE *);
  281 (* AND *);
  282 (* OR *);
  283 (* RETURN *);
  284 (* IF *);
  285 (* ELSE *);
  286 (* FOR *);
  287 (* WHILE *);
  288 (* INT *);
  289 (* DOUBLE *);
  290 (* BOOL *);
  291 (* STRING *);
  292 (* ELIF *);
  293 (* BREAK *);
  294 (* CONTINUE *);
  295 (* VOID *);
  296 (* FUNCTION *);
  297 (* MATRIX *);
  298 (* IMAGE *);
  299 (* FILTER *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  300 (* INT_LITERAL *);
  301 (* DOUBLE_LITERAL *);
  302 (* STRING_LITERAL *);
  303 (* ID *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\004\000\006\000\006\000\009\000\
\009\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
\003\000\007\000\007\000\008\000\008\000\010\000\010\000\010\000\
\010\000\010\000\010\000\010\000\010\000\012\000\012\000\011\000\
\011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\011\000\011\000\011\000\011\000\011\000\011\000\013\000\
\013\000\014\000\014\000\000\000"

let yylen = "\002\000\
\002\000\000\000\002\000\002\000\009\000\000\000\001\000\002\000\
\004\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\003\000\000\000\002\000\000\000\002\000\002\000\002\000\003\000\
\003\000\005\000\007\000\009\000\005\000\000\000\001\000\001\000\
\001\000\001\000\001\000\001\000\001\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\002\000\002\000\003\000\004\000\003\000\000\000\
\001\000\001\000\003\000\002\000"

let yydefred = "\000\000\
\002\000\000\000\060\000\000\000\010\000\011\000\012\000\016\000\
\013\000\015\000\014\000\001\000\003\000\004\000\000\000\000\000\
\017\000\000\000\000\000\000\000\000\000\008\000\000\000\000\000\
\018\000\000\000\000\000\009\000\019\000\000\000\000\000\000\000\
\000\000\020\000\005\000\000\000\000\000\035\000\036\000\000\000\
\000\000\000\000\000\000\032\000\034\000\033\000\000\000\021\000\
\000\000\000\000\000\000\051\000\052\000\023\000\000\000\000\000\
\000\000\000\000\000\000\000\000\022\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\055\000\025\000\024\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\040\000\
\041\000\042\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\054\000\000\000\000\000\
\000\000\029\000\000\000\000\000\000\000\027\000\000\000\000\000\
\028\000"

let yydgoto = "\002\000\
\003\000\004\000\013\000\014\000\015\000\020\000\027\000\031\000\
\021\000\048\000\049\000\080\000\083\000\084\000"

let yysindex = "\004\000\
\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\231\254\060\255\
\000\000\004\001\237\254\049\255\051\255\000\000\062\255\004\001\
\000\000\021\255\004\001\000\000\000\000\033\255\067\255\083\255\
\192\255\000\000\000\000\192\255\192\255\000\000\000\000\041\255\
\087\255\097\255\106\255\000\000\000\000\000\000\000\255\000\000\
\005\000\176\000\105\255\000\000\000\000\000\000\036\000\192\255\
\192\255\192\255\192\255\192\255\000\000\192\255\192\255\192\255\
\192\255\192\255\192\255\192\255\192\255\192\255\192\255\192\255\
\192\255\192\255\000\000\000\000\000\000\196\000\234\000\121\255\
\216\000\234\000\120\255\125\255\234\000\081\255\081\255\000\000\
\000\000\000\000\013\001\013\001\220\255\220\255\220\255\220\255\
\255\254\252\000\165\255\192\255\165\255\000\000\192\255\108\255\
\058\000\000\000\234\000\165\255\192\255\000\000\124\255\165\255\
\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\131\255\000\000\000\000\135\255\000\000\000\000\000\000\
\000\000\000\000\116\255\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\239\255\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\140\255\000\000\139\255\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\044\255\000\000\
\000\000\098\255\000\000\142\255\043\255\084\000\110\000\000\000\
\000\000\000\000\057\255\099\255\202\255\120\000\146\000\156\000\
\053\255\047\255\000\000\000\000\000\000\000\000\000\000\154\255\
\000\000\000\000\100\255\000\000\145\255\000\000\000\000\000\000\
\000\000"

let yygindex = "\000\000\
\000\000\000\000\126\000\000\000\244\255\000\000\000\000\121\000\
\000\000\075\000\223\255\045\000\000\000\000\000"

let yytablesize = 558
let yytable = "\050\000\
\012\000\059\000\052\000\053\000\001\000\019\000\055\000\062\000\
\063\000\064\000\065\000\026\000\060\000\066\000\030\000\067\000\
\068\000\069\000\070\000\071\000\072\000\016\000\078\000\079\000\
\081\000\082\000\085\000\022\000\086\000\087\000\088\000\089\000\
\090\000\091\000\092\000\093\000\094\000\095\000\096\000\097\000\
\098\000\054\000\033\000\053\000\031\000\053\000\031\000\050\000\
\053\000\050\000\036\000\023\000\050\000\049\000\037\000\049\000\
\024\000\043\000\049\000\043\000\017\000\018\000\043\000\038\000\
\039\000\025\000\105\000\028\000\033\000\107\000\034\000\035\000\
\050\000\043\000\043\000\079\000\036\000\049\000\049\000\032\000\
\037\000\043\000\043\000\017\000\044\000\045\000\046\000\047\000\
\056\000\038\000\039\000\064\000\065\000\040\000\041\000\066\000\
\042\000\043\000\057\000\044\000\058\000\044\000\059\000\058\000\
\044\000\059\000\033\000\058\000\034\000\076\000\044\000\045\000\
\046\000\047\000\036\000\044\000\044\000\020\000\037\000\020\000\
\020\000\100\000\102\000\044\000\044\000\020\000\112\000\038\000\
\039\000\020\000\103\000\040\000\041\000\006\000\042\000\043\000\
\108\000\007\000\020\000\020\000\030\000\056\000\020\000\020\000\
\057\000\020\000\020\000\030\000\044\000\045\000\046\000\047\000\
\029\000\111\000\051\000\026\000\000\000\026\000\026\000\020\000\
\020\000\020\000\020\000\026\000\000\000\000\000\033\000\026\000\
\034\000\000\000\000\000\000\000\000\000\104\000\036\000\106\000\
\026\000\026\000\037\000\000\000\026\000\026\000\110\000\026\000\
\026\000\000\000\113\000\038\000\039\000\000\000\000\000\040\000\
\041\000\033\000\042\000\043\000\000\000\026\000\026\000\026\000\
\026\000\036\000\045\000\000\000\045\000\037\000\000\000\045\000\
\044\000\045\000\046\000\047\000\000\000\000\000\038\000\039\000\
\000\000\000\000\045\000\045\000\045\000\045\000\045\000\045\000\
\000\000\000\000\045\000\045\000\062\000\063\000\064\000\065\000\
\000\000\000\000\066\000\044\000\045\000\046\000\047\000\037\000\
\000\000\037\000\000\000\000\000\037\000\000\000\000\000\037\000\
\037\000\037\000\037\000\000\000\000\000\037\000\000\000\037\000\
\037\000\037\000\037\000\037\000\037\000\061\000\000\000\037\000\
\037\000\000\000\000\000\000\000\000\000\062\000\063\000\064\000\
\065\000\000\000\000\000\066\000\000\000\067\000\068\000\069\000\
\070\000\071\000\072\000\000\000\000\000\073\000\074\000\000\000\
\005\000\006\000\007\000\008\000\077\000\000\000\000\000\009\000\
\000\000\010\000\011\000\000\000\062\000\063\000\064\000\065\000\
\000\000\000\000\066\000\000\000\067\000\068\000\069\000\070\000\
\071\000\072\000\109\000\000\000\073\000\074\000\000\000\000\000\
\000\000\000\000\062\000\063\000\064\000\065\000\000\000\000\000\
\066\000\000\000\067\000\068\000\069\000\070\000\071\000\072\000\
\000\000\000\000\073\000\074\000\038\000\000\000\038\000\000\000\
\000\000\038\000\000\000\000\000\038\000\038\000\000\000\000\000\
\000\000\000\000\000\000\000\000\038\000\038\000\038\000\038\000\
\038\000\038\000\000\000\000\000\038\000\038\000\039\000\000\000\
\039\000\000\000\000\000\039\000\000\000\000\000\039\000\039\000\
\046\000\000\000\046\000\000\000\000\000\046\000\039\000\039\000\
\039\000\039\000\039\000\039\000\000\000\000\000\039\000\039\000\
\046\000\046\000\046\000\046\000\046\000\046\000\000\000\000\000\
\046\000\046\000\047\000\000\000\047\000\000\000\000\000\047\000\
\000\000\000\000\000\000\000\000\048\000\000\000\048\000\000\000\
\000\000\048\000\047\000\047\000\047\000\047\000\047\000\047\000\
\000\000\000\000\047\000\047\000\048\000\048\000\048\000\048\000\
\048\000\048\000\075\000\000\000\048\000\048\000\000\000\000\000\
\062\000\063\000\064\000\065\000\000\000\000\000\066\000\000\000\
\067\000\068\000\069\000\070\000\071\000\072\000\099\000\000\000\
\073\000\074\000\000\000\000\000\062\000\063\000\064\000\065\000\
\000\000\000\000\066\000\000\000\067\000\068\000\069\000\070\000\
\071\000\072\000\101\000\000\000\073\000\074\000\000\000\000\000\
\062\000\063\000\064\000\065\000\000\000\000\000\066\000\000\000\
\067\000\068\000\069\000\070\000\071\000\072\000\000\000\000\000\
\073\000\074\000\062\000\063\000\064\000\065\000\000\000\000\000\
\066\000\000\000\067\000\068\000\069\000\070\000\071\000\072\000\
\000\000\000\000\073\000\074\000\062\000\063\000\064\000\065\000\
\000\000\000\000\066\000\000\000\067\000\068\000\069\000\070\000\
\071\000\072\000\000\000\000\000\073\000\062\000\063\000\064\000\
\065\000\000\000\000\000\066\000\000\000\000\000\000\000\069\000\
\070\000\071\000\072\000\005\000\006\000\007\000\008\000\000\000\
\000\000\000\000\009\000\000\000\010\000\011\000"

let yycheck = "\033\000\
\000\000\002\001\036\000\037\000\001\000\018\000\040\000\009\001\
\010\001\011\001\012\001\024\000\013\001\015\001\027\000\017\001\
\018\001\019\001\020\001\021\001\022\001\047\001\056\000\057\000\
\058\000\059\000\060\000\047\001\062\000\063\000\064\000\065\000\
\066\000\067\000\068\000\069\000\070\000\071\000\072\000\073\000\
\074\000\001\001\002\001\001\001\001\001\003\001\003\001\001\001\
\006\001\003\001\010\001\003\001\006\001\001\001\014\001\003\001\
\006\001\001\001\006\001\003\001\001\001\002\001\006\001\023\001\
\024\001\004\001\100\000\047\001\002\001\103\000\004\001\005\001\
\026\001\017\001\018\001\109\000\010\001\025\001\026\001\047\001\
\014\001\025\001\026\001\001\001\044\001\045\001\046\001\047\001\
\002\001\023\001\024\001\011\001\012\001\027\001\028\001\015\001\
\030\001\031\001\002\001\001\001\003\001\003\001\003\001\006\001\
\006\001\006\001\002\001\002\001\004\001\005\001\044\001\045\001\
\046\001\047\001\010\001\017\001\018\001\002\001\014\001\004\001\
\005\001\001\001\003\001\025\001\026\001\010\001\003\001\023\001\
\024\001\014\001\006\001\027\001\028\001\003\001\030\001\031\001\
\029\001\003\001\023\001\024\001\001\001\003\001\027\001\028\001\
\003\001\030\001\031\001\003\001\044\001\045\001\046\001\047\001\
\027\000\109\000\034\000\002\001\255\255\004\001\005\001\044\001\
\045\001\046\001\047\001\010\001\255\255\255\255\002\001\014\001\
\004\001\255\255\255\255\255\255\255\255\099\000\010\001\101\000\
\023\001\024\001\014\001\255\255\027\001\028\001\108\000\030\001\
\031\001\255\255\112\000\023\001\024\001\255\255\255\255\027\001\
\028\001\002\001\030\001\031\001\255\255\044\001\045\001\046\001\
\047\001\010\001\001\001\255\255\003\001\014\001\255\255\006\001\
\044\001\045\001\046\001\047\001\255\255\255\255\023\001\024\001\
\255\255\255\255\017\001\018\001\019\001\020\001\021\001\022\001\
\255\255\255\255\025\001\026\001\009\001\010\001\011\001\012\001\
\255\255\255\255\015\001\044\001\045\001\046\001\047\001\001\001\
\255\255\003\001\255\255\255\255\006\001\255\255\255\255\009\001\
\010\001\011\001\012\001\255\255\255\255\015\001\255\255\017\001\
\018\001\019\001\020\001\021\001\022\001\001\001\255\255\025\001\
\026\001\255\255\255\255\255\255\255\255\009\001\010\001\011\001\
\012\001\255\255\255\255\015\001\255\255\017\001\018\001\019\001\
\020\001\021\001\022\001\255\255\255\255\025\001\026\001\255\255\
\032\001\033\001\034\001\035\001\001\001\255\255\255\255\039\001\
\255\255\041\001\042\001\255\255\009\001\010\001\011\001\012\001\
\255\255\255\255\015\001\255\255\017\001\018\001\019\001\020\001\
\021\001\022\001\001\001\255\255\025\001\026\001\255\255\255\255\
\255\255\255\255\009\001\010\001\011\001\012\001\255\255\255\255\
\015\001\255\255\017\001\018\001\019\001\020\001\021\001\022\001\
\255\255\255\255\025\001\026\001\001\001\255\255\003\001\255\255\
\255\255\006\001\255\255\255\255\009\001\010\001\255\255\255\255\
\255\255\255\255\255\255\255\255\017\001\018\001\019\001\020\001\
\021\001\022\001\255\255\255\255\025\001\026\001\001\001\255\255\
\003\001\255\255\255\255\006\001\255\255\255\255\009\001\010\001\
\001\001\255\255\003\001\255\255\255\255\006\001\017\001\018\001\
\019\001\020\001\021\001\022\001\255\255\255\255\025\001\026\001\
\017\001\018\001\019\001\020\001\021\001\022\001\255\255\255\255\
\025\001\026\001\001\001\255\255\003\001\255\255\255\255\006\001\
\255\255\255\255\255\255\255\255\001\001\255\255\003\001\255\255\
\255\255\006\001\017\001\018\001\019\001\020\001\021\001\022\001\
\255\255\255\255\025\001\026\001\017\001\018\001\019\001\020\001\
\021\001\022\001\003\001\255\255\025\001\026\001\255\255\255\255\
\009\001\010\001\011\001\012\001\255\255\255\255\015\001\255\255\
\017\001\018\001\019\001\020\001\021\001\022\001\003\001\255\255\
\025\001\026\001\255\255\255\255\009\001\010\001\011\001\012\001\
\255\255\255\255\015\001\255\255\017\001\018\001\019\001\020\001\
\021\001\022\001\003\001\255\255\025\001\026\001\255\255\255\255\
\009\001\010\001\011\001\012\001\255\255\255\255\015\001\255\255\
\017\001\018\001\019\001\020\001\021\001\022\001\255\255\255\255\
\025\001\026\001\009\001\010\001\011\001\012\001\255\255\255\255\
\015\001\255\255\017\001\018\001\019\001\020\001\021\001\022\001\
\255\255\255\255\025\001\026\001\009\001\010\001\011\001\012\001\
\255\255\255\255\015\001\255\255\017\001\018\001\019\001\020\001\
\021\001\022\001\255\255\255\255\025\001\009\001\010\001\011\001\
\012\001\255\255\255\255\015\001\255\255\255\255\255\255\019\001\
\020\001\021\001\022\001\032\001\033\001\034\001\035\001\255\255\
\255\255\255\255\039\001\255\255\041\001\042\001"

let yynames_const = "\
  SEMI\000\
  LPAREN\000\
  RPAREN\000\
  LBRACE\000\
  RBRACE\000\
  COMMA\000\
  LBRACKET\000\
  RBRACKET\000\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIVIDE\000\
  ASSIGN\000\
  NOT\000\
  REMAINDER\000\
  INNERPRODUCT\000\
  EQ\000\
  NEQ\000\
  LT\000\
  LEQ\000\
  GT\000\
  GEQ\000\
  TRUE\000\
  FALSE\000\
  AND\000\
  OR\000\
  RETURN\000\
  IF\000\
  ELSE\000\
  FOR\000\
  WHILE\000\
  INT\000\
  DOUBLE\000\
  BOOL\000\
  STRING\000\
  ELIF\000\
  BREAK\000\
  CONTINUE\000\
  VOID\000\
  FUNCTION\000\
  MATRIX\000\
  IMAGE\000\
  FILTER\000\
  EOF\000\
  "

let yynames_block = "\
  INT_LITERAL\000\
  DOUBLE_LITERAL\000\
  STRING_LITERAL\000\
  ID\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    Obj.repr(
# 38 "parser.mly"
            ( _1 )
# 396 "parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 41 "parser.mly"
                 ( [], [] )
# 402 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 42 "parser.mly"
               ( (_2 :: fst _1), snd _1 )
# 410 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'fdecl) in
    Obj.repr(
# 43 "parser.mly"
               ( fst _1, (_2 :: snd _1) )
# 418 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 8 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 7 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 5 : 'formals_opt) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'vdecl_list) in
    let _8 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 47 "parser.mly"
     ( { typ = _1;
      fname = _2;
	 formals = _4;
	 locals = List.rev _7;
	 body = List.rev _8 } )
# 433 "parser.ml"
               : 'fdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 54 "parser.mly"
                  ( [] )
# 439 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'formal_list) in
    Obj.repr(
# 55 "parser.mly"
                  ( List.rev _1 )
# 446 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 58 "parser.mly"
                             ( [(_1,_2)] )
# 454 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'formal_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 59 "parser.mly"
                             ( (_3,_4) :: _1 )
# 463 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 62 "parser.mly"
        ( Int )
# 469 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 63 "parser.mly"
           ( Double )
# 475 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 64 "parser.mly"
         ( Bool )
# 481 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 65 "parser.mly"
         ( Void)
# 487 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 66 "parser.mly"
          (Image)
# 493 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 67 "parser.mly"
           (Matrix)
# 499 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 68 "parser.mly"
           (String)
# 505 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 71 "parser.mly"
              ( (_1, _2) )
# 513 "parser.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 74 "parser.mly"
                     ( [] )
# 519 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'vdecl_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 75 "parser.mly"
                     ( _2 :: _1 )
# 527 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 78 "parser.mly"
                   ( [] )
# 533 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 79 "parser.mly"
                   ( _2 :: _1 )
# 541 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 82 "parser.mly"
              ( Expr _1 )
# 548 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 83 "parser.mly"
                ( Return Noexpr )
# 554 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 84 "parser.mly"
                     ( Return _2 )
# 561 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 85 "parser.mly"
                            ( Block(List.rev _2) )
# 568 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 86 "parser.mly"
                                            ( If(_3, _5, Block([])) )
# 576 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 88 "parser.mly"
                                            ( If(_3, _5, _7) )
# 585 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 6 : 'expr_opt) in
    let _5 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'expr_opt) in
    let _9 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 90 "parser.mly"
     ( For(_3, _5, _7, _9) )
# 595 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 91 "parser.mly"
                                  ( While(_3, _5) )
# 603 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 95 "parser.mly"
                  ( Noexpr )
# 609 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 96 "parser.mly"
                  ( _1 )
# 616 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 99 "parser.mly"
                     ( IntLit(_1) )
# 623 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 100 "parser.mly"
                     ( StringLit(_1) )
# 630 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 101 "parser.mly"
                     ( DoubleLit(_1) )
# 637 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 102 "parser.mly"
                     ( BoolLit(true) )
# 643 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 103 "parser.mly"
                     ( BoolLit(false) )
# 649 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 104 "parser.mly"
                     ( Id(_1) )
# 656 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 105 "parser.mly"
                     ( Binop(_1, Add,   _3) )
# 664 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 106 "parser.mly"
                     ( Binop(_1, Sub,   _3) )
# 672 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 107 "parser.mly"
                     ( Binop(_1, Mult,  _3) )
# 680 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 108 "parser.mly"
                     ( Binop(_1, Div,   _3) )
# 688 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 109 "parser.mly"
                       ( Binop(_1, Rmdr, _3) )
# 696 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 110 "parser.mly"
                     ( Binop(_1, Equal, _3) )
# 704 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 111 "parser.mly"
                     ( Binop(_1, Neq,   _3) )
# 712 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 112 "parser.mly"
                     ( Binop(_1, Less,  _3) )
# 720 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 113 "parser.mly"
                     ( Binop(_1, Leq,   _3) )
# 728 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 114 "parser.mly"
                     ( Binop(_1, Greater, _3) )
# 736 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 115 "parser.mly"
                     ( Binop(_1, Geq,   _3) )
# 744 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 116 "parser.mly"
                     ( Binop(_1, And,   _3) )
# 752 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 117 "parser.mly"
                     ( Binop(_1, Or,    _3) )
# 760 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 118 "parser.mly"
                         ( Unop(Neg, _2) )
# 767 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 119 "parser.mly"
                     ( Unop(Not, _2) )
# 774 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 120 "parser.mly"
                     ( Assign(_1, _3) )
# 782 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'actuals_opt) in
    Obj.repr(
# 121 "parser.mly"
                                 ( Call(_1, _3) )
# 790 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 122 "parser.mly"
                       ( _2 )
# 797 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 125 "parser.mly"
                  ( [] )
# 803 "parser.ml"
               : 'actuals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'actuals_list) in
    Obj.repr(
# 126 "parser.mly"
                  ( List.rev _1 )
# 810 "parser.ml"
               : 'actuals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 129 "parser.mly"
                            ( [_1] )
# 817 "parser.ml"
               : 'actuals_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'actuals_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 130 "parser.mly"
                            ( _3 :: _1 )
# 825 "parser.ml"
               : 'actuals_list))
(* Entry program *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.program)
