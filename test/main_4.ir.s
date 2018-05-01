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
	movl	$.Lfmt_int.3, %edi
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
	movq	$.Lsystem_string, (%rsp)
	callq	f1
	movl	%eax, %ecx
	movl	$.Lfmt_int.15, %edi
	xorl	%eax, %eax
	movl	%ecx, %esi
	callq	printf
	movq	$.Lsystem_string.19, (%rsp)
	movl	$.Lsystem_string.19, %eax
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
	movl	$0, 12(%rsp)
	movl	$.Lfmt_int.37, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf
	callq	f1
	movl	%eax, 12(%rsp)
	movl	$.Lfmt_str.41, %edi
	movl	$.Lsystem_string.45, %esi
	xorl	%eax, %eax
	callq	printf
	movl	12(%rsp), %esi
	movl	$.Lfmt_int.48, %edi
	xorl	%eax, %eax
	callq	printf
	movq	$.Lsystem_string.56, 32(%rsp)
	movl	$.Lfmt_str.57, %edi
	movl	$.Lsystem_string.56, %esi
	xorl	%eax, %eax
	callq	printf
	movq	$.Lsystem_string.63, 16(%rsp)
	callq	f2
	movq	%rax, 16(%rsp)
	movl	$.Lfmt_str.67, %edi
	movl	$.Lsystem_string.71, %esi
	xorl	%eax, %eax
	callq	printf
	movq	16(%rsp), %rsi
	movl	$.Lfmt_str.72, %edi
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

	.type	.Lfmt_double,@object    # @fmt_double
.Lfmt_double:
	.asciz	"%f\n"
	.size	.Lfmt_double, 4

	.type	.Lfmt_int,@object       # @fmt_int
.Lfmt_int:
	.asciz	"%d\n"
	.size	.Lfmt_int, 4

	.type	.Lfmt_str.1,@object     # @fmt_str.1
.Lfmt_str.1:
	.asciz	"%s\n"
	.size	.Lfmt_str.1, 4

	.type	.Lfmt_double.2,@object  # @fmt_double.2
.Lfmt_double.2:
	.asciz	"%f\n"
	.size	.Lfmt_double.2, 4

	.type	.Lfmt_int.3,@object     # @fmt_int.3
.Lfmt_int.3:
	.asciz	"%d\n"
	.size	.Lfmt_int.3, 4

	.type	.Lfmt_str.4,@object     # @fmt_str.4
.Lfmt_str.4:
	.asciz	"%s\n"
	.size	.Lfmt_str.4, 4

	.type	.Lfmt_double.5,@object  # @fmt_double.5
.Lfmt_double.5:
	.asciz	"%f\n"
	.size	.Lfmt_double.5, 4

	.type	.Lfmt_int.6,@object     # @fmt_int.6
.Lfmt_int.6:
	.asciz	"%d\n"
	.size	.Lfmt_int.6, 4

	.type	.Lfmt_str.7,@object     # @fmt_str.7
.Lfmt_str.7:
	.asciz	"%s\n"
	.size	.Lfmt_str.7, 4

	.type	.Lfmt_double.8,@object  # @fmt_double.8
.Lfmt_double.8:
	.asciz	"%f\n"
	.size	.Lfmt_double.8, 4

	.type	.Lfmt_int.9,@object     # @fmt_int.9
.Lfmt_int.9:
	.asciz	"%d\n"
	.size	.Lfmt_int.9, 4

	.type	.Lfmt_str.10,@object    # @fmt_str.10
.Lfmt_str.10:
	.asciz	"%s\n"
	.size	.Lfmt_str.10, 4

	.type	.Lfmt_double.11,@object # @fmt_double.11
.Lfmt_double.11:
	.asciz	"%f\n"
	.size	.Lfmt_double.11, 4

	.type	.Lfmt_int.12,@object    # @fmt_int.12
.Lfmt_int.12:
	.asciz	"%d\n"
	.size	.Lfmt_int.12, 4

	.type	.Lsystem_string,@object # @system_string
.Lsystem_string:
	.zero	1
	.size	.Lsystem_string, 1

	.type	.Lfmt_str.13,@object    # @fmt_str.13
.Lfmt_str.13:
	.asciz	"%s\n"
	.size	.Lfmt_str.13, 4

	.type	.Lfmt_double.14,@object # @fmt_double.14
.Lfmt_double.14:
	.asciz	"%f\n"
	.size	.Lfmt_double.14, 4

	.type	.Lfmt_int.15,@object    # @fmt_int.15
.Lfmt_int.15:
	.asciz	"%d\n"
	.size	.Lfmt_int.15, 4

	.type	.Lfmt_str.16,@object    # @fmt_str.16
.Lfmt_str.16:
	.asciz	"%s\n"
	.size	.Lfmt_str.16, 4

	.type	.Lfmt_double.17,@object # @fmt_double.17
.Lfmt_double.17:
	.asciz	"%f\n"
	.size	.Lfmt_double.17, 4

	.type	.Lfmt_int.18,@object    # @fmt_int.18
.Lfmt_int.18:
	.asciz	"%d\n"
	.size	.Lfmt_int.18, 4

	.type	.Lsystem_string.19,@object # @system_string.19
.Lsystem_string.19:
	.asciz	"abc"
	.size	.Lsystem_string.19, 4

	.type	.Lfmt_str.20,@object    # @fmt_str.20
.Lfmt_str.20:
	.asciz	"%s\n"
	.size	.Lfmt_str.20, 4

	.type	.Lfmt_double.21,@object # @fmt_double.21
.Lfmt_double.21:
	.asciz	"%f\n"
	.size	.Lfmt_double.21, 4

	.type	.Lfmt_int.22,@object    # @fmt_int.22
.Lfmt_int.22:
	.asciz	"%d\n"
	.size	.Lfmt_int.22, 4

	.type	.Lfmt_str.23,@object    # @fmt_str.23
.Lfmt_str.23:
	.asciz	"%s\n"
	.size	.Lfmt_str.23, 4

	.type	.Lfmt_double.24,@object # @fmt_double.24
.Lfmt_double.24:
	.asciz	"%f\n"
	.size	.Lfmt_double.24, 4

	.type	.Lfmt_int.25,@object    # @fmt_int.25
.Lfmt_int.25:
	.asciz	"%d\n"
	.size	.Lfmt_int.25, 4

	.type	.Lfmt_str.26,@object    # @fmt_str.26
.Lfmt_str.26:
	.asciz	"%s\n"
	.size	.Lfmt_str.26, 4

	.type	.Lfmt_double.27,@object # @fmt_double.27
.Lfmt_double.27:
	.asciz	"%f\n"
	.size	.Lfmt_double.27, 4

	.type	.Lfmt_int.28,@object    # @fmt_int.28
.Lfmt_int.28:
	.asciz	"%d\n"
	.size	.Lfmt_int.28, 4

	.type	.Lfmt_str.29,@object    # @fmt_str.29
.Lfmt_str.29:
	.asciz	"%s\n"
	.size	.Lfmt_str.29, 4

	.type	.Lfmt_double.30,@object # @fmt_double.30
.Lfmt_double.30:
	.asciz	"%f\n"
	.size	.Lfmt_double.30, 4

	.type	.Lfmt_int.31,@object    # @fmt_int.31
.Lfmt_int.31:
	.asciz	"%d\n"
	.size	.Lfmt_int.31, 4

	.type	.Lfmt_str.32,@object    # @fmt_str.32
.Lfmt_str.32:
	.asciz	"%s\n"
	.size	.Lfmt_str.32, 4

	.type	.Lfmt_double.33,@object # @fmt_double.33
.Lfmt_double.33:
	.asciz	"%f\n"
	.size	.Lfmt_double.33, 4

	.type	.Lfmt_int.34,@object    # @fmt_int.34
.Lfmt_int.34:
	.asciz	"%d\n"
	.size	.Lfmt_int.34, 4

	.type	.Lfmt_str.35,@object    # @fmt_str.35
.Lfmt_str.35:
	.asciz	"%s\n"
	.size	.Lfmt_str.35, 4

	.type	.Lfmt_double.36,@object # @fmt_double.36
.Lfmt_double.36:
	.asciz	"%f\n"
	.size	.Lfmt_double.36, 4

	.type	.Lfmt_int.37,@object    # @fmt_int.37
.Lfmt_int.37:
	.asciz	"%d\n"
	.size	.Lfmt_int.37, 4

	.type	.Lfmt_str.38,@object    # @fmt_str.38
.Lfmt_str.38:
	.asciz	"%s\n"
	.size	.Lfmt_str.38, 4

	.type	.Lfmt_double.39,@object # @fmt_double.39
.Lfmt_double.39:
	.asciz	"%f\n"
	.size	.Lfmt_double.39, 4

	.type	.Lfmt_int.40,@object    # @fmt_int.40
.Lfmt_int.40:
	.asciz	"%d\n"
	.size	.Lfmt_int.40, 4

	.type	.Lfmt_str.41,@object    # @fmt_str.41
.Lfmt_str.41:
	.asciz	"%s\n"
	.size	.Lfmt_str.41, 4

	.type	.Lfmt_double.42,@object # @fmt_double.42
.Lfmt_double.42:
	.asciz	"%f\n"
	.size	.Lfmt_double.42, 4

	.type	.Lfmt_int.43,@object    # @fmt_int.43
.Lfmt_int.43:
	.asciz	"%d\n"
	.size	.Lfmt_int.43, 4

	.type	.Lsystem_string.44,@object # @system_string.44
.Lsystem_string.44:
	.asciz	"now j is :"
	.size	.Lsystem_string.44, 11

	.type	.Lsystem_string.45,@object # @system_string.45
.Lsystem_string.45:
	.asciz	"now j is :"
	.size	.Lsystem_string.45, 11

	.type	.Lfmt_str.46,@object    # @fmt_str.46
.Lfmt_str.46:
	.asciz	"%s\n"
	.size	.Lfmt_str.46, 4

	.type	.Lfmt_double.47,@object # @fmt_double.47
.Lfmt_double.47:
	.asciz	"%f\n"
	.size	.Lfmt_double.47, 4

	.type	.Lfmt_int.48,@object    # @fmt_int.48
.Lfmt_int.48:
	.asciz	"%d\n"
	.size	.Lfmt_int.48, 4

	.type	.Lfmt_str.49,@object    # @fmt_str.49
.Lfmt_str.49:
	.asciz	"%s\n"
	.size	.Lfmt_str.49, 4

	.type	.Lfmt_double.50,@object # @fmt_double.50
.Lfmt_double.50:
	.asciz	"%f\n"
	.size	.Lfmt_double.50, 4

	.type	.Lfmt_int.51,@object    # @fmt_int.51
.Lfmt_int.51:
	.asciz	"%d\n"
	.size	.Lfmt_int.51, 4

	.type	.Lsystem_string.52,@object # @system_string.52
.Lsystem_string.52:
	.zero	1
	.size	.Lsystem_string.52, 1

	.type	.Lfmt_str.53,@object    # @fmt_str.53
.Lfmt_str.53:
	.asciz	"%s\n"
	.size	.Lfmt_str.53, 4

	.type	.Lfmt_double.54,@object # @fmt_double.54
.Lfmt_double.54:
	.asciz	"%f\n"
	.size	.Lfmt_double.54, 4

	.type	.Lfmt_int.55,@object    # @fmt_int.55
.Lfmt_int.55:
	.asciz	"%d\n"
	.size	.Lfmt_int.55, 4

	.type	.Lsystem_string.56,@object # @system_string.56
.Lsystem_string.56:
	.asciz	"hahaha"
	.size	.Lsystem_string.56, 7

	.type	.Lfmt_str.57,@object    # @fmt_str.57
.Lfmt_str.57:
	.asciz	"%s\n"
	.size	.Lfmt_str.57, 4

	.type	.Lfmt_double.58,@object # @fmt_double.58
.Lfmt_double.58:
	.asciz	"%f\n"
	.size	.Lfmt_double.58, 4

	.type	.Lfmt_int.59,@object    # @fmt_int.59
.Lfmt_int.59:
	.asciz	"%d\n"
	.size	.Lfmt_int.59, 4

	.type	.Lfmt_str.60,@object    # @fmt_str.60
.Lfmt_str.60:
	.asciz	"%s\n"
	.size	.Lfmt_str.60, 4

	.type	.Lfmt_double.61,@object # @fmt_double.61
.Lfmt_double.61:
	.asciz	"%f\n"
	.size	.Lfmt_double.61, 4

	.type	.Lfmt_int.62,@object    # @fmt_int.62
.Lfmt_int.62:
	.asciz	"%d\n"
	.size	.Lfmt_int.62, 4

	.type	.Lsystem_string.63,@object # @system_string.63
.Lsystem_string.63:
	.zero	1
	.size	.Lsystem_string.63, 1

	.type	.Lfmt_str.64,@object    # @fmt_str.64
.Lfmt_str.64:
	.asciz	"%s\n"
	.size	.Lfmt_str.64, 4

	.type	.Lfmt_double.65,@object # @fmt_double.65
.Lfmt_double.65:
	.asciz	"%f\n"
	.size	.Lfmt_double.65, 4

	.type	.Lfmt_int.66,@object    # @fmt_int.66
.Lfmt_int.66:
	.asciz	"%d\n"
	.size	.Lfmt_int.66, 4

	.type	.Lfmt_str.67,@object    # @fmt_str.67
.Lfmt_str.67:
	.asciz	"%s\n"
	.size	.Lfmt_str.67, 4

	.type	.Lfmt_double.68,@object # @fmt_double.68
.Lfmt_double.68:
	.asciz	"%f\n"
	.size	.Lfmt_double.68, 4

	.type	.Lfmt_int.69,@object    # @fmt_int.69
.Lfmt_int.69:
	.asciz	"%d\n"
	.size	.Lfmt_int.69, 4

	.type	.Lsystem_string.70,@object # @system_string.70
.Lsystem_string.70:
	.asciz	"now s is :"
	.size	.Lsystem_string.70, 11

	.type	.Lsystem_string.71,@object # @system_string.71
.Lsystem_string.71:
	.asciz	"now s is :"
	.size	.Lsystem_string.71, 11

	.type	.Lfmt_str.72,@object    # @fmt_str.72
.Lfmt_str.72:
	.asciz	"%s\n"
	.size	.Lfmt_str.72, 4

	.type	.Lfmt_double.73,@object # @fmt_double.73
.Lfmt_double.73:
	.asciz	"%f\n"
	.size	.Lfmt_double.73, 4

	.type	.Lfmt_int.74,@object    # @fmt_int.74
.Lfmt_int.74:
	.asciz	"%d\n"
	.size	.Lfmt_int.74, 4


	.section	".note.GNU-stack","",@progbits
