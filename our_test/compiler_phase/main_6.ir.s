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
	subq	$24, %rsp
.Lcfi2:
	.cfi_def_cfa_offset 32
	movl	$3, 4(%rsp)
	movl	$2, (%rsp)
	movl	$.Lfmt_int.34, %edi
	movl	$3, %esi
	xorl	%eax, %eax
	callq	printf
	movl	(%rsp), %esi
	movl	$.Lfmt_int.37, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, 4(%rsp)
	movl	$.Lfmt_int.43, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf
	callq	f1
	movl	%eax, (%rsp)
	movl	$.Lfmt_str.47, %edi
	movl	$.Lsystem_string.51, %esi
	xorl	%eax, %eax
	callq	printf
	movl	(%rsp), %esi
	movl	$.Lfmt_int.54, %edi
	xorl	%eax, %eax
	callq	printf
	movq	$.Lsystem_string.62, 16(%rsp)
	movl	$.Lfmt_str.63, %edi
	movl	$.Lsystem_string.62, %esi
	xorl	%eax, %eax
	callq	printf
	movq	$.Lsystem_string.69, 8(%rsp)
	callq	f2
	movq	%rax, 8(%rsp)
	movl	$.Lfmt_str.73, %edi
	movl	$.Lsystem_string.77, %esi
	xorl	%eax, %eax
	callq	printf
	movq	8(%rsp), %rsi
	movl	$.Lfmt_str.78, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	addq	$24, %rsp
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

	.type	.Lfmt_str.44,@object    # @fmt_str.44
.Lfmt_str.44:
	.asciz	"%s\n"
	.size	.Lfmt_str.44, 4

	.type	.Lfmt_double.45,@object # @fmt_double.45
.Lfmt_double.45:
	.asciz	"%f\n"
	.size	.Lfmt_double.45, 4

	.type	.Lfmt_int.46,@object    # @fmt_int.46
.Lfmt_int.46:
	.asciz	"%d\n"
	.size	.Lfmt_int.46, 4

	.type	.Lfmt_str.47,@object    # @fmt_str.47
.Lfmt_str.47:
	.asciz	"%s\n"
	.size	.Lfmt_str.47, 4

	.type	.Lfmt_double.48,@object # @fmt_double.48
.Lfmt_double.48:
	.asciz	"%f\n"
	.size	.Lfmt_double.48, 4

	.type	.Lfmt_int.49,@object    # @fmt_int.49
.Lfmt_int.49:
	.asciz	"%d\n"
	.size	.Lfmt_int.49, 4

	.type	.Lsystem_string.50,@object # @system_string.50
.Lsystem_string.50:
	.asciz	"now j is :"
	.size	.Lsystem_string.50, 11

	.type	.Lsystem_string.51,@object # @system_string.51
.Lsystem_string.51:
	.asciz	"now j is :"
	.size	.Lsystem_string.51, 11

	.type	.Lfmt_str.52,@object    # @fmt_str.52
.Lfmt_str.52:
	.asciz	"%s\n"
	.size	.Lfmt_str.52, 4

	.type	.Lfmt_double.53,@object # @fmt_double.53
.Lfmt_double.53:
	.asciz	"%f\n"
	.size	.Lfmt_double.53, 4

	.type	.Lfmt_int.54,@object    # @fmt_int.54
.Lfmt_int.54:
	.asciz	"%d\n"
	.size	.Lfmt_int.54, 4

	.type	.Lfmt_str.55,@object    # @fmt_str.55
.Lfmt_str.55:
	.asciz	"%s\n"
	.size	.Lfmt_str.55, 4

	.type	.Lfmt_double.56,@object # @fmt_double.56
.Lfmt_double.56:
	.asciz	"%f\n"
	.size	.Lfmt_double.56, 4

	.type	.Lfmt_int.57,@object    # @fmt_int.57
.Lfmt_int.57:
	.asciz	"%d\n"
	.size	.Lfmt_int.57, 4

	.type	.Lsystem_string.58,@object # @system_string.58
.Lsystem_string.58:
	.zero	1
	.size	.Lsystem_string.58, 1

	.type	.Lfmt_str.59,@object    # @fmt_str.59
.Lfmt_str.59:
	.asciz	"%s\n"
	.size	.Lfmt_str.59, 4

	.type	.Lfmt_double.60,@object # @fmt_double.60
.Lfmt_double.60:
	.asciz	"%f\n"
	.size	.Lfmt_double.60, 4

	.type	.Lfmt_int.61,@object    # @fmt_int.61
.Lfmt_int.61:
	.asciz	"%d\n"
	.size	.Lfmt_int.61, 4

	.type	.Lsystem_string.62,@object # @system_string.62
.Lsystem_string.62:
	.asciz	"hahaha"
	.size	.Lsystem_string.62, 7

	.type	.Lfmt_str.63,@object    # @fmt_str.63
.Lfmt_str.63:
	.asciz	"%s\n"
	.size	.Lfmt_str.63, 4

	.type	.Lfmt_double.64,@object # @fmt_double.64
.Lfmt_double.64:
	.asciz	"%f\n"
	.size	.Lfmt_double.64, 4

	.type	.Lfmt_int.65,@object    # @fmt_int.65
.Lfmt_int.65:
	.asciz	"%d\n"
	.size	.Lfmt_int.65, 4

	.type	.Lfmt_str.66,@object    # @fmt_str.66
.Lfmt_str.66:
	.asciz	"%s\n"
	.size	.Lfmt_str.66, 4

	.type	.Lfmt_double.67,@object # @fmt_double.67
.Lfmt_double.67:
	.asciz	"%f\n"
	.size	.Lfmt_double.67, 4

	.type	.Lfmt_int.68,@object    # @fmt_int.68
.Lfmt_int.68:
	.asciz	"%d\n"
	.size	.Lfmt_int.68, 4

	.type	.Lsystem_string.69,@object # @system_string.69
.Lsystem_string.69:
	.zero	1
	.size	.Lsystem_string.69, 1

	.type	.Lfmt_str.70,@object    # @fmt_str.70
.Lfmt_str.70:
	.asciz	"%s\n"
	.size	.Lfmt_str.70, 4

	.type	.Lfmt_double.71,@object # @fmt_double.71
.Lfmt_double.71:
	.asciz	"%f\n"
	.size	.Lfmt_double.71, 4

	.type	.Lfmt_int.72,@object    # @fmt_int.72
.Lfmt_int.72:
	.asciz	"%d\n"
	.size	.Lfmt_int.72, 4

	.type	.Lfmt_str.73,@object    # @fmt_str.73
.Lfmt_str.73:
	.asciz	"%s\n"
	.size	.Lfmt_str.73, 4

	.type	.Lfmt_double.74,@object # @fmt_double.74
.Lfmt_double.74:
	.asciz	"%f\n"
	.size	.Lfmt_double.74, 4

	.type	.Lfmt_int.75,@object    # @fmt_int.75
.Lfmt_int.75:
	.asciz	"%d\n"
	.size	.Lfmt_int.75, 4

	.type	.Lsystem_string.76,@object # @system_string.76
.Lsystem_string.76:
	.asciz	"now s is :"
	.size	.Lsystem_string.76, 11

	.type	.Lsystem_string.77,@object # @system_string.77
.Lsystem_string.77:
	.asciz	"now s is :"
	.size	.Lsystem_string.77, 11

	.type	.Lfmt_str.78,@object    # @fmt_str.78
.Lfmt_str.78:
	.asciz	"%s\n"
	.size	.Lfmt_str.78, 4

	.type	.Lfmt_double.79,@object # @fmt_double.79
.Lfmt_double.79:
	.asciz	"%f\n"
	.size	.Lfmt_double.79, 4

	.type	.Lfmt_int.80,@object    # @fmt_int.80
.Lfmt_int.80:
	.asciz	"%d\n"
	.size	.Lfmt_int.80, 4


	.section	".note.GNU-stack","",@progbits
