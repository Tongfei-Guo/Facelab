	.text
	.file	"MicroC"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %merge
	pushq	%rax
.Lcfi0:
	.cfi_def_cfa_offset 16
	movl	$.Lfmt_int, %edi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$0, 4(%rsp)
	cmpl	$3, 4(%rsp)
	je	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:                                # %while_body
                                        # =>This Inner Loop Header: Depth=1
	movl	4(%rsp), %esi
	movl	$.Lfmt_int, %edi
	xorl	%eax, %eax
	callq	printf
	incl	4(%rsp)
	cmpl	$3, 4(%rsp)
	jne	.LBB0_2
.LBB0_3:                                # %merge4
	movl	$0, 4(%rsp)
	cmpl	$3, 4(%rsp)
	je	.LBB0_6
	.p2align	4, 0x90
.LBB0_5:                                # %while_body8
                                        # =>This Inner Loop Header: Depth=1
	movl	4(%rsp), %esi
	movl	$.Lfmt_int, %edi
	xorl	%eax, %eax
	callq	printf
	incl	4(%rsp)
	cmpl	$3, 4(%rsp)
	jne	.LBB0_5
.LBB0_6:                                # %merge13
	xorl	%eax, %eax
	popq	%rcx
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
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

	.type	.Lfmt_int.1,@object     # @fmt_int.1
.Lfmt_int.1:
	.asciz	"\n"
	.size	.Lfmt_int.1, 2

	.type	.Lfmt_int.2,@object     # @fmt_int.2
.Lfmt_int.2:
	.asciz	"  "
	.size	.Lfmt_int.2, 3

	.type	.Lfmt_int.3,@object     # @fmt_int.3
.Lfmt_int.3:
	.zero	1
	.size	.Lfmt_int.3, 1


	.section	".note.GNU-stack","",@progbits
