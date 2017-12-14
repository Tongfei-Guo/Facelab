	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %merge
	pushq	%rbx
Lcfi0:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
Lcfi1:
	.cfi_def_cfa_offset 32
Lcfi2:
	.cfi_offset %rbx, -16
	leaq	L_fmt_int(%rip), %rbx
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	$0, 12(%rsp)
	cmpl	$3, 12(%rsp)
	je	LBB0_3
	.p2align	4, 0x90
LBB0_2:                                 ## %while_body
                                        ## =>This Inner Loop Header: Depth=1
	movl	12(%rsp), %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	incl	12(%rsp)
	cmpl	$3, 12(%rsp)
	jne	LBB0_2
LBB0_3:                                 ## %merge4
	movl	$0, 12(%rsp)
	leaq	L_fmt_int(%rip), %rbx
	cmpl	$3, 12(%rsp)
	je	LBB0_6
	.p2align	4, 0x90
LBB0_5:                                 ## %while_body8
                                        ## =>This Inner Loop Header: Depth=1
	movl	12(%rsp), %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	incl	12(%rsp)
	cmpl	$3, 12(%rsp)
	jne	LBB0_5
LBB0_6:                                 ## %merge13
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_size                   ## -- Begin function size
	.p2align	4, 0x90
_size:                                  ## @size
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbx
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$8, %edi
	callq	_malloc
	movl	8(%rbx), %ecx
	movl	%ecx, (%rax)
	movl	12(%rbx), %ecx
	movl	%ecx, 4(%rax)
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
