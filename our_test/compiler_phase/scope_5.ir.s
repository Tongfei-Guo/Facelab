	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
Lcfi3:
	.cfi_offset %rbx, -40
Lcfi4:
	.cfi_offset %r14, -32
Lcfi5:
	.cfi_offset %r15, -24
	movl	$0, -36(%rbp)
	movl	$10, -32(%rbp)
	movl	$1, -28(%rbp)
	cmpl	$10, -28(%rbp)
	jg	LBB0_3
	.p2align	4, 0x90
LBB0_2:                                 ## %while_body
                                        ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	addl	%eax, -32(%rbp)
	incl	%eax
	movl	%eax, -28(%rbp)
	cmpl	$10, -28(%rbp)
	jle	LBB0_2
LBB0_3:                                 ## %merge
	movl	-32(%rbp), %esi
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
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movl	$100, -16(%rax)
	movl	-36(%rbp), %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_printf
	movl	-28(%rbp), %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_printf
	xorl	%eax, %eax
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
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
