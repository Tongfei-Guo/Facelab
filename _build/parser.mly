/* Ocamlyacc parser for MicroC */

%{
open Ast
%}

%token SEMI LPAREN RPAREN LBRACE RBRACE COMMA LBRACKET RBRACKET
%token PLUS MINUS TIMES DIVIDE ASSIGN NOT REMAINDER INNERPRODUCT
%token EQ NEQ LT LEQ GT GEQ TRUE FALSE AND OR
%token RETURN IF ELSE FOR WHILE INT DOUBLE BOOL STRING ELIF BREAK CONTINUE VOID
%token FUNCTION MATRIX IMAGE 
%token FILTER
%token <int> INT_LITERAL
%token <float> DOUBLE_LITERAL
%token <string> STRING_LITERAL
%token <string> ID
%token GLOBAL EOF

%nonassoc NOELSE
%nonassoc ELSE
%nonassoc ELSEIF
%right ASSIGN
%left OR
%left AND
%left EQ NEQ
%left LT GT LEQ GEQ
%left PLUS MINUS
%left TIMES DIVIDE REMAINDER
%left FILTER 
%right NOT NEG
%left SEMI

%start program
%type <Ast.program> program

%%

program:
  globals_opt decls EOF { let glb = $1 and (fst, snd, thd) = $2 in (glb, List.rev fst, List.rev snd, List.rev thd) }

globals_opt:
   /* nothing */ { [] }
 | GLOBAL LBRACE vdecl_list RBRACE { $3 }
 
decls:
   /* nothing */ { [], [], [] }
 | decls fdecl { let (fst, snd, thd) = $1 in ($2 :: fst), snd, thd }
 | decls vdecl { let (fst, snd, thd) = $1 in fst, ($2 :: snd), thd }
 | decls stmt  { let (fst, snd, thd) = $1 in fst, snd, ($2 :: thd) } 

fdecl:
   FUNCTION ID LPAREN formals_opt RPAREN LBRACE vdecl_list stmt_list RBRACE
     { { typ = Void;
      fname = $2;
	 formals = $4;
	 locals = List.rev $7;
	 body = List.rev $8 } }

formals_opt:
    /* nothing */ { [] }
  | formal_list   { List.rev $1 }

formal_list:
    typ ID                   { [($1,$2)] }
  | formal_list COMMA typ ID { ($3,$4) :: $1 }

typ:
    INT { Int }
  | DOUBLE { Double }
  | BOOL { Bool }
  | VOID { Void}
  | IMAGE {Image}
  | MATRIX {Matrix}
  | STRING {String}

vdecl:
  typ ID SEMI { ($1, $2) }

vdecl_list:
    /* nothing */    { [] }
  | vdecl_list vdecl { $2 :: $1 }

stmt_list:
    /* nothing */  { [] }
  | stmt_list stmt { $2 :: $1 }

stmt:
    expr SEMI { Expr $1 }
  | RETURN SEMI { Return Noexpr }
  | RETURN expr SEMI { Return $2 }
  | LBRACE stmt_list RBRACE { Block(List.rev $2) }
  | IF LPAREN expr RPAREN stmt %prec NOELSE { If($3, $5, Block([])) } 
  /* elseif */
  | IF LPAREN expr RPAREN stmt ELSE stmt    { If($3, $5, $7) }
  | FOR LPAREN expr_opt SEMI expr SEMI expr_opt RPAREN stmt
     { For($3, $5, $7, $9) }
  | WHILE LPAREN expr RPAREN stmt { While($3, $5) }

    
expr_opt:
    /* nothing */ { Noexpr }
  | expr          { $1 }

expr:
    INT_LITERAL      { IntLit($1) }
  | STRING_LITERAL   { StringLit($1) }
  | DOUBLE_LITERAL   { DoubleLit($1) }
  | double_mat_literal { MatrixLit(fst $1, snd $1) }
  | TRUE             { BoolLit(true) }
  | FALSE            { BoolLit(false) }
  | ID               { Id($1) }
  | expr PLUS   expr { Binop($1, Add,   $3) }
  | expr MINUS  expr { Binop($1, Sub,   $3) }
  | expr TIMES  expr { Binop($1, Mult,  $3) }
  | expr DIVIDE expr { Binop($1, Div,   $3) }
  | expr REMAINDER expr{ Binop($1, Rmdr, $3) }
  | expr EQ     expr { Binop($1, Equal, $3) }
  | expr NEQ    expr { Binop($1, Neq,   $3) }
  | expr LT     expr { Binop($1, Less,  $3) }
  | expr LEQ    expr { Binop($1, Leq,   $3) }
  | expr GT     expr { Binop($1, Greater, $3) }
  | expr GEQ    expr { Binop($1, Geq,   $3) }
  | expr AND    expr { Binop($1, And,   $3) }
  | expr OR     expr { Binop($1, Or,    $3) }
  | MINUS expr %prec NEG { Unop(Neg, $2) }
  | NOT expr         { Unop(Not, $2) }
  | ID ASSIGN expr   { Assign($1, $3) }
  | ID LPAREN actuals_opt RPAREN { Call($1, $3) }
  | LPAREN expr RPAREN { $2 }

double_mat_literal: /* matrix parsing */
    LBRACKET double_mat_rows RBRACKET { $2 }

double_mat_rows: /* double_mat_rows is a tuple, its first element is an array of arrays, and its second element is an tuple representing its dimensions */ 
    double_mat_row { [| fst $1 |], (0, snd $1) }
  | double_mat_rows SEMI double_mat_row { Array.append (fst $1) [| fst $3 |], (fst (snd $1) + 1,snd (snd $1)) } 

double_mat_row:
    DOUBLE_LITERAL { [| $1 |], 1 }
  | double_mat_row COMMA DOUBLE_LITERAL { Array.append (fst $1) [| $3 |], snd $1 + 1 }

actuals_opt:
    /* nothing */ { [] }
  | actuals_list  { List.rev $1 }

actuals_list:
    expr                    { [$1] }
  | actuals_list COMMA expr { $3 :: $1 }
