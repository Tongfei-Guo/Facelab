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
	subq	$16, %rsp
.Lcfi1:
	.cfi_def_cfa_offset 32
.Lcfi2:
	.cfi_offset %rbx, -16
	movl	$81, %edi
	movl	$18, %esi
	callq	gcd
	movl	(%rax), %ebx
	movq	%rax, %rdi
	callq	free
	movl	%ebx, 12(%rsp)
	movl	$.Lfmt_int, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
	callq	printf
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	gcd                     # -- Begin function gcd
	.p2align	4, 0x90
	.type	gcd,@function
gcd:                                    # @gcd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi3:
	.cfi_def_cfa_offset 16
	movl	%edi, (%rsp)
	movl	%esi, 4(%rsp)
	cmpl	$0, (%rsp)
	jne	.LBB1_2
	jmp	.LBB1_6
	.p2align	4, 0x90
.LBB1_5:                                # %else
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	(%rsp), %eax
	cltd
	idivl	4(%rsp)
	movl	%edx, (%rsp)
	cmpl	$0, (%rsp)
	je	.LBB1_6
.LBB1_2:                                # %while
                                        # =>This Inner Loop Header: Depth=1
	movl	4(%rsp), %eax
	testl	%eax, %eax
	je	.LBB1_6
# BB#3:                                 # %while_body
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	4(%rsp), %eax
	cmpl	(%rsp), %eax
	jle	.LBB1_5
# BB#4:                                 # %then
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	4(%rsp), %eax
	cltd
	idivl	(%rsp)
	movl	%edx, 4(%rsp)
	cmpl	$0, (%rsp)
	jne	.LBB1_2
.LBB1_6:                                # %merge9
	cmpl	$0, (%rsp)
	je	.LBB1_7
# BB#9:                                 # %else18
	movl	$4, %edi
	callq	malloc
	movl	(%rsp), %ecx
	jmp	.LBB1_8
.LBB1_7:                                # %then16
	movl	$4, %edi
	callq	malloc
	movl	4(%rsp), %ecx
.LBB1_8:                                # %then16
	movl	%ecx, (%rax)
	popq	%rcx
	retq
.Lfunc_end1:
	.size	gcd, .Lfunc_end1-gcd
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
