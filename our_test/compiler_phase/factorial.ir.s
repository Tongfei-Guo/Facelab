	.text
	.file	"MicroC"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Lcfi0:
	.cfi_def_cfa_offset 16
.Lcfi1:
	.cfi_offset %rbx, -16
	movl	$4, %edi
	callq	factorial
	movl	(%rax), %ebx
	movq	%rax, %rdi
	callq	free
	movl	$.Lfmt_int, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
	callq	printf
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	factorial               # -- Begin function factorial
	.p2align	4, 0x90
	.type	factorial,@function
factorial:                              # @factorial
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Lcfi2:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Lcfi3:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Lcfi4:
	.cfi_def_cfa_offset 32
.Lcfi5:
	.cfi_offset %rbx, -24
.Lcfi6:
	.cfi_offset %r14, -16
	movl	%edi, 4(%rsp)
	cmpl	$1, %edi
	jne	.LBB1_3
# BB#1:                                 # %then
	movl	$4, %edi
	callq	malloc
	movl	$1, (%rax)
	jmp	.LBB1_2
.LBB1_3:                                # %else
	movl	$4, %edi
	callq	malloc
	movq	%rax, %r14
	movl	4(%rsp), %ebx
	leal	-1(%rbx), %edi
	callq	factorial
	imull	(%rax), %ebx
	movq	%rax, %rdi
	callq	free
	movl	%ebx, (%r14)
	movq	%r14, %rax
.LBB1_2:                                # %then
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	factorial, .Lfunc_end1-factorial
	.cfi_endproc
                                        # -- End function
	.type	.Lfmt_str,@object       # @fmt_str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lfmt_str:
	.asciz	"%s"
	.size	.Lfmt_str, 3

	.type	.Lfmt_double,@object    # @fmt_double
.Lfmt_double:
	.asciz	"%f"
	.size	.Lfmt_double, 3

	.type	.Lfmt_int,@object       # @fmt_int
.Lfmt_int:
	.asciz	"%d"
	.size	.Lfmt_int, 3

	.type	.Lfmt_str.1,@object     # @fmt_str.1
.Lfmt_str.1:
	.asciz	"\n"
	.size	.Lfmt_str.1, 2

	.type	.Lfmt_str.2,@object     # @fmt_str.2
.Lfmt_str.2:
	.asciz	"  "
	.size	.Lfmt_str.2, 3

	.type	.Lfmt_str.3,@object     # @fmt_str.3
.Lfmt_str.3:
	.zero	1
	.size	.Lfmt_str.3, 1

	.type	.Lfmt_str.4,@object     # @fmt_str.4
.Lfmt_str.4:
	.asciz	"true"
	.size	.Lfmt_str.4, 5

	.type	.Lfmt_str.5,@object     # @fmt_str.5
.Lfmt_str.5:
	.asciz	"false"
	.size	.Lfmt_str.5, 6


	.section	".note.GNU-stack","",@progbits
