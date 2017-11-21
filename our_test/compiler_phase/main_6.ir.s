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
	movl	$2, 4(%rsp)
	movl	$3, (%rsp)
	movl	$.Lfmt_int, %edi
	movl	$2, %esi
	xorl	%eax, %eax
	callq	printf
	movl	(%rsp), %esi
	movl	$.Lfmt_int, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, 4(%rsp)
	movl	$.Lfmt_int, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf
	callq	f1
	movl	%eax, (%rsp)
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string, %esi
	xorl	%eax, %eax
	callq	printf
	movl	(%rsp), %esi
	movl	$.Lfmt_int, %edi
	xorl	%eax, %eax
	callq	printf
	movq	$.Lsystem_string.5, 16(%rsp)
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string.5, %esi
	xorl	%eax, %eax
	callq	printf
	movq	$.Lsystem_string.6, 8(%rsp)
	callq	f2
	movq	%rax, 8(%rsp)
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string.7, %esi
	xorl	%eax, %eax
	callq	printf
	movq	8(%rsp), %rsi
	movl	$.Lfmt_str, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	addq	$24, %rsp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	f1                      # -- Begin function f1
	.p2align	4, 0x90
	.type	f1,@function
f1:                                     # @f1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi1:
	.cfi_def_cfa_offset 16
	movl	$.Lfmt_int, %edi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$5, %eax
	popq	%rcx
	retq
.Lfunc_end1:
	.size	f1, .Lfunc_end1-f1
	.cfi_endproc
                                        # -- End function
	.globl	f2                      # -- Begin function f2
	.p2align	4, 0x90
	.type	f2,@function
f2:                                     # @f2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi2:
	.cfi_def_cfa_offset 16
	movq	$.Lsystem_string.8, (%rsp)
	callq	f1
	movl	%eax, %ecx
	movl	$.Lfmt_int, %edi
	xorl	%eax, %eax
	movl	%ecx, %esi
	callq	printf
	movq	$.Lsystem_string.9, (%rsp)
	movl	$.Lsystem_string.9, %eax
	popq	%rcx
	retq
.Lfunc_end2:
	.size	f2, .Lfunc_end2-f2
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

	.type	.Lsystem_string,@object # @system_string
.Lsystem_string:
	.asciz	"now j is :"
	.size	.Lsystem_string, 11

	.type	.Lsystem_string.4,@object # @system_string.4
.Lsystem_string.4:
	.zero	1
	.size	.Lsystem_string.4, 1

	.type	.Lsystem_string.5,@object # @system_string.5
.Lsystem_string.5:
	.asciz	"hahaha"
	.size	.Lsystem_string.5, 7

	.type	.Lsystem_string.6,@object # @system_string.6
.Lsystem_string.6:
	.zero	1
	.size	.Lsystem_string.6, 1

	.type	.Lsystem_string.7,@object # @system_string.7
.Lsystem_string.7:
	.asciz	"now s is :"
	.size	.Lsystem_string.7, 11

	.type	.Lsystem_string.8,@object # @system_string.8
.Lsystem_string.8:
	.zero	1
	.size	.Lsystem_string.8, 1

	.type	.Lsystem_string.9,@object # @system_string.9
.Lsystem_string.9:
	.asciz	"abc"
	.size	.Lsystem_string.9, 4


	.section	".note.GNU-stack","",@progbits
