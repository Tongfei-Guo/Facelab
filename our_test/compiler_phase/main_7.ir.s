	.text
	.file	"MicroC"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Lcfi0:
	.cfi_def_cfa_offset 32
	movl	$3, 20(%rsp)
	movl	$7, 16(%rsp)
	movl	$12, 12(%rsp)
	movl	$.Lfmt_int.20, %edi
	movl	$12, %esi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	addq	$24, %rsp
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

	.type	.Lfmt_str.3,@object     # @fmt_str.3
.Lfmt_str.3:
	.asciz	"%s"
	.size	.Lfmt_str.3, 3

	.type	.Lfmt_double.4,@object  # @fmt_double.4
.Lfmt_double.4:
	.asciz	"%f"
	.size	.Lfmt_double.4, 3

	.type	.Lfmt_int.5,@object     # @fmt_int.5
.Lfmt_int.5:
	.asciz	"%d"
	.size	.Lfmt_int.5, 3

	.type	.Lfmt_int.6,@object     # @fmt_int.6
.Lfmt_int.6:
	.asciz	"\n"
	.size	.Lfmt_int.6, 2

	.type	.Lfmt_int.7,@object     # @fmt_int.7
.Lfmt_int.7:
	.asciz	"  "
	.size	.Lfmt_int.7, 3

	.type	.Lfmt_str.8,@object     # @fmt_str.8
.Lfmt_str.8:
	.asciz	"%s"
	.size	.Lfmt_str.8, 3

	.type	.Lfmt_double.9,@object  # @fmt_double.9
.Lfmt_double.9:
	.asciz	"%f"
	.size	.Lfmt_double.9, 3

	.type	.Lfmt_int.10,@object    # @fmt_int.10
.Lfmt_int.10:
	.asciz	"%d"
	.size	.Lfmt_int.10, 3

	.type	.Lfmt_int.11,@object    # @fmt_int.11
.Lfmt_int.11:
	.asciz	"\n"
	.size	.Lfmt_int.11, 2

	.type	.Lfmt_int.12,@object    # @fmt_int.12
.Lfmt_int.12:
	.asciz	"  "
	.size	.Lfmt_int.12, 3

	.type	.Lfmt_str.13,@object    # @fmt_str.13
.Lfmt_str.13:
	.asciz	"%s"
	.size	.Lfmt_str.13, 3

	.type	.Lfmt_double.14,@object # @fmt_double.14
.Lfmt_double.14:
	.asciz	"%f"
	.size	.Lfmt_double.14, 3

	.type	.Lfmt_int.15,@object    # @fmt_int.15
.Lfmt_int.15:
	.asciz	"%d"
	.size	.Lfmt_int.15, 3

	.type	.Lfmt_int.16,@object    # @fmt_int.16
.Lfmt_int.16:
	.asciz	"\n"
	.size	.Lfmt_int.16, 2

	.type	.Lfmt_int.17,@object    # @fmt_int.17
.Lfmt_int.17:
	.asciz	"  "
	.size	.Lfmt_int.17, 3

	.type	.Lfmt_str.18,@object    # @fmt_str.18
.Lfmt_str.18:
	.asciz	"%s"
	.size	.Lfmt_str.18, 3

	.type	.Lfmt_double.19,@object # @fmt_double.19
.Lfmt_double.19:
	.asciz	"%f"
	.size	.Lfmt_double.19, 3

	.type	.Lfmt_int.20,@object    # @fmt_int.20
.Lfmt_int.20:
	.asciz	"%d"
	.size	.Lfmt_int.20, 3

	.type	.Lfmt_int.21,@object    # @fmt_int.21
.Lfmt_int.21:
	.asciz	"\n"
	.size	.Lfmt_int.21, 2

	.type	.Lfmt_int.22,@object    # @fmt_int.22
.Lfmt_int.22:
	.asciz	"  "
	.size	.Lfmt_int.22, 3


	.section	".note.GNU-stack","",@progbits
