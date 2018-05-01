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
	movb	$1, %al
	popq	%rcx
	retq
.Lfunc_end1:
	.size	f2, .Lfunc_end1-f2
	.cfi_endproc
                                        # -- End function
	.globl	f3                      # -- Begin function f3
	.p2align	4, 0x90
	.type	f3,@function
f3:                                     # @f3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi2:
	.cfi_def_cfa_offset 16
	movl	$.Lfmt_str.13, %edi
	movl	$.Lsystem_string, %esi
	xorl	%eax, %eax
	callq	printf
	popq	%rax
	retq
.Lfunc_end2:
	.size	f3, .Lfunc_end2-f3
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi3:
	.cfi_def_cfa_offset 16
	movl	$0, 4(%rsp)
	movl	$.Lfmt_int.22, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf
	callq	f1
	movl	%eax, (%rsp)
	movl	$.Lfmt_str.25, %edi
	movl	$.Lsystem_string.27, %esi
	xorl	%eax, %eax
	callq	printf
	movl	(%rsp), %esi
	movl	$.Lfmt_int.29, %edi
	xorl	%eax, %eax
	callq	printf
	callq	f2
	testb	$1, %al
	je	.LBB3_2
# BB#1:                                 # %then
	callq	f3
.LBB3_2:                                # %merge
	xorl	%eax, %eax
	popq	%rcx
	retq
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
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

	.type	.Lsystem_string,@object # @system_string
.Lsystem_string:
	.asciz	"success"
	.size	.Lsystem_string, 8

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

	.type	.Lfmt_str.23,@object    # @fmt_str.23
.Lfmt_str.23:
	.asciz	"%s\n"
	.size	.Lfmt_str.23, 4

	.type	.Lfmt_int.24,@object    # @fmt_int.24
.Lfmt_int.24:
	.asciz	"%d\n"
	.size	.Lfmt_int.24, 4

	.type	.Lfmt_str.25,@object    # @fmt_str.25
.Lfmt_str.25:
	.asciz	"%s\n"
	.size	.Lfmt_str.25, 4

	.type	.Lfmt_int.26,@object    # @fmt_int.26
.Lfmt_int.26:
	.asciz	"%d\n"
	.size	.Lfmt_int.26, 4

	.type	.Lsystem_string.27,@object # @system_string.27
.Lsystem_string.27:
	.asciz	"now j is :"
	.size	.Lsystem_string.27, 11

	.type	.Lfmt_str.28,@object    # @fmt_str.28
.Lfmt_str.28:
	.asciz	"%s\n"
	.size	.Lfmt_str.28, 4

	.type	.Lfmt_int.29,@object    # @fmt_int.29
.Lfmt_int.29:
	.asciz	"%d\n"
	.size	.Lfmt_int.29, 4

	.type	.Lfmt_str.30,@object    # @fmt_str.30
.Lfmt_str.30:
	.asciz	"%s\n"
	.size	.Lfmt_str.30, 4

	.type	.Lfmt_int.31,@object    # @fmt_int.31
.Lfmt_int.31:
	.asciz	"%d\n"
	.size	.Lfmt_int.31, 4

	.type	.Lfmt_str.32,@object    # @fmt_str.32
.Lfmt_str.32:
	.asciz	"%s\n"
	.size	.Lfmt_str.32, 4

	.type	.Lfmt_int.33,@object    # @fmt_int.33
.Lfmt_int.33:
	.asciz	"%d\n"
	.size	.Lfmt_int.33, 4

	.type	.Lfmt_str.34,@object    # @fmt_str.34
.Lfmt_str.34:
	.asciz	"%s\n"
	.size	.Lfmt_str.34, 4

	.type	.Lfmt_int.35,@object    # @fmt_int.35
.Lfmt_int.35:
	.asciz	"%d\n"
	.size	.Lfmt_int.35, 4

	.type	.Lfmt_str.36,@object    # @fmt_str.36
.Lfmt_str.36:
	.asciz	"%s\n"
	.size	.Lfmt_str.36, 4

	.type	.Lfmt_int.37,@object    # @fmt_int.37
.Lfmt_int.37:
	.asciz	"%d\n"
	.size	.Lfmt_int.37, 4


	.section	".note.GNU-stack","",@progbits
