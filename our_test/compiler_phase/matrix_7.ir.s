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
	movabsq	$12884901892, %rcx      # imm = 0x300000004
	movq	%rcx, -72(%rbp)
	movq	%rsp, %r10
	addq	$-96, %r10
	movq	%r10, %rsp
	movq	%r10, -56(%rbp)
	movq	%rcx, -48(%rbp)
	movl	$2, %r9d
	movl	$3, %r8d
	movq	-80(%rbp), %rsi
	movl	-68(%rbp), %edi
	movl	$0, -60(%rbp)
	cmpl	%r8d, -60(%rbp)
	jle	.LBB0_2
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_5:                                # %merge
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	-60(%rbp)
	cmpl	%r8d, -60(%rbp)
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
	movl	-60(%rbp), %ecx
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
	jle	.LBB0_8
	jmp	.LBB0_14
	.p2align	4, 0x90
.LBB0_13:                               # %merge81
                                        #   in Loop: Header=BB0_8 Depth=1
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB0_14
.LBB0_8:                                # %while_body61
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%esi, (%rcx)
	jle	.LBB0_10
	jmp	.LBB0_13
	.p2align	4, 0x90
.LBB0_12:                               # %then
                                        #   in Loop: Header=BB0_10 Depth=2
	movb	$0, (%r10)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jg	.LBB0_13
.LBB0_10:                               # %while_body64
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %edi
	imull	%edx, %edi
	addl	(%rcx), %edi
	movslq	%edi, %rdi
	movsd	(%rax,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%rax,%rdi,8), %xmm0
	jne	.LBB0_12
# BB#11:                                # %merge77
                                        #   in Loop: Header=BB0_10 Depth=2
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB0_10
	jmp	.LBB0_13
.LBB0_14:                               # %merge86
	cmpb	$1, (%r10)
	je	.LBB0_171
# BB#15:                                # %then91
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_16
.LBB0_171:                              # %else92
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_16:                               # %merge90
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
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
	jle	.LBB0_18
	jmp	.LBB0_24
	.p2align	4, 0x90
.LBB0_23:                               # %merge132
                                        #   in Loop: Header=BB0_18 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	.LBB0_24
.LBB0_18:                               # %while_body110
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edi, (%rdx)
	jle	.LBB0_20
	jmp	.LBB0_23
	.p2align	4, 0x90
.LBB0_22:                               # %then127
                                        #   in Loop: Header=BB0_20 Depth=2
	movb	$0, (%r11)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jg	.LBB0_23
.LBB0_20:                               # %while_body113
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%esi, %ebx
	addl	(%rdx), %ebx
	movslq	%ebx, %rbx
	movsd	(%rcx,%rbx,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%rcx,%rbx,8), %xmm0
	jne	.LBB0_22
# BB#21:                                # %merge126
                                        #   in Loop: Header=BB0_20 Depth=2
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	.LBB0_20
	jmp	.LBB0_23
.LBB0_24:                               # %merge137
	cmpb	$1, (%r11)
	je	.LBB0_26
# BB#25:                                # %then142
	movb	$1, (%r8)
	cmpb	$1, (%r8)
	je	.LBB0_172
.LBB0_28:                               # %then147
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_29
.LBB0_26:                               # %else143
	movb	$0, (%r8)
	cmpb	$1, (%r8)
	jne	.LBB0_28
.LBB0_172:                              # %else149
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_29:                               # %merge146
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
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	cmpl	%r8d, (%rax)
	jle	.LBB0_31
	jmp	.LBB0_35
	.p2align	4, 0x90
.LBB0_34:                               # %merge190
                                        #   in Loop: Header=BB0_31 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_35
.LBB0_31:                               # %while_body172
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_33 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edi, (%rdx)
	jg	.LBB0_34
	.p2align	4, 0x90
.LBB0_33:                               # %while_body175
                                        #   Parent Loop BB0_31 Depth=1
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
	jle	.LBB0_33
	jmp	.LBB0_34
.LBB0_35:                               # %merge195
	movl	8(%r9), %r8d
	movl	12(%r9), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rax
	andq	%r14, %rax
	movq	%rsp, %r11
	subq	%rax, %r11
	movq	%r11, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
	movq	%r11, -16(%rax)
	movl	%r8d, -8(%rax)
	movl	%r10d, -4(%rax)
	leal	-1(%r10), %r12d
	decl	%r8d
	movq	(%r9), %r13
	movl	12(%r9), %eax
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rcx)
	jle	.LBB0_37
	jmp	.LBB0_41
	.p2align	4, 0x90
.LBB0_40:                               # %merge245
                                        #   in Loop: Header=BB0_37 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_41
.LBB0_37:                               # %while_body224
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_39 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r9)
	cmpl	%r12d, (%rdx)
	jg	.LBB0_40
	.p2align	4, 0x90
.LBB0_39:                               # %while_body227
                                        #   Parent Loop BB0_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %esi
	movl	(%rcx), %edi
	movl	%r10d, %ebx
	imull	%edi, %ebx
	addl	%esi, %ebx
	movslq	%ebx, %rbx
	imull	%eax, %edi
	addl	%esi, %edi
	movslq	%edi, %rsi
	movsd	(%r13,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r11,%rbx,8)
	incl	(%rdx)
	cmpl	%r12d, (%rdx)
	jle	.LBB0_39
	jmp	.LBB0_40
.LBB0_41:                               # %merge250
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
	jle	.LBB0_43
	jmp	.LBB0_49
	.p2align	4, 0x90
.LBB0_48:                               # %merge289
                                        #   in Loop: Header=BB0_43 Depth=1
	incl	(%rdx)
	cmpl	%r9d, (%rdx)
	jg	.LBB0_49
.LBB0_43:                               # %while_body267
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_45 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r11)
	cmpl	%edi, (%rax)
	jle	.LBB0_45
	jmp	.LBB0_48
	.p2align	4, 0x90
.LBB0_47:                               # %then284
                                        #   in Loop: Header=BB0_45 Depth=2
	movb	$0, (%r10)
	incl	(%rax)
	cmpl	%edi, (%rax)
	jg	.LBB0_48
.LBB0_45:                               # %while_body270
                                        #   Parent Loop BB0_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %ecx
	imull	%esi, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	movsd	(%r12,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%rbx,%rcx,8), %xmm0
	jne	.LBB0_47
# BB#46:                                # %merge283
                                        #   in Loop: Header=BB0_45 Depth=2
	incl	(%rax)
	cmpl	%edi, (%rax)
	jle	.LBB0_45
	jmp	.LBB0_48
.LBB0_49:                               # %merge294
	cmpb	$1, (%r10)
	je	.LBB0_51
# BB#50:                                # %then299
	movb	$1, (%r8)
	cmpb	$1, (%r8)
	je	.LBB0_173
.LBB0_53:                               # %then304
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_54
.LBB0_51:                               # %else300
	movb	$0, (%r8)
	cmpb	$1, (%r8)
	jne	.LBB0_53
.LBB0_173:                              # %else306
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_54:                               # %merge303
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
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
	jle	.LBB0_56
	jmp	.LBB0_62
	.p2align	4, 0x90
.LBB0_61:                               # %merge345
                                        #   in Loop: Header=BB0_56 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_62
.LBB0_56:                               # %while_body323
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_58 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rbx)
	jle	.LBB0_58
	jmp	.LBB0_61
	.p2align	4, 0x90
.LBB0_60:                               # %then340
                                        #   in Loop: Header=BB0_58 Depth=2
	movb	$0, (%r9)
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jg	.LBB0_61
.LBB0_58:                               # %while_body326
                                        #   Parent Loop BB0_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	imull	%edx, %eax
	addl	(%rbx), %eax
	cltq
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%rdi,%rax,8), %xmm0
	jne	.LBB0_60
# BB#59:                                # %merge339
                                        #   in Loop: Header=BB0_58 Depth=2
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jle	.LBB0_58
	jmp	.LBB0_61
.LBB0_62:                               # %merge350
	cmpb	$1, (%r9)
	je	.LBB0_174
# BB#63:                                # %then355
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_64
.LBB0_174:                              # %else357
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_64:                               # %merge354
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
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	cmpl	%r8d, (%rax)
	jle	.LBB0_66
	jmp	.LBB0_70
	.p2align	4, 0x90
.LBB0_69:                               # %merge398
                                        #   in Loop: Header=BB0_66 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_70
.LBB0_66:                               # %while_body380
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_68 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edi, (%rdx)
	jg	.LBB0_69
	.p2align	4, 0x90
.LBB0_68:                               # %while_body383
                                        #   Parent Loop BB0_66 Depth=1
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
	jle	.LBB0_68
	jmp	.LBB0_69
.LBB0_70:                               # %merge403
	movl	8(%r9), %r8d
	movl	12(%r9), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rax
	andq	%r14, %rax
	movq	%rsp, %r11
	subq	%rax, %r11
	movq	%r11, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
	movq	%r11, -16(%rax)
	movl	%r8d, -8(%rax)
	movl	%r10d, -4(%rax)
	leal	-1(%r10), %r12d
	decl	%r8d
	movq	(%r9), %r13
	movl	12(%r9), %eax
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rcx)
	jle	.LBB0_72
	jmp	.LBB0_76
	.p2align	4, 0x90
.LBB0_75:                               # %merge453
                                        #   in Loop: Header=BB0_72 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_76
.LBB0_72:                               # %while_body432
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_74 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r9)
	cmpl	%r12d, (%rdx)
	jg	.LBB0_75
	.p2align	4, 0x90
.LBB0_74:                               # %while_body435
                                        #   Parent Loop BB0_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %esi
	movl	(%rcx), %edi
	movl	%r10d, %ebx
	imull	%edi, %ebx
	addl	%esi, %ebx
	movslq	%ebx, %rbx
	imull	%eax, %edi
	addl	%esi, %edi
	movslq	%edi, %rsi
	movsd	(%r13,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r11,%rbx,8)
	incl	(%rdx)
	cmpl	%r12d, (%rdx)
	jle	.LBB0_74
	jmp	.LBB0_75
.LBB0_76:                               # %merge458
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
	jle	.LBB0_78
	jmp	.LBB0_84
	.p2align	4, 0x90
.LBB0_83:                               # %merge496
                                        #   in Loop: Header=BB0_78 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_84
.LBB0_78:                               # %while_body474
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_80 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rbx)
	jle	.LBB0_80
	jmp	.LBB0_83
	.p2align	4, 0x90
.LBB0_82:                               # %then491
                                        #   in Loop: Header=BB0_80 Depth=2
	movb	$0, (%r9)
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jg	.LBB0_83
.LBB0_80:                               # %while_body477
                                        #   Parent Loop BB0_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	imull	%edx, %eax
	addl	(%rbx), %eax
	cltq
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%rdi,%rax,8), %xmm0
	jne	.LBB0_82
# BB#81:                                # %merge490
                                        #   in Loop: Header=BB0_80 Depth=2
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jle	.LBB0_80
	jmp	.LBB0_83
.LBB0_84:                               # %merge501
	cmpb	$1, (%r9)
	je	.LBB0_175
# BB#85:                                # %then506
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_86
.LBB0_175:                              # %else508
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_86:                               # %merge505
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
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
	jle	.LBB0_88
	jmp	.LBB0_94
	.p2align	4, 0x90
.LBB0_93:                               # %merge548
                                        #   in Loop: Header=BB0_88 Depth=1
	incl	(%rdx)
	cmpl	%r9d, (%rdx)
	jg	.LBB0_94
.LBB0_88:                               # %while_body526
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_90 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r11)
	cmpl	%edi, (%rax)
	jle	.LBB0_90
	jmp	.LBB0_93
	.p2align	4, 0x90
.LBB0_92:                               # %then543
                                        #   in Loop: Header=BB0_90 Depth=2
	movb	$0, (%r10)
	incl	(%rax)
	cmpl	%edi, (%rax)
	jg	.LBB0_93
.LBB0_90:                               # %while_body529
                                        #   Parent Loop BB0_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %ecx
	imull	%esi, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	movsd	(%r12,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%rbx,%rcx,8), %xmm0
	jne	.LBB0_92
# BB#91:                                # %merge542
                                        #   in Loop: Header=BB0_90 Depth=2
	incl	(%rax)
	cmpl	%edi, (%rax)
	jle	.LBB0_90
	jmp	.LBB0_93
.LBB0_94:                               # %merge553
	cmpb	$1, (%r10)
	je	.LBB0_96
# BB#95:                                # %then558
	movb	$1, (%r8)
	cmpb	$1, (%r8)
	je	.LBB0_176
.LBB0_98:                               # %then563
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_99
.LBB0_96:                               # %else559
	movb	$0, (%r8)
	cmpb	$1, (%r8)
	jne	.LBB0_98
.LBB0_176:                              # %else565
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_99:                               # %merge562
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
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	cmpl	%r8d, (%rax)
	jle	.LBB0_101
	jmp	.LBB0_105
	.p2align	4, 0x90
.LBB0_104:                              # %merge606
                                        #   in Loop: Header=BB0_101 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_105
.LBB0_101:                              # %while_body588
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_103 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edi, (%rdx)
	jg	.LBB0_104
	.p2align	4, 0x90
.LBB0_103:                              # %while_body591
                                        #   Parent Loop BB0_101 Depth=1
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
	jle	.LBB0_103
	jmp	.LBB0_104
.LBB0_105:                              # %merge611
	movl	8(%r9), %r8d
	movl	12(%r9), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rax
	andq	%r14, %rax
	movq	%rsp, %r11
	subq	%rax, %r11
	movq	%r11, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
	movq	%r11, -16(%rax)
	movl	%r8d, -8(%rax)
	movl	%r10d, -4(%rax)
	leal	-1(%r10), %r12d
	decl	%r8d
	movq	(%r9), %r13
	movl	12(%r9), %eax
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rcx)
	jle	.LBB0_107
	jmp	.LBB0_111
	.p2align	4, 0x90
.LBB0_110:                              # %merge661
                                        #   in Loop: Header=BB0_107 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_111
.LBB0_107:                              # %while_body640
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_109 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r9)
	cmpl	%r12d, (%rdx)
	jg	.LBB0_110
	.p2align	4, 0x90
.LBB0_109:                              # %while_body643
                                        #   Parent Loop BB0_107 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %esi
	movl	(%rcx), %edi
	movl	%r10d, %ebx
	imull	%edi, %ebx
	addl	%esi, %ebx
	movslq	%ebx, %rbx
	imull	%eax, %edi
	addl	%esi, %edi
	movslq	%edi, %rsi
	movsd	(%r13,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r11,%rbx,8)
	incl	(%rdx)
	cmpl	%r12d, (%rdx)
	jle	.LBB0_109
	jmp	.LBB0_110
.LBB0_111:                              # %merge666
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
	jle	.LBB0_113
	jmp	.LBB0_119
	.p2align	4, 0x90
.LBB0_118:                              # %merge705
                                        #   in Loop: Header=BB0_113 Depth=1
	incl	(%rdx)
	cmpl	%r9d, (%rdx)
	jg	.LBB0_119
.LBB0_113:                              # %while_body683
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_115 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r11)
	cmpl	%edi, (%rax)
	jle	.LBB0_115
	jmp	.LBB0_118
	.p2align	4, 0x90
.LBB0_117:                              # %then700
                                        #   in Loop: Header=BB0_115 Depth=2
	movb	$0, (%r10)
	incl	(%rax)
	cmpl	%edi, (%rax)
	jg	.LBB0_118
.LBB0_115:                              # %while_body686
                                        #   Parent Loop BB0_113 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %ecx
	imull	%esi, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	movsd	(%r12,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%rbx,%rcx,8), %xmm0
	jne	.LBB0_117
# BB#116:                               # %merge699
                                        #   in Loop: Header=BB0_115 Depth=2
	incl	(%rax)
	cmpl	%edi, (%rax)
	jle	.LBB0_115
	jmp	.LBB0_118
.LBB0_119:                              # %merge710
	cmpb	$1, (%r10)
	je	.LBB0_121
# BB#120:                               # %then715
	movb	$1, (%r8)
	cmpb	$1, (%r8)
	je	.LBB0_177
.LBB0_123:                              # %then720
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_124
.LBB0_121:                              # %else716
	movb	$0, (%r8)
	cmpb	$1, (%r8)
	jne	.LBB0_123
.LBB0_177:                              # %else722
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_124:                              # %merge719
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
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
	jle	.LBB0_126
	jmp	.LBB0_132
	.p2align	4, 0x90
.LBB0_131:                              # %merge761
                                        #   in Loop: Header=BB0_126 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_132
.LBB0_126:                              # %while_body739
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_128 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rbx)
	jle	.LBB0_128
	jmp	.LBB0_131
	.p2align	4, 0x90
.LBB0_130:                              # %then756
                                        #   in Loop: Header=BB0_128 Depth=2
	movb	$0, (%r9)
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jg	.LBB0_131
.LBB0_128:                              # %while_body742
                                        #   Parent Loop BB0_126 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	imull	%edx, %eax
	addl	(%rbx), %eax
	cltq
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%rdi,%rax,8), %xmm0
	jne	.LBB0_130
# BB#129:                               # %merge755
                                        #   in Loop: Header=BB0_128 Depth=2
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jle	.LBB0_128
	jmp	.LBB0_131
.LBB0_132:                              # %merge766
	cmpb	$1, (%r9)
	je	.LBB0_178
# BB#133:                               # %then771
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_134
.LBB0_178:                              # %else773
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_134:                              # %merge770
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
	xorpd	%xmm0, %xmm0
	cmpl	%r8d, (%rax)
	jle	.LBB0_136
	jmp	.LBB0_140
	.p2align	4, 0x90
.LBB0_139:                              # %merge814
                                        #   in Loop: Header=BB0_136 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_140
.LBB0_136:                              # %while_body796
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_138 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edi, (%rdx)
	jg	.LBB0_139
	.p2align	4, 0x90
.LBB0_138:                              # %while_body799
                                        #   Parent Loop BB0_136 Depth=1
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
	jle	.LBB0_138
	jmp	.LBB0_139
.LBB0_140:                              # %merge819
	movl	8(%r9), %r8d
	movl	12(%r9), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rax
	andq	%r14, %rax
	movq	%rsp, %r11
	subq	%rax, %r11
	movq	%r11, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movq	%r11, -16(%rax)
	movl	%r8d, -8(%rax)
	movl	%r10d, -4(%rax)
	leal	-1(%r10), %r15d
	decl	%r8d
	movq	(%r9), %r12
	movl	12(%r9), %eax
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rcx)
	jle	.LBB0_142
	jmp	.LBB0_146
	.p2align	4, 0x90
.LBB0_145:                              # %merge869
                                        #   in Loop: Header=BB0_142 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_146
.LBB0_142:                              # %while_body848
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_144 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r9)
	cmpl	%r15d, (%rdx)
	jg	.LBB0_145
	.p2align	4, 0x90
.LBB0_144:                              # %while_body851
                                        #   Parent Loop BB0_142 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %esi
	movl	(%rcx), %edi
	movl	%r10d, %ebx
	imull	%edi, %ebx
	addl	%esi, %ebx
	movslq	%ebx, %rbx
	imull	%eax, %edi
	addl	%esi, %edi
	movslq	%edi, %rsi
	movsd	(%r12,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r11,%rbx,8)
	incl	(%rdx)
	cmpl	%r15d, (%rdx)
	jle	.LBB0_144
	jmp	.LBB0_145
.LBB0_146:                              # %merge874
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
	jle	.LBB0_148
	jmp	.LBB0_154
	.p2align	4, 0x90
.LBB0_153:                              # %merge912
                                        #   in Loop: Header=BB0_148 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_154
.LBB0_148:                              # %while_body890
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_150 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rbx)
	jle	.LBB0_150
	jmp	.LBB0_153
	.p2align	4, 0x90
.LBB0_152:                              # %then907
                                        #   in Loop: Header=BB0_150 Depth=2
	movb	$0, (%r9)
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jg	.LBB0_153
.LBB0_150:                              # %while_body893
                                        #   Parent Loop BB0_148 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	imull	%edx, %eax
	addl	(%rbx), %eax
	cltq
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%rdi,%rax,8), %xmm0
	jne	.LBB0_152
# BB#151:                               # %merge906
                                        #   in Loop: Header=BB0_150 Depth=2
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jle	.LBB0_150
	jmp	.LBB0_153
.LBB0_154:                              # %merge917
	cmpb	$1, (%r9)
	je	.LBB0_179
# BB#155:                               # %then922
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_156
.LBB0_179:                              # %else924
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_156:                              # %merge921
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
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
	jle	.LBB0_158
	jmp	.LBB0_164
	.p2align	4, 0x90
.LBB0_163:                              # %merge964
                                        #   in Loop: Header=BB0_158 Depth=1
	incl	(%rdx)
	cmpl	%r9d, (%rdx)
	jg	.LBB0_164
.LBB0_158:                              # %while_body942
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_160 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r11)
	cmpl	%edi, (%rax)
	jle	.LBB0_160
	jmp	.LBB0_163
	.p2align	4, 0x90
.LBB0_162:                              # %then959
                                        #   in Loop: Header=BB0_160 Depth=2
	movb	$0, (%r10)
	incl	(%rax)
	cmpl	%edi, (%rax)
	jg	.LBB0_163
.LBB0_160:                              # %while_body945
                                        #   Parent Loop BB0_158 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %ecx
	imull	%esi, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	movsd	(%r15,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%rbx,%rcx,8), %xmm0
	jne	.LBB0_162
# BB#161:                               # %merge958
                                        #   in Loop: Header=BB0_160 Depth=2
	incl	(%rax)
	cmpl	%edi, (%rax)
	jle	.LBB0_160
	jmp	.LBB0_163
.LBB0_164:                              # %merge969
	cmpb	$1, (%r10)
	je	.LBB0_166
# BB#165:                               # %then974
	movb	$1, (%r8)
	cmpb	$1, (%r8)
	je	.LBB0_170
.LBB0_168:                              # %then979
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_169
.LBB0_166:                              # %else975
	movb	$0, (%r8)
	cmpb	$1, (%r8)
	jne	.LBB0_168
.LBB0_170:                              # %else981
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_169:                              # %merge978
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
	movl	$.Lfmt_str.1, %esi
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
	movl	$.Lfmt_str.2, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%r14)
	cmpl	%r13d, (%r14)
	jle	.LBB1_10
	jmp	.LBB1_11
.LBB1_12:                               # %merge61
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


	.section	".note.GNU-stack","",@progbits
