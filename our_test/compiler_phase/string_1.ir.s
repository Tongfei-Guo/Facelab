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
	movq	$.Lsystem_string, 16(%rsp)
	movq	$.Lsystem_string.7, 8(%rsp)
	movl	$.Lfmt_str.8, %edi
	movl	$.Lsystem_string, %esi
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

	.type	.Lfmt_str.1,@object     # @fmt_str.1
.Lfmt_str.1:
	.asciz	"%s"
	.size	.Lfmt_str.1, 3

	.type	.Lfmt_double.2,@object  # @fmt_double.2
.Lfmt_double.2:
	.asciz	"%f"
	.size	.Lfmt_double.2, 3

	.type	.Lfmt_int.3,@object     # @fmt_int.3
.Lfmt_int.3:
	.asciz	"%d"
	.size	.Lfmt_int.3, 3

	.type	.Lsystem_string,@object # @system_string
.Lsystem_string:
	.asciz	"abcdedg"
	.size	.Lsystem_string, 8

	.type	.Lfmt_str.4,@object     # @fmt_str.4
.Lfmt_str.4:
	.asciz	"%s"
	.size	.Lfmt_str.4, 3

	.type	.Lfmt_double.5,@object  # @fmt_double.5
.Lfmt_double.5:
	.asciz	"%f"
	.size	.Lfmt_double.5, 3

	.type	.Lfmt_int.6,@object     # @fmt_int.6
.Lfmt_int.6:
	.asciz	"%d"
	.size	.Lfmt_int.6, 3

	.type	.Lsystem_string.7,@object # @system_string.7
.Lsystem_string.7:
	.asciz	"cd"
	.size	.Lsystem_string.7, 3

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


	.section	".note.GNU-stack","",@progbits
