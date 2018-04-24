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
	pushq	%rbx
	subq	$120, %rsp
.Lcfi3:
	.cfi_offset %rbx, -40
.Lcfi4:
	.cfi_offset %r14, -32
.Lcfi5:
	.cfi_offset %r15, -24
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, -136(%rbp)
	movabsq	$4611686018427387904, %rax # imm = 0x4000000000000000
	movq	%rax, -128(%rbp)
	movabsq	$4613937818241073152, %rax # imm = 0x4008000000000000
	movq	%rax, -120(%rbp)
	movabsq	$4616189618054758400, %rax # imm = 0x4010000000000000
	movq	%rax, -112(%rbp)
	movabsq	$4617315517961601024, %r8 # imm = 0x4014000000000000
	movq	%r8, -104(%rbp)
	movabsq	$4618441417868443648, %rax # imm = 0x4018000000000000
	movq	%rax, -96(%rbp)
	movabsq	$4619567317775286272, %rax # imm = 0x401C000000000000
	movq	%rax, -88(%rbp)
	movabsq	$4620693217682128896, %rax # imm = 0x4020000000000000
	movq	%rax, -80(%rbp)
	movabsq	$4621256167635550208, %rax # imm = 0x4022000000000000
	movq	%rax, -72(%rbp)
	leaq	-136(%rbp), %rax
	movq	%rax, -64(%rbp)
	movabsq	$12884901891, %r9       # imm = 0x300000003
	movq	%r9, -56(%rbp)
	movl	$3, %edx
	movq	%rsp, %rax
	addq	$-80, %rax
	movq	%rax, %rsp
	movq	%rax, -48(%rbp)
	movq	%r9, -40(%rbp)
	movl	$2, %ecx
	movl	$0, -28(%rbp)
	cmpl	%ecx, -28(%rbp)
	jle	.LBB0_2
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_5:                                # %merge
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	-28(%rbp)
	cmpl	%ecx, -28(%rbp)
	jg	.LBB0_6
.LBB0_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_5
	.p2align	4, 0x90
.LBB0_4:                                # %while_body18
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %edi
	imull	%edx, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rax,%rdi,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB0_4
	jmp	.LBB0_5
.LBB0_6:                                # %merge26
	decl	%edx
	movq	-48(%rbp), %r10
	movl	-36(%rbp), %r11d
	movq	-64(%rbp), %r14
	movl	-52(%rbp), %r15d
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%edx, (%rsi)
	jle	.LBB0_8
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_11:                               # %merge61
                                        #   in Loop: Header=BB0_8 Depth=1
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jg	.LBB0_12
.LBB0_8:                                # %while_body41
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%edx, (%rdi)
	jg	.LBB0_11
	.p2align	4, 0x90
.LBB0_10:                               # %while_body44
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %ebx
	movl	(%rsi), %ecx
	movl	%r11d, %eax
	imull	%ecx, %eax
	addl	%ebx, %eax
	cltq
	imull	%r15d, %ecx
	addl	%ebx, %ecx
	movslq	%ecx, %rcx
	movsd	(%r14,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rax,8)
	incl	(%rdi)
	cmpl	%edx, (%rdi)
	jle	.LBB0_10
	jmp	.LBB0_11
.LBB0_12:                               # %merge66
	movq	%rsp, %rax
	leaq	-80(%rax), %rcx
	movq	%rcx, %rsp
	movq	$0, -80(%rax)
	movabsq	$-4616189618054758400, %rdx # imm = 0xBFF0000000000000
	movq	%rdx, -72(%rax)
	movq	$0, -64(%rax)
	movq	%rdx, -56(%rax)
	movq	%r8, -48(%rax)
	movq	%rdx, -40(%rax)
	movq	$0, -32(%rax)
	movq	%rdx, -24(%rax)
	movq	$0, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r10
	movq	%r10, %rsp
	movq	%rcx, -16(%rax)
	movq	%r9, -8(%rax)
	movl	$3, %ecx
	movq	%rsp, %rsi
	addq	$-80, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r11
	movq	%r11, %rsp
	movq	%rsi, -16(%rax)
	movq	%r9, -8(%rax)
	movl	$2, %eax
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rdi)
	cmpl	%eax, (%rdx)
	jle	.LBB0_14
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_17:                               # %merge108
                                        #   in Loop: Header=BB0_14 Depth=1
	incl	(%rdx)
	cmpl	%eax, (%rdx)
	jg	.LBB0_18
.LBB0_14:                               # %while_body97
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%eax, (%rdi)
	jg	.LBB0_17
	.p2align	4, 0x90
.LBB0_16:                               # %while_body100
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %ebx
	imull	%ecx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%eax, (%rdi)
	jle	.LBB0_16
	jmp	.LBB0_17
.LBB0_18:                               # %merge113
	decl	%ecx
	movq	(%r11), %r8
	movl	12(%r11), %r9d
	movq	(%r10), %r11
	movl	12(%r10), %r10d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rsi)
	cmpl	%ecx, (%rax)
	jle	.LBB0_20
	jmp	.LBB0_24
	.p2align	4, 0x90
.LBB0_23:                               # %merge153
                                        #   in Loop: Header=BB0_20 Depth=1
	incl	(%rax)
	cmpl	%ecx, (%rax)
	jg	.LBB0_24
.LBB0_20:                               # %while_body132
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_23
	.p2align	4, 0x90
.LBB0_22:                               # %while_body135
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %ebx
	movl	(%rax), %edi
	movl	%r9d, %edx
	imull	%edi, %edx
	addl	%ebx, %edx
	movslq	%edx, %rdx
	imull	%r10d, %edi
	addl	%ebx, %edi
	movslq	%edi, %rdi
	movsd	(%r11,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r8,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB0_22
	jmp	.LBB0_23
.LBB0_24:                               # %merge158
	xorl	%eax, %eax
	leaq	-24(%rbp), %rsp
	popq	%rbx
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
.Lcfi6:
	.cfi_def_cfa_offset 16
.Lcfi7:
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
.Lcfi8:
	.cfi_def_cfa_offset 16
.Lcfi9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi10:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
.Lcfi11:
	.cfi_offset %rbx, -48
.Lcfi12:
	.cfi_offset %r12, -40
.Lcfi13:
	.cfi_offset %r14, -32
.Lcfi14:
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
	.globl	bitwise                 # -- Begin function bitwise
	.p2align	4, 0x90
	.type	bitwise,@function
bitwise:                                # @bitwise
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi15:
	.cfi_def_cfa_offset 16
.Lcfi16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi17:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
.Lcfi18:
	.cfi_offset %rbx, -56
.Lcfi19:
	.cfi_offset %r12, -48
.Lcfi20:
	.cfi_offset %r13, -40
.Lcfi21:
	.cfi_offset %r14, -32
.Lcfi22:
	.cfi_offset %r15, -24
	movl	8(%rdi), %r9d
	movl	12(%rdi), %r11d
	movl	%r9d, %eax
	imull	%r11d, %eax
	leaq	15(,%rax,8), %rcx
	movabsq	$68719476720, %r8       # imm = 0xFFFFFFFF0
	andq	%r8, %rcx
	movq	%rsp, %rax
	subq	%rcx, %rax
	movq	%rax, %rsp
	movq	%rax, -64(%rbp)
	movl	%r9d, -56(%rbp)
	movl	%r11d, -52(%rbp)
	decl	%r9d
	leal	-1(%r11), %edx
	movl	$0, -44(%rbp)
	cmpl	%r9d, -44(%rbp)
	jle	.LBB3_2
	jmp	.LBB3_6
	.p2align	4, 0x90
.LBB3_5:                                # %merge
                                        #   in Loop: Header=BB3_2 Depth=1
	incl	-44(%rbp)
	cmpl	%r9d, -44(%rbp)
	jg	.LBB3_6
.LBB3_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edx, (%rcx)
	jg	.LBB3_5
	.p2align	4, 0x90
.LBB3_4:                                # %while_body5
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %ebx
	imull	%r11d, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rax,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	.LBB3_4
	jmp	.LBB3_5
.LBB3_6:                                # %merge12
	movq	-64(%rbp), %r10
	movl	-52(%rbp), %r11d
	movq	(%rdi), %r15
	movl	12(%rdi), %r12d
	movq	%rsp, %rax
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rax)
	cmpl	%r9d, (%r13)
	jle	.LBB3_8
	jmp	.LBB3_12
	.p2align	4, 0x90
.LBB3_11:                               # %merge47
                                        #   in Loop: Header=BB3_8 Depth=1
	incl	(%r13)
	cmpl	%r9d, (%r13)
	jg	.LBB3_12
.LBB3_8:                                # %while_body27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
	movq	%rsp, %r14
	leaq	-16(%r14), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r14)
	cmpl	%edx, (%rax)
	jg	.LBB3_11
	.p2align	4, 0x90
.LBB3_10:                               # %while_body30
                                        #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	movl	(%r13), %edi
	movl	%r11d, %ebx
	imull	%edi, %ebx
	addl	%ecx, %ebx
	movslq	%ebx, %rbx
	imull	%r12d, %edi
	addl	%ecx, %edi
	movslq	%edi, %rcx
	movsd	(%r15,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rbx,8)
	incl	(%rax)
	cmpl	%edx, (%rax)
	jle	.LBB3_10
	jmp	.LBB3_11
.LBB3_12:                               # %merge52
	movl	8(%rsi), %r9d
	movl	12(%rsi), %r11d
	movl	%r9d, %eax
	imull	%r11d, %eax
	leaq	15(,%rax,8), %rax
	andq	%r8, %rax
	movq	%rsp, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r8
	movq	%r8, %rsp
	movq	%rbx, -16(%rax)
	movl	%r9d, -8(%rax)
	movl	%r11d, -4(%rax)
	decl	%r9d
	leal	-1(%r11), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r9d, (%rax)
	jle	.LBB3_14
	jmp	.LBB3_18
	.p2align	4, 0x90
.LBB3_17:                               # %merge80
                                        #   in Loop: Header=BB3_14 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	.LBB3_18
.LBB3_14:                               # %while_body69
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_16 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edx, (%rcx)
	jg	.LBB3_17
	.p2align	4, 0x90
.LBB3_16:                               # %while_body72
                                        #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edi
	imull	%r11d, %edi
	addl	(%rcx), %edi
	movslq	%edi, %rdi
	movq	$0, (%rbx,%rdi,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	.LBB3_16
	jmp	.LBB3_17
.LBB3_18:                               # %merge85
	movq	(%r8), %r10
	movl	12(%r8), %r14d
	movq	(%rsi), %r15
	movl	12(%rsi), %r12d
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdi)
	cmpl	%r9d, (%rax)
	jle	.LBB3_20
	jmp	.LBB3_24
	.p2align	4, 0x90
.LBB3_23:                               # %merge125
                                        #   in Loop: Header=BB3_20 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	.LBB3_24
.LBB3_20:                               # %while_body104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_22 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%r11)
	cmpl	%edx, (%rdi)
	jg	.LBB3_23
	.p2align	4, 0x90
.LBB3_22:                               # %while_body107
                                        #   Parent Loop BB3_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %ebx
	movl	(%rax), %ecx
	movl	%r14d, %esi
	imull	%ecx, %esi
	addl	%ebx, %esi
	movslq	%esi, %rsi
	imull	%r12d, %ecx
	addl	%ebx, %ecx
	movslq	%ecx, %rcx
	movsd	(%r15,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rsi,8)
	incl	(%rdi)
	cmpl	%edx, (%rdi)
	jle	.LBB3_22
	jmp	.LBB3_23
.LBB3_24:                               # %merge130
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movq	$0, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r9
	movq	%r9, %rsp
	movl	$0, -16(%rax)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	movl	$0, -16(%rax)
	cmpl	$2, (%r9)
	jle	.LBB3_26
	jmp	.LBB3_30
	.p2align	4, 0x90
.LBB3_29:                               # %merge170
                                        #   in Loop: Header=BB3_26 Depth=1
	incl	(%r9)
	cmpl	$2, (%r9)
	jg	.LBB3_30
.LBB3_26:                               # %while_body136
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_28 Depth 2
	movl	$0, (%rdx)
	cmpl	$2, (%rdx)
	jg	.LBB3_29
	.p2align	4, 0x90
.LBB3_28:                               # %while_body138
                                        #   Parent Loop BB3_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r9), %eax
	movl	(%rdx), %esi
	movq	-64(%rbp), %rdi
	movl	-52(%rbp), %ecx
	imull	%eax, %ecx
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	movsd	(%rdi,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%r8), %rcx
	imull	12(%r8), %eax
	addl	%esi, %eax
	cltq
	mulsd	(%rcx,%rax,8), %xmm0
	addsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
	incl	(%rdx)
	cmpl	$2, (%rdx)
	jle	.LBB3_28
	jmp	.LBB3_29
.LBB3_30:                               # %merge175
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$8, %edi
	callq	malloc
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	bitwise, .Lfunc_end3-bitwise
	.cfi_endproc
                                        # -- End function
	.globl	Filter                  # -- Begin function Filter
	.p2align	4, 0x90
	.type	Filter,@function
Filter:                                 # @Filter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi23:
	.cfi_def_cfa_offset 16
.Lcfi24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi25:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
.Lcfi26:
	.cfi_offset %rbx, -56
.Lcfi27:
	.cfi_offset %r12, -48
.Lcfi28:
	.cfi_offset %r13, -40
.Lcfi29:
	.cfi_offset %r14, -32
.Lcfi30:
	.cfi_offset %r15, -24
	movl	8(%rdi), %r9d
	movl	12(%rdi), %r11d
	movl	%r9d, %eax
	imull	%r11d, %eax
	leaq	15(,%rax,8), %rdx
	movabsq	$68719476720, %r8       # imm = 0xFFFFFFFF0
	andq	%r8, %rdx
	movq	%rsp, %rax
	subq	%rdx, %rax
	movq	%rax, %rsp
	movq	%rax, -64(%rbp)
	movl	%r9d, -56(%rbp)
	movl	%r11d, -52(%rbp)
	decl	%r9d
	leal	-1(%r11), %edx
	movl	$0, -44(%rbp)
	cmpl	%r9d, -44(%rbp)
	jle	.LBB4_2
	jmp	.LBB4_6
	.p2align	4, 0x90
.LBB4_5:                                # %merge
                                        #   in Loop: Header=BB4_2 Depth=1
	incl	-44(%rbp)
	cmpl	%r9d, -44(%rbp)
	jg	.LBB4_6
.LBB4_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edx, (%rbx)
	jg	.LBB4_5
	.p2align	4, 0x90
.LBB4_4:                                # %while_body5
                                        #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %ecx
	imull	%r11d, %ecx
	addl	(%rbx), %ecx
	movslq	%ecx, %rcx
	movq	$0, (%rax,%rcx,8)
	incl	(%rbx)
	cmpl	%edx, (%rbx)
	jle	.LBB4_4
	jmp	.LBB4_5
.LBB4_6:                                # %merge12
	movq	-64(%rbp), %r10
	movl	-52(%rbp), %r11d
	movq	(%rdi), %r15
	movl	12(%rdi), %r12d
	movq	%rsp, %rbx
	leaq	-16(%rbx), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r9d, (%r13)
	jle	.LBB4_8
	jmp	.LBB4_12
	.p2align	4, 0x90
.LBB4_11:                               # %merge47
                                        #   in Loop: Header=BB4_8 Depth=1
	incl	(%r13)
	cmpl	%r9d, (%r13)
	jg	.LBB4_12
.LBB4_8:                                # %while_body27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
	movq	%rsp, %r14
	leaq	-16(%r14), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r14)
	cmpl	%edx, (%rbx)
	jg	.LBB4_11
	.p2align	4, 0x90
.LBB4_10:                               # %while_body30
                                        #   Parent Loop BB4_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %ecx
	movl	(%r13), %edi
	movl	%r11d, %eax
	imull	%edi, %eax
	addl	%ecx, %eax
	cltq
	imull	%r12d, %edi
	addl	%ecx, %edi
	movslq	%edi, %rcx
	movsd	(%r15,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rax,8)
	incl	(%rbx)
	cmpl	%edx, (%rbx)
	jle	.LBB4_10
	jmp	.LBB4_11
.LBB4_12:                               # %merge52
	movl	8(%rsi), %r9d
	movl	12(%rsi), %r11d
	movl	%r9d, %eax
	imull	%r11d, %eax
	leaq	15(,%rax,8), %rax
	andq	%r8, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r8
	movq	%r8, %rsp
	movq	%rdi, -16(%rax)
	movl	%r9d, -8(%rax)
	movl	%r11d, -4(%rax)
	decl	%r9d
	leal	-1(%r11), %ecx
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r9d, (%rax)
	jle	.LBB4_14
	jmp	.LBB4_18
	.p2align	4, 0x90
.LBB4_17:                               # %merge80
                                        #   in Loop: Header=BB4_14 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	.LBB4_18
.LBB4_14:                               # %while_body69
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_16 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rbx)
	jg	.LBB4_17
	.p2align	4, 0x90
.LBB4_16:                               # %while_body72
                                        #   Parent Loop BB4_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r11d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rdi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB4_16
	jmp	.LBB4_17
.LBB4_18:                               # %merge85
	movq	(%r8), %r10
	movl	12(%r8), %r11d
	movq	(%rsi), %r14
	movl	12(%rsi), %r15d
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r9d, (%rdx)
	jle	.LBB4_20
	jmp	.LBB4_24
	.p2align	4, 0x90
.LBB4_23:                               # %merge125
                                        #   in Loop: Header=BB4_20 Depth=1
	incl	(%rdx)
	cmpl	%r9d, (%rdx)
	jg	.LBB4_24
.LBB4_20:                               # %while_body104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_22 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r8)
	cmpl	%ecx, (%rbx)
	jg	.LBB4_23
	.p2align	4, 0x90
.LBB4_22:                               # %while_body107
                                        #   Parent Loop BB4_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %edi
	movl	(%rdx), %eax
	movl	%r11d, %esi
	imull	%eax, %esi
	addl	%edi, %esi
	movslq	%esi, %rsi
	imull	%r15d, %eax
	addl	%edi, %eax
	cltq
	movsd	(%r14,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rsi,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB4_22
	jmp	.LBB4_23
.LBB4_24:                               # %merge130
	movq	%rsp, %rax
	leaq	-80(%rax), %rcx
	movq	%rcx, %rsp
	movq	$0, -80(%rax)
	movq	$0, -72(%rax)
	movq	$0, -64(%rax)
	movq	$0, -56(%rax)
	movq	$0, -48(%rax)
	movq	$0, -40(%rax)
	movq	$0, -32(%rax)
	movq	$0, -24(%rax)
	movq	$0, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r11
	movq	%r11, %rsp
	movq	%rcx, -16(%rax)
	movabsq	$12884901891, %r8       # imm = 0x300000003
	movq	%r8, -8(%rax)
	movl	$3, %edx
	movq	%rsp, %rdi
	addq	$-80, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r9
	movq	%r9, %rsp
	movq	%rdi, -16(%rax)
	movq	%r8, -8(%rax)
	movl	$2, %eax
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%eax, (%rcx)
	jle	.LBB4_26
	jmp	.LBB4_30
	.p2align	4, 0x90
.LBB4_29:                               # %merge172
                                        #   in Loop: Header=BB4_26 Depth=1
	incl	(%rcx)
	cmpl	%eax, (%rcx)
	jg	.LBB4_30
.LBB4_26:                               # %while_body161
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_28 Depth 2
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%eax, (%rbx)
	jg	.LBB4_29
	.p2align	4, 0x90
.LBB4_28:                               # %while_body164
                                        #   Parent Loop BB4_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %esi
	imull	%edx, %esi
	addl	(%rbx), %esi
	movslq	%esi, %rsi
	movq	$0, (%rdi,%rsi,8)
	incl	(%rbx)
	cmpl	%eax, (%rbx)
	jle	.LBB4_28
	jmp	.LBB4_29
.LBB4_30:                               # %merge177
	decl	%edx
	movq	(%r9), %r10
	movl	12(%r9), %r14d
	movq	(%r11), %r15
	movl	12(%r11), %r12d
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%edx, (%rdi)
	jle	.LBB4_32
	jmp	.LBB4_36
	.p2align	4, 0x90
.LBB4_35:                               # %merge217
                                        #   in Loop: Header=BB4_32 Depth=1
	incl	(%rdi)
	cmpl	%edx, (%rdi)
	jg	.LBB4_36
.LBB4_32:                               # %while_body196
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_34 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r11)
	cmpl	%edx, (%rbx)
	jg	.LBB4_35
	.p2align	4, 0x90
.LBB4_34:                               # %while_body199
                                        #   Parent Loop BB4_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %ecx
	movl	(%rdi), %eax
	movl	%r14d, %esi
	imull	%eax, %esi
	addl	%ecx, %esi
	movslq	%esi, %rsi
	imull	%r12d, %eax
	addl	%ecx, %eax
	cltq
	movsd	(%r15,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rsi,8)
	incl	(%rbx)
	cmpl	%edx, (%rbx)
	jle	.LBB4_34
	jmp	.LBB4_35
.LBB4_36:                               # %merge222
	movq	%rsp, %rax
	leaq	-208(%rax), %rcx
	movq	%rcx, %rsp
	movq	$0, -208(%rax)
	movq	$0, -200(%rax)
	movq	$0, -192(%rax)
	movq	$0, -184(%rax)
	movq	$0, -176(%rax)
	movq	$0, -168(%rax)
	movq	$0, -160(%rax)
	movq	$0, -152(%rax)
	movq	$0, -144(%rax)
	movq	$0, -136(%rax)
	movq	$0, -128(%rax)
	movq	$0, -120(%rax)
	movq	$0, -112(%rax)
	movq	$0, -104(%rax)
	movq	$0, -96(%rax)
	movq	$0, -88(%rax)
	movq	$0, -80(%rax)
	movq	$0, -72(%rax)
	movq	$0, -64(%rax)
	movq	$0, -56(%rax)
	movq	$0, -48(%rax)
	movq	$0, -40(%rax)
	movq	$0, -32(%rax)
	movq	$0, -24(%rax)
	movq	$0, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r11
	movq	%r11, %rsp
	movq	%rcx, -16(%rax)
	movabsq	$21474836485, %rsi      # imm = 0x500000005
	movq	%rsi, -8(%rax)
	movl	$5, %edx
	movq	%rsp, %rdi
	addq	$-208, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movq	%rdi, -16(%rax)
	movq	%rsi, -8(%rax)
	movl	$4, %eax
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%eax, (%rsi)
	jle	.LBB4_38
	jmp	.LBB4_42
	.p2align	4, 0x90
.LBB4_41:                               # %merge280
                                        #   in Loop: Header=BB4_38 Depth=1
	incl	(%rsi)
	cmpl	%eax, (%rsi)
	jg	.LBB4_42
.LBB4_38:                               # %while_body269
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_40 Depth 2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%eax, (%rbx)
	jg	.LBB4_41
	.p2align	4, 0x90
.LBB4_40:                               # %while_body272
                                        #   Parent Loop BB4_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %ecx
	imull	%edx, %ecx
	addl	(%rbx), %ecx
	movslq	%ecx, %rcx
	movq	$0, (%rdi,%rcx,8)
	incl	(%rbx)
	cmpl	%eax, (%rbx)
	jle	.LBB4_40
	jmp	.LBB4_41
.LBB4_42:                               # %merge285
	decl	%edx
	movq	(%r14), %r10
	movl	12(%r14), %r14d
	movq	(%r11), %r15
	movl	12(%r11), %r12d
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%edx, (%rdi)
	jle	.LBB4_44
	jmp	.LBB4_48
	.p2align	4, 0x90
.LBB4_47:                               # %merge325
                                        #   in Loop: Header=BB4_44 Depth=1
	incl	(%rdi)
	cmpl	%edx, (%rdi)
	jg	.LBB4_48
.LBB4_44:                               # %while_body304
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_46 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r11)
	cmpl	%edx, (%rbx)
	jg	.LBB4_47
	.p2align	4, 0x90
.LBB4_46:                               # %while_body307
                                        #   Parent Loop BB4_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %ecx
	movl	(%rdi), %eax
	movl	%r14d, %esi
	imull	%eax, %esi
	addl	%ecx, %esi
	movslq	%esi, %rsi
	imull	%r12d, %eax
	addl	%ecx, %eax
	cltq
	movsd	(%r15,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rsi,8)
	incl	(%rbx)
	cmpl	%edx, (%rbx)
	jle	.LBB4_46
	jmp	.LBB4_47
.LBB4_48:                               # %merge330
	movq	%rsp, %rax
	addq	$-80, %rax
	movq	%rax, %rsp
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r10
	movq	%r10, %rsp
	movq	%rax, -16(%rcx)
	movq	%r8, -8(%rcx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	cmpl	$2, (%rcx)
	jle	.LBB4_50
	jmp	.LBB4_54
	.p2align	4, 0x90
.LBB4_53:                               # %merge355
                                        #   in Loop: Header=BB4_50 Depth=1
	incl	(%rcx)
	cmpl	$2, (%rcx)
	jg	.LBB4_54
.LBB4_50:                               # %while_body344
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_52 Depth 2
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	$2, (%rdx)
	jg	.LBB4_53
	.p2align	4, 0x90
.LBB4_52:                               # %while_body347
                                        #   Parent Loop BB4_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	imull	$3, (%rcx), %esi
	addl	(%rdx), %esi
	movslq	%esi, %rsi
	movq	$0, (%rax,%rsi,8)
	incl	(%rdx)
	cmpl	$2, (%rdx)
	jle	.LBB4_52
	jmp	.LBB4_53
.LBB4_54:                               # %merge360
	movq	(%r10), %r11
	movl	12(%r10), %r14d
	movq	-64(%rbp), %r15
	movl	-52(%rbp), %edi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rbx)
	cmpl	$2, (%rdx)
	jle	.LBB4_56
	jmp	.LBB4_60
	.p2align	4, 0x90
.LBB4_59:                               # %merge398
                                        #   in Loop: Header=BB4_56 Depth=1
	incl	(%rdx)
	cmpl	$2, (%rdx)
	jg	.LBB4_60
.LBB4_56:                               # %while_body377
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_58 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r8)
	cmpl	$2, (%rbx)
	jg	.LBB4_59
	.p2align	4, 0x90
.LBB4_58:                               # %while_body380
                                        #   Parent Loop BB4_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %ecx
	movl	(%rdx), %esi
	movl	%r14d, %eax
	imull	%esi, %eax
	addl	%ecx, %eax
	cltq
	imull	%edi, %esi
	addl	%ecx, %esi
	movslq	%esi, %rcx
	movsd	(%r15,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r11,%rax,8)
	incl	(%rbx)
	cmpl	$2, (%rbx)
	jle	.LBB4_58
	jmp	.LBB4_59
.LBB4_60:                               # %merge403
	movl	12(%r9), %r11d
	movq	(%r9), %r9
	movq	(%r10), %r14
	movl	12(%r10), %edx
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	$2, (%rdi)
	jle	.LBB4_62
	jmp	.LBB4_66
	.p2align	4, 0x90
.LBB4_65:                               # %merge445
                                        #   in Loop: Header=BB4_62 Depth=1
	incl	(%rdi)
	cmpl	$2, (%rdi)
	jg	.LBB4_66
.LBB4_62:                               # %while_body424
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_64 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r8)
	cmpl	$2, (%rbx)
	jg	.LBB4_65
	.p2align	4, 0x90
.LBB4_64:                               # %while_body427
                                        #   Parent Loop BB4_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %ecx
	movl	(%rdi), %eax
	movl	%r11d, %esi
	imull	%eax, %esi
	addl	%ecx, %esi
	movslq	%esi, %rsi
	imull	%edx, %eax
	addl	%ecx, %eax
	cltq
	movsd	(%r14,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rsi,8)
	incl	(%rbx)
	cmpl	$2, (%rbx)
	jle	.LBB4_64
	jmp	.LBB4_65
.LBB4_66:                               # %merge450
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movl	$0, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movl	$0, -16(%rax)
	movl	$4, %edi
	callq	malloc
	movl	$0, (%rax)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Filter, .Lfunc_end4-Filter
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
