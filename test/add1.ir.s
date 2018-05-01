	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_try                    ## -- Begin function try
	.p2align	4, 0x90
_try:                                   ## @try
	.cfi_startproc
## BB#0:                                ## %entry
	movl	$3, -4(%rsp)
	movl	$5, -8(%rsp)
	movl	$8, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rax
Lcfi0:
	.cfi_def_cfa_offset 16
	movl	$0, 4(%rsp)
	callq	_try
	movl	%eax, %ecx
	movl	%ecx, 4(%rsp)
	leaq	L_fmt_int.21(%rip), %rdi
	xorl	%eax, %eax
	movl	%ecx, %esi
	callq	_printf
	xorl	%eax, %eax
	popq	%rcx
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_fmt_str:                              ## @fmt_str
	.asciz	"%s"

L_fmt_double:                           ## @fmt_double
	.asciz	"%f"

L_fmt_int:                              ## @fmt_int
	.asciz	"%d"

L_fmt_str.1:                            ## @fmt_str.1
	.asciz	"%s"

L_fmt_double.2:                         ## @fmt_double.2
	.asciz	"%f"

L_fmt_int.3:                            ## @fmt_int.3
	.asciz	"%d"

L_fmt_str.4:                            ## @fmt_str.4
	.asciz	"%s"

L_fmt_double.5:                         ## @fmt_double.5
	.asciz	"%f"

L_fmt_int.6:                            ## @fmt_int.6
	.asciz	"%d"

L_fmt_str.7:                            ## @fmt_str.7
	.asciz	"%s"

L_fmt_double.8:                         ## @fmt_double.8
	.asciz	"%f"

L_fmt_int.9:                            ## @fmt_int.9
	.asciz	"%d"

L_fmt_str.10:                           ## @fmt_str.10
	.asciz	"%s"

L_fmt_double.11:                        ## @fmt_double.11
	.asciz	"%f"

L_fmt_int.12:                           ## @fmt_int.12
	.asciz	"%d"

L_fmt_str.13:                           ## @fmt_str.13
	.asciz	"%s"

L_fmt_double.14:                        ## @fmt_double.14
	.asciz	"%f"

L_fmt_int.15:                           ## @fmt_int.15
	.asciz	"%d"

L_fmt_str.16:                           ## @fmt_str.16
	.asciz	"%s"

L_fmt_double.17:                        ## @fmt_double.17
	.asciz	"%f"

L_fmt_int.18:                           ## @fmt_int.18
	.asciz	"%d"

L_fmt_str.19:                           ## @fmt_str.19
	.asciz	"%s"

L_fmt_double.20:                        ## @fmt_double.20
	.asciz	"%f"

L_fmt_int.21:                           ## @fmt_int.21
	.asciz	"%d"


.subsections_via_symbols
