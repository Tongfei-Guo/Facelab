#require "llvm";;
module L = Llvm;;
module H = Hashtbl;;
open Str;;

type op = Add | Sub | Mult | Div | Equal | Neq | Less | Leq | Greater | Geq |
          And | Or | Rmdr

type uop = Neg | Not

type typ = Int | Bool | Image | Double | Matrix | Void | String | 
           (* below are auxiliary or debug entities, not for other use *)
           Sizedmat of int * int | Bug

type bind = typ * string

type expr =
    IntLit of int
  | StringLit of string
  | DoubleLit of float
  | BoolLit of bool
  | MatrixLit of float array array * (int * int)
  | Id of string
  | Binop of expr * op * expr
  | Unop of uop * expr
  | Assign of string * expr
  | Call of string * expr list
  | Noexpr
  | Noassign


module StringMap = Map.Make(String);;
let context = L.global_context ();;
let the_module = L.create_module context "MicroC";;
let double_t = L.double_type context;;
let i32_t  = L.i32_type  context;;
let i8_t   = L.i8_type   context;;
let str_t  = L.pointer_type i8_t;;
let i1_t   = L.i1_type   context;;
let main = L.define_function "main" (L.function_type i32_t [||]) the_module;;
let builder = L.builder_at_end context (L.entry_block main);;
let v1 = L.const_int i32_t 0;;
let v2 = L.const_int i1_t 0;;
let v3 = L.const_float double_t 2.3;;
let str = L.build_global_string "str" "system_string" builder;;
let mat = 
  let element_type = L.double_type context in
  let row_type = L.array_type element_type 3 in
  L.const_array row_type [|L.const_array element_type [|L.const_float element_type 1.; L.const_float element_type 2.; L.const_float element_type 3.|];
                         L.const_array element_type [|L.const_float element_type 4.; L.const_float element_type 5.; L.const_float element_type 6.|]|];;
let m = L.build_array_alloca (L.array (L.array_type double_t 3) 2) (L.const_int i32_t 2) "m" builder;;

let arr = L.build_array_alloca i32_t (L.const_int i32_t 1) "arr" builder;;

