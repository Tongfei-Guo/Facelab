	.text
	.file	"MicroC"
	.globl	f1                      # -- Begin function f1
	.p2align	4, 0x90
	.type	f1,@function
f1:                                     # @f1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi0:
	.cfi_def_cfa_offset 16
	movl	$.Lfmt_int.2, %edi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$5, %eax
	popq	%rcx
	retq
.Lfunc_end0:
	.size	f1, .Lfunc_end0-f1
	.cfi_endproc
                                        # -- End function
	.globl	f2                      # -- Begin function f2
	.p2align	4, 0x90
	.type	f2,@function
f2:                                     # @f2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi1:
	.cfi_def_cfa_offset 16
	callq	f1
	movl	%eax, %ecx
	movl	$.Lfmt_int.8, %edi
	xorl	%eax, %eax
	movl	%ecx, %esi
	callq	printf
	movq	$.Lsystem_string, (%rsp)
	movl	$.Lsystem_string, %eax
	popq	%rcx
	retq
.Lfunc_end1:
	.size	f2, .Lfunc_end1-f2
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Lcfi2:
	.cfi_def_cfa_offset 48
	movl	$0, 28(%rsp)
	movl	$.Lfmt_int.18, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf
	callq	f1
	movl	%eax, 12(%rsp)
	movl	$.Lfmt_str.21, %edi
	movl	$.Lsystem_string.23, %esi
	xorl	%eax, %eax
	callq	printf
	movl	12(%rsp), %esi
	movl	$.Lfmt_int.25, %edi
	xorl	%eax, %eax
	callq	printf
	movq	$.Lsystem_string.28, 32(%rsp)
	movl	$.Lfmt_str.29, %edi
	movl	$.Lsystem_string.28, %esi
	xorl	%eax, %eax
	callq	printf
	callq	f2
	movq	%rax, 16(%rsp)
	movl	$.Lfmt_str.33, %edi
	movl	$.Lsystem_string.35, %esi
	xorl	%eax, %eax
	callq	printf
	movq	16(%rsp), %rsi
	movl	$.Lfmt_str.36, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	addq	$40, %rsp
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
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

	.type	.Lfmt_str.5,@object     # @fmt_str.5
.Lfmt_str.5:
	.asciz	"%s\n"
	.size	.Lfmt_str.5, 4

	.type	.Lfmt_int.6,@object     # @fmt_int.6
.Lfmt_int.6:
	.asciz	"%d\n"
	.size	.Lfmt_int.6, 4

	.type	.Lfmt_str.7,@object     # @fmt_str.7
.Lfmt_str.7:
	.asciz	"%s\n"
	.size	.Lfmt_str.7, 4

	.type	.Lfmt_int.8,@object     # @fmt_int.8
.Lfmt_int.8:
	.asciz	"%d\n"
	.size	.Lfmt_int.8, 4

	.type	.Lfmt_str.9,@object     # @fmt_str.9
.Lfmt_str.9:
	.asciz	"%s\n"
	.size	.Lfmt_str.9, 4

	.type	.Lfmt_int.10,@object    # @fmt_int.10
.Lfmt_int.10:
	.asciz	"%d\n"
	.size	.Lfmt_int.10, 4

	.type	.Lsystem_string,@object # @system_string
.Lsystem_string:
	.asciz	"abc"
	.size	.Lsystem_string, 4

	.type	.Lfmt_str.11,@object    # @fmt_str.11
.Lfmt_str.11:
	.asciz	"%s\n"
	.size	.Lfmt_str.11, 4

	.type	.Lfmt_int.12,@object    # @fmt_int.12
.Lfmt_int.12:
	.asciz	"%d\n"
	.size	.Lfmt_int.12, 4

	.type	.Lfmt_str.13,@object    # @fmt_str.13
.Lfmt_str.13:
	.asciz	"%s\n"
	.size	.Lfmt_str.13, 4

	.type	.Lfmt_int.14,@object    # @fmt_int.14
.Lfmt_int.14:
	.asciz	"%d\n"
	.size	.Lfmt_int.14, 4

	.type	.Lfmt_str.15,@object    # @fmt_str.15
.Lfmt_str.15:
	.asciz	"%s\n"
	.size	.Lfmt_str.15, 4

	.type	.Lfmt_int.16,@object    # @fmt_int.16
.Lfmt_int.16:
	.asciz	"%d\n"
	.size	.Lfmt_int.16, 4

	.type	.Lfmt_str.17,@object    # @fmt_str.17
.Lfmt_str.17:
	.asciz	"%s\n"
	.size	.Lfmt_str.17, 4

	.type	.Lfmt_int.18,@object    # @fmt_int.18
.Lfmt_int.18:
	.asciz	"%d\n"
	.size	.Lfmt_int.18, 4

	.type	.Lfmt_str.19,@object    # @fmt_str.19
.Lfmt_str.19:
	.asciz	"%s\n"
	.size	.Lfmt_str.19, 4

	.type	.Lfmt_int.20,@object    # @fmt_int.20
.Lfmt_int.20:
	.asciz	"%d\n"
	.size	.Lfmt_int.20, 4

	.type	.Lfmt_str.21,@object    # @fmt_str.21
.Lfmt_str.21:
	.asciz	"%s\n"
	.size	.Lfmt_str.21, 4

	.type	.Lfmt_int.22,@object    # @fmt_int.22
.Lfmt_int.22:
	.asciz	"%d\n"
	.size	.Lfmt_int.22, 4

	.type	.Lsystem_string.23,@object # @system_string.23
.Lsystem_string.23:
	.asciz	"now j is :"
	.size	.Lsystem_string.23, 11

	.type	.Lfmt_str.24,@object    # @fmt_str.24
.Lfmt_str.24:
	.asciz	"%s\n"
	.size	.Lfmt_str.24, 4

	.type	.Lfmt_int.25,@object    # @fmt_int.25
.Lfmt_int.25:
	.asciz	"%d\n"
	.size	.Lfmt_int.25, 4

	.type	.Lfmt_str.26,@object    # @fmt_str.26
.Lfmt_str.26:
	.asciz	"%s\n"
	.size	.Lfmt_str.26, 4

	.type	.Lfmt_int.27,@object    # @fmt_int.27
.Lfmt_int.27:
	.asciz	"%d\n"
	.size	.Lfmt_int.27, 4

	.type	.Lsystem_string.28,@object # @system_string.28
.Lsystem_string.28:
	.asciz	"hahaha"
	.size	.Lsystem_string.28, 7

	.type	.Lfmt_str.29,@object    # @fmt_str.29
.Lfmt_str.29:
	.asciz	"%s\n"
	.size	.Lfmt_str.29, 4

	.type	.Lfmt_int.30,@object    # @fmt_int.30
.Lfmt_int.30:
	.asciz	"%d\n"
	.size	.Lfmt_int.30, 4

	.type	.Lfmt_str.31,@object    # @fmt_str.31
.Lfmt_str.31:
	.asciz	"%s\n"
	.size	.Lfmt_str.31, 4

	.type	.Lfmt_int.32,@object    # @fmt_int.32
.Lfmt_int.32:
	.asciz	"%d\n"
	.size	.Lfmt_int.32, 4

	.type	.Lfmt_str.33,@object    # @fmt_str.33
.Lfmt_str.33:
	.asciz	"%s\n"
	.size	.Lfmt_str.33, 4

	.type	.Lfmt_int.34,@object    # @fmt_int.34
.Lfmt_int.34:
	.asciz	"%d\n"
	.size	.Lfmt_int.34, 4

	.type	.Lsystem_string.35,@object # @system_string.35
.Lsystem_string.35:
	.asciz	"now s is :"
	.size	.Lsystem_string.35, 11

	.type	.Lfmt_str.36,@object    # @fmt_str.36
.Lfmt_str.36:
	.asciz	"%s\n"
	.size	.Lfmt_str.36, 4

	.type	.Lfmt_int.37,@object    # @fmt_int.37
.Lfmt_int.37:
	.asciz	"%d\n"
	.size	.Lfmt_int.37, 4


	.section	".note.GNU-stack","",@progbits
