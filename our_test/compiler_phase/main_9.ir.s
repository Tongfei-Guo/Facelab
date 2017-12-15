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
	movl	$2, -60(%rbp)
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
	movl	$0, -60(%rbp)
	movl	$.Lfmt_int, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf
	callq	f1
	movl	(%rax), %ebx
	movq	%rax, %rdi
	callq	free
	movl	%ebx, -48(%rbp)
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string.11, %esi
	xorl	%eax, %eax
	callq	printf
	movl	-48(%rbp), %esi
	movl	$.Lfmt_int, %edi
	xorl	%eax, %eax
	callq	printf
	movq	$.Lsystem_string.13, -160(%rbp)
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string.13, %esi
	xorl	%eax, %eax
	callq	printf
	movq	$.Lsystem_string.14, -72(%rbp)
	callq	f2
	movq	(%rax), %rbx
	movq	%rax, %rdi
	callq	free
	movq	%rbx, -72(%rbp)
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string.15, %esi
	xorl	%eax, %eax
	callq	printf
	movq	-72(%rbp), %rsi
	movl	$.Lfmt_str, %edi
	xorl	%eax, %eax
	callq	printf
	movabsq	$4607632778762754458, %rax # imm = 0x3FF199999999999A
	movq	%rax, -152(%rbp)
	movabsq	$4612136378390124954, %rax # imm = 0x400199999999999A
	movq	%rax, -144(%rbp)
	movabsq	$4614613358185178726, %rax # imm = 0x400A666666666666
	movq	%rax, -136(%rbp)
	movabsq	$4616639978017495450, %rax # imm = 0x401199999999999A
	movq	%rax, -128(%rbp)
	movabsq	$4617878467915022336, %rax # imm = 0x4016000000000000
	movq	%rax, -120(%rbp)
	movabsq	$4619116957812549222, %rax # imm = 0x401A666666666666
	movq	%rax, -112(%rbp)
	leaq	-152(%rbp), %rax
	movq	%rax, -104(%rbp)
	movabsq	$12884901890, %rdx      # imm = 0x300000002
	movq	%rdx, -96(%rbp)
	movl	$3, %eax
	movq	%rsp, %rcx
	addq	$-48, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movl	$1, %edx
	movl	$0, -44(%rbp)
	cmpl	%edx, -44(%rbp)
	jle	.LBB0_2
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_5:                                # %merge
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	-44(%rbp)
	cmpl	%edx, -44(%rbp)
	jg	.LBB0_6
.LBB0_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%r14d, (%rsi)
	jg	.LBB0_5
	.p2align	4, 0x90
.LBB0_4:                                # %while_body32
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %edi
	imull	%eax, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rcx,%rdi,8)
	incl	(%rsi)
	cmpl	%r14d, (%rsi)
	jle	.LBB0_4
	jmp	.LBB0_5
.LBB0_6:                                # %merge40
	decl	%eax
	decl	%r14d
	movq	-88(%rbp), %r8
	movl	-76(%rbp), %r10d
	movq	-104(%rbp), %r11
	movl	-92(%rbp), %r15d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r14d, (%rbx)
	jle	.LBB0_8
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_11:                               # %merge75
                                        #   in Loop: Header=BB0_8 Depth=1
	incl	(%rbx)
	cmpl	%r14d, (%rbx)
	jg	.LBB0_12
.LBB0_8:                                # %while_body55
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%eax, (%rcx)
	jg	.LBB0_11
	.p2align	4, 0x90
.LBB0_10:                               # %while_body58
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %edx
	movl	(%rbx), %esi
	movl	%r10d, %edi
	imull	%esi, %edi
	addl	%edx, %edi
	movslq	%edi, %rdi
	imull	%r15d, %esi
	addl	%edx, %esi
	movslq	%esi, %rdx
	movsd	(%r11,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r8,%rdi,8)
	incl	(%rcx)
	cmpl	%eax, (%rcx)
	jle	.LBB0_10
	jmp	.LBB0_11
.LBB0_12:                               # %merge80
	leaq	-88(%rbp), %rdi
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	f3
	movq	(%rax), %r14
	movq	%rax, %rdi
	callq	free
	movq	(%r14), %rdi
	movl	8(%r14), %r8d
	movl	12(%r14), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
	andq	%rax, %rcx
	movq	%rsp, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
	movq	%rsi, -16(%rax)
	movl	%r8d, -8(%rax)
	movl	%r10d, -4(%rax)
	decl	%r8d
	leal	-1(%r10), %ecx
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_14
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_17:                               # %merge112
                                        #   in Loop: Header=BB0_14 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_18
.LBB0_14:                               # %while_body101
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_17
	.p2align	4, 0x90
.LBB0_16:                               # %while_body104
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_16
	jmp	.LBB0_17
.LBB0_18:                               # %merge117
	movq	(%r15), %r9
	movl	12(%r15), %r10d
	movq	(%r14), %r12
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movl	12(%r14), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	.LBB0_20
	jmp	.LBB0_24
	.p2align	4, 0x90
.LBB0_23:                               # %merge157
                                        #   in Loop: Header=BB0_20 Depth=1
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	.LBB0_24
.LBB0_20:                               # %while_body136
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_23
	.p2align	4, 0x90
.LBB0_22:                               # %while_body139
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %ebx
	movl	(%r14), %eax
	movl	%r10d, %edx
	imull	%eax, %edx
	addl	%ebx, %edx
	movslq	%edx, %rdx
	imull	%r13d, %eax
	addl	%ebx, %eax
	cltq
	movsd	(%r12,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB0_22
	jmp	.LBB0_23
.LBB0_24:                               # %merge162
	callq	free
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	free
	movq	(%r15), %r12
	movl	8(%r15), %eax
	movl	12(%r15), %r15d
	decl	%eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	leal	-1(%r15), %r13d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB0_25
	.p2align	4, 0x90
.LBB0_29:                               # %merge189
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%rbx)
.LBB0_25:                               # %while174
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_28 Depth 2
	movl	-56(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rbx)
	jg	.LBB0_30
# BB#26:                                # %while_body175
                                        #   in Loop: Header=BB0_25 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	cmpl	%r13d, (%r14)
	jg	.LBB0_29
	.p2align	4, 0x90
.LBB0_28:                               # %while_body178
                                        #   Parent Loop BB0_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	imull	%r15d, %eax
	addl	(%r14), %eax
	cltq
	movsd	(%r12,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.2, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%r14)
	cmpl	%r13d, (%r14)
	jle	.LBB0_28
	jmp	.LBB0_29
.LBB0_30:                               # %merge195
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
	.globl	size                    # -- Begin function size
	.p2align	4, 0x90
	.type	size,@function
size:                                   # @size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Lcfi8:
	.cfi_def_cfa_offset 16
.Lcfi9:
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
.Lcfi10:
	.cfi_def_cfa_offset 16
.Lcfi11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi12:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
.Lcfi13:
	.cfi_offset %rbx, -48
.Lcfi14:
	.cfi_offset %r12, -40
.Lcfi15:
	.cfi_offset %r14, -32
.Lcfi16:
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
.Lcfi17:
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
.Lcfi18:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Lcfi19:
	.cfi_def_cfa_offset 32
.Lcfi20:
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
	.globl	f3                      # -- Begin function f3
	.p2align	4, 0x90
	.type	f3,@function
f3:                                     # @f3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi21:
	.cfi_def_cfa_offset 16
.Lcfi22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi23:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
.Lcfi24:
	.cfi_offset %rbx, -56
.Lcfi25:
	.cfi_offset %r12, -48
.Lcfi26:
	.cfi_offset %r13, -40
.Lcfi27:
	.cfi_offset %r14, -32
.Lcfi28:
	.cfi_offset %r15, -24
	movl	8(%rdi), %r8d
	movl	12(%rdi), %edx
	movl	%r8d, %eax
	imull	%edx, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %r15      # imm = 0xFFFFFFFF0
	andq	%r15, %rax
	movq	%rsp, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rsi, -64(%rbp)
	movl	%r8d, -56(%rbp)
	movl	%edx, -52(%rbp)
	decl	%r8d
	leal	-1(%rdx), %ecx
	movl	$0, -44(%rbp)
	cmpl	%r8d, -44(%rbp)
	jle	.LBB5_2
	jmp	.LBB5_6
	.p2align	4, 0x90
.LBB5_5:                                # %merge
                                        #   in Loop: Header=BB5_2 Depth=1
	incl	-44(%rbp)
	cmpl	%r8d, -44(%rbp)
	jg	.LBB5_6
.LBB5_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rax)
	jg	.LBB5_5
	.p2align	4, 0x90
.LBB5_4:                                # %while_body5
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %ebx
	imull	%edx, %ebx
	addl	(%rax), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rax)
	cmpl	%ecx, (%rax)
	jle	.LBB5_4
	jmp	.LBB5_5
.LBB5_6:                                # %merge12
	movq	-64(%rbp), %r9
	movl	-52(%rbp), %r11d
	movq	(%rdi), %r14
	movl	12(%rdi), %r12d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB5_8
	jmp	.LBB5_12
	.p2align	4, 0x90
.LBB5_11:                               # %merge47
                                        #   in Loop: Header=BB5_8 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB5_12
.LBB5_8:                                # %while_body27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_10 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB5_11
	.p2align	4, 0x90
.LBB5_10:                               # %while_body30
                                        #   Parent Loop BB5_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %esi
	movl	(%rax), %ebx
	movl	%r11d, %edi
	imull	%ebx, %edi
	addl	%esi, %edi
	movslq	%edi, %rdi
	imull	%r12d, %ebx
	addl	%esi, %ebx
	movslq	%ebx, %rsi
	movsd	(%r14,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movsd	%xmm1, (%r9,%rdi,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	.LBB5_10
	jmp	.LBB5_11
.LBB5_12:                               # %merge52
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rsp
	movsd	%xmm0, -16(%rbx)
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string.10, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$8, %edi
	callq	malloc
	movq	%rax, %r14
	movsd	-16(%rbx), %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %r10
	movl	-56(%rbp), %ecx
	leal	-1(%rcx), %r8d
	movl	-52(%rbp), %edx
	leal	-1(%rdx), %esi
	movl	%ecx, %edi
	imull	%edx, %edi
	leaq	15(,%rdi,8), %rbx
	andq	%r15, %rbx
	movq	%rsp, %rdi
	subq	%rbx, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rbx
	leaq	-16(%rbx), %r15
	movq	%r15, %rsp
	movq	%rdi, -16(%rbx)
	movl	%ecx, -8(%rbx)
	movl	%edx, -4(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r8d, (%rbx)
	jle	.LBB5_14
	jmp	.LBB5_18
	.p2align	4, 0x90
.LBB5_17:                               # %merge86
                                        #   in Loop: Header=BB5_14 Depth=1
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB5_18
.LBB5_14:                               # %while_body75
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_16 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%esi, (%rcx)
	jg	.LBB5_17
	.p2align	4, 0x90
.LBB5_16:                               # %while_body78
                                        #   Parent Loop BB5_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movq	$0, (%rdi,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB5_16
	jmp	.LBB5_17
.LBB5_18:                               # %merge91
	movq	(%r15), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r8d, (%rbx)
	jle	.LBB5_20
	jmp	.LBB5_24
	.p2align	4, 0x90
.LBB5_23:                               # %merge116
                                        #   in Loop: Header=BB5_20 Depth=1
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB5_24
.LBB5_20:                               # %while_body98
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_22 Depth 2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%esi, (%rcx)
	jg	.LBB5_23
	.p2align	4, 0x90
.LBB5_22:                               # %while_body101
                                        #   Parent Loop BB5_20 Depth=1
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
	jle	.LBB5_22
	jmp	.LBB5_23
.LBB5_24:                               # %merge121
	movl	8(%r15), %r12d
	movl	12(%r15), %r13d
	movl	%r12d, %edi
	imull	%r13d, %edi
	shll	$3, %edi
	callq	malloc
	movq	%rax, %rbx
	movl	$16, %edi
	callq	malloc
	movq	%rbx, (%rax)
	movl	%r12d, 8(%rax)
	movl	%r13d, 12(%rax)
	decl	%r12d
	leal	-1(%r13), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r12d, (%rdx)
	jle	.LBB5_26
	jmp	.LBB5_30
	.p2align	4, 0x90
.LBB5_29:                               # %merge151
                                        #   in Loop: Header=BB5_26 Depth=1
	incl	(%rdx)
	cmpl	%r12d, (%rdx)
	jg	.LBB5_30
.LBB5_26:                               # %while_body140
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_28 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%ecx, (%rsi)
	jg	.LBB5_29
	.p2align	4, 0x90
.LBB5_28:                               # %while_body143
                                        #   Parent Loop BB5_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	imull	%r13d, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rbx,%rdi,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB5_28
	jmp	.LBB5_29
.LBB5_30:                               # %merge156
	movq	(%rax), %r8
	movl	12(%rax), %r9d
	movq	(%r15), %r11
	movl	12(%r15), %r15d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r12d, (%r13)
	jle	.LBB5_32
	jmp	.LBB5_36
	.p2align	4, 0x90
.LBB5_35:                               # %merge196
                                        #   in Loop: Header=BB5_32 Depth=1
	incl	(%r13)
	cmpl	%r12d, (%r13)
	jg	.LBB5_36
.LBB5_32:                               # %while_body175
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_34 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rsi)
	jg	.LBB5_35
	.p2align	4, 0x90
.LBB5_34:                               # %while_body178
                                        #   Parent Loop BB5_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%r13), %ebx
	movl	%r9d, %edx
	imull	%ebx, %edx
	addl	%edi, %edx
	movslq	%edx, %rdx
	imull	%r15d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r11,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r8,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB5_34
	jmp	.LBB5_35
.LBB5_36:                               # %merge201
	movq	%rax, (%r14)
	movq	%r14, %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	f3, .Lfunc_end5-f3
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
	.asciz	"testing"
	.size	.Lsystem_string.9, 8

	.type	.Lsystem_string.10,@object # @system_string.10
.Lsystem_string.10:
	.asciz	"testing"
	.size	.Lsystem_string.10, 8

	.type	.Lsystem_string.11,@object # @system_string.11
.Lsystem_string.11:
	.asciz	"now j is :"
	.size	.Lsystem_string.11, 11

	.type	.Lsystem_string.12,@object # @system_string.12
.Lsystem_string.12:
	.zero	1
	.size	.Lsystem_string.12, 1

	.type	.Lsystem_string.13,@object # @system_string.13
.Lsystem_string.13:
	.asciz	"hahaha"
	.size	.Lsystem_string.13, 7

	.type	.Lsystem_string.14,@object # @system_string.14
.Lsystem_string.14:
	.zero	1
	.size	.Lsystem_string.14, 1

	.type	.Lsystem_string.15,@object # @system_string.15
.Lsystem_string.15:
	.asciz	"now s is :"
	.size	.Lsystem_string.15, 11


	.section	".note.GNU-stack","",@progbits
