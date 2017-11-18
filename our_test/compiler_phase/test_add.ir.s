	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
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
	leaq	L_fmt_int.18(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_printf
	cvtsi2sdl	12(%rsp), %xmm0
	addsd	16(%rsp), %xmm0
	movsd	%xmm0, 16(%rsp)
	leaq	L_fmt_double.23(%rip), %rdi
	movb	$1, %al
	callq	_printf
	leaq	L_fmt_str.25(%rip), %rdi
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

L_fmt_str.22:                           ## @fmt_str.22
	.asciz	"%s"

L_fmt_double.23:                        ## @fmt_double.23
	.asciz	"%f"

L_fmt_int.24:                           ## @fmt_int.24
	.asciz	"%d"

L_fmt_str.25:                           ## @fmt_str.25
	.asciz	"%s"

L_fmt_double.26:                        ## @fmt_double.26
	.asciz	"%f"

L_fmt_int.27:                           ## @fmt_int.27
	.asciz	"%d"

L_system_string:                        ## @system_string
	.asciz	"Hello"


.subsections_via_symbols
