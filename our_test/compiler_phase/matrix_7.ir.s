	.text
	.file	"MicroC"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4607186922399644778     # double 1.0009999999999999
.LCPI0_1:
	.quad	4607182418800017408     # double 1
.LCPI0_2:
	.quad	4609434218613702656     # double 1.5
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
	movabsq	$12884901892, %rdx      # imm = 0x300000004
	movq	%rdx, -72(%rbp)
	movl	$4, %r8d
	movl	$3, %ecx
	movq	%rsp, %rax
	addq	$-96, %rax
	movq	%rax, %rsp
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movl	$2, %edx
	movl	$0, -60(%rbp)
	cmpl	%ecx, -60(%rbp)
	jle	.LBB0_2
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_5:                                # %merge
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	-60(%rbp)
	cmpl	%ecx, -60(%rbp)
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
	movl	-60(%rbp), %edi
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
	movq	-56(%rbp), %r9
	movl	-44(%rbp), %r11d
	movq	-80(%rbp), %r14
	movl	-68(%rbp), %r15d
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
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB0_13
# BB#20:                                # %else
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_14
.LBB0_13:                               # %then
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.6, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_14:                               # %merge76
	movq	-56(%rbp), %rax
	movl	-48(%rbp), %r8d
	decl	%r8d
	movl	-44(%rbp), %edx
	leal	-1(%rdx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r10
	movq	%r10, %rsp
	movb	$1, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r8d, (%rbx)
	jle	.LBB0_16
	jmp	.LBB0_23
	.p2align	4, 0x90
.LBB0_22:                               # %merge121
                                        #   in Loop: Header=BB0_16 Depth=1
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB0_23
.LBB0_16:                               # %while_body99
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%esi, (%rcx)
	jle	.LBB0_18
	jmp	.LBB0_22
	.p2align	4, 0x90
.LBB0_21:                               # %then116
                                        #   in Loop: Header=BB0_18 Depth=2
	movb	$0, (%r10)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jg	.LBB0_22
.LBB0_18:                               # %while_body102
                                        #   Parent Loop BB0_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %edi
	imull	%edx, %edi
	addl	(%rcx), %edi
	movslq	%edi, %rdi
	movsd	(%rax,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%rax,%rdi,8), %xmm0
	jne	.LBB0_21
# BB#19:                                # %merge115
                                        #   in Loop: Header=BB0_18 Depth=2
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB0_18
	jmp	.LBB0_22
.LBB0_23:                               # %merge126
	cmpb	$1, (%r10)
	je	.LBB0_33
# BB#24:                                # %then131
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_25
.LBB0_33:                               # %else133
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_25:                               # %merge130
	xorl	%eax, %eax
	callq	printf
	xorl	%ebx, %ebx
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
	testb	%bl, %bl
	jne	.LBB0_26
# BB#34:                                # %else144
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_27
.LBB0_26:                               # %then142
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.6, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_27:                               # %merge141
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	-56(%rbp), %rcx
	movl	-48(%rbp), %r9d
	decl	%r9d
	movl	-44(%rbp), %esi
	leal	-1(%rsi), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %r11
	movq	%r11, %rsp
	movb	$1, -16(%rax)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r9d, (%rax)
	jle	.LBB0_29
	jmp	.LBB0_37
	.p2align	4, 0x90
.LBB0_36:                               # %merge191
                                        #   in Loop: Header=BB0_29 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	.LBB0_37
.LBB0_29:                               # %while_body169
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_31 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edi, (%rdx)
	jle	.LBB0_31
	jmp	.LBB0_36
	.p2align	4, 0x90
.LBB0_35:                               # %then186
                                        #   in Loop: Header=BB0_31 Depth=2
	movb	$0, (%r11)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jg	.LBB0_36
.LBB0_31:                               # %while_body172
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%esi, %ebx
	addl	(%rdx), %ebx
	movslq	%ebx, %rbx
	movsd	(%rcx,%rbx,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%rcx,%rbx,8), %xmm0
	jne	.LBB0_35
# BB#32:                                # %merge185
                                        #   in Loop: Header=BB0_31 Depth=2
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	.LBB0_31
	jmp	.LBB0_36
.LBB0_37:                               # %merge196
	cmpb	$1, (%r11)
	je	.LBB0_39
# BB#38:                                # %then201
	movb	$1, (%r8)
	cmpb	$1, (%r8)
	je	.LBB0_260
.LBB0_41:                               # %then206
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_42
.LBB0_39:                               # %else202
	movb	$0, (%r8)
	cmpb	$1, (%r8)
	jne	.LBB0_41
.LBB0_260:                              # %else208
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_42:                               # %merge205
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movq	-56(%rbp), %r11
	movl	-48(%rbp), %eax
	leal	-1(%rax), %r8d
	movl	-44(%rbp), %esi
	leal	-1(%rsi), %edi
	movl	%eax, %edx
	imull	%esi, %edx
	leaq	15(,%rdx,8), %rdx
	movabsq	$68719476720, %r14      # imm = 0xFFFFFFFF0
	andq	%r14, %rdx
	movq	%rsp, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rdx
	leaq	-16(%rdx), %r9
	movq	%r9, %rsp
	movq	%rbx, -16(%rdx)
	movl	%eax, -8(%rdx)
	movl	%esi, -4(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_44
	jmp	.LBB0_48
	.p2align	4, 0x90
.LBB0_47:                               # %merge242
                                        #   in Loop: Header=BB0_44 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_48
.LBB0_44:                               # %while_body231
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_46 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edi, (%rdx)
	jg	.LBB0_47
	.p2align	4, 0x90
.LBB0_46:                               # %while_body234
                                        #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	imull	%esi, %ecx
	addl	(%rdx), %ecx
	movslq	%ecx, %rcx
	movq	$0, (%rbx,%rcx,8)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	.LBB0_46
	jmp	.LBB0_47
.LBB0_48:                               # %merge247
	movq	(%r9), %rbx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	cmpl	%r8d, (%rax)
	jle	.LBB0_50
	jmp	.LBB0_54
	.p2align	4, 0x90
.LBB0_53:                               # %merge272
                                        #   in Loop: Header=BB0_50 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_54
.LBB0_50:                               # %while_body254
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_52 Depth 2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%edi, (%rdx)
	jg	.LBB0_53
	.p2align	4, 0x90
.LBB0_52:                               # %while_body257
                                        #   Parent Loop BB0_50 Depth=1
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
	jle	.LBB0_52
	jmp	.LBB0_53
.LBB0_54:                               # %merge277
	movl	8(%r9), %r8d
	movl	12(%r9), %esi
	movl	%r8d, %eax
	imull	%esi, %eax
	leaq	15(,%rax,8), %rax
	andq	%r14, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
	movq	%rdi, -16(%rax)
	movl	%r8d, -8(%rax)
	movl	%esi, -4(%rax)
	decl	%r8d
	leal	-1(%rsi), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_56
	jmp	.LBB0_60
	.p2align	4, 0x90
.LBB0_59:                               # %merge305
                                        #   in Loop: Header=BB0_56 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_60
.LBB0_56:                               # %while_body294
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_58 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%edx, (%rcx)
	jg	.LBB0_59
	.p2align	4, 0x90
.LBB0_58:                               # %while_body297
                                        #   Parent Loop BB0_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%esi, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rdi,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	.LBB0_58
	jmp	.LBB0_59
.LBB0_60:                               # %merge310
	movq	(%r15), %r10
	movl	12(%r15), %r11d
	movq	(%r9), %r12
	movl	12(%r9), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%rcx)
	jle	.LBB0_62
	jmp	.LBB0_66
	.p2align	4, 0x90
.LBB0_65:                               # %merge350
                                        #   in Loop: Header=BB0_62 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_66
.LBB0_62:                               # %while_body329
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_64 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r9)
	cmpl	%edx, (%rsi)
	jg	.LBB0_65
	.p2align	4, 0x90
.LBB0_64:                               # %while_body332
                                        #   Parent Loop BB0_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rcx), %ebx
	movl	%r11d, %eax
	imull	%ebx, %eax
	addl	%edi, %eax
	cltq
	imull	%r13d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r12,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rax,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	.LBB0_64
	jmp	.LBB0_65
.LBB0_66:                               # %merge355
	movl	8(%r15), %eax
	cmpl	-48(%rbp), %eax
	jne	.LBB0_67
# BB#74:                                # %else365
	movl	12(%r15), %eax
	cmpl	-44(%rbp), %eax
	je	.LBB0_68
.LBB0_67:                               # %then363
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.6, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_68:                               # %merge362
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	(%r15), %r12
	movl	8(%r15), %r9d
	decl	%r9d
	movl	12(%r15), %esi
	leal	-1(%rsi), %edi
	movq	-56(%rbp), %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %r10
	movq	%r10, %rsp
	movb	$1, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r9d, (%rdx)
	jle	.LBB0_70
	jmp	.LBB0_77
	.p2align	4, 0x90
.LBB0_76:                               # %merge412
                                        #   in Loop: Header=BB0_70 Depth=1
	incl	(%rdx)
	cmpl	%r9d, (%rdx)
	jg	.LBB0_77
.LBB0_70:                               # %while_body390
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_72 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r11)
	cmpl	%edi, (%rax)
	jle	.LBB0_72
	jmp	.LBB0_76
	.p2align	4, 0x90
.LBB0_75:                               # %then407
                                        #   in Loop: Header=BB0_72 Depth=2
	movb	$0, (%r10)
	incl	(%rax)
	cmpl	%edi, (%rax)
	jg	.LBB0_76
.LBB0_72:                               # %while_body393
                                        #   Parent Loop BB0_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %ecx
	imull	%esi, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	movsd	(%r12,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%rbx,%rcx,8), %xmm0
	jne	.LBB0_75
# BB#73:                                # %merge406
                                        #   in Loop: Header=BB0_72 Depth=2
	incl	(%rax)
	cmpl	%edi, (%rax)
	jle	.LBB0_72
	jmp	.LBB0_76
.LBB0_77:                               # %merge417
	cmpb	$1, (%r10)
	je	.LBB0_79
# BB#78:                                # %then422
	movb	$1, (%r8)
	cmpb	$1, (%r8)
	je	.LBB0_90
.LBB0_81:                               # %then427
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_82
.LBB0_79:                               # %else423
	movb	$0, (%r8)
	cmpb	$1, (%r8)
	jne	.LBB0_81
.LBB0_90:                               # %else429
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_82:                               # %merge426
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
	movl	8(%r15), %eax
	cmpl	-48(%rbp), %eax
	jne	.LBB0_83
# BB#91:                                # %else440
	movl	12(%r15), %eax
	cmpl	-44(%rbp), %eax
	je	.LBB0_84
.LBB0_83:                               # %then438
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.6, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_84:                               # %merge437
	movq	(%r15), %r11
	movl	8(%r15), %r8d
	decl	%r8d
	movl	12(%r15), %edx
	leal	-1(%rdx), %esi
	movq	-56(%rbp), %rdi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r9
	movq	%r9, %rsp
	movb	$1, -16(%rcx)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%rcx)
	jle	.LBB0_86
	jmp	.LBB0_94
	.p2align	4, 0x90
.LBB0_93:                               # %merge486
                                        #   in Loop: Header=BB0_86 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_94
.LBB0_86:                               # %while_body464
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_88 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rbx)
	jle	.LBB0_88
	jmp	.LBB0_93
	.p2align	4, 0x90
.LBB0_92:                               # %then481
                                        #   in Loop: Header=BB0_88 Depth=2
	movb	$0, (%r9)
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jg	.LBB0_93
.LBB0_88:                               # %while_body467
                                        #   Parent Loop BB0_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	imull	%edx, %eax
	addl	(%rbx), %eax
	cltq
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%rdi,%rax,8), %xmm0
	jne	.LBB0_92
# BB#89:                                # %merge480
                                        #   in Loop: Header=BB0_88 Depth=2
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jle	.LBB0_88
	jmp	.LBB0_93
.LBB0_94:                               # %merge491
	cmpb	$1, (%r9)
	je	.LBB0_261
# BB#95:                                # %then496
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_96
.LBB0_261:                              # %else498
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_96:                               # %merge495
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movq	-56(%rbp), %r11
	movl	-48(%rbp), %eax
	leal	-1(%rax), %r8d
	movl	-44(%rbp), %esi
	leal	-1(%rsi), %edi
	movl	%eax, %edx
	imull	%esi, %edx
	leaq	15(,%rdx,8), %rdx
	andq	%r14, %rdx
	movq	%rsp, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rdx
	leaq	-16(%rdx), %r9
	movq	%r9, %rsp
	movq	%rbx, -16(%rdx)
	movl	%eax, -8(%rdx)
	movl	%esi, -4(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_98
	jmp	.LBB0_102
	.p2align	4, 0x90
.LBB0_101:                              # %merge532
                                        #   in Loop: Header=BB0_98 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_102
.LBB0_98:                               # %while_body521
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_100 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edi, (%rdx)
	jg	.LBB0_101
	.p2align	4, 0x90
.LBB0_100:                              # %while_body524
                                        #   Parent Loop BB0_98 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	imull	%esi, %ecx
	addl	(%rdx), %ecx
	movslq	%ecx, %rcx
	movq	$0, (%rbx,%rcx,8)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	.LBB0_100
	jmp	.LBB0_101
.LBB0_102:                              # %merge537
	movq	(%r9), %rbx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	cmpl	%r8d, (%rax)
	jle	.LBB0_104
	jmp	.LBB0_108
	.p2align	4, 0x90
.LBB0_107:                              # %merge562
                                        #   in Loop: Header=BB0_104 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_108
.LBB0_104:                              # %while_body544
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_106 Depth 2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%edi, (%rdx)
	jg	.LBB0_107
	.p2align	4, 0x90
.LBB0_106:                              # %while_body547
                                        #   Parent Loop BB0_104 Depth=1
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
	jle	.LBB0_106
	jmp	.LBB0_107
.LBB0_108:                              # %merge567
	movl	8(%r9), %r8d
	movl	12(%r9), %esi
	movl	%r8d, %eax
	imull	%esi, %eax
	leaq	15(,%rax,8), %rax
	andq	%r14, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
	movq	%rdi, -16(%rax)
	movl	%r8d, -8(%rax)
	movl	%esi, -4(%rax)
	decl	%r8d
	leal	-1(%rsi), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_110
	jmp	.LBB0_114
	.p2align	4, 0x90
.LBB0_113:                              # %merge595
                                        #   in Loop: Header=BB0_110 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_114
.LBB0_110:                              # %while_body584
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_112 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%edx, (%rcx)
	jg	.LBB0_113
	.p2align	4, 0x90
.LBB0_112:                              # %while_body587
                                        #   Parent Loop BB0_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%esi, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rdi,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	.LBB0_112
	jmp	.LBB0_113
.LBB0_114:                              # %merge600
	movq	(%r15), %r10
	movl	12(%r15), %r11d
	movq	(%r9), %r12
	movl	12(%r9), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%rcx)
	jle	.LBB0_116
	jmp	.LBB0_120
	.p2align	4, 0x90
.LBB0_119:                              # %merge640
                                        #   in Loop: Header=BB0_116 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_120
.LBB0_116:                              # %while_body619
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_118 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r9)
	cmpl	%edx, (%rsi)
	jg	.LBB0_119
	.p2align	4, 0x90
.LBB0_118:                              # %while_body622
                                        #   Parent Loop BB0_116 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rcx), %ebx
	movl	%r11d, %eax
	imull	%ebx, %eax
	addl	%edi, %eax
	cltq
	imull	%r13d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r12,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rax,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	.LBB0_118
	jmp	.LBB0_119
.LBB0_120:                              # %merge645
	movl	8(%r15), %eax
	cmpl	-48(%rbp), %eax
	jne	.LBB0_121
# BB#128:                               # %else655
	movl	12(%r15), %eax
	cmpl	-44(%rbp), %eax
	je	.LBB0_122
.LBB0_121:                              # %then653
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.6, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_122:                              # %merge652
	movq	(%r15), %r11
	movl	8(%r15), %r8d
	decl	%r8d
	movl	12(%r15), %edx
	leal	-1(%rdx), %esi
	movq	-56(%rbp), %rdi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r9
	movq	%r9, %rsp
	movb	$1, -16(%rcx)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%rcx)
	jle	.LBB0_124
	jmp	.LBB0_131
	.p2align	4, 0x90
.LBB0_130:                              # %merge701
                                        #   in Loop: Header=BB0_124 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_131
.LBB0_124:                              # %while_body679
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_126 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rbx)
	jle	.LBB0_126
	jmp	.LBB0_130
	.p2align	4, 0x90
.LBB0_129:                              # %then696
                                        #   in Loop: Header=BB0_126 Depth=2
	movb	$0, (%r9)
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jg	.LBB0_130
.LBB0_126:                              # %while_body682
                                        #   Parent Loop BB0_124 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	imull	%edx, %eax
	addl	(%rbx), %eax
	cltq
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%rdi,%rax,8), %xmm0
	jne	.LBB0_129
# BB#127:                               # %merge695
                                        #   in Loop: Header=BB0_126 Depth=2
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jle	.LBB0_126
	jmp	.LBB0_130
.LBB0_131:                              # %merge706
	cmpb	$1, (%r9)
	je	.LBB0_141
# BB#132:                               # %then711
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_133
.LBB0_141:                              # %else713
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_133:                              # %merge710
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
	movl	8(%r15), %eax
	cmpl	-48(%rbp), %eax
	jne	.LBB0_134
# BB#142:                               # %else724
	movl	12(%r15), %eax
	cmpl	-44(%rbp), %eax
	je	.LBB0_135
.LBB0_134:                              # %then722
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.6, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_135:                              # %merge721
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	(%r15), %r12
	movl	8(%r15), %r9d
	decl	%r9d
	movl	12(%r15), %esi
	leal	-1(%rsi), %edi
	movq	-56(%rbp), %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %r10
	movq	%r10, %rsp
	movb	$1, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r9d, (%rdx)
	jle	.LBB0_137
	jmp	.LBB0_145
	.p2align	4, 0x90
.LBB0_144:                              # %merge771
                                        #   in Loop: Header=BB0_137 Depth=1
	incl	(%rdx)
	cmpl	%r9d, (%rdx)
	jg	.LBB0_145
.LBB0_137:                              # %while_body749
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_139 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r11)
	cmpl	%edi, (%rax)
	jle	.LBB0_139
	jmp	.LBB0_144
	.p2align	4, 0x90
.LBB0_143:                              # %then766
                                        #   in Loop: Header=BB0_139 Depth=2
	movb	$0, (%r10)
	incl	(%rax)
	cmpl	%edi, (%rax)
	jg	.LBB0_144
.LBB0_139:                              # %while_body752
                                        #   Parent Loop BB0_137 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %ecx
	imull	%esi, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	movsd	(%r12,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%rbx,%rcx,8), %xmm0
	jne	.LBB0_143
# BB#140:                               # %merge765
                                        #   in Loop: Header=BB0_139 Depth=2
	incl	(%rax)
	cmpl	%edi, (%rax)
	jle	.LBB0_139
	jmp	.LBB0_144
.LBB0_145:                              # %merge776
	cmpb	$1, (%r10)
	je	.LBB0_147
# BB#146:                               # %then781
	movb	$1, (%r8)
	cmpb	$1, (%r8)
	je	.LBB0_262
.LBB0_149:                              # %then786
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_150
.LBB0_147:                              # %else782
	movb	$0, (%r8)
	cmpb	$1, (%r8)
	jne	.LBB0_149
.LBB0_262:                              # %else788
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_150:                              # %merge785
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movq	-56(%rbp), %r11
	movl	-48(%rbp), %eax
	leal	-1(%rax), %r8d
	movl	-44(%rbp), %esi
	leal	-1(%rsi), %edi
	movl	%eax, %edx
	imull	%esi, %edx
	leaq	15(,%rdx,8), %rdx
	andq	%r14, %rdx
	movq	%rsp, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rdx
	leaq	-16(%rdx), %r9
	movq	%r9, %rsp
	movq	%rbx, -16(%rdx)
	movl	%eax, -8(%rdx)
	movl	%esi, -4(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_152
	jmp	.LBB0_156
	.p2align	4, 0x90
.LBB0_155:                              # %merge822
                                        #   in Loop: Header=BB0_152 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_156
.LBB0_152:                              # %while_body811
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_154 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edi, (%rdx)
	jg	.LBB0_155
	.p2align	4, 0x90
.LBB0_154:                              # %while_body814
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	imull	%esi, %ecx
	addl	(%rdx), %ecx
	movslq	%ecx, %rcx
	movq	$0, (%rbx,%rcx,8)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	.LBB0_154
	jmp	.LBB0_155
.LBB0_156:                              # %merge827
	movq	(%r9), %rbx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	cmpl	%r8d, (%rax)
	jle	.LBB0_158
	jmp	.LBB0_162
	.p2align	4, 0x90
.LBB0_161:                              # %merge852
                                        #   in Loop: Header=BB0_158 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_162
.LBB0_158:                              # %while_body834
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_160 Depth 2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%edi, (%rdx)
	jg	.LBB0_161
	.p2align	4, 0x90
.LBB0_160:                              # %while_body837
                                        #   Parent Loop BB0_158 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	imull	%esi, %ecx
	addl	(%rdx), %ecx
	movslq	%ecx, %rcx
	movsd	(%r11,%rcx,8), %xmm1    # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rbx,%rcx,8)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	.LBB0_160
	jmp	.LBB0_161
.LBB0_162:                              # %merge857
	movl	8(%r9), %r8d
	movl	12(%r9), %esi
	movl	%r8d, %eax
	imull	%esi, %eax
	leaq	15(,%rax,8), %rax
	andq	%r14, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
	movq	%rdi, -16(%rax)
	movl	%r8d, -8(%rax)
	movl	%esi, -4(%rax)
	decl	%r8d
	leal	-1(%rsi), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_164
	jmp	.LBB0_168
	.p2align	4, 0x90
.LBB0_167:                              # %merge885
                                        #   in Loop: Header=BB0_164 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_168
.LBB0_164:                              # %while_body874
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_166 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%edx, (%rcx)
	jg	.LBB0_167
	.p2align	4, 0x90
.LBB0_166:                              # %while_body877
                                        #   Parent Loop BB0_164 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%esi, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rdi,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	.LBB0_166
	jmp	.LBB0_167
.LBB0_168:                              # %merge890
	movq	(%r15), %r10
	movl	12(%r15), %r11d
	movq	(%r9), %r12
	movl	12(%r9), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%rcx)
	jle	.LBB0_170
	jmp	.LBB0_174
	.p2align	4, 0x90
.LBB0_173:                              # %merge930
                                        #   in Loop: Header=BB0_170 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_174
.LBB0_170:                              # %while_body909
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_172 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r9)
	cmpl	%edx, (%rsi)
	jg	.LBB0_173
	.p2align	4, 0x90
.LBB0_172:                              # %while_body912
                                        #   Parent Loop BB0_170 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rcx), %ebx
	movl	%r11d, %eax
	imull	%ebx, %eax
	addl	%edi, %eax
	cltq
	imull	%r13d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r12,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rax,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	.LBB0_172
	jmp	.LBB0_173
.LBB0_174:                              # %merge935
	movl	8(%r15), %eax
	cmpl	-48(%rbp), %eax
	jne	.LBB0_175
# BB#182:                               # %else945
	movl	12(%r15), %eax
	cmpl	-44(%rbp), %eax
	je	.LBB0_176
.LBB0_175:                              # %then943
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.6, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_176:                              # %merge942
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	(%r15), %r12
	movl	8(%r15), %r9d
	decl	%r9d
	movl	12(%r15), %esi
	leal	-1(%rsi), %edi
	movq	-56(%rbp), %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %r10
	movq	%r10, %rsp
	movb	$1, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r9d, (%rdx)
	jle	.LBB0_178
	jmp	.LBB0_185
	.p2align	4, 0x90
.LBB0_184:                              # %merge992
                                        #   in Loop: Header=BB0_178 Depth=1
	incl	(%rdx)
	cmpl	%r9d, (%rdx)
	jg	.LBB0_185
.LBB0_178:                              # %while_body970
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_180 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r11)
	cmpl	%edi, (%rax)
	jle	.LBB0_180
	jmp	.LBB0_184
	.p2align	4, 0x90
.LBB0_183:                              # %then987
                                        #   in Loop: Header=BB0_180 Depth=2
	movb	$0, (%r10)
	incl	(%rax)
	cmpl	%edi, (%rax)
	jg	.LBB0_184
.LBB0_180:                              # %while_body973
                                        #   Parent Loop BB0_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %ecx
	imull	%esi, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	movsd	(%r12,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%rbx,%rcx,8), %xmm0
	jne	.LBB0_183
# BB#181:                               # %merge986
                                        #   in Loop: Header=BB0_180 Depth=2
	incl	(%rax)
	cmpl	%edi, (%rax)
	jle	.LBB0_180
	jmp	.LBB0_184
.LBB0_185:                              # %merge997
	cmpb	$1, (%r10)
	je	.LBB0_187
# BB#186:                               # %then1002
	movb	$1, (%r8)
	cmpb	$1, (%r8)
	je	.LBB0_198
.LBB0_189:                              # %then1007
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_190
.LBB0_187:                              # %else1003
	movb	$0, (%r8)
	cmpb	$1, (%r8)
	jne	.LBB0_189
.LBB0_198:                              # %else1009
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_190:                              # %merge1006
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
	movl	8(%r15), %eax
	cmpl	-48(%rbp), %eax
	jne	.LBB0_191
# BB#199:                               # %else1020
	movl	12(%r15), %eax
	cmpl	-44(%rbp), %eax
	je	.LBB0_192
.LBB0_191:                              # %then1018
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.6, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_192:                              # %merge1017
	movq	(%r15), %r11
	movl	8(%r15), %r8d
	decl	%r8d
	movl	12(%r15), %edx
	leal	-1(%rdx), %esi
	movq	-56(%rbp), %rdi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r9
	movq	%r9, %rsp
	movb	$1, -16(%rcx)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%rcx)
	jle	.LBB0_194
	jmp	.LBB0_202
	.p2align	4, 0x90
.LBB0_201:                              # %merge1066
                                        #   in Loop: Header=BB0_194 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_202
.LBB0_194:                              # %while_body1044
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_196 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rbx)
	jle	.LBB0_196
	jmp	.LBB0_201
	.p2align	4, 0x90
.LBB0_200:                              # %then1061
                                        #   in Loop: Header=BB0_196 Depth=2
	movb	$0, (%r9)
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jg	.LBB0_201
.LBB0_196:                              # %while_body1047
                                        #   Parent Loop BB0_194 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	imull	%edx, %eax
	addl	(%rbx), %eax
	cltq
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%rdi,%rax,8), %xmm0
	jne	.LBB0_200
# BB#197:                               # %merge1060
                                        #   in Loop: Header=BB0_196 Depth=2
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jle	.LBB0_196
	jmp	.LBB0_201
.LBB0_202:                              # %merge1071
	cmpb	$1, (%r9)
	je	.LBB0_263
# BB#203:                               # %then1076
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_204
.LBB0_263:                              # %else1078
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_204:                              # %merge1075
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movq	-56(%rbp), %r11
	movl	-48(%rbp), %eax
	leal	-1(%rax), %r8d
	movl	-44(%rbp), %esi
	leal	-1(%rsi), %edi
	movl	%eax, %edx
	imull	%esi, %edx
	leaq	15(,%rdx,8), %rdx
	andq	%r14, %rdx
	movq	%rsp, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rdx
	leaq	-16(%rdx), %r9
	movq	%r9, %rsp
	movq	%rbx, -16(%rdx)
	movl	%eax, -8(%rdx)
	movl	%esi, -4(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_206
	jmp	.LBB0_210
	.p2align	4, 0x90
.LBB0_209:                              # %merge1112
                                        #   in Loop: Header=BB0_206 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_210
.LBB0_206:                              # %while_body1101
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_208 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edi, (%rdx)
	jg	.LBB0_209
	.p2align	4, 0x90
.LBB0_208:                              # %while_body1104
                                        #   Parent Loop BB0_206 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	imull	%esi, %ecx
	addl	(%rdx), %ecx
	movslq	%ecx, %rcx
	movq	$0, (%rbx,%rcx,8)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	.LBB0_208
	jmp	.LBB0_209
.LBB0_210:                              # %merge1117
	movq	(%r9), %rbx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	xorpd	%xmm0, %xmm0
	cmpl	%r8d, (%rax)
	jle	.LBB0_212
	jmp	.LBB0_216
	.p2align	4, 0x90
.LBB0_215:                              # %merge1142
                                        #   in Loop: Header=BB0_212 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_216
.LBB0_212:                              # %while_body1124
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_214 Depth 2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%edi, (%rdx)
	jg	.LBB0_215
	.p2align	4, 0x90
.LBB0_214:                              # %while_body1127
                                        #   Parent Loop BB0_212 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	imull	%esi, %ecx
	addl	(%rdx), %ecx
	movslq	%ecx, %rcx
	movsd	(%r11,%rcx,8), %xmm1    # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, (%rbx,%rcx,8)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	.LBB0_214
	jmp	.LBB0_215
.LBB0_216:                              # %merge1147
	movl	8(%r9), %r8d
	movl	12(%r9), %esi
	movl	%r8d, %eax
	imull	%esi, %eax
	leaq	15(,%rax,8), %rax
	andq	%r14, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movq	%rdi, -16(%rax)
	movl	%r8d, -8(%rax)
	movl	%esi, -4(%rax)
	decl	%r8d
	leal	-1(%rsi), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_218
	jmp	.LBB0_222
	.p2align	4, 0x90
.LBB0_221:                              # %merge1175
                                        #   in Loop: Header=BB0_218 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_222
.LBB0_218:                              # %while_body1164
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_220 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%edx, (%rcx)
	jg	.LBB0_221
	.p2align	4, 0x90
.LBB0_220:                              # %while_body1167
                                        #   Parent Loop BB0_218 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%esi, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rdi,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	.LBB0_220
	jmp	.LBB0_221
.LBB0_222:                              # %merge1180
	movq	(%r14), %r10
	movl	12(%r14), %r11d
	movq	(%r9), %r15
	movl	12(%r9), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%rcx)
	jle	.LBB0_224
	jmp	.LBB0_228
	.p2align	4, 0x90
.LBB0_227:                              # %merge1220
                                        #   in Loop: Header=BB0_224 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_228
.LBB0_224:                              # %while_body1199
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_226 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r9)
	cmpl	%edx, (%rsi)
	jg	.LBB0_227
	.p2align	4, 0x90
.LBB0_226:                              # %while_body1202
                                        #   Parent Loop BB0_224 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rcx), %ebx
	movl	%r11d, %eax
	imull	%ebx, %eax
	addl	%edi, %eax
	cltq
	imull	%r12d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r15,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rax,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	.LBB0_226
	jmp	.LBB0_227
.LBB0_228:                              # %merge1225
	movl	8(%r14), %eax
	cmpl	-48(%rbp), %eax
	jne	.LBB0_229
# BB#236:                               # %else1235
	movl	12(%r14), %eax
	cmpl	-44(%rbp), %eax
	je	.LBB0_230
.LBB0_229:                              # %then1233
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.6, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_230:                              # %merge1232
	movq	(%r14), %r11
	movl	8(%r14), %r8d
	decl	%r8d
	movl	12(%r14), %edx
	leal	-1(%rdx), %esi
	movq	-56(%rbp), %rdi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r9
	movq	%r9, %rsp
	movb	$1, -16(%rcx)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%rcx)
	jle	.LBB0_232
	jmp	.LBB0_239
	.p2align	4, 0x90
.LBB0_238:                              # %merge1281
                                        #   in Loop: Header=BB0_232 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_239
.LBB0_232:                              # %while_body1259
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_234 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rbx)
	jle	.LBB0_234
	jmp	.LBB0_238
	.p2align	4, 0x90
.LBB0_237:                              # %then1276
                                        #   in Loop: Header=BB0_234 Depth=2
	movb	$0, (%r9)
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jg	.LBB0_238
.LBB0_234:                              # %while_body1262
                                        #   Parent Loop BB0_232 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	imull	%edx, %eax
	addl	(%rbx), %eax
	cltq
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%rdi,%rax,8), %xmm0
	jne	.LBB0_237
# BB#235:                               # %merge1275
                                        #   in Loop: Header=BB0_234 Depth=2
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jle	.LBB0_234
	jmp	.LBB0_238
.LBB0_239:                              # %merge1286
	cmpb	$1, (%r9)
	je	.LBB0_249
# BB#240:                               # %then1291
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_241
.LBB0_249:                              # %else1293
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_241:                              # %merge1290
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
	movl	8(%r14), %eax
	cmpl	-48(%rbp), %eax
	jne	.LBB0_242
# BB#250:                               # %else1304
	movl	12(%r14), %eax
	cmpl	-44(%rbp), %eax
	je	.LBB0_243
.LBB0_242:                              # %then1302
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.6, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_243:                              # %merge1301
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	(%r14), %r15
	movl	8(%r14), %r9d
	decl	%r9d
	movl	12(%r14), %esi
	leal	-1(%rsi), %edi
	movq	-56(%rbp), %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %r10
	movq	%r10, %rsp
	movb	$1, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r9d, (%rdx)
	jle	.LBB0_245
	jmp	.LBB0_253
	.p2align	4, 0x90
.LBB0_252:                              # %merge1351
                                        #   in Loop: Header=BB0_245 Depth=1
	incl	(%rdx)
	cmpl	%r9d, (%rdx)
	jg	.LBB0_253
.LBB0_245:                              # %while_body1329
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_247 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r11)
	cmpl	%edi, (%rax)
	jle	.LBB0_247
	jmp	.LBB0_252
	.p2align	4, 0x90
.LBB0_251:                              # %then1346
                                        #   in Loop: Header=BB0_247 Depth=2
	movb	$0, (%r10)
	incl	(%rax)
	cmpl	%edi, (%rax)
	jg	.LBB0_252
.LBB0_247:                              # %while_body1332
                                        #   Parent Loop BB0_245 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %ecx
	imull	%esi, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	movsd	(%r15,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%rbx,%rcx,8), %xmm0
	jne	.LBB0_251
# BB#248:                               # %merge1345
                                        #   in Loop: Header=BB0_247 Depth=2
	incl	(%rax)
	cmpl	%edi, (%rax)
	jle	.LBB0_247
	jmp	.LBB0_252
.LBB0_253:                              # %merge1356
	cmpb	$1, (%r10)
	je	.LBB0_255
# BB#254:                               # %then1361
	movb	$1, (%r8)
	cmpb	$1, (%r8)
	je	.LBB0_259
.LBB0_257:                              # %then1366
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_258
.LBB0_255:                              # %else1362
	movb	$0, (%r8)
	cmpb	$1, (%r8)
	jne	.LBB0_257
.LBB0_259:                              # %else1368
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_258:                              # %merge1365
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
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
	.globl	int2double              # -- Begin function int2double
	.p2align	4, 0x90
	.type	int2double,@function
int2double:                             # @int2double
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Lcfi17:
	.cfi_def_cfa_offset 16
.Lcfi18:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movl	$8, %edi
	callq	malloc
	cvtsi2sdl	%ebx, %xmm0
	movsd	%xmm0, (%rax)
	popq	%rbx
	retq
.Lfunc_end3:
	.size	int2double, .Lfunc_end3-int2double
	.cfi_endproc
                                        # -- End function
	.globl	double2int              # -- Begin function double2int
	.p2align	4, 0x90
	.type	double2int,@function
double2int:                             # @double2int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi19:
	.cfi_def_cfa_offset 16
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movl	$4, %edi
	callq	malloc
	cvttsd2si	(%rsp), %ecx    # 8-byte Folded Reload
	movl	%ecx, (%rax)
	popq	%rcx
	retq
.Lfunc_end4:
	.size	double2int, .Lfunc_end4-double2int
	.cfi_endproc
                                        # -- End function
	.globl	bitwise                 # -- Begin function bitwise
	.p2align	4, 0x90
	.type	bitwise,@function
bitwise:                                # @bitwise
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi20:
	.cfi_def_cfa_offset 16
.Lcfi21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi22:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
.Lcfi23:
	.cfi_offset %rbx, -56
.Lcfi24:
	.cfi_offset %r12, -48
.Lcfi25:
	.cfi_offset %r13, -40
.Lcfi26:
	.cfi_offset %r14, -32
.Lcfi27:
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
	movq	%rax, -80(%rbp)
	movl	%r9d, -72(%rbp)
	movl	%r11d, -68(%rbp)
	decl	%r9d
	leal	-1(%r11), %edx
	movl	$0, -44(%rbp)
	cmpl	%r9d, -44(%rbp)
	jle	.LBB5_2
	jmp	.LBB5_6
	.p2align	4, 0x90
.LBB5_5:                                # %merge
                                        #   in Loop: Header=BB5_2 Depth=1
	incl	-44(%rbp)
	cmpl	%r9d, -44(%rbp)
	jg	.LBB5_6
.LBB5_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edx, (%rcx)
	jg	.LBB5_5
	.p2align	4, 0x90
.LBB5_4:                                # %while_body5
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %ebx
	imull	%r11d, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rax,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	.LBB5_4
	jmp	.LBB5_5
.LBB5_6:                                # %merge12
	movq	-80(%rbp), %r10
	movl	-68(%rbp), %r11d
	movq	(%rdi), %r15
	movl	12(%rdi), %r12d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r9d, (%r13)
	jle	.LBB5_8
	jmp	.LBB5_12
	.p2align	4, 0x90
.LBB5_11:                               # %merge47
                                        #   in Loop: Header=BB5_8 Depth=1
	incl	(%r13)
	cmpl	%r9d, (%r13)
	jg	.LBB5_12
.LBB5_8:                                # %while_body27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_10 Depth 2
	movq	%rsp, %r14
	leaq	-16(%r14), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r14)
	cmpl	%edx, (%rcx)
	jg	.LBB5_11
	.p2align	4, 0x90
.LBB5_10:                               # %while_body30
                                        #   Parent Loop BB5_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	movl	(%r13), %edi
	movl	%r11d, %ebx
	imull	%edi, %ebx
	addl	%eax, %ebx
	movslq	%ebx, %rbx
	imull	%r12d, %edi
	addl	%eax, %edi
	movslq	%edi, %rax
	movsd	(%r15,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	.LBB5_10
	jmp	.LBB5_11
.LBB5_12:                               # %merge52
	movl	8(%rsi), %r9d
	movl	12(%rsi), %r10d
	movl	%r9d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rax
	andq	%r8, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rdi, -16(%rax)
	movl	%r9d, -8(%rax)
	movl	%r10d, -4(%rax)
	decl	%r9d
	leal	-1(%r10), %ecx
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r9d, (%rax)
	jle	.LBB5_14
	jmp	.LBB5_18
	.p2align	4, 0x90
.LBB5_17:                               # %merge80
                                        #   in Loop: Header=BB5_14 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	.LBB5_18
.LBB5_14:                               # %while_body69
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_16 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r8)
	cmpl	%ecx, (%rbx)
	jg	.LBB5_17
	.p2align	4, 0x90
.LBB5_16:                               # %while_body72
                                        #   Parent Loop BB5_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rdi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB5_16
	jmp	.LBB5_17
.LBB5_18:                               # %merge85
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r8
	movl	12(%rax), %r11d
	movq	(%rsi), %r14
	movl	12(%rsi), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r9d, (%rax)
	jle	.LBB5_20
	jmp	.LBB5_24
	.p2align	4, 0x90
.LBB5_23:                               # %merge125
                                        #   in Loop: Header=BB5_20 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	.LBB5_24
.LBB5_20:                               # %while_body104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_22 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB5_23
	.p2align	4, 0x90
.LBB5_22:                               # %while_body107
                                        #   Parent Loop BB5_20 Depth=1
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
	movsd	(%r14,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r8,%rsi,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	.LBB5_22
	jmp	.LBB5_23
.LBB5_24:                               # %merge130
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movq	$0, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rax)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rcx)
	movl	$0, -16(%rax)
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	movq	%r13, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	cmpl	$2, (%r13)
	jle	.LBB5_26
	jmp	.LBB5_47
	.p2align	4, 0x90
.LBB5_46:                               # %merge266
                                        #   in Loop: Header=BB5_26 Depth=1
	incl	(%r13)
	cmpl	$2, (%r13)
	jg	.LBB5_47
.LBB5_26:                               # %while_body142
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_28 Depth 2
	movl	$0, (%rdx)
	cmpl	$2, (%rdx)
	jle	.LBB5_28
	jmp	.LBB5_46
	.p2align	4, 0x90
.LBB5_44:                               # %merge249
                                        #   in Loop: Header=BB5_28 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	imull	%r14d, %r15d
	addl	%r15d, %r13d
	movslq	%r13d, %rcx
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	(%rax,%rcx,8), %xmm1
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movsd	%xmm0, (%rbx)
	movq	-56(%rbp), %rdx         # 8-byte Reload
	incl	(%rdx)
	movq	-88(%rbp), %r13         # 8-byte Reload
	cmpl	$2, (%rdx)
	jg	.LBB5_46
.LBB5_28:                               # %while_body147
                                        #   Parent Loop BB5_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movl	-72(%rbp), %r15d
	movl	-68(%rbp), %r12d
	movl	(%r13), %r14d
	testl	%r14d, %r14d
	jns	.LBB5_29
# BB#48:                                # %then
                                        #   in Loop: Header=BB5_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB5_29:                               # %merge154
                                        #   in Loop: Header=BB5_28 Depth=2
	decl	%r15d
	cmpl	%r14d, %r15d
	jge	.LBB5_30
# BB#49:                                # %then158
                                        #   in Loop: Header=BB5_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB5_30:                               # %merge157
                                        #   in Loop: Header=BB5_28 Depth=2
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB5_31
# BB#50:                                # %then164
                                        #   in Loop: Header=BB5_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB5_31:                               # %merge163
                                        #   in Loop: Header=BB5_28 Depth=2
	cmpl	%ebx, %r15d
	jge	.LBB5_32
# BB#51:                                # %then170
                                        #   in Loop: Header=BB5_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB5_32:                               # %merge169
                                        #   in Loop: Header=BB5_28 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r15d
	testl	%r15d, %r15d
	jns	.LBB5_33
# BB#52:                                # %then176
                                        #   in Loop: Header=BB5_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB5_33:                               # %merge175
                                        #   in Loop: Header=BB5_28 Depth=2
	leal	-1(%r12), %ebx
	cmpl	%r15d, %ebx
	jge	.LBB5_34
# BB#53:                                # %then182
                                        #   in Loop: Header=BB5_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB5_34:                               # %merge181
                                        #   in Loop: Header=BB5_28 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	jns	.LBB5_35
# BB#54:                                # %then188
                                        #   in Loop: Header=BB5_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB5_35:                               # %merge187
                                        #   in Loop: Header=BB5_28 Depth=2
	cmpl	%r13d, %ebx
	jge	.LBB5_36
# BB#55:                                # %then194
                                        #   in Loop: Header=BB5_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB5_36:                               # %merge193
                                        #   in Loop: Header=BB5_28 Depth=2
	movq	-80(%rbp), %rax
	imull	%r14d, %r12d
	addl	%r12d, %r15d
	movslq	%r15d, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %r12d
	movl	12(%rax), %r15d
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx), %r14d
	testl	%r14d, %r14d
	jns	.LBB5_37
# BB#56:                                # %then208
                                        #   in Loop: Header=BB5_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB5_37:                               # %merge207
                                        #   in Loop: Header=BB5_28 Depth=2
	decl	%r12d
	cmpl	%r14d, %r12d
	jge	.LBB5_38
# BB#57:                                # %then214
                                        #   in Loop: Header=BB5_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB5_38:                               # %merge213
                                        #   in Loop: Header=BB5_28 Depth=2
	movl	(%rbx), %ebx
	testl	%ebx, %ebx
	jns	.LBB5_39
# BB#58:                                # %then220
                                        #   in Loop: Header=BB5_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB5_39:                               # %merge219
                                        #   in Loop: Header=BB5_28 Depth=2
	cmpl	%ebx, %r12d
	jge	.LBB5_40
# BB#59:                                # %then226
                                        #   in Loop: Header=BB5_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB5_40:                               # %merge225
                                        #   in Loop: Header=BB5_28 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	jns	.LBB5_41
# BB#60:                                # %then232
                                        #   in Loop: Header=BB5_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB5_41:                               # %merge231
                                        #   in Loop: Header=BB5_28 Depth=2
	leal	-1(%r15), %r12d
	cmpl	%r13d, %r12d
	jge	.LBB5_42
# BB#61:                                # %then238
                                        #   in Loop: Header=BB5_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB5_42:                               # %merge237
                                        #   in Loop: Header=BB5_28 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ebx
	testl	%ebx, %ebx
	jns	.LBB5_43
# BB#62:                                # %then244
                                        #   in Loop: Header=BB5_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB5_43:                               # %merge243
                                        #   in Loop: Header=BB5_28 Depth=2
	cmpl	%ebx, %r12d
	jge	.LBB5_44
# BB#45:                                # %then250
                                        #   in Loop: Header=BB5_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	jmp	.LBB5_44
.LBB5_47:                               # %merge272
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
.Lfunc_end5:
	.size	bitwise, .Lfunc_end5-bitwise
	.cfi_endproc
                                        # -- End function
	.globl	filter                  # -- Begin function filter
	.p2align	4, 0x90
	.type	filter,@function
filter:                                 # @filter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi28:
	.cfi_def_cfa_offset 16
.Lcfi29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi30:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
.Lcfi31:
	.cfi_offset %rbx, -56
.Lcfi32:
	.cfi_offset %r12, -48
.Lcfi33:
	.cfi_offset %r13, -40
.Lcfi34:
	.cfi_offset %r14, -32
.Lcfi35:
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
	movq	%rax, -104(%rbp)
	movl	%r8d, -96(%rbp)
	movl	%r10d, -92(%rbp)
	decl	%r8d
	leal	-1(%r10), %ecx
	movl	$0, -52(%rbp)
	cmpl	%r8d, -52(%rbp)
	jle	.LBB6_2
	jmp	.LBB6_6
	.p2align	4, 0x90
.LBB6_5:                                # %merge
                                        #   in Loop: Header=BB6_2 Depth=1
	incl	-52(%rbp)
	cmpl	%r8d, -52(%rbp)
	jg	.LBB6_6
.LBB6_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_4 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB6_5
	.p2align	4, 0x90
.LBB6_4:                                # %while_body5
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rax,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB6_4
	jmp	.LBB6_5
.LBB6_6:                                # %merge12
	movq	-104(%rbp), %r9
	movl	-92(%rbp), %r10d
	movq	(%rdi), %r14
	movl	12(%rdi), %r15d
	movq	%rsp, %rbx
	leaq	-16(%rbx), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%r12)
	jle	.LBB6_8
	jmp	.LBB6_12
	.p2align	4, 0x90
.LBB6_11:                               # %merge47
                                        #   in Loop: Header=BB6_8 Depth=1
	incl	(%r12)
	cmpl	%r8d, (%r12)
	jg	.LBB6_12
.LBB6_8:                                # %while_body27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_10 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rbx)
	jg	.LBB6_11
	.p2align	4, 0x90
.LBB6_10:                               # %while_body30
                                        #   Parent Loop BB6_8 Depth=1
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
	movsd	(%r14,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB6_10
	jmp	.LBB6_11
.LBB6_12:                               # %merge52
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
	leaq	-16(%rax), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rsp
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
	jle	.LBB6_14
	jmp	.LBB6_18
	.p2align	4, 0x90
.LBB6_17:                               # %merge80
                                        #   in Loop: Header=BB6_14 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB6_18
.LBB6_14:                               # %while_body69
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_16 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB6_17
	.p2align	4, 0x90
.LBB6_16:                               # %while_body72
                                        #   Parent Loop BB6_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rdi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB6_16
	jmp	.LBB6_17
.LBB6_18:                               # %merge85
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r11d
	movq	(%rsi), %r14
	movl	12(%rsi), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB6_20
	jmp	.LBB6_24
	.p2align	4, 0x90
.LBB6_23:                               # %merge125
                                        #   in Loop: Header=BB6_20 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB6_24
.LBB6_20:                               # %while_body104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_22 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB6_23
	.p2align	4, 0x90
.LBB6_22:                               # %while_body107
                                        #   Parent Loop BB6_20 Depth=1
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
	movsd	(%r14,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rsi,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	.LBB6_22
	jmp	.LBB6_23
.LBB6_24:                               # %merge130
	movq	%rsp, %r14
	leaq	-16(%r14), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movl	$0, -16(%r14)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movl	$0, -16(%rbx)
	leaq	-104(%rbp), %rdi
	callq	size
	movl	(%rax), %ecx
	movl	%ecx, -16(%r14)
	movl	4(%rax), %ecx
	movl	%ecx, -16(%rbx)
	movq	%rax, %rdi
	callq	free
	movl	-16(%rbx), %esi
	addl	$2, %esi
	movl	-16(%r14), %edi
	addl	$2, %edi
	callq	zeros
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
	jle	.LBB6_26
	jmp	.LBB6_30
	.p2align	4, 0x90
.LBB6_29:                               # %merge172
                                        #   in Loop: Header=BB6_26 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB6_30
.LBB6_26:                               # %while_body161
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_28 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB6_29
	.p2align	4, 0x90
.LBB6_28:                               # %while_body164
                                        #   Parent Loop BB6_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB6_28
	jmp	.LBB6_29
.LBB6_30:                               # %merge177
	movq	(%r11), %r9
	movq	%r11, -48(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r14), %r12
	movl	12(%r14), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r15
	movq	%r15, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r15)
	jle	.LBB6_32
	jmp	.LBB6_36
	.p2align	4, 0x90
.LBB6_35:                               # %merge217
                                        #   in Loop: Header=BB6_32 Depth=1
	incl	(%r15)
	cmpl	%r8d, (%r15)
	jg	.LBB6_36
.LBB6_32:                               # %while_body196
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_34 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB6_35
	.p2align	4, 0x90
.LBB6_34:                               # %while_body199
                                        #   Parent Loop BB6_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %ebx
	movl	(%r15), %eax
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
	jle	.LBB6_34
	jmp	.LBB6_35
.LBB6_36:                               # %merge222
	callq	free
	movq	%r14, %rdi
	callq	free
	movq	-48(%rbp), %r10         # 8-byte Reload
	movl	8(%r10), %r8d
	movl	12(%r10), %edx
	movl	%r8d, %eax
	imull	%edx, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
	andq	%rcx, %rax
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
	jle	.LBB6_38
	jmp	.LBB6_42
	.p2align	4, 0x90
.LBB6_41:                               # %merge250
                                        #   in Loop: Header=BB6_38 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB6_42
.LBB6_38:                               # %while_body239
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_40 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB6_41
	.p2align	4, 0x90
.LBB6_40:                               # %while_body242
                                        #   Parent Loop BB6_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB6_40
	jmp	.LBB6_41
.LBB6_42:                               # %merge255
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
	jle	.LBB6_44
	jmp	.LBB6_48
	.p2align	4, 0x90
.LBB6_47:                               # %merge295
                                        #   in Loop: Header=BB6_44 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB6_48
.LBB6_44:                               # %while_body274
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_46 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB6_47
	.p2align	4, 0x90
.LBB6_46:                               # %while_body277
                                        #   Parent Loop BB6_44 Depth=1
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
	jle	.LBB6_46
	jmp	.LBB6_47
.LBB6_48:                               # %merge300
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %esi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %edi
	callq	zeros
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
	jle	.LBB6_50
	jmp	.LBB6_54
	.p2align	4, 0x90
.LBB6_53:                               # %merge335
                                        #   in Loop: Header=BB6_50 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB6_54
.LBB6_50:                               # %while_body324
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_52 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB6_53
	.p2align	4, 0x90
.LBB6_52:                               # %while_body327
                                        #   Parent Loop BB6_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB6_52
	jmp	.LBB6_53
.LBB6_54:                               # %merge340
	movq	(%r11), %r9
	movq	%r11, -48(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r14), %r12
	movl	12(%r14), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r15
	movq	%r15, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r15)
	jle	.LBB6_56
	jmp	.LBB6_60
	.p2align	4, 0x90
.LBB6_59:                               # %merge380
                                        #   in Loop: Header=BB6_56 Depth=1
	incl	(%r15)
	cmpl	%r8d, (%r15)
	jg	.LBB6_60
.LBB6_56:                               # %while_body359
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_58 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB6_59
	.p2align	4, 0x90
.LBB6_58:                               # %while_body362
                                        #   Parent Loop BB6_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %ebx
	movl	(%r15), %eax
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
	jle	.LBB6_58
	jmp	.LBB6_59
.LBB6_60:                               # %merge385
	callq	free
	movq	%r14, %rdi
	callq	free
	movq	-48(%rbp), %r10         # 8-byte Reload
	movl	8(%r10), %r8d
	movl	12(%r10), %edx
	movl	%r8d, %eax
	imull	%edx, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
	andq	%rcx, %rax
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
	jle	.LBB6_62
	jmp	.LBB6_66
	.p2align	4, 0x90
.LBB6_65:                               # %merge413
                                        #   in Loop: Header=BB6_62 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB6_66
.LBB6_62:                               # %while_body402
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_64 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB6_65
	.p2align	4, 0x90
.LBB6_64:                               # %while_body405
                                        #   Parent Loop BB6_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB6_64
	jmp	.LBB6_65
.LBB6_66:                               # %merge418
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
	jle	.LBB6_68
	jmp	.LBB6_72
	.p2align	4, 0x90
.LBB6_71:                               # %merge458
                                        #   in Loop: Header=BB6_68 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB6_72
.LBB6_68:                               # %while_body437
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_70 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB6_71
	.p2align	4, 0x90
.LBB6_70:                               # %while_body440
                                        #   Parent Loop BB6_68 Depth=1
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
	jle	.LBB6_70
	jmp	.LBB6_71
.LBB6_72:                               # %merge470
	movl	-96(%rbp), %ebx
	movl	-92(%rbp), %r14d
	decl	%ebx
	jns	.LBB6_73
# BB#154:                               # %then473
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_73:                               # %merge472
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r15d
	decl	%r15d
	js	.LBB6_155
# BB#74:                                # %merge479
	cmpl	%r15d, %ebx
	jl	.LBB6_75
.LBB6_76:                               # %merge490
	decl	%r14d
	js	.LBB6_156
.LBB6_77:                               # %merge495
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r12d
	decl	%r12d
	jns	.LBB6_78
# BB#157:                               # %then503
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_78:                               # %merge502
	cmpl	%r12d, %r14d
	jge	.LBB6_79
# BB#158:                               # %then509
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_79:                               # %merge508
	leal	1(%r12), %eax
	leal	1(%r15), %edx
	movl	%edx, %ecx
	imull	%eax, %ecx
	leaq	15(,%rcx,8), %rsi
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
	andq	%rcx, %rsi
	movq	%rsp, %rcx
	subq	%rsi, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movq	%rcx, -16(%rsi)
	movl	%edx, -8(%rsi)
	movl	%eax, -4(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r15d, (%rdx)
	jle	.LBB6_81
	jmp	.LBB6_85
	.p2align	4, 0x90
.LBB6_84:                               # %merge538
                                        #   in Loop: Header=BB6_81 Depth=1
	incl	(%rdx)
	cmpl	%r15d, (%rdx)
	jg	.LBB6_85
.LBB6_81:                               # %while_body527
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_83 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%r12d, (%rsi)
	jg	.LBB6_84
	.p2align	4, 0x90
.LBB6_83:                               # %while_body530
                                        #   Parent Loop BB6_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	imull	%eax, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rcx,%rdi,8)
	incl	(%rsi)
	cmpl	%r12d, (%rsi)
	jle	.LBB6_83
	jmp	.LBB6_84
.LBB6_85:                               # %merge543
	movq	(%r14), %r9
	movl	12(%r14), %r10d
	movq	-104(%rbp), %r11
	movl	-92(%rbp), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r15d, (%rdi)
	jle	.LBB6_87
	jmp	.LBB6_91
	.p2align	4, 0x90
.LBB6_90:                               # %merge581
                                        #   in Loop: Header=BB6_87 Depth=1
	incl	(%rdi)
	cmpl	%r15d, (%rdi)
	jg	.LBB6_91
.LBB6_87:                               # %while_body560
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_89 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r8)
	cmpl	%r12d, (%rbx)
	jg	.LBB6_90
	.p2align	4, 0x90
.LBB6_89:                               # %while_body563
                                        #   Parent Loop BB6_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	movl	(%rdi), %ecx
	movl	%r10d, %edx
	imull	%ecx, %edx
	addl	%eax, %edx
	movslq	%edx, %rdx
	imull	%esi, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	%r12d, (%rbx)
	jle	.LBB6_89
	jmp	.LBB6_90
.LBB6_91:                               # %merge593
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %r12d
	decl	%ebx
	testl	%ebx, %ebx
	jg	.LBB6_92
# BB#159:                               # %then599
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_92:                               # %merge598
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r15d
	testl	%r15d, %r15d
	jns	.LBB6_93
# BB#160:                               # %then605
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_93:                               # %merge604
	cmpl	%r15d, %ebx
	jge	.LBB6_95
# BB#94:                                # %then611
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_95:                               # %merge615
	decl	%r12d
	testl	%r12d, %r12d
	jg	.LBB6_96
# BB#161:                               # %then621
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_96:                               # %merge620
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	js	.LBB6_162
# BB#97:                                # %merge626
	cmpl	%r13d, %r12d
	jl	.LBB6_163
.LBB6_98:                               # %merge632
	cmpl	8(%r14), %r15d
	jne	.LBB6_164
.LBB6_99:                               # %merge641
	cmpl	12(%r14), %r13d
	je	.LBB6_100
.LBB6_165:                              # %then651
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_100:                              # %merge650
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r10d
	movq	(%r14), %r11
	movl	12(%r14), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$1, -16(%rbx)
	cmpl	%r15d, (%rdi)
	jle	.LBB6_102
	jmp	.LBB6_106
	.p2align	4, 0x90
.LBB6_105:                              # %merge690
                                        #   in Loop: Header=BB6_102 Depth=1
	incl	(%rdi)
	cmpl	%r15d, (%rdi)
	jg	.LBB6_106
.LBB6_102:                              # %while_body669
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_104 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	$1, -16(%r8)
	cmpl	%r13d, (%rbx)
	jg	.LBB6_105
	.p2align	4, 0x90
.LBB6_104:                              # %while_body672
                                        #   Parent Loop BB6_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	movl	(%rdi), %ecx
	movl	%r10d, %edx
	imull	%ecx, %edx
	addl	%eax, %edx
	movslq	%edx, %rdx
	decl	%ecx
	imull	%esi, %ecx
	leal	-1(%rax,%rcx), %eax
	cltq
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	%r13d, (%rbx)
	jle	.LBB6_104
	jmp	.LBB6_105
.LBB6_106:                              # %merge695
	movq	%rsp, %rax
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rax)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rcx)
	movl	$0, -16(%rax)
	movq	%r13, -136(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB6_107
	.p2align	4, 0x90
.LBB6_140:                              # %merge908
                                        #   in Loop: Header=BB6_107 Depth=1
	incl	(%r13)
.LBB6_107:                              # %while706
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_109 Depth 2
                                        #       Child Loop BB6_120 Depth 3
                                        #         Child Loop BB6_122 Depth 4
                                        #       Child Loop BB6_126 Depth 3
                                        #         Child Loop BB6_128 Depth 4
	movl	(%r13), %eax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpl	(%rcx), %eax
	jge	.LBB6_141
# BB#108:                               # %while_body707
                                        #   in Loop: Header=BB6_107 Depth=1
	movl	$0, (%rdx)
	jmp	.LBB6_109
	.p2align	4, 0x90
.LBB6_138:                              # %merge896
                                        #   in Loop: Header=BB6_109 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	imull	%r14d, %r15d
	addl	%r15d, %r13d
	movslq	%r13d, %rcx
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-112(%rbp), %rdx        # 8-byte Reload
	incl	(%rdx)
	movq	-136(%rbp), %r13        # 8-byte Reload
.LBB6_109:                              # %while712
                                        #   Parent Loop BB6_107 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_120 Depth 3
                                        #         Child Loop BB6_122 Depth 4
                                        #       Child Loop BB6_126 Depth 3
                                        #         Child Loop BB6_128 Depth 4
	movl	(%rdx), %eax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpl	(%rcx), %eax
	jge	.LBB6_140
# BB#110:                               # %while_body713
                                        #   in Loop: Header=BB6_109 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rsp
	movq	$0, -16(%rax)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	(%r13), %r14d
	testl	%r14d, %r14d
	jns	.LBB6_111
# BB#166:                               # %then721
                                        #   in Loop: Header=BB6_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_111:                              # %merge720
                                        #   in Loop: Header=BB6_109 Depth=2
	decl	%ebx
	cmpl	%r14d, %ebx
	jge	.LBB6_112
# BB#167:                               # %then727
                                        #   in Loop: Header=BB6_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_112:                              # %merge726
                                        #   in Loop: Header=BB6_109 Depth=2
	movl	(%r13), %r9d
	addl	$2, %r9d
	movq	%r9, -48(%rbp)          # 8-byte Spill
	jns	.LBB6_113
# BB#168:                               # %then734
                                        #   in Loop: Header=BB6_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %r9          # 8-byte Reload
.LBB6_113:                              # %merge733
                                        #   in Loop: Header=BB6_109 Depth=2
	cmpl	%r9d, %ebx
	jge	.LBB6_114
# BB#169:                               # %then740
                                        #   in Loop: Header=BB6_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %r9          # 8-byte Reload
.LBB6_114:                              # %merge739
                                        #   in Loop: Header=BB6_109 Depth=2
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movl	(%rbx), %r15d
	testl	%r15d, %r15d
	jns	.LBB6_115
# BB#170:                               # %then746
                                        #   in Loop: Header=BB6_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %r9          # 8-byte Reload
.LBB6_115:                              # %merge745
                                        #   in Loop: Header=BB6_109 Depth=2
	movl	-116(%rbp), %eax        # 4-byte Reload
	decl	%eax
	movl	%eax, %r12d
	cmpl	%r15d, %eax
	jge	.LBB6_116
# BB#171:                               # %then752
                                        #   in Loop: Header=BB6_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %r9          # 8-byte Reload
.LBB6_116:                              # %merge751
                                        #   in Loop: Header=BB6_109 Depth=2
	movl	(%rbx), %r13d
	addl	$2, %r13d
	jns	.LBB6_117
# BB#172:                               # %then759
                                        #   in Loop: Header=BB6_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %r9          # 8-byte Reload
.LBB6_117:                              # %merge758
                                        #   in Loop: Header=BB6_109 Depth=2
	cmpl	%r13d, %r12d
	jge	.LBB6_118
# BB#173:                               # %then765
                                        #   in Loop: Header=BB6_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %r9          # 8-byte Reload
.LBB6_118:                              # %merge764
                                        #   in Loop: Header=BB6_109 Depth=2
	subl	%r14d, %r9d
	subl	%r15d, %r13d
	leal	1(%r13), %eax
	leal	1(%r9), %edx
	movl	%edx, %ecx
	imull	%eax, %ecx
	leaq	15(,%rcx,8), %rsi
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
	andq	%rcx, %rsi
	movq	%rsp, %rcx
	subq	%rsi, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movq	%rcx, -16(%rsi)
	movl	%edx, -8(%rsi)
	movl	%eax, -4(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r9d, (%rdx)
	jle	.LBB6_120
	jmp	.LBB6_124
	.p2align	4, 0x90
.LBB6_123:                              # %merge794
                                        #   in Loop: Header=BB6_120 Depth=3
	incl	(%rdx)
	cmpl	%r9d, (%rdx)
	jg	.LBB6_124
.LBB6_120:                              # %while_body783
                                        #   Parent Loop BB6_107 Depth=1
                                        #     Parent Loop BB6_109 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_122 Depth 4
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r13d, (%rsi)
	jg	.LBB6_123
	.p2align	4, 0x90
.LBB6_122:                              # %while_body786
                                        #   Parent Loop BB6_107 Depth=1
                                        #     Parent Loop BB6_109 Depth=2
                                        #       Parent Loop BB6_120 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%rdx), %ebx
	imull	%eax, %ebx
	addl	(%rsi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rcx,%rbx,8)
	incl	(%rsi)
	cmpl	%r13d, (%rsi)
	jle	.LBB6_122
	jmp	.LBB6_123
	.p2align	4, 0x90
.LBB6_124:                              # %merge799
                                        #   in Loop: Header=BB6_109 Depth=2
	movq	(%rdi), %r8
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	12(%rdi), %r10d
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r11
	movl	12(%rax), %r12d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r9d, (%rbx)
	jle	.LBB6_126
	jmp	.LBB6_130
	.p2align	4, 0x90
.LBB6_129:                              # %merge837
                                        #   in Loop: Header=BB6_126 Depth=3
	incl	(%rbx)
	movq	%rdi, %r9
	cmpl	%r9d, (%rbx)
	jg	.LBB6_130
.LBB6_126:                              # %while_body816
                                        #   Parent Loop BB6_107 Depth=1
                                        #     Parent Loop BB6_109 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_128 Depth 4
	movq	%r9, %rdi
	movq	%rsp, %r9
	leaq	-16(%r9), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r9)
	cmpl	%r13d, (%rax)
	jg	.LBB6_129
	.p2align	4, 0x90
.LBB6_128:                              # %while_body819
                                        #   Parent Loop BB6_107 Depth=1
                                        #     Parent Loop BB6_109 Depth=2
                                        #       Parent Loop BB6_126 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%rax), %ecx
	movl	(%rbx), %edx
	movl	%r10d, %esi
	imull	%edx, %esi
	addl	%ecx, %esi
	movslq	%esi, %rsi
	addl	%r15d, %ecx
	addl	%r14d, %edx
	imull	%r12d, %edx
	addl	%ecx, %edx
	movslq	%edx, %rcx
	movsd	(%r11,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r8,%rsi,8)
	incl	(%rax)
	cmpl	%r13d, (%rax)
	jle	.LBB6_128
	jmp	.LBB6_129
	.p2align	4, 0x90
.LBB6_130:                              # %merge842
                                        #   in Loop: Header=BB6_109 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	callq	bitwise
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	free
	movq	-144(%rbp), %rax        # 8-byte Reload
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %r12d
	movl	12(%rax), %r15d
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movl	(%rbx), %r14d
	testl	%r14d, %r14d
	jns	.LBB6_131
# BB#174:                               # %then855
                                        #   in Loop: Header=BB6_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_131:                              # %merge854
                                        #   in Loop: Header=BB6_109 Depth=2
	decl	%r12d
	cmpl	%r14d, %r12d
	jge	.LBB6_132
# BB#175:                               # %then861
                                        #   in Loop: Header=BB6_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_132:                              # %merge860
                                        #   in Loop: Header=BB6_109 Depth=2
	movl	(%rbx), %ebx
	testl	%ebx, %ebx
	jns	.LBB6_133
# BB#176:                               # %then867
                                        #   in Loop: Header=BB6_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_133:                              # %merge866
                                        #   in Loop: Header=BB6_109 Depth=2
	cmpl	%ebx, %r12d
	jge	.LBB6_134
# BB#177:                               # %then873
                                        #   in Loop: Header=BB6_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_134:                              # %merge872
                                        #   in Loop: Header=BB6_109 Depth=2
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movl	(%rbx), %r13d
	testl	%r13d, %r13d
	jns	.LBB6_135
# BB#178:                               # %then879
                                        #   in Loop: Header=BB6_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_135:                              # %merge878
                                        #   in Loop: Header=BB6_109 Depth=2
	leal	-1(%r15), %r12d
	cmpl	%r13d, %r12d
	jge	.LBB6_136
# BB#179:                               # %then885
                                        #   in Loop: Header=BB6_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_136:                              # %merge884
                                        #   in Loop: Header=BB6_109 Depth=2
	movl	(%rbx), %ebx
	testl	%ebx, %ebx
	jns	.LBB6_137
# BB#180:                               # %then891
                                        #   in Loop: Header=BB6_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_137:                              # %merge890
                                        #   in Loop: Header=BB6_109 Depth=2
	cmpl	%ebx, %r12d
	jge	.LBB6_138
# BB#139:                               # %then897
                                        #   in Loop: Header=BB6_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	jmp	.LBB6_138
.LBB6_141:                              # %merge915
	movl	$8, %edi
	callq	malloc
	movq	%rax, %r15
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %r14d
	movl	12(%rax), %r12d
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
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r14d, (%rdx)
	jle	.LBB6_143
	jmp	.LBB6_147
	.p2align	4, 0x90
.LBB6_146:                              # %merge946
                                        #   in Loop: Header=BB6_143 Depth=1
	incl	(%rdx)
	cmpl	%r14d, (%rdx)
	jg	.LBB6_147
.LBB6_143:                              # %while_body935
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_145 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%ecx, (%rsi)
	jg	.LBB6_146
	.p2align	4, 0x90
.LBB6_145:                              # %while_body938
                                        #   Parent Loop BB6_143 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	imull	%r12d, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rbx,%rdi,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB6_145
	jmp	.LBB6_146
.LBB6_147:                              # %merge951
	movq	(%rax), %r8
	movl	12(%rax), %r9d
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %r11
	movl	12(%rdx), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r14d, (%r13)
	jle	.LBB6_149
	jmp	.LBB6_153
	.p2align	4, 0x90
.LBB6_152:                              # %merge991
                                        #   in Loop: Header=BB6_149 Depth=1
	incl	(%r13)
	cmpl	%r14d, (%r13)
	jg	.LBB6_153
.LBB6_149:                              # %while_body970
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_151 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rsi)
	jg	.LBB6_152
	.p2align	4, 0x90
.LBB6_151:                              # %while_body973
                                        #   Parent Loop BB6_149 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%r13), %ebx
	movl	%r9d, %edx
	imull	%ebx, %edx
	addl	%edi, %edx
	movslq	%edx, %rdx
	imull	%r12d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r11,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r8,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB6_151
	jmp	.LBB6_152
.LBB6_153:                              # %merge996
	movq	%rax, (%r15)
	movq	%r15, %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_155:                              # %then480
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	cmpl	%r15d, %ebx
	jge	.LBB6_76
.LBB6_75:                               # %then486
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	decl	%r14d
	jns	.LBB6_77
.LBB6_156:                              # %then496
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	jmp	.LBB6_77
.LBB6_162:                              # %then627
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	cmpl	%r13d, %r12d
	jge	.LBB6_98
.LBB6_163:                              # %then633
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	cmpl	8(%r14), %r15d
	je	.LBB6_99
.LBB6_164:                              # %then642
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	cmpl	12(%r14), %r13d
	jne	.LBB6_165
	jmp	.LBB6_100
.Lfunc_end6:
	.size	filter, .Lfunc_end6-filter
	.cfi_endproc
                                        # -- End function
	.globl	f                       # -- Begin function f
	.p2align	4, 0x90
	.type	f,@function
f:                                      # @f
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi36:
	.cfi_def_cfa_offset 16
.Lcfi37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi38:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
.Lcfi39:
	.cfi_offset %rbx, -56
.Lcfi40:
	.cfi_offset %r12, -48
.Lcfi41:
	.cfi_offset %r13, -40
.Lcfi42:
	.cfi_offset %r14, -32
.Lcfi43:
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
	jle	.LBB7_2
	jmp	.LBB7_6
	.p2align	4, 0x90
.LBB7_5:                                # %merge
                                        #   in Loop: Header=BB7_2 Depth=1
	incl	-44(%rbp)
	cmpl	%r8d, -44(%rbp)
	jg	.LBB7_6
.LBB7_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rax)
	jg	.LBB7_5
	.p2align	4, 0x90
.LBB7_4:                                # %while_body5
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %ebx
	imull	%edx, %ebx
	addl	(%rax), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rax)
	cmpl	%ecx, (%rax)
	jle	.LBB7_4
	jmp	.LBB7_5
.LBB7_6:                                # %merge12
	movq	-64(%rbp), %r9
	movl	-52(%rbp), %r11d
	movq	(%rdi), %r14
	movl	12(%rdi), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB7_8
	jmp	.LBB7_12
	.p2align	4, 0x90
.LBB7_11:                               # %merge47
                                        #   in Loop: Header=BB7_8 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB7_12
.LBB7_8:                                # %while_body27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_10 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB7_11
	.p2align	4, 0x90
.LBB7_10:                               # %while_body30
                                        #   Parent Loop BB7_8 Depth=1
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
	jle	.LBB7_10
	jmp	.LBB7_11
.LBB7_12:                               # %merge52
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
	jmp	.LBB7_13
	.p2align	4, 0x90
.LBB7_17:                               # %merge78
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%rbx)
.LBB7_13:                               # %while64
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
	movl	-68(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rbx)
	jg	.LBB7_18
# BB#14:                                # %while_body65
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	cmpl	%r13d, (%r14)
	jg	.LBB7_17
	.p2align	4, 0x90
.LBB7_16:                               # %while_body68
                                        #   Parent Loop BB7_13 Depth=1
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
	jle	.LBB7_16
	jmp	.LBB7_17
.LBB7_18:                               # %merge84
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
.Lfunc_end7:
	.size	f, .Lfunc_end7-f
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

	.type	.Lfmt_str.6,@object     # @fmt_str.6
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lfmt_str.6:
	.asciz	"Semantic error : wrong dimension of operands of matrix operation."
	.size	.Lfmt_str.6, 66

	.type	.Lfmt_str.7,@object     # @fmt_str.7
	.p2align	4
.Lfmt_str.7:
	.asciz	"Semantic error : matrix index out of bounds."
	.size	.Lfmt_str.7, 45

	.type	.Lfmt_str.8,@object     # @fmt_str.8
	.p2align	4
.Lfmt_str.8:
	.asciz	"Semantic error : matrix block assignment must have agreeable dimension on both sides."
	.size	.Lfmt_str.8, 86


	.section	".note.GNU-stack","",@progbits