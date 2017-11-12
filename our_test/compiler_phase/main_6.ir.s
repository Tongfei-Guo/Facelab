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
	subq	$24, %rsp
.Lcfi2:
	.cfi_def_cfa_offset 32
	movl	$2, 4(%rsp)
	movl	$3, (%rsp)
	movl	$.Lfmt_int.34, %edi
	movl	$2, %esi
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
	movl	$.Lsystem_string.50, %esi
	xorl	%eax, %eax
	callq	printf
	movl	(%rsp), %esi
	movl	$.Lfmt_int.53, %edi
	xorl	%eax, %eax
	callq	printf
	movq	$.Lsystem_string.61, 16(%rsp)
	movl	$.Lfmt_str.62, %edi
	movl	$.Lsystem_string.61, %esi
	xorl	%eax, %eax
	callq	printf
	movq	$.Lsystem_string.68, 8(%rsp)
	callq	f2
	movq	%rax, 8(%rsp)
	movl	$.Lfmt_str.72, %edi
	movl	$.Lsystem_string.75, %esi
	xorl	%eax, %eax
	callq	printf
	movq	8(%rsp), %rsi
	movl	$.Lfmt_str.76, %edi
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

	.type	.Lfmt_str.7,@object     # @fmt_str.7
.Lfmt_str.7:
	.asciz	"%s"
	.size	.Lfmt_str.7, 3

	.type	.Lfmt_double.8,@object  # @fmt_double.8
.Lfmt_double.8:
	.asciz	"%f"
	.size	.Lfmt_double.8, 3

	.type	.Lfmt_int.9,@object     # @fmt_int.9
.Lfmt_int.9:
	.asciz	"%d"
	.size	.Lfmt_int.9, 3

	.type	.Lfmt_str.10,@object    # @fmt_str.10
.Lfmt_str.10:
	.asciz	"%s"
	.size	.Lfmt_str.10, 3

	.type	.Lfmt_double.11,@object # @fmt_double.11
.Lfmt_double.11:
	.asciz	"%f"
	.size	.Lfmt_double.11, 3

	.type	.Lfmt_int.12,@object    # @fmt_int.12
.Lfmt_int.12:
	.asciz	"%d"
	.size	.Lfmt_int.12, 3

	.type	.Lsystem_string,@object # @system_string
.Lsystem_string:
	.zero	1
	.size	.Lsystem_string, 1

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

	.type	.Lfmt_str.16,@object    # @fmt_str.16
.Lfmt_str.16:
	.asciz	"%s"
	.size	.Lfmt_str.16, 3

	.type	.Lfmt_double.17,@object # @fmt_double.17
.Lfmt_double.17:
	.asciz	"%f"
	.size	.Lfmt_double.17, 3

	.type	.Lfmt_int.18,@object    # @fmt_int.18
.Lfmt_int.18:
	.asciz	"%d"
	.size	.Lfmt_int.18, 3

	.type	.Lsystem_string.19,@object # @system_string.19
.Lsystem_string.19:
	.asciz	"abc"
	.size	.Lsystem_string.19, 4

	.type	.Lfmt_str.20,@object    # @fmt_str.20
.Lfmt_str.20:
	.asciz	"%s"
	.size	.Lfmt_str.20, 3

	.type	.Lfmt_double.21,@object # @fmt_double.21
.Lfmt_double.21:
	.asciz	"%f"
	.size	.Lfmt_double.21, 3

	.type	.Lfmt_int.22,@object    # @fmt_int.22
.Lfmt_int.22:
	.asciz	"%d"
	.size	.Lfmt_int.22, 3

	.type	.Lfmt_str.23,@object    # @fmt_str.23
.Lfmt_str.23:
	.asciz	"%s"
	.size	.Lfmt_str.23, 3

	.type	.Lfmt_double.24,@object # @fmt_double.24
.Lfmt_double.24:
	.asciz	"%f"
	.size	.Lfmt_double.24, 3

	.type	.Lfmt_int.25,@object    # @fmt_int.25
.Lfmt_int.25:
	.asciz	"%d"
	.size	.Lfmt_int.25, 3

	.type	.Lfmt_str.26,@object    # @fmt_str.26
.Lfmt_str.26:
	.asciz	"%s"
	.size	.Lfmt_str.26, 3

	.type	.Lfmt_double.27,@object # @fmt_double.27
.Lfmt_double.27:
	.asciz	"%f"
	.size	.Lfmt_double.27, 3

	.type	.Lfmt_int.28,@object    # @fmt_int.28
.Lfmt_int.28:
	.asciz	"%d"
	.size	.Lfmt_int.28, 3

	.type	.Lfmt_str.29,@object    # @fmt_str.29
.Lfmt_str.29:
	.asciz	"%s"
	.size	.Lfmt_str.29, 3

	.type	.Lfmt_double.30,@object # @fmt_double.30
.Lfmt_double.30:
	.asciz	"%f"
	.size	.Lfmt_double.30, 3

	.type	.Lfmt_int.31,@object    # @fmt_int.31
.Lfmt_int.31:
	.asciz	"%d"
	.size	.Lfmt_int.31, 3

	.type	.Lfmt_str.32,@object    # @fmt_str.32
.Lfmt_str.32:
	.asciz	"%s"
	.size	.Lfmt_str.32, 3

	.type	.Lfmt_double.33,@object # @fmt_double.33
.Lfmt_double.33:
	.asciz	"%f"
	.size	.Lfmt_double.33, 3

	.type	.Lfmt_int.34,@object    # @fmt_int.34
.Lfmt_int.34:
	.asciz	"%d"
	.size	.Lfmt_int.34, 3

	.type	.Lfmt_str.35,@object    # @fmt_str.35
.Lfmt_str.35:
	.asciz	"%s"
	.size	.Lfmt_str.35, 3

	.type	.Lfmt_double.36,@object # @fmt_double.36
.Lfmt_double.36:
	.asciz	"%f"
	.size	.Lfmt_double.36, 3

	.type	.Lfmt_int.37,@object    # @fmt_int.37
.Lfmt_int.37:
	.asciz	"%d"
	.size	.Lfmt_int.37, 3

	.type	.Lfmt_str.38,@object    # @fmt_str.38
.Lfmt_str.38:
	.asciz	"%s"
	.size	.Lfmt_str.38, 3

	.type	.Lfmt_double.39,@object # @fmt_double.39
.Lfmt_double.39:
	.asciz	"%f"
	.size	.Lfmt_double.39, 3

	.type	.Lfmt_int.40,@object    # @fmt_int.40
.Lfmt_int.40:
	.asciz	"%d"
	.size	.Lfmt_int.40, 3

	.type	.Lfmt_str.41,@object    # @fmt_str.41
.Lfmt_str.41:
	.asciz	"%s"
	.size	.Lfmt_str.41, 3

	.type	.Lfmt_double.42,@object # @fmt_double.42
.Lfmt_double.42:
	.asciz	"%f"
	.size	.Lfmt_double.42, 3

	.type	.Lfmt_int.43,@object    # @fmt_int.43
.Lfmt_int.43:
	.asciz	"%d"
	.size	.Lfmt_int.43, 3

	.type	.Lfmt_str.44,@object    # @fmt_str.44
.Lfmt_str.44:
	.asciz	"%s"
	.size	.Lfmt_str.44, 3

	.type	.Lfmt_double.45,@object # @fmt_double.45
.Lfmt_double.45:
	.asciz	"%f"
	.size	.Lfmt_double.45, 3

	.type	.Lfmt_int.46,@object    # @fmt_int.46
.Lfmt_int.46:
	.asciz	"%d"
	.size	.Lfmt_int.46, 3

	.type	.Lfmt_str.47,@object    # @fmt_str.47
.Lfmt_str.47:
	.asciz	"%s"
	.size	.Lfmt_str.47, 3

	.type	.Lfmt_double.48,@object # @fmt_double.48
.Lfmt_double.48:
	.asciz	"%f"
	.size	.Lfmt_double.48, 3

	.type	.Lfmt_int.49,@object    # @fmt_int.49
.Lfmt_int.49:
	.asciz	"%d"
	.size	.Lfmt_int.49, 3

	.type	.Lsystem_string.50,@object # @system_string.50
.Lsystem_string.50:
	.asciz	"now j is :"
	.size	.Lsystem_string.50, 11

	.type	.Lfmt_str.51,@object    # @fmt_str.51
.Lfmt_str.51:
	.asciz	"%s"
	.size	.Lfmt_str.51, 3

	.type	.Lfmt_double.52,@object # @fmt_double.52
.Lfmt_double.52:
	.asciz	"%f"
	.size	.Lfmt_double.52, 3

	.type	.Lfmt_int.53,@object    # @fmt_int.53
.Lfmt_int.53:
	.asciz	"%d"
	.size	.Lfmt_int.53, 3

	.type	.Lfmt_str.54,@object    # @fmt_str.54
.Lfmt_str.54:
	.asciz	"%s"
	.size	.Lfmt_str.54, 3

	.type	.Lfmt_double.55,@object # @fmt_double.55
.Lfmt_double.55:
	.asciz	"%f"
	.size	.Lfmt_double.55, 3

	.type	.Lfmt_int.56,@object    # @fmt_int.56
.Lfmt_int.56:
	.asciz	"%d"
	.size	.Lfmt_int.56, 3

	.type	.Lsystem_string.57,@object # @system_string.57
.Lsystem_string.57:
	.zero	1
	.size	.Lsystem_string.57, 1

	.type	.Lfmt_str.58,@object    # @fmt_str.58
.Lfmt_str.58:
	.asciz	"%s"
	.size	.Lfmt_str.58, 3

	.type	.Lfmt_double.59,@object # @fmt_double.59
.Lfmt_double.59:
	.asciz	"%f"
	.size	.Lfmt_double.59, 3

	.type	.Lfmt_int.60,@object    # @fmt_int.60
.Lfmt_int.60:
	.asciz	"%d"
	.size	.Lfmt_int.60, 3

	.type	.Lsystem_string.61,@object # @system_string.61
.Lsystem_string.61:
	.asciz	"hahaha"
	.size	.Lsystem_string.61, 7

	.type	.Lfmt_str.62,@object    # @fmt_str.62
.Lfmt_str.62:
	.asciz	"%s"
	.size	.Lfmt_str.62, 3

	.type	.Lfmt_double.63,@object # @fmt_double.63
.Lfmt_double.63:
	.asciz	"%f"
	.size	.Lfmt_double.63, 3

	.type	.Lfmt_int.64,@object    # @fmt_int.64
.Lfmt_int.64:
	.asciz	"%d"
	.size	.Lfmt_int.64, 3

	.type	.Lfmt_str.65,@object    # @fmt_str.65
.Lfmt_str.65:
	.asciz	"%s"
	.size	.Lfmt_str.65, 3

	.type	.Lfmt_double.66,@object # @fmt_double.66
.Lfmt_double.66:
	.asciz	"%f"
	.size	.Lfmt_double.66, 3

	.type	.Lfmt_int.67,@object    # @fmt_int.67
.Lfmt_int.67:
	.asciz	"%d"
	.size	.Lfmt_int.67, 3

	.type	.Lsystem_string.68,@object # @system_string.68
.Lsystem_string.68:
	.zero	1
	.size	.Lsystem_string.68, 1

	.type	.Lfmt_str.69,@object    # @fmt_str.69
.Lfmt_str.69:
	.asciz	"%s"
	.size	.Lfmt_str.69, 3

	.type	.Lfmt_double.70,@object # @fmt_double.70
.Lfmt_double.70:
	.asciz	"%f"
	.size	.Lfmt_double.70, 3

	.type	.Lfmt_int.71,@object    # @fmt_int.71
.Lfmt_int.71:
	.asciz	"%d"
	.size	.Lfmt_int.71, 3

	.type	.Lfmt_str.72,@object    # @fmt_str.72
.Lfmt_str.72:
	.asciz	"%s"
	.size	.Lfmt_str.72, 3

	.type	.Lfmt_double.73,@object # @fmt_double.73
.Lfmt_double.73:
	.asciz	"%f"
	.size	.Lfmt_double.73, 3

	.type	.Lfmt_int.74,@object    # @fmt_int.74
.Lfmt_int.74:
	.asciz	"%d"
	.size	.Lfmt_int.74, 3

	.type	.Lsystem_string.75,@object # @system_string.75
.Lsystem_string.75:
	.asciz	"now s is :"
	.size	.Lsystem_string.75, 11

	.type	.Lfmt_str.76,@object    # @fmt_str.76
.Lfmt_str.76:
	.asciz	"%s"
	.size	.Lfmt_str.76, 3

	.type	.Lfmt_double.77,@object # @fmt_double.77
.Lfmt_double.77:
	.asciz	"%f"
	.size	.Lfmt_double.77, 3

	.type	.Lfmt_int.78,@object    # @fmt_int.78
.Lfmt_int.78:
	.asciz	"%d"
	.size	.Lfmt_int.78, 3


	.section	".note.GNU-stack","",@progbits
