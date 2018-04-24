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
	movl	$2, 4(%rsp)
	movl	$.Lfmt_str.3, %edi
	movl	$.Lsystem_string, %esi
	xorl	%eax, %eax
	callq	printf
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
	.asciz	"%s\n"
	.size	.Lfmt_str, 4

	.type	.Lfmt_int,@object       # @fmt_int
.Lfmt_int:
	.asciz	"%d\n"
	.size	.Lfmt_int, 4

	.type	.Lfmt_str.1,@object     # @fmt_str.1
.Lfmt_str.1:
	.asciz	"%s\n"
	.size	.Lfmt_str.1, 4

	.type	.Lfmt_int.2,@object     # @fmt_int.2
.Lfmt_int.2:
	.asciz	"%d\n"
	.size	.Lfmt_int.2, 4

	.type	.Lfmt_str.3,@object     # @fmt_str.3
.Lfmt_str.3:
	.asciz	"%s\n"
	.size	.Lfmt_str.3, 4

	.type	.Lfmt_int.4,@object     # @fmt_int.4
.Lfmt_int.4:
	.asciz	"%d\n"
	.size	.Lfmt_int.4, 4

	.type	.Lsystem_string,@object # @system_string
.Lsystem_string:
	.asciz	"Hello world!"
	.size	.Lsystem_string, 13


	.section	".note.GNU-stack","",@progbits
