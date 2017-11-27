	.text
	.file	"MicroC"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi0:
	.cfi_def_cfa_offset 16
	movl	$252, %edi
	movl	$9, %esi
	callq	gcd
	movl	%eax, %ecx
	movl	$.Lfmt_int, %edi
	xorl	%eax, %eax
	movl	%ecx, %esi
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$71, %edi
	movl	$131, %esi
	callq	gcd
	movl	%eax, %ecx
	movl	$.Lfmt_int, %edi
	xorl	%eax, %eax
	movl	%ecx, %esi
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	popq	%rcx
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
.Lcfi1:
	.cfi_def_cfa_offset 16
	movl	%edi, 4(%rsp)
	movl	%esi, (%rsp)
	testl	%edi, %edi
	je	.LBB1_6
# BB#1:                                 # %merge
	cmpl	$0, (%rsp)
	je	.LBB1_7
# BB#2:                                 # %merge3
	movl	4(%rsp), %eax
	cmpl	(%rsp), %eax
	jle	.LBB1_5
# BB#3:                                 # %then10
	movl	(%rsp), %esi
	movl	4(%rsp), %eax
	jmp	.LBB1_4
.LBB1_6:                                # %then
	movl	(%rsp), %eax
	popq	%rcx
	retq
.LBB1_7:                                # %then4
	movl	4(%rsp), %eax
	popq	%rcx
	retq
.LBB1_5:                                # %else15
	movl	4(%rsp), %esi
	movl	(%rsp), %eax
.LBB1_4:                                # %then10
	cltd
	idivl	%esi
	movl	%edx, %edi
	callq	gcd
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
