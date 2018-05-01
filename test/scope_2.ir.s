	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbx
Lcfi0:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
Lcfi1:
	.cfi_def_cfa_offset 48
Lcfi2:
	.cfi_offset %rbx, -16
	movl	$0, 12(%rsp)
	movl	$5, 20(%rsp)
	leaq	L_fmt_int(%rip), %rbx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	20(%rsp), %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	$1, 12(%rsp)
	movl	$6, 16(%rsp)
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	16(%rsp), %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	$2, 12(%rsp)
	movl	$0, 28(%rsp)
	movl	16(%rsp), %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	$3, 24(%rsp)
	movl	$9, 12(%rsp)
	movl	$9, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
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


.subsections_via_symbols
