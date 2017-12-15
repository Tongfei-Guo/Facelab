	.text
	.file	"MicroC"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Lcfi0:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Lcfi1:
	.cfi_def_cfa_offset 48
.Lcfi2:
	.cfi_offset %rbx, -16
	movl	$2, 12(%rsp)
	movl	$3, 8(%rsp)
	movl	$.Lfmt_int, %edi
	movl	$2, %esi
	xorl	%eax, %eax
	callq	printf
	movl	8(%rsp), %esi
	movl	$.Lfmt_int, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, 12(%rsp)
	movl	$.Lfmt_int, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf
	callq	f1
	movl	(%rax), %ebx
	movq	%rax, %rdi
	callq	free
	movl	%ebx, 8(%rsp)
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string.9, %esi
	xorl	%eax, %eax
	callq	printf
	movl	8(%rsp), %esi
	movl	$.Lfmt_int, %edi
	xorl	%eax, %eax
	callq	printf
	movq	$.Lsystem_string.11, 24(%rsp)
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string.11, %esi
	xorl	%eax, %eax
	callq	printf
	movq	$.Lsystem_string.12, 16(%rsp)
	callq	f2
	movq	(%rax), %rbx
	movq	%rax, %rdi
	callq	free
	movq	%rbx, 16(%rsp)
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string.13, %esi
	xorl	%eax, %eax
	callq	printf
	movq	16(%rsp), %rsi
	movl	$.Lfmt_str, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	size                    # -- Begin function size
	.p2align	4, 0x90
	.type	size,@function
size:                                   # @size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Lcfi3:
	.cfi_def_cfa_offset 16
.Lcfi4:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$8, %edi
	callq	malloc
	movl	8(%rbx), %ecx
	movl	%ecx, (%rax)
	movl	12(%rbx), %ecx
	movl	%ecx, 4(%rax)
	popq	%rbx
	retq
.Lfunc_end1:
	.size	size, .Lfunc_end1-size
	.cfi_endproc
                                        # -- End function
	.globl	zeros                   # -- Begin function zeros
	.p2align	4, 0x90
	.type	zeros,@function
zeros:                                  # @zeros
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi5:
	.cfi_def_cfa_offset 16
.Lcfi6:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi7:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
.Lcfi8:
	.cfi_offset %rbx, -48
.Lcfi9:
	.cfi_offset %r12, -40
.Lcfi10:
	.cfi_offset %r14, -32
.Lcfi11:
	.cfi_offset %r15, -24
	movl	%esi, %r12d
	movl	%edi, %r14d
	movl	$8, %edi
	callq	malloc
	movq	%rax, %r15
	movl	%r14d, %edi
	imull	%r12d, %edi
	shll	$3, %edi
	callq	malloc
	movq	%rax, %rbx
	movl	$16, %edi
	callq	malloc
	movq	%rbx, (%rax)
	movl	%r14d, 8(%rax)
	movl	%r12d, 12(%rax)
	decl	%r14d
	leal	-1(%r12), %ecx
	movl	$0, -36(%rbp)
	cmpl	%r14d, -36(%rbp)
	jle	.LBB2_2
	jmp	.LBB2_6
	.p2align	4, 0x90
.LBB2_5:                                # %merge
                                        #   in Loop: Header=BB2_2 Depth=1
	incl	-36(%rbp)
	cmpl	%r14d, -36(%rbp)
	jg	.LBB2_6
.LBB2_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%ecx, (%rdx)
	jg	.LBB2_5
	.p2align	4, 0x90
.LBB2_4:                                # %while_body5
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %esi
	imull	%r12d, %esi
	addl	(%rdx), %esi
	movslq	%esi, %rsi
	movq	$0, (%rbx,%rsi,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	.LBB2_4
	jmp	.LBB2_5
.LBB2_6:                                # %merge12
	movq	%rax, (%r15)
	movq	%r15, %rax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	zeros, .Lfunc_end2-zeros
	.cfi_endproc
                                        # -- End function
	.globl	f1                      # -- Begin function f1
	.p2align	4, 0x90
	.type	f1,@function
f1:                                     # @f1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi12:
	.cfi_def_cfa_offset 16
	movl	$.Lfmt_int, %edi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$4, %edi
	callq	malloc
	movl	$5, (%rax)
	popq	%rcx
	retq
.Lfunc_end3:
	.size	f1, .Lfunc_end3-f1
	.cfi_endproc
                                        # -- End function
	.globl	f2                      # -- Begin function f2
	.p2align	4, 0x90
	.type	f2,@function
f2:                                     # @f2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Lcfi13:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Lcfi14:
	.cfi_def_cfa_offset 32
.Lcfi15:
	.cfi_offset %rbx, -16
	movq	$.Lsystem_string.7, 8(%rsp)
	callq	f1
	movl	(%rax), %ebx
	movq	%rax, %rdi
	callq	free
	movl	$.Lfmt_int, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
	callq	printf
	movq	$.Lsystem_string.8, 8(%rsp)
	movl	$8, %edi
	callq	malloc
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end4:
	.size	f2, .Lfunc_end4-f2
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
	.asciz	"\n"
	.size	.Lfmt_str.1, 2

	.type	.Lfmt_str.2,@object     # @fmt_str.2
.Lfmt_str.2:
	.asciz	"  "
	.size	.Lfmt_str.2, 3

	.type	.Lfmt_str.3,@object     # @fmt_str.3
.Lfmt_str.3:
	.zero	1
	.size	.Lfmt_str.3, 1

	.type	.Lfmt_str.4,@object     # @fmt_str.4
.Lfmt_str.4:
	.asciz	"true"
	.size	.Lfmt_str.4, 5

	.type	.Lfmt_str.5,@object     # @fmt_str.5
.Lfmt_str.5:
	.asciz	"false"
	.size	.Lfmt_str.5, 6

	.type	.Lsystem_string,@object # @system_string
.Lsystem_string:
	.zero	1
	.size	.Lsystem_string, 1

	.type	.Lsystem_string.6,@object # @system_string.6
.Lsystem_string.6:
	.asciz	"abc"
	.size	.Lsystem_string.6, 4

	.type	.Lsystem_string.7,@object # @system_string.7
.Lsystem_string.7:
	.zero	1
	.size	.Lsystem_string.7, 1

	.type	.Lsystem_string.8,@object # @system_string.8
.Lsystem_string.8:
	.asciz	"abc"
	.size	.Lsystem_string.8, 4

	.type	.Lsystem_string.9,@object # @system_string.9
.Lsystem_string.9:
	.asciz	"now j is :"
	.size	.Lsystem_string.9, 11

	.type	.Lsystem_string.10,@object # @system_string.10
.Lsystem_string.10:
	.zero	1
	.size	.Lsystem_string.10, 1

	.type	.Lsystem_string.11,@object # @system_string.11
.Lsystem_string.11:
	.asciz	"hahaha"
	.size	.Lsystem_string.11, 7

	.type	.Lsystem_string.12,@object # @system_string.12
.Lsystem_string.12:
	.zero	1
	.size	.Lsystem_string.12, 1

	.type	.Lsystem_string.13,@object # @system_string.13
.Lsystem_string.13:
	.asciz	"now s is :"
	.size	.Lsystem_string.13, 11


	.section	".note.GNU-stack","",@progbits
