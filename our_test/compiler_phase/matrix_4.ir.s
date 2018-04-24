	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
Lcfi3:
	.cfi_offset %rbx, -56
Lcfi4:
	.cfi_offset %r12, -48
Lcfi5:
	.cfi_offset %r13, -40
Lcfi6:
	.cfi_offset %r14, -32
Lcfi7:
	.cfi_offset %r15, -24
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_system_string(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movabsq	$4607182418800017408, %rax ## imm = 0x3FF0000000000000
	movq	%rax, -184(%rbp)
	movabsq	$4611686018427387904, %rax ## imm = 0x4000000000000000
	movq	%rax, -176(%rbp)
	movabsq	$4613937818241073152, %rax ## imm = 0x4008000000000000
	movq	%rax, -168(%rbp)
	movabsq	$4616189618054758400, %rax ## imm = 0x4010000000000000
	movq	%rax, -160(%rbp)
	movabsq	$4617315517961601024, %rax ## imm = 0x4014000000000000
	movq	%rax, -152(%rbp)
	movabsq	$4618441417868443648, %rax ## imm = 0x4018000000000000
	movq	%rax, -144(%rbp)
	movabsq	$4619567317775286272, %rax ## imm = 0x401C000000000000
	movq	%rax, -136(%rbp)
	movabsq	$4620693217682128896, %rax ## imm = 0x4020000000000000
	movq	%rax, -128(%rbp)
	movabsq	$4621256167635550208, %rax ## imm = 0x4022000000000000
	movq	%rax, -120(%rbp)
	movabsq	$4621819117588971520, %rax ## imm = 0x4024000000000000
	movq	%rax, -112(%rbp)
	movabsq	$4622382067542392832, %rax ## imm = 0x4026000000000000
	movq	%rax, -104(%rbp)
	movabsq	$4622945017495814144, %rax ## imm = 0x4028000000000000
	movq	%rax, -96(%rbp)
	leaq	-184(%rbp), %rax
	movq	%rax, -88(%rbp)
	movabsq	$12884901892, %rdx      ## imm = 0x300000004
	movq	%rdx, -80(%rbp)
	movl	$4, %r8d
	movl	$3, %ecx
	movq	%rsp, %rax
	addq	$-96, %rax
	movq	%rax, %rsp
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$2, %edx
	movl	$0, -44(%rbp)
	cmpl	%ecx, -44(%rbp)
	jle	LBB0_2
	jmp	LBB0_6
	.p2align	4, 0x90
LBB0_5:                                 ## %merge
                                        ##   in Loop: Header=BB0_2 Depth=1
	incl	-44(%rbp)
	cmpl	%ecx, -44(%rbp)
	jg	LBB0_6
LBB0_2:                                 ## %while_body
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_4 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%edx, (%rsi)
	jg	LBB0_5
	.p2align	4, 0x90
LBB0_4:                                 ## %while_body21
                                        ##   Parent Loop BB0_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %edi
	imull	%ecx, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rax,%rdi,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	LBB0_4
	jmp	LBB0_5
LBB0_6:                                 ## %merge29
	decl	%ecx
	decl	%r8d
	movq	-64(%rbp), %r9
	movl	-52(%rbp), %r11d
	movq	-88(%rbp), %r14
	movl	-76(%rbp), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	LBB0_8
	jmp	LBB0_12
	.p2align	4, 0x90
LBB0_11:                                ## %merge64
                                        ##   in Loop: Header=BB0_8 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB0_12
LBB0_8:                                 ## %while_body44
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_10 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	LBB0_11
	.p2align	4, 0x90
LBB0_10:                                ## %while_body47
                                        ##   Parent Loop BB0_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %esi
	movl	(%rax), %edi
	movl	%r11d, %ebx
	imull	%edi, %ebx
	addl	%esi, %ebx
	movslq	%ebx, %rbx
	imull	%r15d, %edi
	addl	%esi, %edi
	movslq	%edi, %rsi
	movsd	(%r14,%rsi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rbx,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	LBB0_10
	jmp	LBB0_11
LBB0_12:                                ## %merge69
	movq	%rsp, %rcx
	addq	$-32, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r8
	movq	%r8, %rsp
	movq	%rcx, -16(%rax)
	movabsq	$8589934594, %rdx       ## imm = 0x200000002
	movq	%rdx, -8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rax)
	cmpl	$1, (%rdx)
	jle	LBB0_14
	jmp	LBB0_18
	.p2align	4, 0x90
LBB0_17:                                ## %merge94
                                        ##   in Loop: Header=BB0_14 Depth=1
	incl	(%rdx)
	cmpl	$1, (%rdx)
	jg	LBB0_18
LBB0_14:                                ## %while_body83
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_16 Depth 2
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rsi)
	cmpl	$1, (%rax)
	jg	LBB0_17
	.p2align	4, 0x90
LBB0_16:                                ## %while_body86
                                        ##   Parent Loop BB0_14 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %esi
	addl	%esi, %esi
	addl	(%rax), %esi
	movslq	%esi, %rsi
	movq	$0, (%rcx,%rsi,8)
	incl	(%rax)
	cmpl	$1, (%rax)
	jle	LBB0_16
	jmp	LBB0_17
LBB0_18:                                ## %merge99
	movq	(%r8), %r10
	movl	12(%r8), %r11d
	movq	-64(%rbp), %r14
	movl	-52(%rbp), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	cmpl	$1, (%rbx)
	jle	LBB0_20
	jmp	LBB0_24
	.p2align	4, 0x90
LBB0_23:                                ## %merge137
                                        ##   in Loop: Header=BB0_20 Depth=1
	incl	(%rbx)
	cmpl	$1, (%rbx)
	jg	LBB0_24
LBB0_20:                                ## %while_body116
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_22 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r9)
	cmpl	$1, (%rax)
	jg	LBB0_23
	.p2align	4, 0x90
LBB0_22:                                ## %while_body119
                                        ##   Parent Loop BB0_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	movl	(%rbx), %edx
	movl	%r11d, %esi
	imull	%edx, %esi
	addl	%ecx, %esi
	movslq	%esi, %rsi
	imull	%edi, %edx
	addl	%ecx, %edx
	movslq	%edx, %rcx
	movsd	(%r14,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rsi,8)
	incl	(%rax)
	cmpl	$1, (%rax)
	jle	LBB0_22
	jmp	LBB0_23
LBB0_24:                                ## %merge142
	movq	(%r8), %rbx
	movl	8(%r8), %eax
	movl	12(%r8), %r12d
	decl	%eax
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	leal	-1(%r12), %r14d
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
	movl	$0, -16(%rax)
	jmp	LBB0_25
	.p2align	4, 0x90
LBB0_29:                                ## %merge169
                                        ##   in Loop: Header=BB0_25 Depth=1
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.1(%rip), %rsi
	callq	_printf
	incl	(%r15)
LBB0_25:                                ## %while154
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_28 Depth 2
	movl	-68(%rbp), %eax         ## 4-byte Reload
	cmpl	%eax, (%r15)
	jg	LBB0_30
## BB#26:                               ## %while_body155
                                        ##   in Loop: Header=BB0_25 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rax)
	cmpl	%r14d, (%r13)
	jg	LBB0_29
	.p2align	4, 0x90
LBB0_28:                                ## %while_body158
                                        ##   Parent Loop BB0_25 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%r15), %eax
	imull	%r12d, %eax
	addl	(%r13), %eax
	cltq
	movsd	(%rbx,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	movb	$1, %al
	leaq	L_fmt_double(%rip), %rdi
	callq	_printf
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.2(%rip), %rsi
	callq	_printf
	incl	(%r13)
	cmpl	%r14d, (%r13)
	jle	LBB0_28
	jmp	LBB0_29
LBB0_30:                                ## %merge175
	leaq	L_fmt_str(%rip), %rbx
	leaq	L_fmt_str.3(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	leaq	L_system_string.6(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	-56(%rbp), %eax
	movl	-52(%rbp), %r10d
	leal	-1(%rax), %r8d
	leal	-3(%r10), %r12d
	addl	$-2, %r10d
	movl	%eax, %esi
	imull	%r10d, %esi
	leaq	15(,%rsi,8), %rdi
	movabsq	$68719476720, %rcx      ## imm = 0xFFFFFFFF0
	andq	%rcx, %rdi
	movq	%rsp, %rsi
	subq	%rdi, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movq	%rsi, -16(%rbx)
	movl	%eax, -8(%rbx)
	movl	%r10d, -4(%rbx)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%rax)
	jle	LBB0_32
	jmp	LBB0_36
	.p2align	4, 0x90
LBB0_35:                                ## %merge211
                                        ##   in Loop: Header=BB0_32 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB0_36
LBB0_32:                                ## %while_body200
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_34 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%r12d, (%rbx)
	jg	LBB0_35
	.p2align	4, 0x90
LBB0_34:                                ## %while_body203
                                        ##   Parent Loop BB0_32 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%r12d, (%rbx)
	jle	LBB0_34
	jmp	LBB0_35
LBB0_36:                                ## %merge216
	movq	(%rdi), %r9
	movl	12(%rdi), %r10d
	movq	-64(%rbp), %r14
	movl	-52(%rbp), %r15d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%rdx)
	jle	LBB0_38
	jmp	LBB0_42
	.p2align	4, 0x90
LBB0_41:                                ## %merge254
                                        ##   in Loop: Header=BB0_38 Depth=1
	incl	(%rdx)
	cmpl	%r8d, (%rdx)
	jg	LBB0_42
LBB0_38:                                ## %while_body233
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_40 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%r12d, (%rsi)
	jg	LBB0_41
	.p2align	4, 0x90
LBB0_40:                                ## %while_body236
                                        ##   Parent Loop BB0_38 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %ebx
	movl	(%rdx), %eax
	movl	%r10d, %ecx
	imull	%eax, %ecx
	addl	%ebx, %ecx
	movslq	%ecx, %rcx
	imull	%r15d, %eax
	leal	2(%rbx,%rax), %eax
	cltq
	movsd	(%r14,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rcx,8)
	incl	(%rsi)
	cmpl	%r12d, (%rsi)
	jle	LBB0_40
	jmp	LBB0_41
LBB0_42:                                ## %merge259
	callq	_f
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_system_string.7(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	%rsp, %rax
	leaq	-96(%rax), %r13
	movq	%r13, %rsp
	movabsq	$4607182418800017408, %rcx ## imm = 0x3FF0000000000000
	movq	%rcx, -96(%rax)
	movabsq	$4611686018427387904, %rcx ## imm = 0x4000000000000000
	movq	%rcx, -88(%rax)
	movabsq	$4613937818241073152, %rcx ## imm = 0x4008000000000000
	movq	%rcx, -80(%rax)
	movabsq	$4616189618054758400, %rcx ## imm = 0x4010000000000000
	movq	%rcx, -72(%rax)
	movabsq	$4617315517961601024, %rcx ## imm = 0x4014000000000000
	movq	%rcx, -64(%rax)
	movabsq	$4618441417868443648, %rcx ## imm = 0x4018000000000000
	movq	%rcx, -56(%rax)
	movabsq	$4619567317775286272, %rcx ## imm = 0x401C000000000000
	movq	%rcx, -48(%rax)
	movabsq	$4620693217682128896, %rcx ## imm = 0x4020000000000000
	movq	%rcx, -40(%rax)
	movabsq	$4621256167635550208, %rcx ## imm = 0x4022000000000000
	movq	%rcx, -32(%rax)
	movabsq	$4621819117588971520, %rcx ## imm = 0x4024000000000000
	movq	%rcx, -24(%rax)
	movabsq	$4622382067542392832, %rcx ## imm = 0x4026000000000000
	movq	%rcx, -16(%rax)
	movabsq	$4622945017495814144, %rcx ## imm = 0x4028000000000000
	movq	%rcx, -8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r13, -16(%rax)
	movabsq	$12884901892, %rcx      ## imm = 0x300000004
	movq	%rcx, -8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rax)
	leaq	L_fmt_double(%rip), %r15
	leaq	L_fmt_str.2(%rip), %rbx
	jmp	LBB0_43
	.p2align	4, 0x90
LBB0_47:                                ## %merge304
                                        ##   in Loop: Header=BB0_43 Depth=1
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.1(%rip), %rsi
	callq	_printf
	incl	(%r12)
LBB0_43:                                ## %while289
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_45 Depth 2
	movl	$3, %eax
	cmpl	%eax, (%r12)
	jg	LBB0_48
## BB#44:                               ## %while_body290
                                        ##   in Loop: Header=BB0_43 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	jmp	LBB0_45
	.p2align	4, 0x90
LBB0_46:                                ## %while_body293
                                        ##   in Loop: Header=BB0_45 Depth=2
	movl	(%r12), %eax
	movl	$3, %ecx
	imull	%ecx, %eax
	addl	(%r14), %eax
	cltq
	movsd	(%r13,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	movb	$1, %al
	movq	%r15, %rdi
	callq	_printf
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	movq	%rbx, %rsi
	callq	_printf
	incl	(%r14)
LBB0_45:                                ## %while292
                                        ##   Parent Loop BB0_43 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	$2, %eax
	cmpl	%eax, (%r14)
	jle	LBB0_46
	jmp	LBB0_47
LBB0_48:                                ## %merge310
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.3(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	-56(%rbp), %eax
	movl	-52(%rbp), %esi
	leal	-1(%rax), %r9d
	leal	-1(%rsi), %edx
	movl	%eax, %ecx
	imull	%esi, %ecx
	leaq	15(,%rcx,8), %rcx
	movabsq	$68719476720, %r13      ## imm = 0xFFFFFFFF0
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
	jle	LBB0_50
	jmp	LBB0_54
	.p2align	4, 0x90
LBB0_53:                                ## %merge345
                                        ##   in Loop: Header=BB0_50 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	LBB0_54
LBB0_50:                                ## %while_body334
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_52 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%edx, (%rcx)
	jg	LBB0_53
	.p2align	4, 0x90
LBB0_52:                                ## %while_body337
                                        ##   Parent Loop BB0_50 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%esi, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rdi,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	LBB0_52
	jmp	LBB0_53
LBB0_54:                                ## %merge350
	movq	(%r8), %r10
	movl	12(%r8), %r14d
	movq	-64(%rbp), %r15
	movl	-52(%rbp), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r9d, (%rcx)
	jle	LBB0_56
	jmp	LBB0_60
	.p2align	4, 0x90
LBB0_59:                                ## %merge388
                                        ##   in Loop: Header=BB0_56 Depth=1
	incl	(%rcx)
	cmpl	%r9d, (%rcx)
	jg	LBB0_60
LBB0_56:                                ## %while_body367
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_58 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%edx, (%rsi)
	jg	LBB0_59
	.p2align	4, 0x90
LBB0_58:                                ## %while_body370
                                        ##   Parent Loop BB0_56 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rcx), %ebx
	movl	%r14d, %eax
	imull	%ebx, %eax
	addl	%edi, %eax
	cltq
	imull	%r12d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r15,%rdi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rax,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	LBB0_58
	jmp	LBB0_59
LBB0_60:                                ## %merge393
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
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
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
	jle	LBB0_62
	jmp	LBB0_66
	.p2align	4, 0x90
LBB0_65:                                ## %merge421
                                        ##   in Loop: Header=BB0_62 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	LBB0_66
LBB0_62:                                ## %while_body410
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_64 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%edx, (%rcx)
	jg	LBB0_65
	.p2align	4, 0x90
LBB0_64:                                ## %while_body413
                                        ##   Parent Loop BB0_62 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%esi, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rdi,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	LBB0_64
	jmp	LBB0_65
LBB0_66:                                ## %merge426
	movq	(%r14), %r10
	movl	12(%r14), %r11d
	movq	(%r8), %r15
	movl	12(%r8), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r9d, (%rcx)
	jle	LBB0_68
	jmp	LBB0_72
	.p2align	4, 0x90
LBB0_71:                                ## %merge466
                                        ##   in Loop: Header=BB0_68 Depth=1
	incl	(%rcx)
	cmpl	%r9d, (%rcx)
	jg	LBB0_72
LBB0_68:                                ## %while_body445
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_70 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r8)
	cmpl	%edx, (%rsi)
	jg	LBB0_71
	.p2align	4, 0x90
LBB0_70:                                ## %while_body448
                                        ##   Parent Loop BB0_68 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rcx), %ebx
	movl	%r11d, %eax
	imull	%ebx, %eax
	addl	%edi, %eax
	cltq
	imull	%r12d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r15,%rdi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rax,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	LBB0_70
	jmp	LBB0_71
LBB0_72:                                ## %merge471
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_system_string.8(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	%r14, %rdi
	callq	_f
	movl	12(%r14), %eax
	leal	-3(%rax), %ecx
	leal	-2(%rax), %edx
	leal	-4(%rax,%rax), %eax
	movq	%rsp, %rsi
	shlq	$3, %rax
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r8
	movq	%r8, %rsp
	movq	%rsi, -16(%rax)
	movl	$2, -8(%rax)
	movl	%edx, -4(%rax)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdi)
	cmpl	$1, (%rax)
	jle	LBB0_74
	jmp	LBB0_78
	.p2align	4, 0x90
LBB0_77:                                ## %merge502
                                        ##   in Loop: Header=BB0_74 Depth=1
	incl	(%rax)
	cmpl	$1, (%rax)
	jg	LBB0_78
LBB0_74:                                ## %while_body491
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_76 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	LBB0_77
	.p2align	4, 0x90
LBB0_76:                                ## %while_body494
                                        ##   Parent Loop BB0_74 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	LBB0_76
	jmp	LBB0_77
LBB0_78:                                ## %merge507
	movq	(%r8), %r9
	movl	12(%r8), %r11d
	movq	(%r14), %r15
	movl	12(%r14), %r14d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	$1, (%rax)
	jle	LBB0_80
	jmp	LBB0_84
	.p2align	4, 0x90
LBB0_83:                                ## %merge545
                                        ##   in Loop: Header=BB0_80 Depth=1
	incl	(%rax)
	cmpl	$1, (%rax)
	jg	LBB0_84
LBB0_80:                                ## %while_body524
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_82 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	LBB0_83
	.p2align	4, 0x90
LBB0_82:                                ## %while_body527
                                        ##   Parent Loop BB0_80 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %esi
	movl	(%rax), %edi
	movl	%r11d, %ebx
	imull	%edi, %ebx
	addl	%esi, %ebx
	movslq	%ebx, %rbx
	imull	%r14d, %edi
	leal	2(%rsi,%rdi), %esi
	movslq	%esi, %rsi
	movsd	(%r15,%rsi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rbx,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	LBB0_82
	jmp	LBB0_83
LBB0_84:                                ## %merge550
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
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
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
	jle	LBB0_86
	jmp	LBB0_90
	.p2align	4, 0x90
LBB0_89:                                ## %merge578
                                        ##   in Loop: Header=BB0_86 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	LBB0_90
LBB0_86:                                ## %while_body567
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_88 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%edx, (%rcx)
	jg	LBB0_89
	.p2align	4, 0x90
LBB0_88:                                ## %while_body570
                                        ##   Parent Loop BB0_86 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%esi, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rdi,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	LBB0_88
	jmp	LBB0_89
LBB0_90:                                ## %merge583
	movq	(%r14), %r10
	movl	12(%r14), %r11d
	movq	(%r8), %r15
	movl	12(%r8), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r9d, (%rcx)
	jle	LBB0_92
	jmp	LBB0_96
	.p2align	4, 0x90
LBB0_95:                                ## %merge623
                                        ##   in Loop: Header=BB0_92 Depth=1
	incl	(%rcx)
	cmpl	%r9d, (%rcx)
	jg	LBB0_96
LBB0_92:                                ## %while_body602
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_94 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r8)
	cmpl	%edx, (%rsi)
	jg	LBB0_95
	.p2align	4, 0x90
LBB0_94:                                ## %while_body605
                                        ##   Parent Loop BB0_92 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rcx), %ebx
	movl	%r11d, %eax
	imull	%ebx, %eax
	addl	%edi, %eax
	cltq
	imull	%r12d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r15,%rdi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rax,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	LBB0_94
	jmp	LBB0_95
LBB0_96:                                ## %merge628
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_system_string.9(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	%r14, %rdi
	callq	_f
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_f                      ## -- Begin function f
	.p2align	4, 0x90
_f:                                     ## @f
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi8:
	.cfi_def_cfa_offset 16
Lcfi9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi10:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Lcfi11:
	.cfi_offset %rbx, -56
Lcfi12:
	.cfi_offset %r12, -48
Lcfi13:
	.cfi_offset %r13, -40
Lcfi14:
	.cfi_offset %r14, -32
Lcfi15:
	.cfi_offset %r15, -24
	movl	8(%rdi), %r8d
	movl	12(%rdi), %edx
	movl	%r8d, %eax
	imull	%edx, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      ## imm = 0xFFFFFFFF0
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
	jle	LBB1_2
	jmp	LBB1_6
	.p2align	4, 0x90
LBB1_5:                                 ## %merge
                                        ##   in Loop: Header=BB1_2 Depth=1
	incl	-44(%rbp)
	cmpl	%r8d, -44(%rbp)
	jg	LBB1_6
LBB1_2:                                 ## %while_body
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_4 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rax)
	jg	LBB1_5
	.p2align	4, 0x90
LBB1_4:                                 ## %while_body5
                                        ##   Parent Loop BB1_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %ebx
	imull	%edx, %ebx
	addl	(%rax), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rax)
	cmpl	%ecx, (%rax)
	jle	LBB1_4
	jmp	LBB1_5
LBB1_6:                                 ## %merge12
	movq	-64(%rbp), %r9
	movl	-52(%rbp), %r11d
	movq	(%rdi), %r14
	movl	12(%rdi), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	LBB1_8
	jmp	LBB1_12
	.p2align	4, 0x90
LBB1_11:                                ## %merge47
                                        ##   in Loop: Header=BB1_8 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB1_12
LBB1_8:                                 ## %while_body27
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_10 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	LBB1_11
	.p2align	4, 0x90
LBB1_10:                                ## %while_body30
                                        ##   Parent Loop BB1_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %esi
	movl	(%rax), %ebx
	movl	%r11d, %edi
	imull	%ebx, %edi
	addl	%esi, %edi
	movslq	%edi, %rdi
	imull	%r15d, %ebx
	addl	%esi, %ebx
	movslq	%ebx, %rsi
	movsd	(%r14,%rsi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdi,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	LBB1_10
	jmp	LBB1_11
LBB1_12:                                ## %merge52
	movq	-64(%rbp), %rbx
	movl	-56(%rbp), %eax
	movl	-52(%rbp), %r12d
	decl	%eax
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	leal	-1(%r12), %r14d
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
	movl	$0, -16(%rax)
	jmp	LBB1_13
	.p2align	4, 0x90
LBB1_17:                                ## %merge78
                                        ##   in Loop: Header=BB1_13 Depth=1
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.1(%rip), %rsi
	callq	_printf
	incl	(%r15)
LBB1_13:                                ## %while64
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_16 Depth 2
	movl	-68(%rbp), %eax         ## 4-byte Reload
	cmpl	%eax, (%r15)
	jg	LBB1_18
## BB#14:                               ## %while_body65
                                        ##   in Loop: Header=BB1_13 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rax)
	cmpl	%r14d, (%r13)
	jg	LBB1_17
	.p2align	4, 0x90
LBB1_16:                                ## %while_body68
                                        ##   Parent Loop BB1_13 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%r15), %eax
	imull	%r12d, %eax
	addl	(%r13), %eax
	cltq
	movsd	(%rbx,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	movb	$1, %al
	leaq	L_fmt_double(%rip), %rdi
	callq	_printf
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.2(%rip), %rsi
	callq	_printf
	incl	(%r13)
	cmpl	%r14d, (%r13)
	jle	LBB1_16
	jmp	LBB1_17
LBB1_18:                                ## %merge84
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.3(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_fmt_str:                              ## @fmt_str
	.asciz	"%s"

L_fmt_double:                           ## @fmt_double
	.asciz	"%f"

L_fmt_int:                              ## @fmt_int
	.asciz	"%d"

L_fmt_str.1:                            ## @fmt_str.1
	.asciz	"\n"

L_fmt_str.2:                            ## @fmt_str.2
	.asciz	"  "

L_fmt_str.3:                            ## @fmt_str.3
	.space	1

L_fmt_str.4:                            ## @fmt_str.4
	.asciz	"true"

L_fmt_str.5:                            ## @fmt_str.5
	.asciz	"false"

L_system_string:                        ## @system_string
	.asciz	"var"

L_system_string.6:                      ## @system_string.6
	.asciz	"fun"

L_system_string.7:                      ## @system_string.7
	.asciz	"lit"

L_system_string.8:                      ## @system_string.8
	.asciz	"fun2:"

L_system_string.9:                      ## @system_string.9
	.asciz	"fun3:"


.subsections_via_symbols
