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

open Parsing;;
let _ = parse_error;;
# 4 "parser.mly"
open Ast
# 54 "parser.ml"
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
  291 (* ELIF *);
  292 (* BREAK *);
  293 (* CONTINUE *);
  294 (* FUNCTION *);
  295 (* MATRIX *);
  296 (* IMAGE *);
  297 (* FILTER *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  298 (* INT_LITERAL *);
  299 (* DOUBLE_LITERAL *);
  300 (* STRING_LITERAL *);
  301 (* ID *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\004\000\005\000\005\000\008\000\
\008\000\009\000\009\000\009\000\006\000\003\000\003\000\003\000\
\007\000\007\000\010\000\010\000\010\000\010\000\012\000\012\000\
\011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\013\000\013\000\014\000\014\000\000\000"

let yylen = "\002\000\
\002\000\000\000\002\000\002\000\009\000\000\000\001\000\002\000\
\004\000\001\000\001\000\001\000\002\000\005\000\005\000\005\000\
\000\000\002\000\002\000\002\000\003\000\003\000\000\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\002\000\002\000\003\000\004\000\003\000\
\000\000\001\000\001\000\003\000\002\000"

let yydefred = "\000\000\
\002\000\000\000\053\000\000\000\010\000\011\000\012\000\000\000\
\001\000\003\000\004\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\008\000\014\000\016\000\015\000\000\000\000\000\000\000\017\000\
\009\000\013\000\000\000\000\000\017\000\005\000\000\000\000\000\
\028\000\029\000\000\000\025\000\027\000\026\000\000\000\018\000\
\000\000\000\000\000\000\000\000\045\000\020\000\000\000\000\000\
\000\000\019\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\048\000\
\022\000\021\000\000\000\000\000\000\000\000\000\000\000\000\000\
\033\000\034\000\035\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\047\000\000\000\000\000"

let yydgoto = "\002\000\
\003\000\004\000\031\000\011\000\017\000\032\000\035\000\018\000\
\012\000\048\000\049\000\000\000\076\000\077\000"

let yysindex = "\008\000\
\000\000\000\000\000\000\001\000\000\000\000\000\000\000\227\254\
\000\000\000\000\000\000\229\254\070\255\026\255\093\255\032\255\
\048\255\076\255\038\255\091\255\094\255\097\255\090\255\093\255\
\000\000\000\000\000\000\000\000\093\255\052\255\093\255\000\000\
\000\000\000\000\042\255\079\255\000\000\000\000\079\255\079\255\
\000\000\000\000\035\255\000\000\000\000\000\000\000\255\000\000\
\153\255\097\000\086\255\115\000\000\000\000\000\175\255\079\255\
\079\255\000\000\079\255\079\255\079\255\079\255\079\255\079\255\
\079\255\079\255\079\255\079\255\079\255\079\255\079\255\000\000\
\000\000\000\000\115\000\098\255\106\255\115\000\049\255\049\255\
\000\000\000\000\000\000\096\255\096\255\083\000\083\000\083\000\
\083\000\255\255\133\000\000\000\079\255\115\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\101\255\000\000\
\000\000\111\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\131\255\000\000\
\000\000\000\000\000\000\005\255\000\000\000\000\000\000\116\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\064\255\000\000\117\255\009\255\201\255\227\255\
\000\000\000\000\000\000\037\255\085\000\237\255\023\000\049\000\
\059\000\016\255\047\255\000\000\000\000\065\255"

let yygindex = "\000\000\
\000\000\000\000\095\000\000\000\000\000\102\000\098\000\000\000\
\246\255\000\000\220\255\000\000\000\000\000\000"

let yytablesize = 414
let yytable = "\050\000\
\009\000\056\000\052\000\053\000\019\000\044\000\055\000\044\000\
\001\000\046\000\044\000\046\000\057\000\030\000\046\000\013\000\
\042\000\014\000\042\000\075\000\078\000\042\000\079\000\080\000\
\081\000\082\000\083\000\084\000\085\000\086\000\087\000\088\000\
\089\000\090\000\091\000\054\000\036\000\036\000\016\000\036\000\
\042\000\042\000\036\000\036\000\039\000\037\000\038\000\043\000\
\040\000\043\000\023\000\039\000\043\000\036\000\036\000\040\000\
\094\000\041\000\042\000\061\000\062\000\036\000\036\000\063\000\
\041\000\042\000\051\000\052\000\043\000\051\000\052\000\015\000\
\043\000\020\000\021\000\022\000\044\000\045\000\046\000\047\000\
\036\000\024\000\025\000\044\000\045\000\046\000\047\000\036\000\
\039\000\037\000\073\000\026\000\040\000\029\000\027\000\039\000\
\033\000\028\000\010\000\040\000\092\000\041\000\042\000\006\000\
\059\000\060\000\061\000\062\000\041\000\042\000\063\000\093\000\
\043\000\007\000\066\000\067\000\068\000\069\000\049\000\050\000\
\044\000\045\000\046\000\047\000\005\000\006\000\007\000\044\000\
\045\000\046\000\047\000\030\000\034\000\030\000\051\000\000\000\
\030\000\000\000\000\000\030\000\030\000\030\000\030\000\000\000\
\000\000\030\000\000\000\030\000\030\000\030\000\030\000\030\000\
\030\000\058\000\000\000\030\000\030\000\000\000\000\000\000\000\
\000\000\059\000\060\000\061\000\062\000\000\000\000\000\063\000\
\000\000\064\000\065\000\066\000\067\000\068\000\069\000\074\000\
\000\000\070\000\071\000\000\000\000\000\000\000\000\000\059\000\
\060\000\061\000\062\000\000\000\000\000\063\000\000\000\064\000\
\065\000\066\000\067\000\068\000\069\000\000\000\000\000\070\000\
\071\000\031\000\000\000\031\000\000\000\000\000\031\000\000\000\
\000\000\031\000\031\000\000\000\000\000\000\000\000\000\000\000\
\000\000\031\000\031\000\031\000\031\000\031\000\031\000\000\000\
\000\000\031\000\031\000\032\000\000\000\032\000\000\000\000\000\
\032\000\000\000\000\000\032\000\032\000\038\000\000\000\038\000\
\000\000\000\000\038\000\032\000\032\000\032\000\032\000\032\000\
\032\000\000\000\000\000\032\000\032\000\038\000\038\000\038\000\
\038\000\038\000\038\000\000\000\000\000\038\000\038\000\059\000\
\060\000\061\000\062\000\000\000\000\000\063\000\000\000\064\000\
\065\000\066\000\067\000\068\000\069\000\000\000\000\000\039\000\
\000\000\039\000\000\000\000\000\039\000\000\000\000\000\000\000\
\005\000\006\000\007\000\000\000\000\000\000\000\008\000\039\000\
\039\000\039\000\039\000\039\000\039\000\000\000\000\000\039\000\
\039\000\040\000\000\000\040\000\000\000\000\000\040\000\000\000\
\000\000\000\000\000\000\041\000\000\000\041\000\000\000\000\000\
\041\000\040\000\040\000\040\000\040\000\040\000\040\000\000\000\
\000\000\040\000\040\000\041\000\041\000\041\000\041\000\041\000\
\041\000\000\000\000\000\041\000\041\000\037\000\000\000\037\000\
\000\000\000\000\037\000\059\000\060\000\061\000\062\000\000\000\
\000\000\063\000\000\000\072\000\000\000\037\000\037\000\000\000\
\000\000\059\000\060\000\061\000\062\000\037\000\037\000\063\000\
\000\000\064\000\065\000\066\000\067\000\068\000\069\000\000\000\
\000\000\070\000\071\000\059\000\060\000\061\000\062\000\000\000\
\000\000\063\000\000\000\064\000\065\000\066\000\067\000\068\000\
\069\000\000\000\000\000\070\000\071\000\059\000\060\000\061\000\
\062\000\000\000\000\000\063\000\000\000\064\000\065\000\066\000\
\067\000\068\000\069\000\000\000\000\000\070\000"

let yycheck = "\036\000\
\000\000\002\001\039\000\040\000\015\000\001\001\043\000\003\001\
\001\000\001\001\006\001\003\001\013\001\024\000\006\001\045\001\
\001\001\045\001\003\001\056\000\057\000\006\001\059\000\060\000\
\061\000\062\000\063\000\064\000\065\000\066\000\067\000\068\000\
\069\000\070\000\071\000\001\001\002\001\001\001\013\001\003\001\
\025\001\026\001\006\001\002\001\010\001\004\001\005\001\001\001\
\014\001\003\001\003\001\010\001\006\001\017\001\018\001\014\001\
\093\000\023\001\024\001\011\001\012\001\025\001\026\001\015\001\
\023\001\024\001\003\001\003\001\027\001\006\001\006\001\002\001\
\026\001\042\001\043\001\044\001\042\001\043\001\044\001\045\001\
\002\001\006\001\045\001\042\001\043\001\044\001\045\001\002\001\
\010\001\004\001\005\001\001\001\014\001\004\001\001\001\010\001\
\045\001\001\001\004\000\014\001\003\001\023\001\024\001\003\001\
\009\001\010\001\011\001\012\001\023\001\024\001\015\001\006\001\
\027\001\003\001\019\001\020\001\021\001\022\001\003\001\003\001\
\042\001\043\001\044\001\045\001\032\001\033\001\034\001\042\001\
\043\001\044\001\045\001\001\001\031\000\003\001\037\000\255\255\
\006\001\255\255\255\255\009\001\010\001\011\001\012\001\255\255\
\255\255\015\001\255\255\017\001\018\001\019\001\020\001\021\001\
\022\001\001\001\255\255\025\001\026\001\255\255\255\255\255\255\
\255\255\009\001\010\001\011\001\012\001\255\255\255\255\015\001\
\255\255\017\001\018\001\019\001\020\001\021\001\022\001\001\001\
\255\255\025\001\026\001\255\255\255\255\255\255\255\255\009\001\
\010\001\011\001\012\001\255\255\255\255\015\001\255\255\017\001\
\018\001\019\001\020\001\021\001\022\001\255\255\255\255\025\001\
\026\001\001\001\255\255\003\001\255\255\255\255\006\001\255\255\
\255\255\009\001\010\001\255\255\255\255\255\255\255\255\255\255\
\255\255\017\001\018\001\019\001\020\001\021\001\022\001\255\255\
\255\255\025\001\026\001\001\001\255\255\003\001\255\255\255\255\
\006\001\255\255\255\255\009\001\010\001\001\001\255\255\003\001\
\255\255\255\255\006\001\017\001\018\001\019\001\020\001\021\001\
\022\001\255\255\255\255\025\001\026\001\017\001\018\001\019\001\
\020\001\021\001\022\001\255\255\255\255\025\001\026\001\009\001\
\010\001\011\001\012\001\255\255\255\255\015\001\255\255\017\001\
\018\001\019\001\020\001\021\001\022\001\255\255\255\255\001\001\
\255\255\003\001\255\255\255\255\006\001\255\255\255\255\255\255\
\032\001\033\001\034\001\255\255\255\255\255\255\038\001\017\001\
\018\001\019\001\020\001\021\001\022\001\255\255\255\255\025\001\
\026\001\001\001\255\255\003\001\255\255\255\255\006\001\255\255\
\255\255\255\255\255\255\001\001\255\255\003\001\255\255\255\255\
\006\001\017\001\018\001\019\001\020\001\021\001\022\001\255\255\
\255\255\025\001\026\001\017\001\018\001\019\001\020\001\021\001\
\022\001\255\255\255\255\025\001\026\001\001\001\255\255\003\001\
\255\255\255\255\006\001\009\001\010\001\011\001\012\001\255\255\
\255\255\015\001\255\255\003\001\255\255\017\001\018\001\255\255\
\255\255\009\001\010\001\011\001\012\001\025\001\026\001\015\001\
\255\255\017\001\018\001\019\001\020\001\021\001\022\001\255\255\
\255\255\025\001\026\001\009\001\010\001\011\001\012\001\255\255\
\255\255\015\001\255\255\017\001\018\001\019\001\020\001\021\001\
\022\001\255\255\255\255\025\001\026\001\009\001\010\001\011\001\
\012\001\255\255\255\255\015\001\255\255\017\001\018\001\019\001\
\020\001\021\001\022\001\255\255\255\255\025\001"

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
  ELIF\000\
  BREAK\000\
  CONTINUE\000\
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
# 37 "parser.mly"
            ( _1 )
# 343 "parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 40 "parser.mly"
                 ( [], [] )
# 349 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 41 "parser.mly"
               ( (_2 :: fst _1), snd _1 )
# 357 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'fdecl) in
    Obj.repr(
# 42 "parser.mly"
               ( fst _1, (_2 :: snd _1) )
# 365 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 7 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 5 : 'formals_opt) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'vdecl_list) in
    let _8 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 46 "parser.mly"
     ( {fname = _2;
	 formals = _4;
	 locals = List.rev _7;
	 body = List.rev _8 } )
# 378 "parser.ml"
               : 'fdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 52 "parser.mly"
                  ( [] )
# 384 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'formal_list) in
    Obj.repr(
# 53 "parser.mly"
                  ( List.rev _1 )
# 391 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 56 "parser.mly"
                             ( [(_1,_2)] )
# 399 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'formal_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 57 "parser.mly"
                             ( (_3,_4) :: _1 )
# 408 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 60 "parser.mly"
        ( Int )
# 414 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 61 "parser.mly"
           ( Double )
# 420 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 62 "parser.mly"
         ( Bool )
# 426 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'vdecl) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl_list) in
    Obj.repr(
# 64 "parser.mly"
                    (_1 :: _2)
# 434 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : int) in
    Obj.repr(
# 66 "parser.mly"
                                  ( (_1, _2, _4) )
# 443 "parser.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 67 "parser.mly"
                                      ( (_1, _2, _4) )
# 452 "parser.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : float) in
    Obj.repr(
# 68 "parser.mly"
                                      ( (_1, _2, _4) )
# 461 "parser.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 70 "parser.mly"
                   ( [] )
# 467 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 71 "parser.mly"
                   ( _2 :: _1 )
# 475 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 74 "parser.mly"
              ( Expr _1 )
# 482 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 75 "parser.mly"
                ( Return Noexpr )
# 488 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 76 "parser.mly"
                     ( Return _2 )
# 495 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 77 "parser.mly"
                            ( Block(List.rev _2) )
# 502 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 86 "parser.mly"
                  ( Noexpr )
# 508 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 87 "parser.mly"
                  ( _1 )
# 515 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 90 "parser.mly"
                     ( IntLit(_1) )
# 522 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 91 "parser.mly"
                     ( StringLit(_1) )
# 529 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 92 "parser.mly"
                     ( DoubleLit(_1) )
# 536 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 93 "parser.mly"
                     ( BoolLit(true) )
# 542 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 94 "parser.mly"
                     ( BoolLit(false) )
# 548 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 95 "parser.mly"
                     ( Id(_1) )
# 555 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 96 "parser.mly"
                     ( Binop(_1, Add,   _3) )
# 563 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 97 "parser.mly"
                     ( Binop(_1, Sub,   _3) )
# 571 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 98 "parser.mly"
                     ( Binop(_1, Mult,  _3) )
# 579 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 99 "parser.mly"
                     ( Binop(_1, Div,   _3) )
# 587 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 100 "parser.mly"
                       ( Binop(_1, Rmdr, _3) )
# 595 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 101 "parser.mly"
                     ( Binop(_1, Equal, _3) )
# 603 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 102 "parser.mly"
                     ( Binop(_1, Neq,   _3) )
# 611 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 103 "parser.mly"
                     ( Binop(_1, Less,  _3) )
# 619 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 104 "parser.mly"
                     ( Binop(_1, Leq,   _3) )
# 627 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 105 "parser.mly"
                     ( Binop(_1, Greater, _3) )
# 635 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 106 "parser.mly"
                     ( Binop(_1, Geq,   _3) )
# 643 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 107 "parser.mly"
                     ( Binop(_1, And,   _3) )
# 651 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 108 "parser.mly"
                     ( Binop(_1, Or,    _3) )
# 659 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 109 "parser.mly"
                         ( Unop(Neg, _2) )
# 666 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 110 "parser.mly"
                     ( Unop(Not, _2) )
# 673 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 111 "parser.mly"
                     ( Assign(_1, _3) )
# 681 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'actuals_opt) in
    Obj.repr(
# 112 "parser.mly"
                                 ( Call(_1, _3) )
# 689 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 113 "parser.mly"
                       ( _2 )
# 696 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 116 "parser.mly"
                  ( [] )
# 702 "parser.ml"
               : 'actuals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'actuals_list) in
    Obj.repr(
# 117 "parser.mly"
                  ( List.rev _1 )
# 709 "parser.ml"
               : 'actuals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 120 "parser.mly"
                            ( [_1] )
# 716 "parser.ml"
               : 'actuals_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'actuals_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 121 "parser.mly"
                            ( _3 :: _1 )
# 724 "parser.ml"
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
