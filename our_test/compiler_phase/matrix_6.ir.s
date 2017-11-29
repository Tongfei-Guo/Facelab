	.text
	.file	"MicroC"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4617315517961601024     # double 5
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
	subq	$152, %rsp
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
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, -192(%rbp)
	movabsq	$4611686018427387904, %rax # imm = 0x4000000000000000
	movq	%rax, -184(%rbp)
	movabsq	$4613937818241073152, %rax # imm = 0x4008000000000000
	movq	%rax, -176(%rbp)
	movabsq	$4616189618054758400, %rax # imm = 0x4010000000000000
	movq	%rax, -168(%rbp)
	movabsq	$4617315517961601024, %rax # imm = 0x4014000000000000
	movq	%rax, -160(%rbp)
	movabsq	$4618441417868443648, %rax # imm = 0x4018000000000000
	movq	%rax, -152(%rbp)
	movabsq	$4619567317775286272, %rax # imm = 0x401C000000000000
	movq	%rax, -144(%rbp)
	movabsq	$4620693217682128896, %rax # imm = 0x4020000000000000
	movq	%rax, -136(%rbp)
	movabsq	$4621256167635550208, %rax # imm = 0x4022000000000000
	movq	%rax, -128(%rbp)
	movabsq	$4621819117588971520, %rax # imm = 0x4024000000000000
	movq	%rax, -120(%rbp)
	movabsq	$4622382067542392832, %rax # imm = 0x4026000000000000
	movq	%rax, -112(%rbp)
	movabsq	$4622945017495814144, %rax # imm = 0x4028000000000000
	movq	%rax, -104(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -96(%rbp)
	movabsq	$12884901892, %rdx      # imm = 0x300000004
	movq	%rdx, -88(%rbp)
	movl	$4, %r8d
	movl	$3, %ecx
	movq	%rsp, %rax
	addq	$-96, %rax
	movq	%rax, %rsp
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$2, %edx
	movl	$0, -68(%rbp)
	cmpl	%ecx, -68(%rbp)
	jle	.LBB0_2
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_5:                                # %merge
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	-68(%rbp)
	cmpl	%ecx, -68(%rbp)
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
.LBB0_4:                                # %while_body22
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %edi
	imull	%ecx, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rax,%rdi,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	.LBB0_4
	jmp	.LBB0_5
.LBB0_6:                                # %merge30
	decl	%ecx
	decl	%r8d
	movq	-64(%rbp), %r9
	movl	-52(%rbp), %r11d
	movq	-96(%rbp), %r14
	movl	-84(%rbp), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_8
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_11:                               # %merge65
                                        #   in Loop: Header=BB0_8 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_12
.LBB0_8:                                # %while_body45
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB0_11
	.p2align	4, 0x90
.LBB0_10:                               # %while_body48
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %esi
	movl	(%rax), %edi
	movl	%r11d, %ebx
	imull	%edi, %ebx
	addl	%esi, %ebx
	movslq	%ebx, %rbx
	imull	%r15d, %edi
	addl	%esi, %edi
	movslq	%edi, %rsi
	movsd	(%r14,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rbx,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	.LBB0_10
	jmp	.LBB0_11
.LBB0_12:                               # %merge70
	movq	-64(%rbp), %r15
	movl	-56(%rbp), %eax
	movl	-52(%rbp), %r12d
	decl	%eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	leal	-1(%r12), %r13d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB0_13
	.p2align	4, 0x90
.LBB0_17:                               # %merge97
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%rbx)
.LBB0_13:                               # %while82
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rbx)
	jg	.LBB0_18
# BB#14:                                # %while_body83
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	cmpl	%r13d, (%r14)
	jg	.LBB0_17
	.p2align	4, 0x90
.LBB0_16:                               # %while_body86
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
.LBB0_18:                               # %merge103
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string.6, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movq	-64(%rbp), %r14
	movl	-56(%rbp), %ecx
	leal	-1(%rcx), %r9d
	movl	-52(%rbp), %edi
	leal	-1(%rdi), %eax
	movl	%ecx, %esi
	imull	%edi, %esi
	leaq	15(,%rsi,8), %rsi
	movabsq	$68719476720, %r8       # imm = 0xFFFFFFFF0
	andq	%r8, %rsi
	movq	%rsp, %rbx
	subq	%rsi, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r11
	movq	%r11, %rsp
	movq	%rbx, -16(%rsi)
	movl	%ecx, -8(%rsi)
	movl	%edi, -4(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r9d, (%rcx)
	jle	.LBB0_20
	jmp	.LBB0_24
	.p2align	4, 0x90
.LBB0_23:                               # %merge138
                                        #   in Loop: Header=BB0_20 Depth=1
	incl	(%rcx)
	cmpl	%r9d, (%rcx)
	jg	.LBB0_24
.LBB0_20:                               # %while_body127
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%eax, (%rsi)
	jg	.LBB0_23
	.p2align	4, 0x90
.LBB0_22:                               # %while_body130
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %edx
	imull	%edi, %edx
	addl	(%rsi), %edx
	movslq	%edx, %rdx
	movq	$0, (%rbx,%rdx,8)
	incl	(%rsi)
	cmpl	%eax, (%rsi)
	jle	.LBB0_22
	jmp	.LBB0_23
.LBB0_24:                               # %merge143
	movq	(%r11), %rbx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	cmpl	%r9d, (%rcx)
	jle	.LBB0_26
	jmp	.LBB0_30
	.p2align	4, 0x90
.LBB0_29:                               # %merge168
                                        #   in Loop: Header=BB0_26 Depth=1
	incl	(%rcx)
	cmpl	%r9d, (%rcx)
	jg	.LBB0_30
.LBB0_26:                               # %while_body150
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_28 Depth 2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdx)
	cmpl	%eax, (%rsi)
	jg	.LBB0_29
	.p2align	4, 0x90
.LBB0_28:                               # %while_body153
                                        #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %edx
	imull	%edi, %edx
	addl	(%rsi), %edx
	movslq	%edx, %rdx
	movsd	(%r14,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rbx,%rdx,8)
	incl	(%rsi)
	cmpl	%eax, (%rsi)
	jle	.LBB0_28
	jmp	.LBB0_29
.LBB0_30:                               # %merge173
	movq	-64(%rbp), %r15
	movl	-56(%rbp), %ecx
	leal	-1(%rcx), %r9d
	movl	-52(%rbp), %edi
	leal	-1(%rdi), %eax
	movl	%ecx, %esi
	imull	%edi, %esi
	leaq	15(,%rsi,8), %rsi
	andq	%r8, %rsi
	movq	%rsp, %rbx
	subq	%rsi, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r10
	movq	%r10, %rsp
	movq	%rbx, -16(%rsi)
	movl	%ecx, -8(%rsi)
	movl	%edi, -4(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r9d, (%rcx)
	jle	.LBB0_32
	jmp	.LBB0_36
	.p2align	4, 0x90
.LBB0_35:                               # %merge205
                                        #   in Loop: Header=BB0_32 Depth=1
	incl	(%rcx)
	cmpl	%r9d, (%rcx)
	jg	.LBB0_36
.LBB0_32:                               # %while_body194
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_34 Depth 2
	movq	%rsp, %r14
	leaq	-16(%r14), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r14)
	cmpl	%eax, (%rsi)
	jg	.LBB0_35
	.p2align	4, 0x90
.LBB0_34:                               # %while_body197
                                        #   Parent Loop BB0_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %edx
	imull	%edi, %edx
	addl	(%rsi), %edx
	movslq	%edx, %rdx
	movq	$0, (%rbx,%rdx,8)
	incl	(%rsi)
	cmpl	%eax, (%rsi)
	jle	.LBB0_34
	jmp	.LBB0_35
.LBB0_36:                               # %merge210
	movq	(%r10), %rbx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	cmpl	%r9d, (%rcx)
	jle	.LBB0_38
	jmp	.LBB0_42
	.p2align	4, 0x90
.LBB0_41:                               # %merge235
                                        #   in Loop: Header=BB0_38 Depth=1
	incl	(%rcx)
	cmpl	%r9d, (%rcx)
	jg	.LBB0_42
.LBB0_38:                               # %while_body217
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_40 Depth 2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdx)
	cmpl	%eax, (%rsi)
	jg	.LBB0_41
	.p2align	4, 0x90
.LBB0_40:                               # %while_body220
                                        #   Parent Loop BB0_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %edx
	imull	%edi, %edx
	addl	(%rsi), %edx
	movslq	%edx, %rdx
	movsd	(%r15,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rbx,%rdx,8)
	incl	(%rsi)
	cmpl	%eax, (%rsi)
	jle	.LBB0_40
	jmp	.LBB0_41
.LBB0_42:                               # %merge240
	movq	(%r11), %r14
	movl	8(%r11), %edx
	leal	-1(%rdx), %r9d
	movl	12(%r11), %ecx
	leal	-1(%rcx), %eax
	movq	(%r10), %r10
	movl	%edx, %esi
	imull	%ecx, %esi
	leaq	15(,%rsi,8), %rsi
	andq	%r8, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movq	%r11, -16(%rsi)
	movl	%edx, -8(%rsi)
	movl	%ecx, -4(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r9d, (%rdx)
	jle	.LBB0_44
	jmp	.LBB0_48
	.p2align	4, 0x90
.LBB0_47:                               # %merge274
                                        #   in Loop: Header=BB0_44 Depth=1
	incl	(%rdx)
	cmpl	%r9d, (%rdx)
	jg	.LBB0_48
.LBB0_44:                               # %while_body263
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_46 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r8)
	cmpl	%eax, (%rsi)
	jg	.LBB0_47
	.p2align	4, 0x90
.LBB0_46:                               # %while_body266
                                        #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %ebx
	imull	%ecx, %ebx
	addl	(%rsi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%r11,%rbx,8)
	incl	(%rsi)
	cmpl	%eax, (%rsi)
	jle	.LBB0_46
	jmp	.LBB0_47
.LBB0_48:                               # %merge279
	movq	(%rdi), %r11
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r9d, (%rdx)
	jle	.LBB0_50
	jmp	.LBB0_54
	.p2align	4, 0x90
.LBB0_53:                               # %merge310
                                        #   in Loop: Header=BB0_50 Depth=1
	incl	(%rdx)
	cmpl	%r9d, (%rdx)
	jg	.LBB0_54
.LBB0_50:                               # %while_body286
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_52 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r8)
	cmpl	%eax, (%rsi)
	jg	.LBB0_53
	.p2align	4, 0x90
.LBB0_52:                               # %while_body289
                                        #   Parent Loop BB0_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %ebx
	imull	%ecx, %ebx
	addl	(%rsi), %ebx
	movslq	%ebx, %rbx
	movsd	(%r14,%rbx,8), %xmm0    # xmm0 = mem[0],zero
	subsd	(%r10,%rbx,8), %xmm0
	movsd	%xmm0, (%r11,%rbx,8)
	incl	(%rsi)
	cmpl	%eax, (%rsi)
	jle	.LBB0_52
	jmp	.LBB0_53
.LBB0_54:                               # %merge315
	callq	f
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string.7, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movq	%rsp, %rax
	leaq	-48(%rax), %r14
	movq	%r14, %rsp
	movabsq	$4612136378390124954, %rcx # imm = 0x400199999999999A
	movq	%rcx, -48(%rax)
	movabsq	$4616639978017495450, %rcx # imm = 0x401199999999999A
	movq	%rcx, -40(%rax)
	movabsq	$4619116957812549222, %rcx # imm = 0x401A666666666666
	movq	%rcx, -32(%rax)
	movabsq	$4609434218613702656, %rcx # imm = 0x3FF8000000000000
	movq	%rcx, -24(%rax)
	movabsq	$4621312462630892339, %rcx # imm = 0x4022333333333333
	movq	%rcx, -16(%rax)
	movabsq	$4615063718147915776, %rcx # imm = 0x400C000000000000
	movq	%rcx, -8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r14, -16(%rax)
	movabsq	$8589934595, %rcx       # imm = 0x200000003
	movq	%rcx, -8(%rax)
	movq	-64(%rbp), %r12
	movl	-56(%rbp), %ecx
	leal	-1(%rcx), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	$2, %r10d
	movl	$1, %esi
	movl	-52(%rbp), %r13d
	leal	-1(%r13), %r9d
	leal	(%rcx,%rcx), %eax
	shlq	$3, %rax
	movabsq	$34359738352, %rdx      # imm = 0x7FFFFFFF0
	andq	%rax, %rdx
	movq	%rsp, %rax
	subq	%rdx, %rax
	movq	%rax, %rsp
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movq	%rax, -16(%rdx)
	movl	%ecx, -8(%rdx)
	movl	$2, -4(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	jmp	.LBB0_55
	.p2align	4, 0x90
.LBB0_59:                               # %merge363
                                        #   in Loop: Header=BB0_55 Depth=1
	incl	(%rcx)
.LBB0_55:                               # %while351
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_58 Depth 2
	movl	-44(%rbp), %edx         # 4-byte Reload
	cmpl	%edx, (%rcx)
	jg	.LBB0_60
# BB#56:                                # %while_body352
                                        #   in Loop: Header=BB0_55 Depth=1
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%esi, (%rdx)
	jg	.LBB0_59
	.p2align	4, 0x90
.LBB0_58:                               # %while_body355
                                        #   Parent Loop BB0_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %ebx
	imull	%r10d, %ebx
	addl	(%rdx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rax,%rbx,8)
	incl	(%rdx)
	cmpl	%esi, (%rdx)
	jle	.LBB0_58
	jmp	.LBB0_59
.LBB0_60:                               # %merge368
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	(%rdi), %r11
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB0_61
	.p2align	4, 0x90
.LBB0_68:                               # %merge409
                                        #   in Loop: Header=BB0_61 Depth=1
	incl	(%rbx)
.LBB0_61:                               # %while374
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_64 Depth 2
                                        #       Child Loop BB0_66 Depth 3
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rbx)
	jg	.LBB0_69
# BB#62:                                # %while_body375
                                        #   in Loop: Header=BB0_61 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%esi, (%rax)
	jle	.LBB0_64
	jmp	.LBB0_68
	.p2align	4, 0x90
.LBB0_67:                               # %merge403
                                        #   in Loop: Header=BB0_64 Depth=2
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, (%r15)
	incl	(%rax)
	movl	$1, %esi
	cmpl	%esi, (%rax)
	jg	.LBB0_68
.LBB0_64:                               # %while_body378
                                        #   Parent Loop BB0_61 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_66 Depth 3
	movl	(%rbx), %ecx
	imull	%r10d, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	leaq	(%r11,%rcx,8), %r15
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movq	$0, -16(%rdx)
	movq	%rsp, %r8
	leaq	-16(%r8), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r8)
	cmpl	%r9d, (%rdx)
	jg	.LBB0_67
	.p2align	4, 0x90
.LBB0_66:                               # %while_body386
                                        #   Parent Loop BB0_61 Depth=1
                                        #     Parent Loop BB0_64 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rdx), %edi
	movl	(%rbx), %esi
	imull	%r13d, %esi
	addl	%edi, %esi
	movslq	%esi, %rsi
	movsd	(%r12,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	imull	%r10d, %edi
	addl	(%rax), %edi
	movslq	%edi, %rsi
	mulsd	(%r14,%rsi,8), %xmm0
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	incl	(%rdx)
	cmpl	%r9d, (%rdx)
	jle	.LBB0_66
	jmp	.LBB0_67
.LBB0_69:                               # %merge414
	movq	-80(%rbp), %rdi         # 8-byte Reload
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
	subq	$40, %rsp
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
	movl	12(%rdi), %edx
	movl	%r8d, %eax
	imull	%edx, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
	andq	%rax, %rcx
	movq	%rsp, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rsp
	movq	%rsi, -64(%rbp)
	movl	%r8d, -56(%rbp)
	movl	%edx, -52(%rbp)
	decl	%r8d
	leal	-1(%rdx), %ecx
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
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rax)
	jg	.LBB1_5
	.p2align	4, 0x90
.LBB1_4:                                # %while_body5
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %ebx
	imull	%edx, %ebx
	addl	(%rax), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rax)
	cmpl	%ecx, (%rax)
	jle	.LBB1_4
	jmp	.LBB1_5
.LBB1_6:                                # %merge12
	movq	-64(%rbp), %r9
	movl	-52(%rbp), %r11d
	movq	(%rdi), %r14
	movl	12(%rdi), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB1_8
	jmp	.LBB1_12
	.p2align	4, 0x90
.LBB1_11:                               # %merge47
                                        #   in Loop: Header=BB1_8 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB1_12
.LBB1_8:                                # %while_body27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB1_11
	.p2align	4, 0x90
.LBB1_10:                               # %while_body30
                                        #   Parent Loop BB1_8 Depth=1
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
	jle	.LBB1_10
	jmp	.LBB1_11
.LBB1_12:                               # %merge52
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
	jmp	.LBB1_13
	.p2align	4, 0x90
.LBB1_17:                               # %merge78
                                        #   in Loop: Header=BB1_13 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%rbx)
.LBB1_13:                               # %while64
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_16 Depth 2
	movl	-68(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rbx)
	jg	.LBB1_18
# BB#14:                                # %while_body65
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	cmpl	%r13d, (%r14)
	jg	.LBB1_17
	.p2align	4, 0x90
.LBB1_16:                               # %while_body68
                                        #   Parent Loop BB1_13 Depth=1
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
	jle	.LBB1_16
	jmp	.LBB1_17
.LBB1_18:                               # %merge84
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
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
	.asciz	"var"
	.size	.Lsystem_string, 4

	.type	.Lsystem_string.6,@object # @system_string.6
.Lsystem_string.6:
	.asciz	"fun"
	.size	.Lsystem_string.6, 4

	.type	.Lsystem_string.7,@object # @system_string.7
.Lsystem_string.7:
	.asciz	"fun2"
	.size	.Lsystem_string.7, 5


	.section	".note.GNU-stack","",@progbits
