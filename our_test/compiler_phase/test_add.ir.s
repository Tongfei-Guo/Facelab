	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %entry
	movabsq	$4608083138725491507, %rax ## imm = 0x3FF3333333333333
	movq	%rax, -8(%rsp)
	movabsq	$4612136378390124954, %rax ## imm = 0x400199999999999A
	movq	%rax, -16(%rsp)
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_fmt_str:                              ## @fmt_str
	.asciz	"%s\n"

L_fmt_int:                              ## @fmt_int
	.asciz	"%d\n"

L_fmt_str.1:                            ## @fmt_str.1
	.asciz	"%s\n"

L_fmt_int.2:                            ## @fmt_int.2
	.asciz	"%d\n"

L_fmt_str.3:                            ## @fmt_str.3
	.asciz	"%s\n"

L_fmt_int.4:                            ## @fmt_int.4
	.asciz	"%d\n"


.subsections_via_symbols
