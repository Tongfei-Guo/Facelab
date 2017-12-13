	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %entry
	subq	$24, %rsp
Lcfi0:
	.cfi_def_cfa_offset 32
	movabsq	$4608083138725491507, %rax ## imm = 0x3FF3333333333333
	movq	%rax, 16(%rsp)
	movl	$0, 12(%rsp)
	leaq	L_fmt_int(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_printf
	cvtsi2sdl	12(%rsp), %xmm0
	addsd	16(%rsp), %xmm0
	movsd	%xmm0, 16(%rsp)
	leaq	L_fmt_double(%rip), %rdi
	movb	$1, %al
	callq	_printf
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_system_string(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	xorl	%eax, %eax
	addq	$24, %rsp
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
	.asciz	"\n"

L_fmt_str.2:                            ## @fmt_str.2
	.asciz	"  "

L_fmt_str.3:                            ## @fmt_str.3
	.space	1

L_fmt_str.4:                            ## @fmt_str.4
	.asciz	"true"

L_fmt_str.5:                            ## @fmt_str.5
	.asciz	"false"

L_system_string:                        ## @system_string
	.asciz	"Hello"


.subsections_via_symbols
