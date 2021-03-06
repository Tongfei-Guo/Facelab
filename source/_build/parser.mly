/* Ocamlyacc parser for MicroC */

%{
open Ast
%}

%token SEMI LPAREN RPAREN LBRACE RBRACE LBRACKET RBRACKET COLON COMMA ID_SEP_COMMA
%token PLUS MINUS TIMES DIVIDE ASSIGN NOT REMAINDER MATPRODUCT
%token EQ NEQ LT LEQ GT GEQ TRUE FALSE AND OR
%token RETURN IF ELSE FOR WHILE INT DOUBLE BOOL STRING ELIF BREAK CONTINUE VOID
%token FUNCTION MATRIX IMAGE 
%token FILTER
%token <int> INT_LITERAL
%token <float> DOUBLE_LITERAL
%token <string> STRING_LITERAL
%token <string> ID
%token GLOBAL EOF


%left SEMI
%nonassoc RETURN 
%right ASSIGN
%nonassoc NOELSE
%nonassoc ELSE
%nonassoc ELSEIF
%left COMMA
%nonassoc COLON
%left OR
%left AND
%left EQ NEQ
%left LT GT LEQ GEQ
%left PLUS MINUS
%left TIMES DIVIDE REMAINDER MATPRODUCT
%left FILTER 
%right NOT NEG

%start program
%type <Ast.program> program

%%

program:
  decls EOF { let (fst, snd) = $1 in (List.rev fst, List.rev snd) }

decls:
   /* nothing */ { [], [] }
 | decls fdecl {  ($2 :: fst $1), snd $1 }
 | decls stmt  {  fst $1, ($2 :: snd $1) } 

fdecl:
   FUNCTION ID LPAREN formals_opt RPAREN LBRACE stmt_list RBRACE
     { { typ = Void;
      fname = $2;
	 formals = $4;
	 body = List.rev $7 } }

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
  | typ ID SEMI { Local($1, $2, Noassign) }
  | typ ID ASSIGN expr SEMI { Local($1, $2, $4) }

    
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
  | expr MATPRODUCT expr { Binop($1, Matprod, $3) }
  | expr FILTER expr { Binop($1, Filter, $3) }
  | expr REMAINDER expr{ Binop($1, Rmdr, $3) }
  | expr EQ     expr { Binop($1, Equal, $3) }
  | expr NEQ    expr { Binop($1, Neq,   $3) }
  | expr LT     expr { Binop($1, Less,  $3) }
  | expr LEQ    expr { Binop($1, Leq,   $3) }
  | expr GT     expr { Binop($1, Greater, $3) }
  | expr GEQ    expr { Binop($1, Geq,   $3) }
  | expr AND    expr { Binop($1, And,   $3) }
  | expr OR     expr { Binop($1, Or,    $3) }
  | expr COMMA  expr { match $1, $3 with
                         Comma(e1), Comma(e2) -> Comma(e1@e2)
                       | Comma(e1), e2 -> Comma(e1@[e2])
                       | e1, Comma(e2) -> Comma(e1::e2)
                       | e1, e2 -> Comma([e1;e2])
                     } /* a lot of sematic check needs for this one, the only cases it's allow is in return expr,  ID LPAREN expr_opt RPAREN, and expr ASSIGN expr*/
  | MINUS expr %prec NEG { Unop(Neg, $2) }
  | NOT expr         { Unop(Not, $2) }
  | expr ASSIGN expr   { Assign($1, $3) } /*add to semant, check here only id and matrix indexing can be assigned to, left hand side can be multiple left value, right hand side can be not be expr COMMA expr */
  | ID LBRACKET expr RBRACKET { match $3 with 
                                  Comma([e1;e2]) ->
                                    let r1 = 
                                      (match e1 with 
                                        Range(_,_) -> e1
                                      | _ -> Range(ExprInd(e1), ExprInd(e1)))
                                    and r2 = 
                                      (match e2 with 
                                        Range(_,_) -> e2
                                      | _ -> Range(ExprInd(e2), ExprInd(e2)))
                                    in
                                    Index($1, (r1,r2))
                                | _ -> failwith("wrong indexing expression")
                               }
  | ID LPAREN expr_opt RPAREN { let actuals = 
                                  match $3 with
                                    Comma e1 -> e1
                                  | Noexpr -> []
                                  | _ -> [$3]
                                in
                                Call($1, actuals) }
  | LPAREN expr RPAREN { $2 } 
  /* expr below are for matrix indexing only */
  | expr COLON             { Range(ExprInd($1), End) }
  | expr COLON expr        { Range(ExprInd($1), ExprInd($3)) }
  | COLON expr             { Range(Beg, ExprInd($2)) }
  | COLON                         { Range(Beg, End) }


double_mat_literal: /* matrix parsing */
    LBRACKET RBRACKET { [|[| |]|], (0, 0) } /* empty matrix */
  | LBRACKET double_mat_rows RBRACKET { $2 }

double_mat_rows: /* double_mat_rows is a tuple, its first element is an array of arrays, and its second element is an tuple representing its dimensions */ 
    double_mat_row { [| fst $1 |], (1, snd $1) }
  | double_mat_rows SEMI double_mat_row { Array.append (fst $1) [| fst $3 |], (fst (snd $1) + 1,snd (snd $1)) } 

double_mat_row:
    element { [| $1 |], 1 }
  | double_mat_row COMMA element { Array.append (fst $1) [| $3 |], snd $1 + 1 }

element:
    DOUBLE_LITERAL { $1 }
  | MINUS DOUBLE_LITERAL %prec NEG { -. $2 }

