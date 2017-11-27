	.text
	.file	"MicroC"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4621824747088505733     # double 10.01
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi0:
	.cfi_def_cfa_offset 16
.Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi2:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
.Lcfi3:
	.cfi_offset %rbx, -56
.Lcfi4:
	.cfi_offset %r12, -48
.Lcfi5:
	.cfi_offset %r13, -40
.Lcfi6:
	.cfi_offset %r14, -32
.Lcfi7:
	.cfi_offset %r15, -24
	movl	$2, -56(%rbp)
	movl	$3, -48(%rbp)
	movl	$2, %r14d
	movl	$.Lfmt_int, %edi
	movl	$2, %esi
	xorl	%eax, %eax
	callq	printf
	movl	-48(%rbp), %esi
	movl	$.Lfmt_int, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, -56(%rbp)
	movl	$.Lfmt_int, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf
	callq	f1
	movl	%eax, -48(%rbp)
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string.10, %esi
	xorl	%eax, %eax
	callq	printf
	movl	-48(%rbp), %esi
	movl	$.Lfmt_int, %edi
	xorl	%eax, %eax
	callq	printf
	movq	$.Lsystem_string.12, -152(%rbp)
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string.12, %esi
	xorl	%eax, %eax
	callq	printf
	movq	$.Lsystem_string.13, -64(%rbp)
	callq	f2
	movq	%rax, -64(%rbp)
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string.14, %esi
	xorl	%eax, %eax
	callq	printf
	movq	-64(%rbp), %rsi
	movl	$.Lfmt_str, %edi
	xorl	%eax, %eax
	callq	printf
	movabsq	$4607632778762754458, %rax # imm = 0x3FF199999999999A
	movq	%rax, -144(%rbp)
	movabsq	$4612136378390124954, %rax # imm = 0x400199999999999A
	movq	%rax, -136(%rbp)
	movabsq	$4614613358185178726, %rax # imm = 0x400A666666666666
	movq	%rax, -128(%rbp)
	movabsq	$4616639978017495450, %rax # imm = 0x401199999999999A
	movq	%rax, -120(%rbp)
	movabsq	$4617878467915022336, %rax # imm = 0x4016000000000000
	movq	%rax, -112(%rbp)
	movabsq	$4619116957812549222, %rax # imm = 0x401A666666666666
	movq	%rax, -104(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -80(%rbp)
	movabsq	$12884901890, %rcx      # imm = 0x300000002
	movq	%rcx, -72(%rbp)
	movq	%rsp, %r9
	addq	$-48, %r9
	movq	%r9, %rsp
	movq	%r9, -96(%rbp)
	movq	%rcx, -88(%rbp)
	movl	$1, %r8d
	movq	-80(%rbp), %rdx
	movl	-68(%rbp), %esi
	movl	$0, -44(%rbp)
	cmpl	%r8d, -44(%rbp)
	jle	.LBB0_2
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_5:                                # %merge
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	-44(%rbp)
	cmpl	%r8d, -44(%rbp)
	jg	.LBB0_6
.LBB0_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r14d, (%rdi)
	jg	.LBB0_5
	.p2align	4, 0x90
.LBB0_4:                                # %while_body38
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %ecx
	movl	-44(%rbp), %ebx
	movl	$3, %eax
	imull	%ebx, %eax
	addl	%ecx, %eax
	cltq
	imull	%esi, %ebx
	addl	%ecx, %ebx
	movslq	%ebx, %rcx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rax,8)
	incl	(%rdi)
	cmpl	%r14d, (%rdi)
	jle	.LBB0_4
	jmp	.LBB0_5
.LBB0_6:                                # %merge55
	leaq	-96(%rbp), %rdi
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	f3
	movq	(%rax), %r15
	movl	8(%rax), %ecx
	movl	12(%rax), %r12d
	decl	%ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	leal	-1(%r12), %r13d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_11:                               # %merge82
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%rbx)
.LBB0_7:                                # %while67
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	movl	-52(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rbx)
	jg	.LBB0_12
# BB#8:                                 # %while_body68
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	cmpl	%r13d, (%r14)
	jg	.LBB0_11
	.p2align	4, 0x90
.LBB0_10:                               # %while_body71
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	imull	%r12d, %eax
	addl	(%r14), %eax
	cltq
	movsd	(%r15,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.2, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%r14)
	cmpl	%r13d, (%r14)
	jle	.LBB0_10
	jmp	.LBB0_11
.LBB0_12:                               # %merge88
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
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
.Lcfi8:
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
.Lcfi9:
	.cfi_def_cfa_offset 16
	movq	$.Lsystem_string, (%rsp)
	callq	f1
	movl	%eax, %ecx
	movl	$.Lfmt_int, %edi
	xorl	%eax, %eax
	movl	%ecx, %esi
	callq	printf
	movq	$.Lsystem_string.7, (%rsp)
	movl	$.Lsystem_string.7, %eax
	popq	%rcx
	retq
.Lfunc_end2:
	.size	f2, .Lfunc_end2-f2
	.cfi_endproc
                                        # -- End function
	.globl	f3                      # -- Begin function f3
	.p2align	4, 0x90
	.type	f3,@function
f3:                                     # @f3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi10:
	.cfi_def_cfa_offset 16
.Lcfi11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi12:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
.Lcfi13:
	.cfi_offset %rbx, -56
.Lcfi14:
	.cfi_offset %r12, -48
.Lcfi15:
	.cfi_offset %r13, -40
.Lcfi16:
	.cfi_offset %r14, -32
.Lcfi17:
	.cfi_offset %r15, -24
	movl	8(%rdi), %r8d
	movl	12(%rdi), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %r14      # imm = 0xFFFFFFFF0
	andq	%r14, %rax
	movq	%rsp, %r11
	subq	%rax, %r11
	movq	%r11, %rsp
	movq	%r11, -64(%rbp)
	movl	%r8d, -56(%rbp)
	movl	%r10d, -52(%rbp)
	leal	-1(%r10), %r15d
	decl	%r8d
	movq	(%rdi), %rbx
	movl	12(%rdi), %edi
	movl	$0, -44(%rbp)
	cmpl	%r8d, -44(%rbp)
	jle	.LBB3_2
	jmp	.LBB3_6
	.p2align	4, 0x90
.LBB3_5:                                # %merge
                                        #   in Loop: Header=BB3_2 Depth=1
	incl	-44(%rbp)
	cmpl	%r8d, -44(%rbp)
	jg	.LBB3_6
.LBB3_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r9)
	cmpl	%r15d, (%rax)
	jg	.LBB3_5
	.p2align	4, 0x90
.LBB3_4:                                # %while_body13
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	movl	-44(%rbp), %edx
	movl	%r10d, %esi
	imull	%edx, %esi
	addl	%ecx, %esi
	movslq	%esi, %rsi
	imull	%edi, %edx
	addl	%ecx, %edx
	movslq	%edx, %rcx
	movsd	(%rbx,%rcx,8), %xmm1    # xmm1 = mem[0],zero
	movsd	%xmm1, (%r11,%rsi,8)
	incl	(%rax)
	cmpl	%r15d, (%rax)
	jle	.LBB3_4
	jmp	.LBB3_5
.LBB3_6:                                # %merge29
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rsp
	movsd	%xmm0, -16(%rbx)
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string.9, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	-16(%rbx), %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %r10
	movl	-56(%rbp), %ecx
	leal	-1(%rcx), %r8d
	movl	-52(%rbp), %edx
	leal	-1(%rdx), %esi
	movl	%ecx, %edi
	imull	%edx, %edi
	leaq	15(,%rdi,8), %rbx
	andq	%r14, %rbx
	movq	%rsp, %rdi
	subq	%rbx, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rbx
	leaq	-16(%rbx), %r14
	movq	%r14, %rsp
	movq	%rdi, -16(%rbx)
	movl	%ecx, -8(%rbx)
	movl	%edx, -4(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r8d, (%rbx)
	jle	.LBB3_8
	jmp	.LBB3_12
	.p2align	4, 0x90
.LBB3_11:                               # %merge70
                                        #   in Loop: Header=BB3_8 Depth=1
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB3_12
.LBB3_8:                                # %while_body52
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%esi, (%rcx)
	jg	.LBB3_11
	.p2align	4, 0x90
.LBB3_10:                               # %while_body55
                                        #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movsd	(%r10,%rax,8), %xmm1    # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rdi,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB3_10
	jmp	.LBB3_11
.LBB3_12:                               # %merge75
	movl	8(%r14), %r15d
	movl	12(%r14), %r12d
	movl	%r15d, %edi
	imull	%r12d, %edi
	shll	$3, %edi
	callq	malloc
	movq	%rax, %r13
	movl	$16, %edi
	callq	malloc
	movq	%r13, (%rax)
	movl	%r15d, 8(%rax)
	movl	%r12d, 12(%rax)
	leal	-1(%r12), %r9d
	decl	%r15d
	movq	(%r14), %r10
	movl	12(%r14), %r11d
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r15d, (%rdi)
	jle	.LBB3_14
	jmp	.LBB3_18
	.p2align	4, 0x90
.LBB3_17:                               # %merge126
                                        #   in Loop: Header=BB3_14 Depth=1
	incl	(%rdi)
	cmpl	%r15d, (%rdi)
	jg	.LBB3_18
.LBB3_14:                               # %while_body105
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_16 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r8)
	cmpl	%r9d, (%rbx)
	jg	.LBB3_17
	.p2align	4, 0x90
.LBB3_16:                               # %while_body108
                                        #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %ecx
	movl	(%rdi), %edx
	movl	%r12d, %esi
	imull	%edx, %esi
	addl	%ecx, %esi
	movslq	%esi, %rsi
	imull	%r11d, %edx
	addl	%ecx, %edx
	movslq	%edx, %rcx
	movsd	(%r10,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r13,%rsi,8)
	incl	(%rbx)
	cmpl	%r9d, (%rbx)
	jle	.LBB3_16
	jmp	.LBB3_17
.LBB3_18:                               # %merge131
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	f3, .Lfunc_end3-f3
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

	.type	.Lsystem_string.7,@object # @system_string.7
.Lsystem_string.7:
	.asciz	"abc"
	.size	.Lsystem_string.7, 4

	.type	.Lsystem_string.9,@object # @system_string.9
.Lsystem_string.9:
	.asciz	"testing"
	.size	.Lsystem_string.9, 8

	.type	.Lsystem_string.10,@object # @system_string.10
.Lsystem_string.10:
	.asciz	"now j is :"
	.size	.Lsystem_string.10, 11

	.type	.Lsystem_string.11,@object # @system_string.11
.Lsystem_string.11:
	.zero	1
	.size	.Lsystem_string.11, 1

	.type	.Lsystem_string.12,@object # @system_string.12
.Lsystem_string.12:
	.asciz	"hahaha"
	.size	.Lsystem_string.12, 7

	.type	.Lsystem_string.13,@object # @system_string.13
.Lsystem_string.13:
	.zero	1
	.size	.Lsystem_string.13, 1

	.type	.Lsystem_string.14,@object # @system_string.14
.Lsystem_string.14:
	.asciz	"now s is :"
	.size	.Lsystem_string.14, 11


	.section	".note.GNU-stack","",@progbits
