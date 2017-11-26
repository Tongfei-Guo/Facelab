	.text
	.file	"MicroC"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4609434218613702656     # double 1.5
.LCPI0_1:
	.quad	4613937818241073152     # double 3
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
	subq	$136, %rsp
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
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string, %esi
	xorl	%eax, %eax
	callq	printf
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, -176(%rbp)
	movabsq	$4611686018427387904, %rax # imm = 0x4000000000000000
	movq	%rax, -168(%rbp)
	movabsq	$4613937818241073152, %rax # imm = 0x4008000000000000
	movq	%rax, -160(%rbp)
	movabsq	$4616189618054758400, %rax # imm = 0x4010000000000000
	movq	%rax, -152(%rbp)
	movabsq	$4617315517961601024, %rax # imm = 0x4014000000000000
	movq	%rax, -144(%rbp)
	movabsq	$4618441417868443648, %rax # imm = 0x4018000000000000
	movq	%rax, -136(%rbp)
	movabsq	$4619567317775286272, %rax # imm = 0x401C000000000000
	movq	%rax, -128(%rbp)
	movabsq	$4620693217682128896, %rax # imm = 0x4020000000000000
	movq	%rax, -120(%rbp)
	movabsq	$4621256167635550208, %rax # imm = 0x4022000000000000
	movq	%rax, -112(%rbp)
	movabsq	$4621819117588971520, %rax # imm = 0x4024000000000000
	movq	%rax, -104(%rbp)
	movabsq	$4622382067542392832, %rax # imm = 0x4026000000000000
	movq	%rax, -96(%rbp)
	movabsq	$4622945017495814144, %rax # imm = 0x4028000000000000
	movq	%rax, -88(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -80(%rbp)
	movabsq	$12884901892, %rcx      # imm = 0x300000004
	movq	%rcx, -72(%rbp)
	movq	%rsp, %r10
	addq	$-96, %r10
	movq	%r10, %rsp
	movq	%r10, -64(%rbp)
	movq	%rcx, -56(%rbp)
	movl	$2, %r9d
	movl	$3, %r8d
	movq	-80(%rbp), %rsi
	movl	-68(%rbp), %edi
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
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r9d, (%rbx)
	jg	.LBB0_5
	.p2align	4, 0x90
.LBB0_4:                                # %while_body29
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %edx
	movl	-44(%rbp), %ecx
	movl	$3, %eax
	imull	%ecx, %eax
	addl	%edx, %eax
	cltq
	imull	%edi, %ecx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movsd	(%rsi,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rax,8)
	incl	(%rbx)
	cmpl	%r9d, (%rbx)
	jle	.LBB0_4
	jmp	.LBB0_5
.LBB0_6:                                # %merge46
	movq	-64(%rbp), %r9
	movl	-56(%rbp), %eax
	leal	-1(%rax), %r8d
	movl	-52(%rbp), %r11d
	leal	-1(%r11), %esi
	movl	%eax, %ecx
	imull	%r11d, %ecx
	leaq	15(,%rcx,8), %rcx
	movabsq	$68719476720, %r14      # imm = 0xFFFFFFFF0
	andq	%r14, %rcx
	movq	%rsp, %rbx
	subq	%rcx, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movq	%rbx, -16(%rcx)
	movl	%eax, -8(%rcx)
	movl	%r11d, -4(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	cmpl	%r8d, (%rcx)
	jle	.LBB0_8
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_11:                               # %merge85
                                        #   in Loop: Header=BB0_8 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_12
.LBB0_8:                                # %while_body67
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rax)
	jg	.LBB0_11
	.p2align	4, 0x90
.LBB0_10:                               # %while_body70
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %edx
	imull	%r11d, %edx
	addl	(%rax), %edx
	movslq	%edx, %rdx
	movsd	(%r9,%rdx,8), %xmm1     # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, (%rbx,%rdx,8)
	incl	(%rax)
	cmpl	%esi, (%rax)
	jle	.LBB0_10
	jmp	.LBB0_11
.LBB0_12:                               # %merge90
	callq	f
	movq	-64(%rbp), %r9
	movl	-56(%rbp), %eax
	leal	-1(%rax), %r8d
	movl	-52(%rbp), %r11d
	leal	-1(%r11), %esi
	movl	%eax, %ecx
	imull	%r11d, %ecx
	leaq	15(,%rcx,8), %rcx
	andq	%r14, %rcx
	movq	%rsp, %rbx
	subq	%rcx, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movq	%rbx, -16(%rcx)
	movl	%eax, -8(%rcx)
	movl	%r11d, -4(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r8d, (%rcx)
	jle	.LBB0_14
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_17:                               # %merge129
                                        #   in Loop: Header=BB0_14 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_18
.LBB0_14:                               # %while_body111
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rax)
	jg	.LBB0_17
	.p2align	4, 0x90
.LBB0_16:                               # %while_body114
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %edx
	imull	%r11d, %edx
	addl	(%rax), %edx
	movslq	%edx, %rdx
	movsd	(%r9,%rdx,8), %xmm0     # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm0
	movsd	%xmm0, (%rbx,%rdx,8)
	incl	(%rax)
	cmpl	%esi, (%rax)
	jle	.LBB0_16
	jmp	.LBB0_17
.LBB0_18:                               # %merge134
	callq	f
	movq	-64(%rbp), %r11
	movl	-56(%rbp), %eax
	leal	-1(%rax), %r8d
	movl	-52(%rbp), %esi
	leal	-1(%rsi), %edi
	movl	%eax, %edx
	imull	%esi, %edx
	leaq	15(,%rdx,8), %rdx
	andq	%r14, %rdx
	movq	%rsp, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rdx
	leaq	-16(%rdx), %r10
	movq	%r10, %rsp
	movq	%rbx, -16(%rdx)
	movl	%eax, -8(%rdx)
	movl	%esi, -4(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	cmpl	%r8d, (%rax)
	jle	.LBB0_20
	jmp	.LBB0_24
	.p2align	4, 0x90
.LBB0_23:                               # %merge173
                                        #   in Loop: Header=BB0_20 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_24
.LBB0_20:                               # %while_body155
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r9)
	cmpl	%edi, (%rdx)
	jg	.LBB0_23
	.p2align	4, 0x90
.LBB0_22:                               # %while_body158
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	imull	%esi, %ecx
	addl	(%rdx), %ecx
	movslq	%ecx, %rcx
	movsd	(%r11,%rcx,8), %xmm1    # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, (%rbx,%rcx,8)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	.LBB0_22
	jmp	.LBB0_23
.LBB0_24:                               # %merge178
	movl	8(%r10), %r8d
	movl	12(%r10), %r11d
	movl	%r8d, %eax
	imull	%r11d, %eax
	leaq	15(,%rax,8), %rax
	andq	%r14, %rax
	movq	%rsp, %r15
	subq	%rax, %r15
	movq	%r15, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r9
	movq	%r9, %rsp
	movq	%r15, -16(%rax)
	movl	%r8d, -8(%rax)
	movl	%r11d, -4(%rax)
	leal	-1(%r11), %r12d
	decl	%r8d
	movq	(%r10), %r13
	movl	12(%r10), %eax
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rcx)
	jle	.LBB0_26
	jmp	.LBB0_30
	.p2align	4, 0x90
.LBB0_29:                               # %merge228
                                        #   in Loop: Header=BB0_26 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_30
.LBB0_26:                               # %while_body207
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_28 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%r12d, (%rdx)
	jg	.LBB0_29
	.p2align	4, 0x90
.LBB0_28:                               # %while_body210
                                        #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	movl	(%rcx), %ebx
	movl	%r11d, %esi
	imull	%ebx, %esi
	addl	%edi, %esi
	movslq	%esi, %rsi
	imull	%eax, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r13,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r15,%rsi,8)
	incl	(%rdx)
	cmpl	%r12d, (%rdx)
	jle	.LBB0_28
	jmp	.LBB0_29
.LBB0_30:                               # %merge233
	movq	-64(%rbp), %r10
	movl	-56(%rbp), %eax
	leal	-1(%rax), %r8d
	movl	-52(%rbp), %r11d
	leal	-1(%r11), %ebx
	movq	(%r9), %r15
	movl	%eax, %ecx
	imull	%r11d, %ecx
	leaq	15(,%rcx,8), %rdx
	andq	%r14, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movq	%rcx, -16(%rdx)
	movl	%eax, -8(%rdx)
	movl	%r11d, -4(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_32
	jmp	.LBB0_36
	.p2align	4, 0x90
.LBB0_35:                               # %merge280
                                        #   in Loop: Header=BB0_32 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_36
.LBB0_32:                               # %while_body256
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_34 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ebx, (%rdx)
	jg	.LBB0_35
	.p2align	4, 0x90
.LBB0_34:                               # %while_body259
                                        #   Parent Loop BB0_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %esi
	imull	%r11d, %esi
	addl	(%rdx), %esi
	movslq	%esi, %rsi
	movsd	(%r10,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	(%r15,%rsi,8), %xmm0
	movsd	%xmm0, (%rcx,%rsi,8)
	incl	(%rdx)
	cmpl	%ebx, (%rdx)
	jle	.LBB0_34
	jmp	.LBB0_35
.LBB0_36:                               # %merge285
	callq	f
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
	.globl	f                       # -- Begin function f
	.p2align	4, 0x90
	.type	f,@function
f:                                      # @f
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
.Lcfi11:
	.cfi_offset %rbx, -56
.Lcfi12:
	.cfi_offset %r12, -48
.Lcfi13:
	.cfi_offset %r13, -40
.Lcfi14:
	.cfi_offset %r14, -32
.Lcfi15:
	.cfi_offset %r15, -24
	movl	8(%rdi), %r8d
	movl	12(%rdi), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rsi      # imm = 0xFFFFFFFF0
	andq	%rax, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%r11, -64(%rbp)
	movl	%r8d, -56(%rbp)
	movl	%r10d, -52(%rbp)
	leal	-1(%r10), %r14d
	decl	%r8d
	movq	(%rdi), %rbx
	movl	12(%rdi), %edi
	movl	$0, -44(%rbp)
	cmpl	%r8d, -44(%rbp)
	jle	.LBB1_2
	jmp	.LBB1_6
	.p2align	4, 0x90
.LBB1_5:                                # %merge
                                        #   in Loop: Header=BB1_2 Depth=1
	incl	-44(%rbp)
	cmpl	%r8d, -44(%rbp)
	jg	.LBB1_6
.LBB1_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r9)
	cmpl	%r14d, (%rax)
	jg	.LBB1_5
	.p2align	4, 0x90
.LBB1_4:                                # %while_body13
                                        #   Parent Loop BB1_2 Depth=1
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
	movsd	(%rbx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r11,%rsi,8)
	incl	(%rax)
	cmpl	%r14d, (%rax)
	jle	.LBB1_4
	jmp	.LBB1_5
.LBB1_6:                                # %merge29
	movq	-64(%rbp), %r15
	movl	-56(%rbp), %eax
	movl	-52(%rbp), %r12d
	decl	%eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	leal	-1(%r12), %r13d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB1_7
	.p2align	4, 0x90
.LBB1_11:                               # %merge55
                                        #   in Loop: Header=BB1_7 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.1, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%rbx)
.LBB1_7:                                # %while41
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
	movl	-48(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rbx)
	jg	.LBB1_12
# BB#8:                                 # %while_body42
                                        #   in Loop: Header=BB1_7 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	cmpl	%r13d, (%r14)
	jg	.LBB1_11
	.p2align	4, 0x90
.LBB1_10:                               # %while_body45
                                        #   Parent Loop BB1_7 Depth=1
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
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%r14)
	cmpl	%r13d, (%r14)
	jle	.LBB1_10
	jmp	.LBB1_11
.LBB1_12:                               # %merge61
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.3, %esi
	xorl	%eax, %eax
	callq	printf
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	f, .Lfunc_end1-f
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
	.asciz	"var"
	.size	.Lsystem_string, 4


	.section	".note.GNU-stack","",@progbits
