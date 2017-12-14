	.text
	.file	"MicroC"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4621819117588971520     # double 10
.LCPI0_1:
	.quad	4607182418800017408     # double 1
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
	subq	$168, %rsp
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
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, -208(%rbp)
	movabsq	$4611686018427387904, %rax # imm = 0x4000000000000000
	movq	%rax, -200(%rbp)
	movabsq	$4613937818241073152, %rax # imm = 0x4008000000000000
	movq	%rax, -192(%rbp)
	movabsq	$4616189618054758400, %rax # imm = 0x4010000000000000
	movq	%rax, -184(%rbp)
	movabsq	$4617315517961601024, %rax # imm = 0x4014000000000000
	movq	%rax, -176(%rbp)
	movabsq	$4618441417868443648, %rax # imm = 0x4018000000000000
	movq	%rax, -168(%rbp)
	movabsq	$4619567317775286272, %rax # imm = 0x401C000000000000
	movq	%rax, -160(%rbp)
	movabsq	$4620693217682128896, %rax # imm = 0x4020000000000000
	movq	%rax, -152(%rbp)
	movabsq	$4621256167635550208, %rax # imm = 0x4022000000000000
	movq	%rax, -144(%rbp)
	movabsq	$4621819117588971520, %rax # imm = 0x4024000000000000
	movq	%rax, -136(%rbp)
	movabsq	$4622382067542392832, %rax # imm = 0x4026000000000000
	movq	%rax, -128(%rbp)
	movabsq	$4622945017495814144, %rax # imm = 0x4028000000000000
	movq	%rax, -120(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -112(%rbp)
	movabsq	$12884901892, %rdx      # imm = 0x300000004
	movq	%rdx, -104(%rbp)
	movl	$4, %r8d
	movl	$3, %ecx
	movq	%rsp, %rax
	addq	$-96, %rax
	movq	%rax, %rsp
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movl	$2, %edx
	movl	$0, -52(%rbp)
	cmpl	%ecx, -52(%rbp)
	jle	.LBB0_2
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_5:                                # %merge
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	-52(%rbp)
	cmpl	%ecx, -52(%rbp)
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
.LBB0_4:                                # %while_body21
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %edi
	imull	%ecx, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rax,%rdi,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	.LBB0_4
	jmp	.LBB0_5
.LBB0_6:                                # %merge29
	decl	%ecx
	decl	%r8d
	movq	-96(%rbp), %r9
	movl	-84(%rbp), %r11d
	movq	-112(%rbp), %r14
	movl	-100(%rbp), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_8
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_11:                               # %merge64
                                        #   in Loop: Header=BB0_8 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_12
.LBB0_8:                                # %while_body44
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB0_11
	.p2align	4, 0x90
.LBB0_10:                               # %while_body47
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
.LBB0_12:                               # %merge69
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movq	%rsp, %rcx
	leaq	-48(%rcx), %r8
	movq	%r8, %rsp
	movabsq	$4612136378390124954, %rax # imm = 0x400199999999999A
	movq	%rax, -48(%rcx)
	movabsq	$4616639978017495450, %rax # imm = 0x401199999999999A
	movq	%rax, -40(%rcx)
	movabsq	$4619116957812549222, %rax # imm = 0x401A666666666666
	movq	%rax, -32(%rcx)
	movabsq	$4609434218613702656, %rax # imm = 0x3FF8000000000000
	movq	%rax, -24(%rcx)
	movabsq	$4621312462630892339, %rax # imm = 0x4022333333333333
	movq	%rax, -16(%rcx)
	movabsq	$4615063718147915776, %rax # imm = 0x400C000000000000
	movq	%rax, -8(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%r8, -16(%rcx)
	movabsq	$8589934595, %rax       # imm = 0x200000003
	movq	%rax, -8(%rcx)
	movq	-96(%rbp), %rcx
	movl	-88(%rbp), %r14d
	leal	-1(%r14), %edi
	movl	$2, %r11d
	movl	$1, %r9d
	movl	-84(%rbp), %edx
	leal	-1(%rdx), %ebx
	leal	(%r14,%r14), %eax
	shlq	$3, %rax
	movabsq	$34359738352, %rsi      # imm = 0x7FFFFFFF0
	andq	%rax, %rsi
	movq	%rsp, %r10
	subq	%rsi, %r10
	movq	%r10, %rsp
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%r10, -16(%rsi)
	movl	%r14d, -8(%rsi)
	movl	$2, -4(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%edi, (%r14)
	jle	.LBB0_14
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_17:                               # %merge116
                                        #   in Loop: Header=BB0_14 Depth=1
	incl	(%r14)
	cmpl	%edi, (%r14)
	jg	.LBB0_18
.LBB0_14:                               # %while_body105
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
	movq	%rsp, %r15
	leaq	-16(%r15), %r12
	movq	%r12, %rsp
	movl	$0, -16(%r15)
	cmpl	%r9d, (%r12)
	jg	.LBB0_17
	.p2align	4, 0x90
.LBB0_16:                               # %while_body108
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r14), %esi
	imull	%r11d, %esi
	addl	(%r12), %esi
	movslq	%esi, %rsi
	movq	$0, (%r10,%rsi,8)
	incl	(%r12)
	cmpl	%r9d, (%r12)
	jle	.LBB0_16
	jmp	.LBB0_17
.LBB0_18:                               # %merge121
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r10
	movq	%rsp, %r14
	leaq	-16(%r14), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r14)
	movl	%edi, -48(%rbp)         # 4-byte Spill
	cmpl	%edi, (%rsi)
	jle	.LBB0_20
	jmp	.LBB0_27
	.p2align	4, 0x90
.LBB0_26:                               # %merge162
                                        #   in Loop: Header=BB0_20 Depth=1
	incl	(%rsi)
	movl	-48(%rbp), %edi         # 4-byte Reload
	cmpl	%edi, (%rsi)
	jg	.LBB0_27
.LBB0_20:                               # %while_body128
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
                                        #       Child Loop BB0_24 Depth 3
	movq	%rsp, %r14
	leaq	-16(%r14), %r13
	movq	%r13, %rsp
	movl	$0, -16(%r14)
	cmpl	%r9d, (%r13)
	jle	.LBB0_22
	jmp	.LBB0_26
	.p2align	4, 0x90
.LBB0_25:                               # %merge156
                                        #   in Loop: Header=BB0_22 Depth=2
	movsd	(%r15), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, (%r14)
	incl	(%r13)
	cmpl	%r9d, (%r13)
	jg	.LBB0_26
.LBB0_22:                               # %while_body131
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
	movl	(%rsi), %eax
	imull	%r11d, %eax
	addl	(%r13), %eax
	cltq
	leaq	(%r10,%rax,8), %r14
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
	movq	$0, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rax)
	cmpl	%ebx, (%r12)
	jg	.LBB0_25
	.p2align	4, 0x90
.LBB0_24:                               # %while_body139
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%r12), %eax
	movl	(%rsi), %edi
	imull	%edx, %edi
	addl	%eax, %edi
	movslq	%edi, %rdi
	movsd	(%rcx,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	imull	%r11d, %eax
	addl	(%r13), %eax
	cltq
	mulsd	(%r8,%rax,8), %xmm0
	addsd	(%r15), %xmm0
	movsd	%xmm0, (%r15)
	incl	(%r12)
	cmpl	%ebx, (%r12)
	jle	.LBB0_24
	jmp	.LBB0_25
.LBB0_27:                               # %merge167
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	f
	movq	%rsp, %rax
	leaq	-48(%rax), %rcx
	movq	%rcx, %rsp
	movabsq	$4612136378390124954, %rdx # imm = 0x400199999999999A
	movq	%rdx, -48(%rax)
	movabsq	$4616639978017495450, %rdx # imm = 0x401199999999999A
	movq	%rdx, -40(%rax)
	movabsq	$4619116957812549222, %rdx # imm = 0x401A666666666666
	movq	%rdx, -32(%rax)
	movabsq	$4609434218613702656, %rdx # imm = 0x3FF8000000000000
	movq	%rdx, -24(%rax)
	movabsq	$4621312462630892339, %rdx # imm = 0x4022333333333333
	movq	%rdx, -16(%rax)
	movabsq	$4615063718147915776, %rdx # imm = 0x400C000000000000
	movq	%rdx, -8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r8
	movq	%r8, %rsp
	movq	%rcx, -16(%rax)
	movabsq	$8589934595, %rcx       # imm = 0x200000003
	movq	%rcx, -8(%rax)
	movl	$3, %r9d
	movl	$2, %r12d
	movq	%rsp, %rdi
	addq	$-48, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movq	%rdi, -16(%rax)
	movq	%rcx, -8(%rax)
	movl	$1, %r11d
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r12d, (%rdx)
	jle	.LBB0_29
	jmp	.LBB0_33
	.p2align	4, 0x90
.LBB0_32:                               # %merge206
                                        #   in Loop: Header=BB0_29 Depth=1
	incl	(%rdx)
	cmpl	%r12d, (%rdx)
	jg	.LBB0_33
.LBB0_29:                               # %while_body195
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_31 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%r11d, (%rbx)
	jg	.LBB0_32
	.p2align	4, 0x90
.LBB0_31:                               # %while_body198
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %eax
	imull	%r12d, %eax
	addl	(%rbx), %eax
	cltq
	movq	$0, (%rdi,%rax,8)
	incl	(%rbx)
	cmpl	%r11d, (%rbx)
	jle	.LBB0_31
	jmp	.LBB0_32
.LBB0_33:                               # %merge211
	decl	%r12d
	decl	%r9d
	movq	(%rsi), %r10
	movl	12(%rsi), %r11d
	movq	(%r8), %r14
	movl	12(%r8), %r15d
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r9d, (%rdi)
	jle	.LBB0_35
	jmp	.LBB0_39
	.p2align	4, 0x90
.LBB0_38:                               # %merge251
                                        #   in Loop: Header=BB0_35 Depth=1
	incl	(%rdi)
	cmpl	%r9d, (%rdi)
	jg	.LBB0_39
.LBB0_35:                               # %while_body230
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_37 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r8)
	cmpl	%r12d, (%rbx)
	jg	.LBB0_38
	.p2align	4, 0x90
.LBB0_37:                               # %while_body233
                                        #   Parent Loop BB0_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %edx
	movl	(%rdi), %eax
	movl	%r11d, %ecx
	imull	%eax, %ecx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	imull	%r15d, %eax
	addl	%edx, %eax
	cltq
	movsd	(%r14,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rcx,8)
	incl	(%rbx)
	cmpl	%r12d, (%rbx)
	jle	.LBB0_37
	jmp	.LBB0_38
.LBB0_39:                               # %merge256
	movq	%rsp, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	$0, -8(%rcx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	cmpl	$0, (%rcx)
	js	.LBB0_41
	jmp	.LBB0_45
	.p2align	4, 0x90
.LBB0_44:                               # %merge277
                                        #   in Loop: Header=BB0_41 Depth=1
	incl	(%rcx)
	cmpl	$0, (%rcx)
	jns	.LBB0_45
.LBB0_41:                               # %while_body266
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_43 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rdi)
	cmpl	$0, (%rdx)
	jns	.LBB0_44
	.p2align	4, 0x90
.LBB0_43:                               # %while_body269
                                        #   Parent Loop BB0_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdx), %rdi
	movq	$0, (%rax,%rdi,8)
	incl	(%rdx)
	cmpl	$0, (%rdx)
	js	.LBB0_43
	jmp	.LBB0_44
.LBB0_45:                               # %merge282
	movq	%rsp, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	$0, -8(%rcx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	cmpl	$0, (%rcx)
	js	.LBB0_47
	jmp	.LBB0_51
	.p2align	4, 0x90
.LBB0_50:                               # %merge303
                                        #   in Loop: Header=BB0_47 Depth=1
	incl	(%rcx)
	cmpl	$0, (%rcx)
	jns	.LBB0_51
.LBB0_47:                               # %while_body292
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_49 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rdi)
	cmpl	$0, (%rdx)
	jns	.LBB0_50
	.p2align	4, 0x90
.LBB0_49:                               # %while_body295
                                        #   Parent Loop BB0_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdx), %rdi
	movq	$0, (%rax,%rdi,8)
	incl	(%rdx)
	cmpl	$0, (%rdx)
	js	.LBB0_49
	jmp	.LBB0_50
.LBB0_51:                               # %merge308
	leaq	-96(%rbp), %rdi
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	f2
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%rax), %r15
	movq	(%r15), %rdi
	movl	8(%r15), %r8d
	movl	12(%r15), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
	andq	%rcx, %rax
	movq	%rsp, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r11
	movq	%r11, %rsp
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
	jle	.LBB0_53
	jmp	.LBB0_57
	.p2align	4, 0x90
.LBB0_56:                               # %merge338
                                        #   in Loop: Header=BB0_53 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_57
.LBB0_53:                               # %while_body327
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_55 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_56
	.p2align	4, 0x90
.LBB0_55:                               # %while_body330
                                        #   Parent Loop BB0_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_55
	jmp	.LBB0_56
.LBB0_57:                               # %merge343
	movq	(%r11), %r9
	movq	%r11, -72(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r15), %r12
	movl	12(%r15), %r14d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r13)
	jle	.LBB0_59
	jmp	.LBB0_63
	.p2align	4, 0x90
.LBB0_62:                               # %merge383
                                        #   in Loop: Header=BB0_59 Depth=1
	incl	(%r13)
	cmpl	%r8d, (%r13)
	jg	.LBB0_63
.LBB0_59:                               # %while_body362
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_61 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_62
	.p2align	4, 0x90
.LBB0_61:                               # %while_body365
                                        #   Parent Loop BB0_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %ebx
	movl	(%r13), %eax
	movl	%r10d, %edx
	imull	%eax, %edx
	addl	%ebx, %edx
	movslq	%edx, %rdx
	imull	%r14d, %eax
	addl	%ebx, %eax
	cltq
	movsd	(%r12,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB0_61
	jmp	.LBB0_62
.LBB0_63:                               # %merge388
	callq	free
	movq	%r15, %rdi
	callq	free
	movq	-72(%rbp), %r10         # 8-byte Reload
	movl	8(%r10), %r8d
	movl	12(%r10), %edx
	movl	%r8d, %eax
	imull	%edx, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %r13      # imm = 0xFFFFFFFF0
	andq	%r13, %rax
	movq	%rsp, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rsi, -16(%rax)
	movl	%r8d, -8(%rax)
	movl	%edx, -4(%rax)
	decl	%r8d
	leal	-1(%rdx), %ecx
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdi)
	cmpl	%r8d, (%rax)
	jle	.LBB0_65
	jmp	.LBB0_69
	.p2align	4, 0x90
.LBB0_68:                               # %merge416
                                        #   in Loop: Header=BB0_65 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_69
.LBB0_65:                               # %while_body405
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_67 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB0_68
	.p2align	4, 0x90
.LBB0_67:                               # %while_body408
                                        #   Parent Loop BB0_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB0_67
	jmp	.LBB0_68
.LBB0_69:                               # %merge421
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r11d
	movq	(%r10), %r14
	movl	12(%r10), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_71
	jmp	.LBB0_75
	.p2align	4, 0x90
.LBB0_74:                               # %merge461
                                        #   in Loop: Header=BB0_71 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_75
.LBB0_71:                               # %while_body440
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_73 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB0_74
	.p2align	4, 0x90
.LBB0_73:                               # %while_body443
                                        #   Parent Loop BB0_71 Depth=1
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
	jle	.LBB0_73
	jmp	.LBB0_74
.LBB0_75:                               # %merge466
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %r12
	movq	(%r12), %rdi
	movl	8(%r12), %r8d
	movl	12(%r12), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rax
	andq	%r13, %rax
	movq	%rsp, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r11
	movq	%r11, %rsp
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
	jle	.LBB0_77
	jmp	.LBB0_81
	.p2align	4, 0x90
.LBB0_80:                               # %merge498
                                        #   in Loop: Header=BB0_77 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_81
.LBB0_77:                               # %while_body487
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_79 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_80
	.p2align	4, 0x90
.LBB0_79:                               # %while_body490
                                        #   Parent Loop BB0_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_79
	jmp	.LBB0_80
.LBB0_81:                               # %merge503
	movq	(%r11), %r9
	movq	%r11, -80(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r12), %r14
	movl	12(%r12), %r15d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r13)
	jle	.LBB0_83
	jmp	.LBB0_87
	.p2align	4, 0x90
.LBB0_86:                               # %merge543
                                        #   in Loop: Header=BB0_83 Depth=1
	incl	(%r13)
	cmpl	%r8d, (%r13)
	jg	.LBB0_87
.LBB0_83:                               # %while_body522
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_85 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_86
	.p2align	4, 0x90
.LBB0_85:                               # %while_body525
                                        #   Parent Loop BB0_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %ebx
	movl	(%r13), %eax
	movl	%r10d, %edx
	imull	%eax, %edx
	addl	%ebx, %edx
	movslq	%edx, %rdx
	imull	%r15d, %eax
	addl	%ebx, %eax
	cltq
	movsd	(%r14,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB0_85
	jmp	.LBB0_86
.LBB0_87:                               # %merge548
	callq	free
	movq	%r12, %rdi
	callq	free
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	8(%r10), %r8d
	movl	12(%r10), %edx
	movl	%r8d, %eax
	imull	%edx, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %r12      # imm = 0xFFFFFFFF0
	andq	%r12, %rax
	movq	%rsp, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rsi, -16(%rax)
	movl	%r8d, -8(%rax)
	movl	%edx, -4(%rax)
	decl	%r8d
	leal	-1(%rdx), %ecx
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdi)
	cmpl	%r8d, (%rax)
	jle	.LBB0_89
	jmp	.LBB0_93
	.p2align	4, 0x90
.LBB0_92:                               # %merge576
                                        #   in Loop: Header=BB0_89 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_93
.LBB0_89:                               # %while_body565
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_91 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB0_92
	.p2align	4, 0x90
.LBB0_91:                               # %while_body568
                                        #   Parent Loop BB0_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB0_91
	jmp	.LBB0_92
.LBB0_93:                               # %merge581
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r11d
	movq	(%r10), %r14
	movl	12(%r10), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_95
	jmp	.LBB0_99
	.p2align	4, 0x90
.LBB0_98:                               # %merge621
                                        #   in Loop: Header=BB0_95 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_99
.LBB0_95:                               # %while_body600
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_97 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB0_98
	.p2align	4, 0x90
.LBB0_97:                               # %while_body603
                                        #   Parent Loop BB0_95 Depth=1
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
	jle	.LBB0_97
	jmp	.LBB0_98
.LBB0_99:                               # %merge626
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	free
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %r11
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %r14
	movl	8(%rcx), %eax
	leal	-1(%rax), %esi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movl	12(%rdx), %esi
	leal	-1(%rsi), %r9d
	movl	12(%rcx), %r8d
	leal	-1(%r8), %ebx
	movl	%eax, %ecx
	imull	%esi, %ecx
	leaq	15(,%rcx,8), %rcx
	andq	%r12, %rcx
	movq	%rsp, %r10
	subq	%rcx, %r10
	movq	%r10, %rsp
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rsp
	movq	%r10, -16(%rcx)
	movl	%eax, -8(%rcx)
	movl	%esi, -4(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB0_100
	.p2align	4, 0x90
.LBB0_104:                              # %merge664
                                        #   in Loop: Header=BB0_100 Depth=1
	incl	(%r12)
.LBB0_100:                              # %while652
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_103 Depth 2
	movl	-48(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%r12)
	jg	.LBB0_105
# BB#101:                               # %while_body653
                                        #   in Loop: Header=BB0_100 Depth=1
	movq	%rsp, %r15
	leaq	-16(%r15), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r15)
	cmpl	%r9d, (%rax)
	jg	.LBB0_104
	.p2align	4, 0x90
.LBB0_103:                              # %while_body656
                                        #   Parent Loop BB0_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r12), %ecx
	imull	%esi, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	movq	$0, (%r10,%rcx,8)
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jle	.LBB0_103
	jmp	.LBB0_104
.LBB0_105:                              # %merge669
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r10
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	jmp	.LBB0_106
	.p2align	4, 0x90
.LBB0_113:                              # %merge712
                                        #   in Loop: Header=BB0_106 Depth=1
	incl	(%rax)
.LBB0_106:                              # %while675
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_109 Depth 2
                                        #       Child Loop BB0_111 Depth 3
	movl	-48(%rbp), %ecx         # 4-byte Reload
	cmpl	%ecx, (%rax)
	jg	.LBB0_114
# BB#107:                               # %while_body676
                                        #   in Loop: Header=BB0_106 Depth=1
	movq	%rsp, %r15
	leaq	-16(%r15), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r15)
	cmpl	%r9d, (%rcx)
	jle	.LBB0_109
	jmp	.LBB0_113
	.p2align	4, 0x90
.LBB0_112:                              # %merge706
                                        #   in Loop: Header=BB0_109 Depth=2
	movsd	(%r15), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, (%r13)
	incl	(%rcx)
	cmpl	%r9d, (%rcx)
	jg	.LBB0_113
.LBB0_109:                              # %while_body679
                                        #   Parent Loop BB0_106 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_111 Depth 3
	movl	(%rax), %edx
	imull	%esi, %edx
	addl	(%rcx), %edx
	movslq	%edx, %rdx
	leaq	(%r10,%rdx,8), %r13
	movq	%rsp, %rdx
	leaq	-16(%rdx), %r15
	movq	%r15, %rsp
	movq	$0, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rdx)
	cmpl	%ebx, (%r12)
	jg	.LBB0_112
	.p2align	4, 0x90
.LBB0_111:                              # %while_body688
                                        #   Parent Loop BB0_106 Depth=1
                                        #     Parent Loop BB0_109 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%r12), %edx
	movl	(%rax), %edi
	imull	%r8d, %edi
	addl	%edx, %edi
	movslq	%edi, %rdi
	movsd	(%r11,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	imull	%esi, %edx
	addl	(%rcx), %edx
	movslq	%edx, %rdx
	mulsd	(%r14,%rdx,8), %xmm0
	addsd	(%r15), %xmm0
	movsd	%xmm0, (%r15)
	incl	(%r12)
	cmpl	%ebx, (%r12)
	jle	.LBB0_111
	jmp	.LBB0_112
.LBB0_114:                              # %merge717
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	f
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	f2
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
	.globl	f                       # -- Begin function f
	.p2align	4, 0x90
	.type	f,@function
f:                                      # @f
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
	subq	$40, %rsp
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
	movq	-64(%rbp), %r9
	movl	-52(%rbp), %r11d
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
	jmp	.LBB3_13
	.p2align	4, 0x90
.LBB3_17:                               # %merge78
                                        #   in Loop: Header=BB3_13 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%rbx)
.LBB3_13:                               # %while64
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_16 Depth 2
	movl	-68(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rbx)
	jg	.LBB3_18
# BB#14:                                # %while_body65
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	cmpl	%r13d, (%r14)
	jg	.LBB3_17
	.p2align	4, 0x90
.LBB3_16:                               # %while_body68
                                        #   Parent Loop BB3_13 Depth=1
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
	jle	.LBB3_16
	jmp	.LBB3_17
.LBB3_18:                               # %merge84
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
.Lfunc_end3:
	.size	f, .Lfunc_end3-f
	.cfi_endproc
                                        # -- End function
	.globl	f2                      # -- Begin function f2
	.p2align	4, 0x90
	.type	f2,@function
f2:                                     # @f2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi25:
	.cfi_def_cfa_offset 16
.Lcfi26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi27:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
.Lcfi28:
	.cfi_offset %rbx, -56
.Lcfi29:
	.cfi_offset %r12, -48
.Lcfi30:
	.cfi_offset %r13, -40
.Lcfi31:
	.cfi_offset %r14, -32
.Lcfi32:
	.cfi_offset %r15, -24
	movl	8(%rdi), %r8d
	movl	12(%rdi), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rcx
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rax, %rcx
	movq	%rsp, %rax
	subq	%rcx, %rax
	movq	%rax, %rsp
	movq	%rax, -64(%rbp)
	movl	%r8d, -56(%rbp)
	movl	%r10d, -52(%rbp)
	decl	%r8d
	leal	-1(%r10), %ecx
	movl	$0, -44(%rbp)
	cmpl	%r8d, -44(%rbp)
	jle	.LBB4_2
	jmp	.LBB4_6
	.p2align	4, 0x90
.LBB4_5:                                # %merge
                                        #   in Loop: Header=BB4_2 Depth=1
	incl	-44(%rbp)
	cmpl	%r8d, -44(%rbp)
	jg	.LBB4_6
.LBB4_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB4_5
	.p2align	4, 0x90
.LBB4_4:                                # %while_body5
                                        #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rax,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB4_4
	jmp	.LBB4_5
.LBB4_6:                                # %merge12
	movq	-64(%rbp), %r9
	movl	-52(%rbp), %r10d
	movq	(%rdi), %r14
	movl	12(%rdi), %r15d
	movq	%rsp, %rbx
	leaq	-16(%rbx), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%r12)
	jle	.LBB4_8
	jmp	.LBB4_12
	.p2align	4, 0x90
.LBB4_11:                               # %merge47
                                        #   in Loop: Header=BB4_8 Depth=1
	incl	(%r12)
	cmpl	%r8d, (%r12)
	jg	.LBB4_12
.LBB4_8:                                # %while_body27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rbx)
	jg	.LBB4_11
	.p2align	4, 0x90
.LBB4_10:                               # %while_body30
                                        #   Parent Loop BB4_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	movl	(%r12), %edi
	movl	%r10d, %edx
	imull	%edi, %edx
	addl	%eax, %edx
	movslq	%edx, %rdx
	imull	%r15d, %edi
	addl	%eax, %edi
	movslq	%edi, %rax
	movsd	(%r14,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movsd	%xmm1, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB4_10
	jmp	.LBB4_11
.LBB4_12:                               # %merge52
	movl	8(%rsi), %r8d
	movl	12(%rsi), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
	andq	%rcx, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
	movq	%rdi, -16(%rax)
	movl	%r8d, -8(%rax)
	movl	%r10d, -4(%rax)
	decl	%r8d
	leal	-1(%r10), %ecx
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%rax)
	jle	.LBB4_14
	jmp	.LBB4_18
	.p2align	4, 0x90
.LBB4_17:                               # %merge80
                                        #   in Loop: Header=BB4_14 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB4_18
.LBB4_14:                               # %while_body69
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_16 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB4_17
	.p2align	4, 0x90
.LBB4_16:                               # %while_body72
                                        #   Parent Loop BB4_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rdi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB4_16
	jmp	.LBB4_17
.LBB4_18:                               # %merge85
	movq	(%r13), %r9
	movl	12(%r13), %r11d
	movq	(%rsi), %r14
	movl	12(%rsi), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB4_20
	jmp	.LBB4_24
	.p2align	4, 0x90
.LBB4_23:                               # %merge125
                                        #   in Loop: Header=BB4_20 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB4_24
.LBB4_20:                               # %while_body104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_22 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB4_23
	.p2align	4, 0x90
.LBB4_22:                               # %while_body107
                                        #   Parent Loop BB4_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	movl	(%rax), %ebx
	movl	%r11d, %esi
	imull	%ebx, %esi
	addl	%edi, %esi
	movslq	%esi, %rsi
	imull	%r15d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r14,%rdi,8), %xmm1    # xmm1 = mem[0],zero
	movsd	%xmm1, (%r9,%rsi,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	.LBB4_22
	jmp	.LBB4_23
.LBB4_24:                               # %merge130
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	movsd	%xmm0, -16(%rax)
	movq	-64(%rbp), %r14
	movq	(%r13), %r12
	movl	-56(%rbp), %ecx
	leal	-1(%rcx), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movq	%r13, -96(%rbp)         # 8-byte Spill
	movl	12(%r13), %r8d
	leal	-1(%r8), %r11d
	movl	-52(%rbp), %r13d
	leal	-1(%r13), %r10d
	movl	%ecx, %eax
	imull	%r8d, %eax
	leaq	15(,%rax,8), %rdi
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rax, %rdi
	movq	%rsp, %rax
	subq	%rdi, %rax
	movq	%rax, %rsp
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rsp
	movq	%rax, -16(%rdi)
	movl	%ecx, -8(%rdi)
	movl	%r8d, -4(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdi)
	jmp	.LBB4_25
	.p2align	4, 0x90
.LBB4_29:                               # %merge165
                                        #   in Loop: Header=BB4_25 Depth=1
	incl	(%rcx)
.LBB4_25:                               # %while153
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_28 Depth 2
	movl	-48(%rbp), %edx         # 4-byte Reload
	cmpl	%edx, (%rcx)
	jg	.LBB4_30
# BB#26:                                # %while_body154
                                        #   in Loop: Header=BB4_25 Depth=1
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r11d, (%rdi)
	jg	.LBB4_29
	.p2align	4, 0x90
.LBB4_28:                               # %while_body157
                                        #   Parent Loop BB4_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %ebx
	imull	%r8d, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rax,%rbx,8)
	incl	(%rdi)
	cmpl	%r11d, (%rdi)
	jle	.LBB4_28
	jmp	.LBB4_29
.LBB4_30:                               # %merge170
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB4_31
	.p2align	4, 0x90
.LBB4_38:                               # %merge211
                                        #   in Loop: Header=BB4_31 Depth=1
	incl	(%rdi)
.LBB4_31:                               # %while176
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_34 Depth 2
                                        #       Child Loop BB4_36 Depth 3
	movl	-48(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rdi)
	jg	.LBB4_39
# BB#32:                                # %while_body177
                                        #   in Loop: Header=BB4_31 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r11d, (%rax)
	jle	.LBB4_34
	jmp	.LBB4_38
	.p2align	4, 0x90
.LBB4_37:                               # %merge205
                                        #   in Loop: Header=BB4_34 Depth=2
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, (%r15)
	incl	(%rax)
	cmpl	%r11d, (%rax)
	jg	.LBB4_38
.LBB4_34:                               # %while_body180
                                        #   Parent Loop BB4_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_36 Depth 3
	movl	(%rdi), %ecx
	imull	%r8d, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	movq	-72(%rbp), %rdx         # 8-byte Reload
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
	jg	.LBB4_37
	.p2align	4, 0x90
.LBB4_36:                               # %while_body188
                                        #   Parent Loop BB4_31 Depth=1
                                        #     Parent Loop BB4_34 Depth=2
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
	jle	.LBB4_36
	jmp	.LBB4_37
.LBB4_39:                               # %merge216
	movq	-88(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r11
	movl	8(%rax), %ecx
	leal	-1(%rcx), %r10d
	movl	12(%rax), %edx
	leal	-1(%rdx), %esi
	movl	%ecx, %edi
	imull	%edx, %edi
	leaq	15(,%rdi,8), %rdi
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rax, %rdi
	movq	%rsp, %rbx
	subq	%rdi, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rdi
	leaq	-16(%rdi), %r8
	movq	%r8, %rsp
	movq	%rbx, -16(%rdi)
	movl	%ecx, -8(%rdi)
	movl	%edx, -4(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r10d, (%rdi)
	jle	.LBB4_41
	jmp	.LBB4_45
	.p2align	4, 0x90
.LBB4_44:                               # %merge249
                                        #   in Loop: Header=BB4_41 Depth=1
	incl	(%rdi)
	cmpl	%r10d, (%rdi)
	jg	.LBB4_45
.LBB4_41:                               # %while_body238
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_43 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%esi, (%rcx)
	jg	.LBB4_44
	.p2align	4, 0x90
.LBB4_43:                               # %while_body241
                                        #   Parent Loop BB4_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movq	$0, (%rbx,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB4_43
	jmp	.LBB4_44
.LBB4_45:                               # %merge254
	movq	(%r8), %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rax)
	cmpl	%r10d, (%rdi)
	jle	.LBB4_47
	jmp	.LBB4_51
	.p2align	4, 0x90
.LBB4_50:                               # %merge279
                                        #   in Loop: Header=BB4_47 Depth=1
	incl	(%rdi)
	cmpl	%r10d, (%rdi)
	jg	.LBB4_51
.LBB4_47:                               # %while_body261
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_49 Depth 2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%esi, (%rcx)
	jg	.LBB4_50
	.p2align	4, 0x90
.LBB4_49:                               # %while_body264
                                        #   Parent Loop BB4_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movsd	(%r11,%rax,8), %xmm1    # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rbx,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB4_49
	jmp	.LBB4_50
.LBB4_51:                               # %merge284
	movq	(%r8), %rbx
	movl	8(%r8), %eax
	movl	12(%r8), %r12d
	decl	%eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	leal	-1(%r12), %r13d
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB4_52
	.p2align	4, 0x90
.LBB4_56:                               # %merge310
                                        #   in Loop: Header=BB4_52 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%r15)
.LBB4_52:                               # %while296
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_55 Depth 2
	movl	-72(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%r15)
	jg	.LBB4_57
# BB#53:                                # %while_body297
                                        #   in Loop: Header=BB4_52 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	cmpl	%r13d, (%r14)
	jg	.LBB4_56
	.p2align	4, 0x90
.LBB4_55:                               # %while_body300
                                        #   Parent Loop BB4_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r15), %eax
	imull	%r12d, %eax
	addl	(%r14), %eax
	cltq
	movsd	(%rbx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.2, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%r14)
	cmpl	%r13d, (%r14)
	jle	.LBB4_55
	jmp	.LBB4_56
.LBB4_57:                               # %merge316
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$16, %edi
	callq	malloc
	movq	%rax, %r14
	movq	-88(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-64(%rbp), %r10
	movl	-56(%rbp), %ecx
	leal	-1(%rcx), %r8d
	movl	-52(%rbp), %edx
	leal	-1(%rdx), %esi
	movl	%ecx, %edi
	imull	%edx, %edi
	leaq	15(,%rdi,8), %rbx
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rax, %rbx
	movq	%rsp, %rdi
	subq	%rbx, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rbx
	leaq	-16(%rbx), %r12
	movq	%r12, %rsp
	movq	%rdi, -16(%rbx)
	movl	%ecx, -8(%rbx)
	movl	%edx, -4(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r8d, (%rbx)
	jle	.LBB4_59
	jmp	.LBB4_63
	.p2align	4, 0x90
.LBB4_62:                               # %merge350
                                        #   in Loop: Header=BB4_59 Depth=1
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB4_63
.LBB4_59:                               # %while_body339
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_61 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%esi, (%rcx)
	jg	.LBB4_62
	.p2align	4, 0x90
.LBB4_61:                               # %while_body342
                                        #   Parent Loop BB4_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movq	$0, (%rdi,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB4_61
	jmp	.LBB4_62
.LBB4_63:                               # %merge355
	movq	(%r12), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r8d, (%rbx)
	jle	.LBB4_65
	jmp	.LBB4_69
	.p2align	4, 0x90
.LBB4_68:                               # %merge380
                                        #   in Loop: Header=BB4_65 Depth=1
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB4_69
.LBB4_65:                               # %while_body362
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_67 Depth 2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%esi, (%rcx)
	jg	.LBB4_68
	.p2align	4, 0x90
.LBB4_67:                               # %while_body365
                                        #   Parent Loop BB4_65 Depth=1
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
	jle	.LBB4_67
	jmp	.LBB4_68
.LBB4_69:                               # %merge385
	movl	8(%r12), %r13d
	movl	12(%r12), %r15d
	movl	%r13d, %edi
	imull	%r15d, %edi
	shll	$3, %edi
	callq	malloc
	movq	%rax, %rbx
	movl	$16, %edi
	callq	malloc
	movq	%rbx, (%rax)
	movl	%r13d, 8(%rax)
	movl	%r15d, 12(%rax)
	decl	%r13d
	leal	-1(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r13d, (%rdx)
	jle	.LBB4_71
	jmp	.LBB4_75
	.p2align	4, 0x90
.LBB4_74:                               # %merge415
                                        #   in Loop: Header=BB4_71 Depth=1
	incl	(%rdx)
	cmpl	%r13d, (%rdx)
	jg	.LBB4_75
.LBB4_71:                               # %while_body404
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_73 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%ecx, (%rsi)
	jg	.LBB4_74
	.p2align	4, 0x90
.LBB4_73:                               # %while_body407
                                        #   Parent Loop BB4_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	imull	%r15d, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rbx,%rdi,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB4_73
	jmp	.LBB4_74
.LBB4_75:                               # %merge420
	movq	(%rax), %r8
	movl	12(%rax), %r9d
	movq	(%r12), %r11
	movl	12(%r12), %r15d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r13d, (%r12)
	jle	.LBB4_77
	jmp	.LBB4_81
	.p2align	4, 0x90
.LBB4_80:                               # %merge460
                                        #   in Loop: Header=BB4_77 Depth=1
	incl	(%r12)
	cmpl	%r13d, (%r12)
	jg	.LBB4_81
.LBB4_77:                               # %while_body439
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_79 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rsi)
	jg	.LBB4_80
	.p2align	4, 0x90
.LBB4_79:                               # %while_body442
                                        #   Parent Loop BB4_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%r12), %ebx
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
	jle	.LBB4_79
	jmp	.LBB4_80
.LBB4_81:                               # %merge465
	movq	%rax, (%r14)
	movq	-96(%rbp), %r13         # 8-byte Reload
	movl	8(%r13), %r12d
	movl	12(%r13), %r15d
	movl	%r12d, %edi
	imull	%r15d, %edi
	shll	$3, %edi
	callq	malloc
	movq	%rax, %rbx
	movl	$16, %edi
	callq	malloc
	movq	%rbx, (%rax)
	movl	%r12d, 8(%rax)
	movl	%r15d, 12(%rax)
	decl	%r12d
	leal	-1(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r12d, (%rdx)
	jle	.LBB4_83
	jmp	.LBB4_87
	.p2align	4, 0x90
.LBB4_86:                               # %merge496
                                        #   in Loop: Header=BB4_83 Depth=1
	incl	(%rdx)
	cmpl	%r12d, (%rdx)
	jg	.LBB4_87
.LBB4_83:                               # %while_body485
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_85 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%ecx, (%rsi)
	jg	.LBB4_86
	.p2align	4, 0x90
.LBB4_85:                               # %while_body488
                                        #   Parent Loop BB4_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	imull	%r15d, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rbx,%rdi,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB4_85
	jmp	.LBB4_86
.LBB4_87:                               # %merge501
	movq	(%rax), %r8
	movl	12(%rax), %r9d
	movq	(%r13), %r11
	movl	12(%r13), %r15d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r12d, (%r13)
	jle	.LBB4_89
	jmp	.LBB4_93
	.p2align	4, 0x90
.LBB4_92:                               # %merge541
                                        #   in Loop: Header=BB4_89 Depth=1
	incl	(%r13)
	cmpl	%r12d, (%r13)
	jg	.LBB4_93
.LBB4_89:                               # %while_body520
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_91 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rsi)
	jg	.LBB4_92
	.p2align	4, 0x90
.LBB4_91:                               # %while_body523
                                        #   Parent Loop BB4_89 Depth=1
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
	jle	.LBB4_91
	jmp	.LBB4_92
.LBB4_93:                               # %merge546
	movq	%rax, 8(%r14)
	movq	%r14, %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
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
	.asciz	"fun1"
	.size	.Lsystem_string, 5


	.section	".note.GNU-stack","",@progbits
