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
  | GLOBAL
  | EOF

open Parsing;;
let _ = parse_error;;
# 4 "parser.mly"
open Ast
# 57 "parser.ml"
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
  304 (* GLOBAL *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  300 (* INT_LITERAL *);
  301 (* DOUBLE_LITERAL *);
  302 (* STRING_LITERAL *);
  303 (* ID *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\003\000\003\000\003\000\006\000\
\008\000\008\000\010\000\010\000\004\000\004\000\004\000\004\000\
\004\000\004\000\004\000\009\000\009\000\007\000\007\000\007\000\
\007\000\007\000\007\000\007\000\007\000\007\000\007\000\011\000\
\011\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
\005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
\005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
\005\000\005\000\012\000\012\000\014\000\014\000\015\000\015\000\
\013\000\013\000\016\000\016\000\000\000"

let yylen = "\002\000\
\003\000\000\000\005\000\007\000\000\000\002\000\002\000\008\000\
\000\000\001\000\002\000\004\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\000\000\002\000\002\000\002\000\003\000\
\003\000\005\000\007\000\009\000\005\000\003\000\005\000\000\000\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\002\000\002\000\003\000\
\004\000\003\000\002\000\003\000\001\000\003\000\001\000\003\000\
\000\000\001\000\001\000\003\000\002\000"

let yydefred = "\000\000\
\002\000\000\000\069\000\000\000\000\000\000\000\013\000\014\000\
\015\000\019\000\016\000\018\000\017\000\000\000\000\000\020\000\
\000\000\000\000\000\000\038\000\039\000\000\000\000\000\000\000\
\000\000\000\000\034\000\036\000\035\000\000\000\001\000\000\000\
\000\000\006\000\007\000\037\000\000\000\000\000\000\000\059\000\
\063\000\000\000\000\000\054\000\055\000\023\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\022\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\003\000\000\000\058\000\025\000\
\021\000\000\000\060\000\000\000\024\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\030\000\000\000\
\000\000\000\000\043\000\044\000\045\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\064\000\
\000\000\000\000\000\000\000\000\000\000\000\000\057\000\000\000\
\000\000\004\000\000\000\000\000\029\000\011\000\000\000\000\000\
\000\000\031\000\000\000\000\000\020\000\000\000\027\000\000\000\
\000\000\012\000\000\000\008\000\028\000"

let yydgoto = "\002\000\
\003\000\004\000\006\000\032\000\033\000\034\000\073\000\109\000\
\039\000\110\000\080\000\036\000\084\000\042\000\043\000\085\000"

let yysindex = "\005\000\
\000\000\000\000\000\000\234\254\044\255\047\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\021\255\134\000\000\000\
\250\254\134\000\134\000\000\000\000\000\027\255\067\255\073\255\
\093\255\040\255\000\000\000\000\000\000\017\255\000\000\049\255\
\173\000\000\000\000\000\000\000\003\255\149\001\105\255\000\000\
\000\000\019\255\098\255\000\000\000\000\000\000\195\000\134\000\
\134\000\134\000\103\255\134\000\134\000\004\255\000\000\134\000\
\134\000\134\000\134\000\134\000\134\000\134\000\134\000\134\000\
\134\000\134\000\134\000\134\000\000\000\134\000\000\000\000\000\
\000\000\061\255\000\000\068\255\000\000\169\001\207\001\115\255\
\189\001\044\255\207\001\118\255\120\255\207\001\000\000\134\000\
\010\255\010\255\000\000\000\000\000\000\242\001\242\001\157\255\
\157\255\157\255\157\255\236\255\225\001\217\000\098\255\000\000\
\197\255\134\000\197\255\077\255\124\255\125\255\000\000\134\000\
\239\000\000\000\101\255\005\001\000\000\000\000\130\255\044\255\
\207\001\000\000\197\255\134\000\000\000\094\255\000\000\139\255\
\151\255\000\000\197\255\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\093\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\144\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\034\255\000\000\000\000\000\000\000\000\000\000\
\142\255\000\000\000\000\145\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\037\255\000\000\
\000\000\154\255\085\255\000\000\156\255\091\255\000\000\000\000\
\031\001\057\001\000\000\000\000\000\000\006\255\064\255\067\001\
\093\001\103\001\129\001\097\255\007\255\000\000\035\255\000\000\
\000\000\000\000\000\000\000\000\000\000\159\255\000\000\000\000\
\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\
\108\255\000\000\000\000\160\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\000\000\254\255\252\255\000\000\250\255\000\000\
\020\000\000\000\030\000\000\000\000\000\000\000\086\000\000\000"

let yytablesize = 776
let yytable = "\035\000\
\026\000\040\000\014\000\069\000\087\000\001\000\046\000\053\000\
\046\000\053\000\038\000\046\000\053\000\044\000\045\000\070\000\
\088\000\047\000\052\000\074\000\058\000\059\000\046\000\046\000\
\060\000\005\000\075\000\046\000\015\000\053\000\046\000\046\000\
\053\000\017\000\061\000\062\000\018\000\033\000\041\000\033\000\
\019\000\061\000\062\000\078\000\079\000\081\000\031\000\083\000\
\086\000\020\000\021\000\089\000\090\000\091\000\092\000\093\000\
\094\000\095\000\096\000\097\000\098\000\099\000\100\000\101\000\
\047\000\102\000\047\000\037\000\048\000\047\000\027\000\028\000\
\029\000\030\000\049\000\007\000\008\000\009\000\010\000\108\000\
\047\000\047\000\011\000\113\000\012\000\013\000\051\000\067\000\
\047\000\047\000\067\000\056\000\005\000\056\000\050\000\054\000\
\056\000\052\000\115\000\052\000\117\000\116\000\052\000\076\000\
\082\000\041\000\015\000\121\000\016\000\072\000\068\000\017\000\
\104\000\068\000\018\000\106\000\127\000\126\000\019\000\079\000\
\111\000\052\000\052\000\118\000\133\000\112\000\119\000\020\000\
\021\000\123\000\120\000\022\000\023\000\125\000\024\000\025\000\
\007\000\008\000\009\000\010\000\130\000\131\000\032\000\011\000\
\129\000\012\000\013\000\065\000\027\000\028\000\029\000\030\000\
\015\000\128\000\016\000\132\000\009\000\017\000\066\000\103\000\
\018\000\010\000\032\000\000\000\019\000\056\000\057\000\058\000\
\059\000\000\000\000\000\060\000\000\000\020\000\021\000\000\000\
\000\000\022\000\023\000\000\000\024\000\025\000\007\000\008\000\
\009\000\010\000\000\000\000\000\000\000\011\000\000\000\012\000\
\013\000\000\000\027\000\028\000\029\000\030\000\015\000\000\000\
\016\000\000\000\000\000\017\000\000\000\000\000\018\000\000\000\
\000\000\000\000\019\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\020\000\021\000\000\000\000\000\022\000\
\023\000\000\000\024\000\025\000\007\000\008\000\009\000\010\000\
\000\000\000\000\000\000\011\000\000\000\012\000\013\000\000\000\
\027\000\028\000\029\000\030\000\056\000\057\000\058\000\059\000\
\000\000\000\000\060\000\000\000\061\000\062\000\063\000\064\000\
\065\000\066\000\026\000\000\000\026\000\026\000\000\000\026\000\
\000\000\000\000\026\000\000\000\000\000\000\000\026\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\026\000\
\026\000\000\000\000\000\026\000\026\000\000\000\026\000\026\000\
\026\000\026\000\026\000\026\000\000\000\000\000\000\000\026\000\
\026\000\026\000\026\000\000\000\026\000\026\000\026\000\026\000\
\015\000\000\000\016\000\000\000\000\000\017\000\000\000\000\000\
\018\000\000\000\000\000\000\000\019\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\020\000\021\000\000\000\
\000\000\022\000\023\000\000\000\024\000\025\000\007\000\008\000\
\009\000\010\000\000\000\000\000\000\000\011\000\026\000\012\000\
\013\000\000\000\027\000\028\000\029\000\030\000\005\000\000\000\
\005\000\000\000\000\000\005\000\000\000\000\000\005\000\000\000\
\000\000\000\000\005\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\005\000\005\000\000\000\000\000\005\000\
\005\000\000\000\005\000\005\000\005\000\005\000\005\000\005\000\
\000\000\000\000\000\000\005\000\005\000\005\000\005\000\015\000\
\005\000\005\000\005\000\005\000\017\000\000\000\000\000\018\000\
\040\000\000\000\040\000\019\000\000\000\040\000\000\000\000\000\
\040\000\040\000\040\000\040\000\020\000\021\000\040\000\000\000\
\040\000\040\000\040\000\040\000\040\000\040\000\000\000\000\000\
\040\000\040\000\000\000\000\000\000\000\055\000\000\000\000\000\
\000\000\027\000\028\000\029\000\030\000\056\000\057\000\058\000\
\059\000\000\000\000\000\060\000\000\000\061\000\062\000\063\000\
\064\000\065\000\066\000\077\000\000\000\067\000\068\000\000\000\
\000\000\000\000\000\000\056\000\057\000\058\000\059\000\000\000\
\000\000\060\000\000\000\061\000\062\000\063\000\064\000\065\000\
\066\000\114\000\000\000\067\000\068\000\000\000\000\000\000\000\
\000\000\056\000\057\000\058\000\059\000\000\000\000\000\060\000\
\000\000\061\000\062\000\063\000\064\000\065\000\066\000\122\000\
\000\000\067\000\068\000\000\000\000\000\000\000\000\000\056\000\
\057\000\058\000\059\000\000\000\000\000\060\000\000\000\061\000\
\062\000\063\000\064\000\065\000\066\000\124\000\000\000\067\000\
\068\000\000\000\000\000\000\000\000\000\056\000\057\000\058\000\
\059\000\000\000\000\000\060\000\000\000\061\000\062\000\063\000\
\064\000\065\000\066\000\000\000\000\000\067\000\068\000\041\000\
\000\000\041\000\000\000\000\000\041\000\000\000\000\000\041\000\
\041\000\000\000\000\000\000\000\000\000\000\000\000\000\041\000\
\041\000\041\000\041\000\041\000\041\000\000\000\000\000\041\000\
\041\000\042\000\000\000\042\000\000\000\000\000\042\000\000\000\
\000\000\042\000\042\000\048\000\000\000\048\000\000\000\000\000\
\048\000\042\000\042\000\042\000\042\000\042\000\042\000\000\000\
\000\000\042\000\042\000\048\000\048\000\048\000\048\000\048\000\
\048\000\000\000\000\000\048\000\048\000\049\000\000\000\049\000\
\000\000\000\000\049\000\000\000\000\000\000\000\000\000\050\000\
\000\000\050\000\000\000\000\000\050\000\049\000\049\000\049\000\
\049\000\049\000\049\000\000\000\000\000\049\000\049\000\050\000\
\050\000\050\000\050\000\050\000\050\000\000\000\000\000\050\000\
\050\000\051\000\000\000\051\000\000\000\000\000\051\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\051\000\051\000\051\000\051\000\051\000\051\000\071\000\
\000\000\051\000\051\000\000\000\000\000\056\000\057\000\058\000\
\059\000\000\000\000\000\060\000\000\000\061\000\062\000\063\000\
\064\000\065\000\066\000\105\000\000\000\067\000\068\000\000\000\
\000\000\056\000\057\000\058\000\059\000\000\000\000\000\060\000\
\000\000\061\000\062\000\063\000\064\000\065\000\066\000\107\000\
\000\000\067\000\068\000\000\000\000\000\056\000\057\000\058\000\
\059\000\000\000\000\000\060\000\000\000\061\000\062\000\063\000\
\064\000\065\000\066\000\000\000\000\000\067\000\068\000\056\000\
\057\000\058\000\059\000\000\000\000\000\060\000\000\000\061\000\
\062\000\063\000\064\000\065\000\066\000\000\000\000\000\067\000\
\068\000\056\000\057\000\058\000\059\000\000\000\000\000\060\000\
\000\000\061\000\062\000\063\000\064\000\065\000\066\000\000\000\
\000\000\067\000\056\000\057\000\058\000\059\000\000\000\000\000\
\060\000\000\000\000\000\000\000\063\000\064\000\065\000\066\000"

let yycheck = "\006\000\
\000\000\008\001\005\000\001\001\001\001\001\000\001\001\001\001\
\003\001\003\001\015\000\006\001\006\001\018\000\019\000\013\001\
\013\001\022\000\002\001\001\001\011\001\012\001\017\001\018\001\
\015\001\048\001\008\001\001\001\002\001\013\001\025\001\026\001\
\026\001\007\001\001\001\001\001\010\001\001\001\045\001\003\001\
\014\001\008\001\008\001\048\000\049\000\050\000\000\000\052\000\
\053\000\023\001\024\001\056\000\057\000\058\000\059\000\060\000\
\061\000\062\000\063\000\064\000\065\000\066\000\067\000\068\000\
\001\001\070\000\003\001\047\001\002\001\006\001\044\001\045\001\
\046\001\047\001\002\001\032\001\033\001\034\001\035\001\082\000\
\017\001\018\001\039\001\088\000\041\001\042\001\047\001\003\001\
\025\001\026\001\006\001\001\001\000\000\003\001\002\001\047\001\
\006\001\001\001\105\000\003\001\107\000\106\000\006\001\006\001\
\002\001\045\001\002\001\112\000\004\001\005\001\003\001\007\001\
\045\001\006\001\010\001\001\001\123\000\120\000\014\001\124\000\
\003\001\025\001\026\001\047\001\131\000\006\001\003\001\023\001\
\024\001\029\001\006\001\027\001\028\001\004\001\030\001\031\001\
\032\001\033\001\034\001\035\001\047\001\003\001\001\001\039\001\
\125\000\041\001\042\001\003\001\044\001\045\001\046\001\047\001\
\002\001\124\000\004\001\005\001\003\001\007\001\003\001\074\000\
\010\001\003\001\003\001\255\255\014\001\009\001\010\001\011\001\
\012\001\255\255\255\255\015\001\255\255\023\001\024\001\255\255\
\255\255\027\001\028\001\255\255\030\001\031\001\032\001\033\001\
\034\001\035\001\255\255\255\255\255\255\039\001\255\255\041\001\
\042\001\255\255\044\001\045\001\046\001\047\001\002\001\255\255\
\004\001\255\255\255\255\007\001\255\255\255\255\010\001\255\255\
\255\255\255\255\014\001\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\023\001\024\001\255\255\255\255\027\001\
\028\001\255\255\030\001\031\001\032\001\033\001\034\001\035\001\
\255\255\255\255\255\255\039\001\255\255\041\001\042\001\255\255\
\044\001\045\001\046\001\047\001\009\001\010\001\011\001\012\001\
\255\255\255\255\015\001\255\255\017\001\018\001\019\001\020\001\
\021\001\022\001\002\001\255\255\004\001\005\001\255\255\007\001\
\255\255\255\255\010\001\255\255\255\255\255\255\014\001\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\023\001\
\024\001\255\255\255\255\027\001\028\001\255\255\030\001\031\001\
\032\001\033\001\034\001\035\001\255\255\255\255\255\255\039\001\
\040\001\041\001\042\001\255\255\044\001\045\001\046\001\047\001\
\002\001\255\255\004\001\255\255\255\255\007\001\255\255\255\255\
\010\001\255\255\255\255\255\255\014\001\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\023\001\024\001\255\255\
\255\255\027\001\028\001\255\255\030\001\031\001\032\001\033\001\
\034\001\035\001\255\255\255\255\255\255\039\001\040\001\041\001\
\042\001\255\255\044\001\045\001\046\001\047\001\002\001\255\255\
\004\001\255\255\255\255\007\001\255\255\255\255\010\001\255\255\
\255\255\255\255\014\001\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\023\001\024\001\255\255\255\255\027\001\
\028\001\255\255\030\001\031\001\032\001\033\001\034\001\035\001\
\255\255\255\255\255\255\039\001\040\001\041\001\042\001\002\001\
\044\001\045\001\046\001\047\001\007\001\255\255\255\255\010\001\
\001\001\255\255\003\001\014\001\255\255\006\001\255\255\255\255\
\009\001\010\001\011\001\012\001\023\001\024\001\015\001\255\255\
\017\001\018\001\019\001\020\001\021\001\022\001\255\255\255\255\
\025\001\026\001\255\255\255\255\255\255\001\001\255\255\255\255\
\255\255\044\001\045\001\046\001\047\001\009\001\010\001\011\001\
\012\001\255\255\255\255\015\001\255\255\017\001\018\001\019\001\
\020\001\021\001\022\001\001\001\255\255\025\001\026\001\255\255\
\255\255\255\255\255\255\009\001\010\001\011\001\012\001\255\255\
\255\255\015\001\255\255\017\001\018\001\019\001\020\001\021\001\
\022\001\001\001\255\255\025\001\026\001\255\255\255\255\255\255\
\255\255\009\001\010\001\011\001\012\001\255\255\255\255\015\001\
\255\255\017\001\018\001\019\001\020\001\021\001\022\001\001\001\
\255\255\025\001\026\001\255\255\255\255\255\255\255\255\009\001\
\010\001\011\001\012\001\255\255\255\255\015\001\255\255\017\001\
\018\001\019\001\020\001\021\001\022\001\001\001\255\255\025\001\
\026\001\255\255\255\255\255\255\255\255\009\001\010\001\011\001\
\012\001\255\255\255\255\015\001\255\255\017\001\018\001\019\001\
\020\001\021\001\022\001\255\255\255\255\025\001\026\001\001\001\
\255\255\003\001\255\255\255\255\006\001\255\255\255\255\009\001\
\010\001\255\255\255\255\255\255\255\255\255\255\255\255\017\001\
\018\001\019\001\020\001\021\001\022\001\255\255\255\255\025\001\
\026\001\001\001\255\255\003\001\255\255\255\255\006\001\255\255\
\255\255\009\001\010\001\001\001\255\255\003\001\255\255\255\255\
\006\001\017\001\018\001\019\001\020\001\021\001\022\001\255\255\
\255\255\025\001\026\001\017\001\018\001\019\001\020\001\021\001\
\022\001\255\255\255\255\025\001\026\001\001\001\255\255\003\001\
\255\255\255\255\006\001\255\255\255\255\255\255\255\255\001\001\
\255\255\003\001\255\255\255\255\006\001\017\001\018\001\019\001\
\020\001\021\001\022\001\255\255\255\255\025\001\026\001\017\001\
\018\001\019\001\020\001\021\001\022\001\255\255\255\255\025\001\
\026\001\001\001\255\255\003\001\255\255\255\255\006\001\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\017\001\018\001\019\001\020\001\021\001\022\001\003\001\
\255\255\025\001\026\001\255\255\255\255\009\001\010\001\011\001\
\012\001\255\255\255\255\015\001\255\255\017\001\018\001\019\001\
\020\001\021\001\022\001\003\001\255\255\025\001\026\001\255\255\
\255\255\009\001\010\001\011\001\012\001\255\255\255\255\015\001\
\255\255\017\001\018\001\019\001\020\001\021\001\022\001\003\001\
\255\255\025\001\026\001\255\255\255\255\009\001\010\001\011\001\
\012\001\255\255\255\255\015\001\255\255\017\001\018\001\019\001\
\020\001\021\001\022\001\255\255\255\255\025\001\026\001\009\001\
\010\001\011\001\012\001\255\255\255\255\015\001\255\255\017\001\
\018\001\019\001\020\001\021\001\022\001\255\255\255\255\025\001\
\026\001\009\001\010\001\011\001\012\001\255\255\255\255\015\001\
\255\255\017\001\018\001\019\001\020\001\021\001\022\001\255\255\
\255\255\025\001\009\001\010\001\011\001\012\001\255\255\255\255\
\015\001\255\255\255\255\255\255\019\001\020\001\021\001\022\001"

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
  GLOBAL\000\
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
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'globals_opt) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    Obj.repr(
# 39 "parser.mly"
                        ( let glb = _1 and (fst, snd) = _2 in (List.rev glb, List.rev fst, List.rev snd) )
# 462 "parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 42 "parser.mly"
                 ( [] )
# 468 "parser.ml"
               : 'globals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'globals_opt) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 43 "parser.mly"
                                  ( (_3, _4, Noassign) :: _1 )
# 477 "parser.ml"
               : 'globals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 6 : 'globals_opt) in
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'typ) in
    let _4 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 44 "parser.mly"
                                              ( (_3, _4, _6) :: _1 )
# 487 "parser.ml"
               : 'globals_opt))
; (fun __caml_parser_env ->
    Obj.repr(
# 46 "parser.mly"
                 ( [], [] )
# 493 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'fdecl) in
    Obj.repr(
# 47 "parser.mly"
               (  (_2 :: fst _1), snd _1 )
# 501 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 48 "parser.mly"
               (  fst _1, (_2 :: snd _1) )
# 509 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 6 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 4 : 'formals_opt) in
    let _7 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 52 "parser.mly"
     ( { typ = Void;
      fname = _2;
	 formals = _4;
	 body = List.rev _7 } )
# 521 "parser.ml"
               : 'fdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 58 "parser.mly"
                  ( [] )
# 527 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'formal_list) in
    Obj.repr(
# 59 "parser.mly"
                  ( List.rev _1 )
# 534 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 62 "parser.mly"
                             ( [(_1,_2)] )
# 542 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'formal_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 63 "parser.mly"
                             ( (_3,_4) :: _1 )
# 551 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 66 "parser.mly"
        ( Int )
# 557 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 67 "parser.mly"
           ( Double )
# 563 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 68 "parser.mly"
         ( Bool )
# 569 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 69 "parser.mly"
         ( Void)
# 575 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 70 "parser.mly"
          (Image)
# 581 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 71 "parser.mly"
           (Matrix)
# 587 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 72 "parser.mly"
           (String)
# 593 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 75 "parser.mly"
                   ( [] )
# 599 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 76 "parser.mly"
                   ( _2 :: _1 )
# 607 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 79 "parser.mly"
              ( Expr _1 )
# 614 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 80 "parser.mly"
                ( Return Noexpr )
# 620 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 81 "parser.mly"
                     ( Return _2 )
# 627 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 82 "parser.mly"
                            ( Block(List.rev _2) )
# 634 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 83 "parser.mly"
                                            ( If(_3, _5, Block([])) )
# 642 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 85 "parser.mly"
                                            ( If(_3, _5, _7) )
# 651 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 6 : 'expr_opt) in
    let _5 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'expr_opt) in
    let _9 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 87 "parser.mly"
     ( For(_3, _5, _7, _9) )
# 661 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 88 "parser.mly"
                                  ( While(_3, _5) )
# 669 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 89 "parser.mly"
                ( Local(_1, _2, Noassign) )
# 677 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 90 "parser.mly"
                            ( Local(_1, _2, _4) )
# 686 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 94 "parser.mly"
                  ( Noexpr )
# 692 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 95 "parser.mly"
                  ( _1 )
# 699 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 98 "parser.mly"
                     ( IntLit(_1) )
# 706 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 99 "parser.mly"
                     ( StringLit(_1) )
# 713 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 100 "parser.mly"
                     ( DoubleLit(_1) )
# 720 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'double_mat_literal) in
    Obj.repr(
# 101 "parser.mly"
                       ( MatrixLit(fst _1, snd _1) )
# 727 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 102 "parser.mly"
                     ( BoolLit(true) )
# 733 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 103 "parser.mly"
                     ( BoolLit(false) )
# 739 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 104 "parser.mly"
                     ( Id(_1) )
# 746 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 105 "parser.mly"
                     ( Binop(_1, Add,   _3) )
# 754 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 106 "parser.mly"
                     ( Binop(_1, Sub,   _3) )
# 762 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 107 "parser.mly"
                     ( Binop(_1, Mult,  _3) )
# 770 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 108 "parser.mly"
                     ( Binop(_1, Div,   _3) )
# 778 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 109 "parser.mly"
                       ( Binop(_1, Rmdr, _3) )
# 786 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 110 "parser.mly"
                     ( Binop(_1, Equal, _3) )
# 794 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 111 "parser.mly"
                     ( Binop(_1, Neq,   _3) )
# 802 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 112 "parser.mly"
                     ( Binop(_1, Less,  _3) )
# 810 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 113 "parser.mly"
                     ( Binop(_1, Leq,   _3) )
# 818 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 114 "parser.mly"
                     ( Binop(_1, Greater, _3) )
# 826 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 115 "parser.mly"
                     ( Binop(_1, Geq,   _3) )
# 834 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 116 "parser.mly"
                     ( Binop(_1, And,   _3) )
# 842 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 117 "parser.mly"
                     ( Binop(_1, Or,    _3) )
# 850 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 118 "parser.mly"
                         ( Unop(Neg, _2) )
# 857 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 119 "parser.mly"
                     ( Unop(Not, _2) )
# 864 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 120 "parser.mly"
                     ( Assign(_1, _3) )
# 872 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'actuals_opt) in
    Obj.repr(
# 121 "parser.mly"
                                 ( Call(_1, _3) )
# 880 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 122 "parser.mly"
                       ( _2 )
# 887 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 126 "parser.mly"
                      ( [|[| |]|], (0, 0) )
# 893 "parser.ml"
               : 'double_mat_literal))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'double_mat_rows) in
    Obj.repr(
# 127 "parser.mly"
                                      ( _2 )
# 900 "parser.ml"
               : 'double_mat_literal))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'double_mat_row) in
    Obj.repr(
# 130 "parser.mly"
                   ( [| fst _1 |], (1, snd _1) )
# 907 "parser.ml"
               : 'double_mat_rows))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'double_mat_rows) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'double_mat_row) in
    Obj.repr(
# 131 "parser.mly"
                                        ( Array.append (fst _1) [| fst _3 |], (fst (snd _1) + 1,snd (snd _1)) )
# 915 "parser.ml"
               : 'double_mat_rows))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 134 "parser.mly"
                   ( [| _1 |], 1 )
# 922 "parser.ml"
               : 'double_mat_row))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'double_mat_row) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 135 "parser.mly"
                                        ( Array.append (fst _1) [| _3 |], snd _1 + 1 )
# 930 "parser.ml"
               : 'double_mat_row))
; (fun __caml_parser_env ->
    Obj.repr(
# 138 "parser.mly"
                  ( [] )
# 936 "parser.ml"
               : 'actuals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'actuals_list) in
    Obj.repr(
# 139 "parser.mly"
                  ( List.rev _1 )
# 943 "parser.ml"
               : 'actuals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 142 "parser.mly"
                            ( [_1] )
# 950 "parser.ml"
               : 'actuals_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'actuals_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 143 "parser.mly"
                            ( _3 :: _1 )
# 958 "parser.ml"
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
