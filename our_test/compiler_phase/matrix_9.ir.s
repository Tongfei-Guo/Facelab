	.text
	.file	"MicroC"
	.globl	main                    # -- Begin function main
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
	movq	$0, -160(%rbp)
	movabsq	$4591870180066957722, %rax # imm = 0x3FB999999999999A
	movq	%rax, -152(%rbp)
	movabsq	$4596373779694328218, %rax # imm = 0x3FC999999999999A
	movq	%rax, -144(%rbp)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, -136(%rbp)
	movabsq	$4607632778762754458, %rax # imm = 0x3FF199999999999A
	movq	%rax, -128(%rbp)
	movabsq	$4608083138725491507, %rax # imm = 0x3FF3333333333333
	movq	%rax, -120(%rbp)
	movabsq	$4611686018427387904, %rax # imm = 0x4000000000000000
	movq	%rax, -112(%rbp)
	movabsq	$4611911198408756429, %rax # imm = 0x4000CCCCCCCCCCCD
	movq	%rax, -104(%rbp)
	movabsq	$4612136378390124954, %rax # imm = 0x400199999999999A
	movq	%rax, -96(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -88(%rbp)
	movabsq	$12884901891, %rdx      # imm = 0x300000003
	movq	%rdx, -80(%rbp)
	movl	$3, %eax
	movq	%rsp, %rcx
	addq	$-80, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$2, %edx
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
	cmpl	%edx, (%rsi)
	jg	.LBB0_5
	.p2align	4, 0x90
.LBB0_4:                                # %while_body18
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %edi
	imull	%eax, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rcx,%rdi,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	.LBB0_4
	jmp	.LBB0_5
.LBB0_6:                                # %merge26
	decl	%eax
	movq	-64(%rbp), %r8
	movl	-52(%rbp), %r10d
	movq	-88(%rbp), %r11
	movl	-76(%rbp), %r14d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%eax, (%rbx)
	jle	.LBB0_8
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_11:                               # %merge61
                                        #   in Loop: Header=BB0_8 Depth=1
	incl	(%rbx)
	cmpl	%eax, (%rbx)
	jg	.LBB0_12
.LBB0_8:                                # %while_body41
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%eax, (%rcx)
	jg	.LBB0_11
	.p2align	4, 0x90
.LBB0_10:                               # %while_body44
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %edx
	movl	(%rbx), %esi
	movl	%r10d, %edi
	imull	%esi, %edi
	addl	%edx, %edi
	movslq	%edi, %rdi
	imull	%r14d, %esi
	addl	%edx, %esi
	movslq	%esi, %rdx
	movsd	(%r11,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r8,%rdi,8)
	incl	(%rcx)
	cmpl	%eax, (%rcx)
	jle	.LBB0_10
	jmp	.LBB0_11
.LBB0_12:                               # %merge66
	movq	-64(%rbp), %r15
	movl	-56(%rbp), %eax
	movl	-52(%rbp), %r12d
	decl	%eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	leal	-1(%r12), %r13d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB0_13
	.p2align	4, 0x90
.LBB0_17:                               # %merge92
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%rbx)
.LBB0_13:                               # %while78
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
	movl	-68(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rbx)
	jg	.LBB0_18
# BB#14:                                # %while_body79
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	cmpl	%r13d, (%r14)
	jg	.LBB0_17
	.p2align	4, 0x90
.LBB0_16:                               # %while_body82
                                        #   Parent Loop BB0_13 Depth=1
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
	jle	.LBB0_16
	jmp	.LBB0_17
.LBB0_18:                               # %merge98
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	leaq	-64(%rbp), %rdi
	callq	multiply
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
	.globl	multiply                # -- Begin function multiply
	.p2align	4, 0x90
	.type	multiply,@function
multiply:                               # @multiply
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi17:
	.cfi_def_cfa_offset 16
.Lcfi18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi19:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
.Lcfi20:
	.cfi_offset %rbx, -56
.Lcfi21:
	.cfi_offset %r12, -48
.Lcfi22:
	.cfi_offset %r13, -40
.Lcfi23:
	.cfi_offset %r14, -32
.Lcfi24:
	.cfi_offset %r15, -24
	movl	8(%rdi), %r8d
	movl	12(%rdi), %edx
	movl	%r8d, %eax
	imull	%edx, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %r12      # imm = 0xFFFFFFFF0
	andq	%r12, %rax
	movq	%rsp, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rsi, -80(%rbp)
	movl	%r8d, -72(%rbp)
	movl	%edx, -68(%rbp)
	decl	%r8d
	leal	-1(%rdx), %ecx
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
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rax)
	jg	.LBB3_5
	.p2align	4, 0x90
.LBB3_4:                                # %while_body5
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %ebx
	imull	%edx, %ebx
	addl	(%rax), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rax)
	cmpl	%ecx, (%rax)
	jle	.LBB3_4
	jmp	.LBB3_5
.LBB3_6:                                # %merge12
	movq	-80(%rbp), %r9
	movl	-68(%rbp), %r11d
	movq	(%rdi), %r14
	movl	12(%rdi), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB3_8
	jmp	.LBB3_12
	.p2align	4, 0x90
.LBB3_11:                               # %merge47
                                        #   in Loop: Header=BB3_8 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB3_12
.LBB3_8:                                # %while_body27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB3_11
	.p2align	4, 0x90
.LBB3_10:                               # %while_body30
                                        #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %esi
	movl	(%rax), %ebx
	movl	%r11d, %edi
	imull	%ebx, %edi
	addl	%esi, %edi
	movslq	%edi, %rdi
	imull	%r15d, %ebx
	addl	%esi, %ebx
	movslq	%ebx, %rsi
	movsd	(%r14,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdi,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	.LBB3_10
	jmp	.LBB3_11
.LBB3_12:                               # %merge52
	movq	%rsp, %rax
	leaq	-64(%rax), %rcx
	movq	%rcx, %rsp
	movq	$0, -64(%rax)
	movabsq	$4591870180066957722, %rdx # imm = 0x3FB999999999999A
	movq	%rdx, -56(%rax)
	movabsq	$4607182418800017408, %rdx # imm = 0x3FF0000000000000
	movq	%rdx, -48(%rax)
	movabsq	$4607632778762754458, %rdx # imm = 0x3FF199999999999A
	movq	%rdx, -40(%rax)
	movabsq	$4611686018427387904, %rdx # imm = 0x4000000000000000
	movq	%rdx, -32(%rax)
	movabsq	$4611911198408756429, %rdx # imm = 0x4000CCCCCCCCCCCD
	movq	%rdx, -24(%rax)
	movabsq	$4613937818241073152, %rdx # imm = 0x4008000000000000
	movq	%rdx, -16(%rax)
	movabsq	$4614162998222441677, %rdx # imm = 0x4008CCCCCCCCCCCD
	movq	%rdx, -8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r10
	movq	%r10, %rsp
	movq	%rcx, -16(%rax)
	movabsq	$8589934596, %rdx       # imm = 0x200000004
	movq	%rdx, -8(%rax)
	movl	$4, %r8d
	movl	$2, %ecx
	movq	%rsp, %rsi
	addq	$-64, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
	movq	%rsi, -16(%rax)
	movq	%rdx, -8(%rax)
	movl	$3, %r9d
	movl	$1, %edi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r9d, (%rbx)
	jle	.LBB3_14
	jmp	.LBB3_18
	.p2align	4, 0x90
.LBB3_17:                               # %merge93
                                        #   in Loop: Header=BB3_14 Depth=1
	incl	(%rbx)
	cmpl	%r9d, (%rbx)
	jg	.LBB3_18
.LBB3_14:                               # %while_body82
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_16 Depth 2
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rax)
	cmpl	%edi, (%rdx)
	jg	.LBB3_17
	.p2align	4, 0x90
.LBB3_16:                               # %while_body85
                                        #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	imull	%ecx, %eax
	addl	(%rdx), %eax
	cltq
	movq	$0, (%rsi,%rax,8)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	.LBB3_16
	jmp	.LBB3_17
.LBB3_18:                               # %merge98
	decl	%ecx
	decl	%r8d
	movq	(%r13), %r9
	movl	12(%r13), %r11d
	movq	(%r10), %r14
	movl	12(%r10), %r15d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%rax)
	jle	.LBB3_20
	jmp	.LBB3_24
	.p2align	4, 0x90
.LBB3_23:                               # %merge138
                                        #   in Loop: Header=BB3_20 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB3_24
.LBB3_20:                               # %while_body117
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_22 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rsi)
	jg	.LBB3_23
	.p2align	4, 0x90
.LBB3_22:                               # %while_body120
                                        #   Parent Loop BB3_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rax), %ebx
	movl	%r11d, %edx
	imull	%ebx, %edx
	addl	%edi, %edx
	movslq	%edx, %rdx
	imull	%r15d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r14,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB3_22
	jmp	.LBB3_23
.LBB3_24:                               # %merge143
	movl	8(%r13), %r9d
	movl	12(%r13), %esi
	leal	-1(%r9), %eax
	leal	-1(%rsi), %ecx
	addl	$-2, %r9d
	movl	%eax, %edx
	imull	%esi, %edx
	leaq	15(,%rdx,8), %rdx
	andq	%r12, %rdx
	movq	%rsp, %rdi
	subq	%rdx, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rdx
	leaq	-16(%rdx), %r8
	movq	%r8, %rsp
	movq	%rdi, -16(%rdx)
	movl	%eax, -8(%rdx)
	movl	%esi, -4(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r9d, (%rax)
	jle	.LBB3_26
	jmp	.LBB3_30
	.p2align	4, 0x90
.LBB3_29:                               # %merge177
                                        #   in Loop: Header=BB3_26 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	.LBB3_30
.LBB3_26:                               # %while_body166
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_28 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdx)
	jg	.LBB3_29
	.p2align	4, 0x90
.LBB3_28:                               # %while_body169
                                        #   Parent Loop BB3_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%esi, %ebx
	addl	(%rdx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rdi,%rbx,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	.LBB3_28
	jmp	.LBB3_29
.LBB3_30:                               # %merge182
	movq	(%r8), %r10
	movl	12(%r8), %r14d
	movq	(%r13), %r15
	movl	12(%r13), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r9d, (%rax)
	jle	.LBB3_32
	jmp	.LBB3_36
	.p2align	4, 0x90
.LBB3_35:                               # %merge220
                                        #   in Loop: Header=BB3_32 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	.LBB3_36
.LBB3_32:                               # %while_body199
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_34 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB3_35
	.p2align	4, 0x90
.LBB3_34:                               # %while_body202
                                        #   Parent Loop BB3_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rax), %ebx
	movl	%r14d, %edx
	imull	%ebx, %edx
	addl	%edi, %edx
	movslq	%edx, %rdx
	incl	%ebx
	imull	%r12d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r15,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB3_34
	jmp	.LBB3_35
.LBB3_36:                               # %merge225
	movq	%r13, -56(%rbp)         # 8-byte Spill
	movq	(%r8), %r13
	movl	8(%r8), %eax
	movl	12(%r8), %ebx
	decl	%eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	leal	-1(%rbx), %r14d
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB3_37
	.p2align	4, 0x90
.LBB3_41:                               # %merge251
                                        #   in Loop: Header=BB3_37 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%r15)
.LBB3_37:                               # %while237
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_40 Depth 2
	movl	-64(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%r15)
	jg	.LBB3_42
# BB#38:                                # %while_body238
                                        #   in Loop: Header=BB3_37 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rax)
	cmpl	%r14d, (%r12)
	jg	.LBB3_41
	.p2align	4, 0x90
.LBB3_40:                               # %while_body241
                                        #   Parent Loop BB3_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r15), %eax
	imull	%ebx, %eax
	addl	(%r12), %eax
	cltq
	movsd	(%r13,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.2, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%r12)
	cmpl	%r14d, (%r12)
	jle	.LBB3_40
	jmp	.LBB3_41
.LBB3_42:                               # %merge257
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %r9d
	movl	12(%rax), %esi
	leal	-1(%r9), %eax
	leal	-1(%rsi), %edx
	addl	$-2, %r9d
	movl	%eax, %ecx
	imull	%esi, %ecx
	leaq	15(,%rcx,8), %rcx
	movabsq	$68719476720, %r13      # imm = 0xFFFFFFFF0
	andq	%r13, %rcx
	movq	%rsp, %rdi
	subq	%rcx, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r8
	movq	%r8, %rsp
	movq	%rdi, -16(%rcx)
	movl	%eax, -8(%rcx)
	movl	%esi, -4(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r9d, (%rax)
	jle	.LBB3_44
	jmp	.LBB3_48
	.p2align	4, 0x90
.LBB3_47:                               # %merge292
                                        #   in Loop: Header=BB3_44 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	.LBB3_48
.LBB3_44:                               # %while_body281
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_46 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%edx, (%rcx)
	jg	.LBB3_47
	.p2align	4, 0x90
.LBB3_46:                               # %while_body284
                                        #   Parent Loop BB3_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%esi, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rdi,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	.LBB3_46
	jmp	.LBB3_47
.LBB3_48:                               # %merge297
	movq	(%r8), %r10
	movl	12(%r8), %r14d
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r15
	movl	12(%rax), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r9d, (%rcx)
	jle	.LBB3_50
	jmp	.LBB3_54
	.p2align	4, 0x90
.LBB3_53:                               # %merge335
                                        #   in Loop: Header=BB3_50 Depth=1
	incl	(%rcx)
	cmpl	%r9d, (%rcx)
	jg	.LBB3_54
.LBB3_50:                               # %while_body314
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_52 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%edx, (%rsi)
	jg	.LBB3_53
	.p2align	4, 0x90
.LBB3_52:                               # %while_body317
                                        #   Parent Loop BB3_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rcx), %ebx
	movl	%r14d, %eax
	imull	%ebx, %eax
	addl	%edi, %eax
	cltq
	incl	%ebx
	imull	%r12d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r15,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rax,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	.LBB3_52
	jmp	.LBB3_53
.LBB3_54:                               # %merge340
	movl	8(%r8), %r9d
	movl	12(%r8), %esi
	movl	%r9d, %eax
	imull	%esi, %eax
	leaq	15(,%rax,8), %rax
	andq	%r13, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
	movq	%rdi, -16(%rax)
	movl	%r9d, -8(%rax)
	movl	%esi, -4(%rax)
	decl	%r9d
	leal	-1(%rsi), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r9d, (%rax)
	jle	.LBB3_56
	jmp	.LBB3_60
	.p2align	4, 0x90
.LBB3_59:                               # %merge368
                                        #   in Loop: Header=BB3_56 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	.LBB3_60
.LBB3_56:                               # %while_body357
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_58 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%edx, (%rcx)
	jg	.LBB3_59
	.p2align	4, 0x90
.LBB3_58:                               # %while_body360
                                        #   Parent Loop BB3_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%esi, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rdi,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	.LBB3_58
	jmp	.LBB3_59
.LBB3_60:                               # %merge373
	movq	(%r15), %r10
	movl	12(%r15), %r11d
	movq	(%r8), %r14
	movl	12(%r8), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r9d, (%rcx)
	jle	.LBB3_62
	jmp	.LBB3_66
	.p2align	4, 0x90
.LBB3_65:                               # %merge413
                                        #   in Loop: Header=BB3_62 Depth=1
	incl	(%rcx)
	cmpl	%r9d, (%rcx)
	jg	.LBB3_66
.LBB3_62:                               # %while_body392
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_64 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r8)
	cmpl	%edx, (%rsi)
	jg	.LBB3_65
	.p2align	4, 0x90
.LBB3_64:                               # %while_body395
                                        #   Parent Loop BB3_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %eax
	movl	(%rcx), %edi
	movl	%r11d, %ebx
	imull	%edi, %ebx
	addl	%eax, %ebx
	movslq	%ebx, %rbx
	imull	%r12d, %edi
	addl	%eax, %edi
	movslq	%edi, %rax
	movsd	(%r14,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rbx,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	.LBB3_64
	jmp	.LBB3_65
.LBB3_66:                               # %merge418
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movq	-80(%rbp), %r14
	movq	(%r15), %r12
	movl	-72(%rbp), %ecx
	leal	-1(%rcx), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	12(%r15), %r8d
	leal	-1(%r8), %r11d
	movq	%r13, %rdx
	movl	-68(%rbp), %r13d
	leal	-1(%r13), %r10d
	movl	%ecx, %eax
	imull	%r8d, %eax
	leaq	15(,%rax,8), %rdi
	andq	%rdx, %rdi
	movq	%rsp, %rax
	subq	%rdi, %rax
	movq	%rax, %rsp
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rsp
	movq	%rax, -16(%rdi)
	movl	%ecx, -8(%rdi)
	movl	%r8d, -4(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdi)
	jmp	.LBB3_67
	.p2align	4, 0x90
.LBB3_71:                               # %merge454
                                        #   in Loop: Header=BB3_67 Depth=1
	incl	(%rcx)
.LBB3_67:                               # %while442
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_70 Depth 2
	movl	-56(%rbp), %edx         # 4-byte Reload
	cmpl	%edx, (%rcx)
	jg	.LBB3_72
# BB#68:                                # %while_body443
                                        #   in Loop: Header=BB3_67 Depth=1
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r11d, (%rdi)
	jg	.LBB3_71
	.p2align	4, 0x90
.LBB3_70:                               # %while_body446
                                        #   Parent Loop BB3_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %ebx
	imull	%r8d, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rax,%rbx,8)
	incl	(%rdi)
	cmpl	%r11d, (%rdi)
	jle	.LBB3_70
	jmp	.LBB3_71
.LBB3_72:                               # %merge459
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB3_73
	.p2align	4, 0x90
.LBB3_80:                               # %merge500
                                        #   in Loop: Header=BB3_73 Depth=1
	incl	(%rdi)
.LBB3_73:                               # %while465
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_76 Depth 2
                                        #       Child Loop BB3_78 Depth 3
	movl	-56(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rdi)
	jg	.LBB3_81
# BB#74:                                # %while_body466
                                        #   in Loop: Header=BB3_73 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r11d, (%rax)
	jle	.LBB3_76
	jmp	.LBB3_80
	.p2align	4, 0x90
.LBB3_79:                               # %merge494
                                        #   in Loop: Header=BB3_76 Depth=2
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, (%r15)
	incl	(%rax)
	cmpl	%r11d, (%rax)
	jg	.LBB3_80
.LBB3_76:                               # %while_body469
                                        #   Parent Loop BB3_73 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_78 Depth 3
	movl	(%rdi), %ecx
	imull	%r8d, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx,8), %r15
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movq	$0, -16(%rbx)
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%r10d, (%rbx)
	jg	.LBB3_79
	.p2align	4, 0x90
.LBB3_78:                               # %while_body477
                                        #   Parent Loop BB3_73 Depth=1
                                        #     Parent Loop BB3_76 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %esi
	movl	(%rdi), %edx
	imull	%r13d, %edx
	addl	%esi, %edx
	movslq	%edx, %rdx
	movsd	(%r14,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	imull	%r8d, %esi
	addl	(%rax), %esi
	movslq	%esi, %rdx
	mulsd	(%r12,%rdx,8), %xmm0
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	incl	(%rbx)
	cmpl	%r10d, (%rbx)
	jle	.LBB3_78
	jmp	.LBB3_79
.LBB3_81:                               # %merge505
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r15
	movl	8(%rax), %ecx
	movl	12(%rax), %r12d
	decl	%ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	leal	-1(%r12), %r13d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB3_82
	.p2align	4, 0x90
.LBB3_86:                               # %merge532
                                        #   in Loop: Header=BB3_82 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%rbx)
.LBB3_82:                               # %while517
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_85 Depth 2
	movl	-64(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rbx)
	jg	.LBB3_87
# BB#83:                                # %while_body518
                                        #   in Loop: Header=BB3_82 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	cmpl	%r13d, (%r14)
	jg	.LBB3_86
	.p2align	4, 0x90
.LBB3_85:                               # %while_body521
                                        #   Parent Loop BB3_82 Depth=1
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
	jle	.LBB3_85
	jmp	.LBB3_86
.LBB3_87:                               # %merge538
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
	movq	%rsp, %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	multiply, .Lfunc_end3-multiply
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


	.section	".note.GNU-stack","",@progbits
