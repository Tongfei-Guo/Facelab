	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%r15
Lcfi0:
	.cfi_def_cfa_offset 16
	pushq	%r14
Lcfi1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
Lcfi2:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
Lcfi3:
	.cfi_def_cfa_offset 48
Lcfi4:
	.cfi_offset %rbx, -32
Lcfi5:
	.cfi_offset %r14, -24
Lcfi6:
	.cfi_offset %r15, -16
	movl	$0, 12(%rsp)
	movl	$1, 8(%rsp)
	cmpl	$10, 8(%rsp)
	jg	LBB0_3
	.p2align	4, 0x90
LBB0_2:                                 ## %while_body
                                        ## =>This Inner Loop Header: Depth=1
	movl	8(%rsp), %eax
	addl	%eax, 12(%rsp)
	incl	%eax
	movl	%eax, 8(%rsp)
	cmpl	$10, 8(%rsp)
	jle	LBB0_2
LBB0_3:                                 ## %merge
	movl	12(%rsp), %esi
	leaq	L_fmt_int(%rip), %r14
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	leaq	L_fmt_str(%rip), %r15
	leaq	L_fmt_str.1(%rip), %rbx
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_printf
	movl	8(%rsp), %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_printf
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
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
