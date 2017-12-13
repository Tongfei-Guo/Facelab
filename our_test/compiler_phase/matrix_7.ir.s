	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	4607186922399644778     ## double 1.0009999999999999
LCPI0_1:
	.quad	4607182418800017408     ## double 1
LCPI0_2:
	.quad	4609434218613702656     ## double 1.5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
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
	subq	$136, %rsp
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
	movabsq	$4607182418800017408, %rax ## imm = 0x3FF0000000000000
	movq	%rax, -176(%rbp)
	movabsq	$4611686018427387904, %rax ## imm = 0x4000000000000000
	movq	%rax, -168(%rbp)
	movabsq	$4613937818241073152, %rax ## imm = 0x4008000000000000
	movq	%rax, -160(%rbp)
	movabsq	$4616189618054758400, %rax ## imm = 0x4010000000000000
	movq	%rax, -152(%rbp)
	movabsq	$4617315517961601024, %rax ## imm = 0x4014000000000000
	movq	%rax, -144(%rbp)
	movabsq	$4618441417868443648, %rax ## imm = 0x4018000000000000
	movq	%rax, -136(%rbp)
	movabsq	$4619567317775286272, %rax ## imm = 0x401C000000000000
	movq	%rax, -128(%rbp)
	movabsq	$4620693217682128896, %rax ## imm = 0x4020000000000000
	movq	%rax, -120(%rbp)
	movabsq	$4621256167635550208, %rax ## imm = 0x4022000000000000
	movq	%rax, -112(%rbp)
	movabsq	$4621819117588971520, %rax ## imm = 0x4024000000000000
	movq	%rax, -104(%rbp)
	movabsq	$4622382067542392832, %rax ## imm = 0x4026000000000000
	movq	%rax, -96(%rbp)
	movabsq	$4622945017495814144, %rax ## imm = 0x4028000000000000
	movq	%rax, -88(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -80(%rbp)
	movabsq	$12884901892, %rdx      ## imm = 0x300000004
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
	jle	LBB0_2
	jmp	LBB0_6
	.p2align	4, 0x90
LBB0_5:                                 ## %merge
                                        ##   in Loop: Header=BB0_2 Depth=1
	incl	-60(%rbp)
	cmpl	%ecx, -60(%rbp)
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
	movl	-60(%rbp), %edi
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
	movq	-56(%rbp), %r9
	movl	-44(%rbp), %r11d
	movq	-80(%rbp), %r14
	movl	-68(%rbp), %r15d
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
	jle	LBB0_14
	jmp	LBB0_20
	.p2align	4, 0x90
LBB0_19:                                ## %merge104
                                        ##   in Loop: Header=BB0_14 Depth=1
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	LBB0_20
LBB0_14:                                ## %while_body84
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_16 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%esi, (%rcx)
	jle	LBB0_16
	jmp	LBB0_19
	.p2align	4, 0x90
LBB0_18:                                ## %then
                                        ##   in Loop: Header=BB0_16 Depth=2
	movb	$0, (%r10)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jg	LBB0_19
LBB0_16:                                ## %while_body87
                                        ##   Parent Loop BB0_14 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %edi
	imull	%edx, %edi
	addl	(%rcx), %edi
	movslq	%edi, %rdi
	movsd	(%rax,%rdi,8), %xmm0    ## xmm0 = mem[0],zero
	ucomisd	(%rax,%rdi,8), %xmm0
	jne	LBB0_18
## BB#17:                               ## %merge100
                                        ##   in Loop: Header=BB0_16 Depth=2
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	LBB0_16
	jmp	LBB0_19
LBB0_20:                                ## %merge109
	cmpb	$1, (%r10)
	je	LBB0_225
## BB#21:                               ## %then114
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.5(%rip), %rsi
	jmp	LBB0_22
LBB0_225:                               ## %else115
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.4(%rip), %rsi
LBB0_22:                                ## %merge113
	xorl	%eax, %eax
	callq	_printf
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.3(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
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
	jle	LBB0_24
	jmp	LBB0_30
	.p2align	4, 0x90
LBB0_29:                                ## %merge155
                                        ##   in Loop: Header=BB0_24 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	LBB0_30
LBB0_24:                                ## %while_body133
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_26 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edi, (%rdx)
	jle	LBB0_26
	jmp	LBB0_29
	.p2align	4, 0x90
LBB0_28:                                ## %then150
                                        ##   in Loop: Header=BB0_26 Depth=2
	movb	$0, (%r11)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jg	LBB0_29
LBB0_26:                                ## %while_body136
                                        ##   Parent Loop BB0_24 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%esi, %ebx
	addl	(%rdx), %ebx
	movslq	%ebx, %rbx
	movsd	(%rcx,%rbx,8), %xmm0    ## xmm0 = mem[0],zero
	ucomisd	(%rcx,%rbx,8), %xmm0
	jne	LBB0_28
## BB#27:                               ## %merge149
                                        ##   in Loop: Header=BB0_26 Depth=2
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	LBB0_26
	jmp	LBB0_29
LBB0_30:                                ## %merge160
	cmpb	$1, (%r11)
	je	LBB0_32
## BB#31:                               ## %then165
	movb	$1, (%r8)
	cmpb	$1, (%r8)
	je	LBB0_226
LBB0_34:                                ## %then170
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.5(%rip), %rsi
	jmp	LBB0_35
LBB0_32:                                ## %else166
	movb	$0, (%r8)
	cmpb	$1, (%r8)
	jne	LBB0_34
LBB0_226:                               ## %else172
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.4(%rip), %rsi
LBB0_35:                                ## %merge169
	xorl	%eax, %eax
	callq	_printf
	leaq	L_fmt_str(%rip), %rbx
	leaq	L_fmt_str.3(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	leaq	L_fmt_str.1(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movq	-56(%rbp), %r11
	movl	-48(%rbp), %eax
	leal	-1(%rax), %r8d
	movl	-44(%rbp), %esi
	leal	-1(%rsi), %edi
	movl	%eax, %edx
	imull	%esi, %edx
	leaq	15(,%rdx,8), %rdx
	movabsq	$68719476720, %r14      ## imm = 0xFFFFFFFF0
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
	jle	LBB0_37
	jmp	LBB0_41
	.p2align	4, 0x90
LBB0_40:                                ## %merge206
                                        ##   in Loop: Header=BB0_37 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB0_41
LBB0_37:                                ## %while_body195
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_39 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edi, (%rdx)
	jg	LBB0_40
	.p2align	4, 0x90
LBB0_39:                                ## %while_body198
                                        ##   Parent Loop BB0_37 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	imull	%esi, %ecx
	addl	(%rdx), %ecx
	movslq	%ecx, %rcx
	movq	$0, (%rbx,%rcx,8)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	LBB0_39
	jmp	LBB0_40
LBB0_41:                                ## %merge211
	movq	(%r9), %rbx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	movsd	LCPI0_2(%rip), %xmm0    ## xmm0 = mem[0],zero
	cmpl	%r8d, (%rax)
	jle	LBB0_43
	jmp	LBB0_47
	.p2align	4, 0x90
LBB0_46:                                ## %merge236
                                        ##   in Loop: Header=BB0_43 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB0_47
LBB0_43:                                ## %while_body218
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_45 Depth 2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%edi, (%rdx)
	jg	LBB0_46
	.p2align	4, 0x90
LBB0_45:                                ## %while_body221
                                        ##   Parent Loop BB0_43 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	imull	%esi, %ecx
	addl	(%rdx), %ecx
	movslq	%ecx, %rcx
	movsd	(%r11,%rcx,8), %xmm1    ## xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, (%rbx,%rcx,8)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	LBB0_45
	jmp	LBB0_46
LBB0_47:                                ## %merge241
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
	jle	LBB0_49
	jmp	LBB0_53
	.p2align	4, 0x90
LBB0_52:                                ## %merge269
                                        ##   in Loop: Header=BB0_49 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB0_53
LBB0_49:                                ## %while_body258
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_51 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%edx, (%rcx)
	jg	LBB0_52
	.p2align	4, 0x90
LBB0_51:                                ## %while_body261
                                        ##   Parent Loop BB0_49 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%esi, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rdi,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	LBB0_51
	jmp	LBB0_52
LBB0_53:                                ## %merge274
	movq	(%r15), %r10
	movl	12(%r15), %r11d
	movq	(%r9), %r12
	movl	12(%r9), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%rcx)
	jle	LBB0_55
	jmp	LBB0_59
	.p2align	4, 0x90
LBB0_58:                                ## %merge314
                                        ##   in Loop: Header=BB0_55 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	LBB0_59
LBB0_55:                                ## %while_body293
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_57 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r9)
	cmpl	%edx, (%rsi)
	jg	LBB0_58
	.p2align	4, 0x90
LBB0_57:                                ## %while_body296
                                        ##   Parent Loop BB0_55 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rcx), %ebx
	movl	%r11d, %eax
	imull	%ebx, %eax
	addl	%edi, %eax
	cltq
	imull	%r13d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r12,%rdi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rax,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	LBB0_57
	jmp	LBB0_58
LBB0_59:                                ## %merge319
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
	jle	LBB0_61
	jmp	LBB0_67
	.p2align	4, 0x90
LBB0_66:                                ## %merge358
                                        ##   in Loop: Header=BB0_61 Depth=1
	incl	(%rdx)
	cmpl	%r9d, (%rdx)
	jg	LBB0_67
LBB0_61:                                ## %while_body336
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_63 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r11)
	cmpl	%edi, (%rax)
	jle	LBB0_63
	jmp	LBB0_66
	.p2align	4, 0x90
LBB0_65:                                ## %then353
                                        ##   in Loop: Header=BB0_63 Depth=2
	movb	$0, (%r10)
	incl	(%rax)
	cmpl	%edi, (%rax)
	jg	LBB0_66
LBB0_63:                                ## %while_body339
                                        ##   Parent Loop BB0_61 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %ecx
	imull	%esi, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	movsd	(%r12,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	ucomisd	(%rbx,%rcx,8), %xmm0
	jne	LBB0_65
## BB#64:                               ## %merge352
                                        ##   in Loop: Header=BB0_63 Depth=2
	incl	(%rax)
	cmpl	%edi, (%rax)
	jle	LBB0_63
	jmp	LBB0_66
LBB0_67:                                ## %merge363
	cmpb	$1, (%r10)
	je	LBB0_69
## BB#68:                               ## %then368
	movb	$1, (%r8)
	cmpb	$1, (%r8)
	je	LBB0_227
LBB0_71:                                ## %then373
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.5(%rip), %rsi
	jmp	LBB0_72
LBB0_69:                                ## %else369
	movb	$0, (%r8)
	cmpb	$1, (%r8)
	jne	LBB0_71
LBB0_227:                               ## %else375
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.4(%rip), %rsi
LBB0_72:                                ## %merge372
	xorl	%eax, %eax
	callq	_printf
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.3(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
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
	jle	LBB0_74
	jmp	LBB0_80
	.p2align	4, 0x90
LBB0_79:                                ## %merge414
                                        ##   in Loop: Header=BB0_74 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	LBB0_80
LBB0_74:                                ## %while_body392
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_76 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rbx)
	jle	LBB0_76
	jmp	LBB0_79
	.p2align	4, 0x90
LBB0_78:                                ## %then409
                                        ##   in Loop: Header=BB0_76 Depth=2
	movb	$0, (%r9)
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jg	LBB0_79
LBB0_76:                                ## %while_body395
                                        ##   Parent Loop BB0_74 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	imull	%edx, %eax
	addl	(%rbx), %eax
	cltq
	movsd	(%r11,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	ucomisd	(%rdi,%rax,8), %xmm0
	jne	LBB0_78
## BB#77:                               ## %merge408
                                        ##   in Loop: Header=BB0_76 Depth=2
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jle	LBB0_76
	jmp	LBB0_79
LBB0_80:                                ## %merge419
	cmpb	$1, (%r9)
	je	LBB0_228
## BB#81:                               ## %then424
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.5(%rip), %rsi
	jmp	LBB0_82
LBB0_228:                               ## %else426
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.4(%rip), %rsi
LBB0_82:                                ## %merge423
	xorl	%eax, %eax
	callq	_printf
	leaq	L_fmt_str(%rip), %rbx
	leaq	L_fmt_str.3(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	leaq	L_fmt_str.1(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
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
	jle	LBB0_84
	jmp	LBB0_88
	.p2align	4, 0x90
LBB0_87:                                ## %merge460
                                        ##   in Loop: Header=BB0_84 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB0_88
LBB0_84:                                ## %while_body449
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_86 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edi, (%rdx)
	jg	LBB0_87
	.p2align	4, 0x90
LBB0_86:                                ## %while_body452
                                        ##   Parent Loop BB0_84 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	imull	%esi, %ecx
	addl	(%rdx), %ecx
	movslq	%ecx, %rcx
	movq	$0, (%rbx,%rcx,8)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	LBB0_86
	jmp	LBB0_87
LBB0_88:                                ## %merge465
	movq	(%r9), %rbx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	movsd	LCPI0_1(%rip), %xmm0    ## xmm0 = mem[0],zero
	cmpl	%r8d, (%rax)
	jle	LBB0_90
	jmp	LBB0_94
	.p2align	4, 0x90
LBB0_93:                                ## %merge490
                                        ##   in Loop: Header=BB0_90 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB0_94
LBB0_90:                                ## %while_body472
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_92 Depth 2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%edi, (%rdx)
	jg	LBB0_93
	.p2align	4, 0x90
LBB0_92:                                ## %while_body475
                                        ##   Parent Loop BB0_90 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	imull	%esi, %ecx
	addl	(%rdx), %ecx
	movslq	%ecx, %rcx
	movsd	(%r11,%rcx,8), %xmm1    ## xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, (%rbx,%rcx,8)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	LBB0_92
	jmp	LBB0_93
LBB0_94:                                ## %merge495
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
	jle	LBB0_96
	jmp	LBB0_100
	.p2align	4, 0x90
LBB0_99:                                ## %merge523
                                        ##   in Loop: Header=BB0_96 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB0_100
LBB0_96:                                ## %while_body512
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_98 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%edx, (%rcx)
	jg	LBB0_99
	.p2align	4, 0x90
LBB0_98:                                ## %while_body515
                                        ##   Parent Loop BB0_96 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%esi, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rdi,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	LBB0_98
	jmp	LBB0_99
LBB0_100:                               ## %merge528
	movq	(%r15), %r10
	movl	12(%r15), %r11d
	movq	(%r9), %r12
	movl	12(%r9), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%rcx)
	jle	LBB0_102
	jmp	LBB0_106
	.p2align	4, 0x90
LBB0_105:                               ## %merge568
                                        ##   in Loop: Header=BB0_102 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	LBB0_106
LBB0_102:                               ## %while_body547
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_104 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r9)
	cmpl	%edx, (%rsi)
	jg	LBB0_105
	.p2align	4, 0x90
LBB0_104:                               ## %while_body550
                                        ##   Parent Loop BB0_102 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rcx), %ebx
	movl	%r11d, %eax
	imull	%ebx, %eax
	addl	%edi, %eax
	cltq
	imull	%r13d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r12,%rdi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rax,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	LBB0_104
	jmp	LBB0_105
LBB0_106:                               ## %merge573
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
	jle	LBB0_108
	jmp	LBB0_114
	.p2align	4, 0x90
LBB0_113:                               ## %merge611
                                        ##   in Loop: Header=BB0_108 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	LBB0_114
LBB0_108:                               ## %while_body589
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_110 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rbx)
	jle	LBB0_110
	jmp	LBB0_113
	.p2align	4, 0x90
LBB0_112:                               ## %then606
                                        ##   in Loop: Header=BB0_110 Depth=2
	movb	$0, (%r9)
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jg	LBB0_113
LBB0_110:                               ## %while_body592
                                        ##   Parent Loop BB0_108 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	imull	%edx, %eax
	addl	(%rbx), %eax
	cltq
	movsd	(%r11,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	ucomisd	(%rdi,%rax,8), %xmm0
	jne	LBB0_112
## BB#111:                              ## %merge605
                                        ##   in Loop: Header=BB0_110 Depth=2
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jle	LBB0_110
	jmp	LBB0_113
LBB0_114:                               ## %merge616
	cmpb	$1, (%r9)
	je	LBB0_229
## BB#115:                              ## %then621
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.5(%rip), %rsi
	jmp	LBB0_116
LBB0_229:                               ## %else623
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.4(%rip), %rsi
LBB0_116:                               ## %merge620
	xorl	%eax, %eax
	callq	_printf
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.3(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
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
	jle	LBB0_118
	jmp	LBB0_124
	.p2align	4, 0x90
LBB0_123:                               ## %merge663
                                        ##   in Loop: Header=BB0_118 Depth=1
	incl	(%rdx)
	cmpl	%r9d, (%rdx)
	jg	LBB0_124
LBB0_118:                               ## %while_body641
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_120 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r11)
	cmpl	%edi, (%rax)
	jle	LBB0_120
	jmp	LBB0_123
	.p2align	4, 0x90
LBB0_122:                               ## %then658
                                        ##   in Loop: Header=BB0_120 Depth=2
	movb	$0, (%r10)
	incl	(%rax)
	cmpl	%edi, (%rax)
	jg	LBB0_123
LBB0_120:                               ## %while_body644
                                        ##   Parent Loop BB0_118 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %ecx
	imull	%esi, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	movsd	(%r12,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	ucomisd	(%rbx,%rcx,8), %xmm0
	jne	LBB0_122
## BB#121:                              ## %merge657
                                        ##   in Loop: Header=BB0_120 Depth=2
	incl	(%rax)
	cmpl	%edi, (%rax)
	jle	LBB0_120
	jmp	LBB0_123
LBB0_124:                               ## %merge668
	cmpb	$1, (%r10)
	je	LBB0_126
## BB#125:                              ## %then673
	movb	$1, (%r8)
	cmpb	$1, (%r8)
	je	LBB0_230
LBB0_128:                               ## %then678
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.5(%rip), %rsi
	jmp	LBB0_129
LBB0_126:                               ## %else674
	movb	$0, (%r8)
	cmpb	$1, (%r8)
	jne	LBB0_128
LBB0_230:                               ## %else680
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.4(%rip), %rsi
LBB0_129:                               ## %merge677
	xorl	%eax, %eax
	callq	_printf
	leaq	L_fmt_str(%rip), %rbx
	leaq	L_fmt_str.3(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	leaq	L_fmt_str.1(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
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
	jle	LBB0_131
	jmp	LBB0_135
	.p2align	4, 0x90
LBB0_134:                               ## %merge714
                                        ##   in Loop: Header=BB0_131 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB0_135
LBB0_131:                               ## %while_body703
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_133 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edi, (%rdx)
	jg	LBB0_134
	.p2align	4, 0x90
LBB0_133:                               ## %while_body706
                                        ##   Parent Loop BB0_131 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	imull	%esi, %ecx
	addl	(%rdx), %ecx
	movslq	%ecx, %rcx
	movq	$0, (%rbx,%rcx,8)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	LBB0_133
	jmp	LBB0_134
LBB0_135:                               ## %merge719
	movq	(%r9), %rbx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	movsd	LCPI0_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	cmpl	%r8d, (%rax)
	jle	LBB0_137
	jmp	LBB0_141
	.p2align	4, 0x90
LBB0_140:                               ## %merge744
                                        ##   in Loop: Header=BB0_137 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB0_141
LBB0_137:                               ## %while_body726
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_139 Depth 2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%edi, (%rdx)
	jg	LBB0_140
	.p2align	4, 0x90
LBB0_139:                               ## %while_body729
                                        ##   Parent Loop BB0_137 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	imull	%esi, %ecx
	addl	(%rdx), %ecx
	movslq	%ecx, %rcx
	movsd	(%r11,%rcx,8), %xmm1    ## xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rbx,%rcx,8)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	LBB0_139
	jmp	LBB0_140
LBB0_141:                               ## %merge749
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
	jle	LBB0_143
	jmp	LBB0_147
	.p2align	4, 0x90
LBB0_146:                               ## %merge777
                                        ##   in Loop: Header=BB0_143 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB0_147
LBB0_143:                               ## %while_body766
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_145 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%edx, (%rcx)
	jg	LBB0_146
	.p2align	4, 0x90
LBB0_145:                               ## %while_body769
                                        ##   Parent Loop BB0_143 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%esi, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rdi,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	LBB0_145
	jmp	LBB0_146
LBB0_147:                               ## %merge782
	movq	(%r15), %r10
	movl	12(%r15), %r11d
	movq	(%r9), %r12
	movl	12(%r9), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%rcx)
	jle	LBB0_149
	jmp	LBB0_153
	.p2align	4, 0x90
LBB0_152:                               ## %merge822
                                        ##   in Loop: Header=BB0_149 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	LBB0_153
LBB0_149:                               ## %while_body801
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_151 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r9)
	cmpl	%edx, (%rsi)
	jg	LBB0_152
	.p2align	4, 0x90
LBB0_151:                               ## %while_body804
                                        ##   Parent Loop BB0_149 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rcx), %ebx
	movl	%r11d, %eax
	imull	%ebx, %eax
	addl	%edi, %eax
	cltq
	imull	%r13d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r12,%rdi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rax,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	LBB0_151
	jmp	LBB0_152
LBB0_153:                               ## %merge827
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
	jle	LBB0_155
	jmp	LBB0_161
	.p2align	4, 0x90
LBB0_160:                               ## %merge866
                                        ##   in Loop: Header=BB0_155 Depth=1
	incl	(%rdx)
	cmpl	%r9d, (%rdx)
	jg	LBB0_161
LBB0_155:                               ## %while_body844
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_157 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r11)
	cmpl	%edi, (%rax)
	jle	LBB0_157
	jmp	LBB0_160
	.p2align	4, 0x90
LBB0_159:                               ## %then861
                                        ##   in Loop: Header=BB0_157 Depth=2
	movb	$0, (%r10)
	incl	(%rax)
	cmpl	%edi, (%rax)
	jg	LBB0_160
LBB0_157:                               ## %while_body847
                                        ##   Parent Loop BB0_155 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %ecx
	imull	%esi, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	movsd	(%r12,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	ucomisd	(%rbx,%rcx,8), %xmm0
	jne	LBB0_159
## BB#158:                              ## %merge860
                                        ##   in Loop: Header=BB0_157 Depth=2
	incl	(%rax)
	cmpl	%edi, (%rax)
	jle	LBB0_157
	jmp	LBB0_160
LBB0_161:                               ## %merge871
	cmpb	$1, (%r10)
	je	LBB0_163
## BB#162:                              ## %then876
	movb	$1, (%r8)
	cmpb	$1, (%r8)
	je	LBB0_231
LBB0_165:                               ## %then881
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.5(%rip), %rsi
	jmp	LBB0_166
LBB0_163:                               ## %else877
	movb	$0, (%r8)
	cmpb	$1, (%r8)
	jne	LBB0_165
LBB0_231:                               ## %else883
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.4(%rip), %rsi
LBB0_166:                               ## %merge880
	xorl	%eax, %eax
	callq	_printf
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.3(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
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
	jle	LBB0_168
	jmp	LBB0_174
	.p2align	4, 0x90
LBB0_173:                               ## %merge922
                                        ##   in Loop: Header=BB0_168 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	LBB0_174
LBB0_168:                               ## %while_body900
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_170 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rbx)
	jle	LBB0_170
	jmp	LBB0_173
	.p2align	4, 0x90
LBB0_172:                               ## %then917
                                        ##   in Loop: Header=BB0_170 Depth=2
	movb	$0, (%r9)
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jg	LBB0_173
LBB0_170:                               ## %while_body903
                                        ##   Parent Loop BB0_168 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	imull	%edx, %eax
	addl	(%rbx), %eax
	cltq
	movsd	(%r11,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	ucomisd	(%rdi,%rax,8), %xmm0
	jne	LBB0_172
## BB#171:                              ## %merge916
                                        ##   in Loop: Header=BB0_170 Depth=2
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jle	LBB0_170
	jmp	LBB0_173
LBB0_174:                               ## %merge927
	cmpb	$1, (%r9)
	je	LBB0_232
## BB#175:                              ## %then932
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.5(%rip), %rsi
	jmp	LBB0_176
LBB0_232:                               ## %else934
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.4(%rip), %rsi
LBB0_176:                               ## %merge931
	xorl	%eax, %eax
	callq	_printf
	leaq	L_fmt_str(%rip), %rbx
	leaq	L_fmt_str.3(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	leaq	L_fmt_str.1(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
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
	jle	LBB0_178
	jmp	LBB0_182
	.p2align	4, 0x90
LBB0_181:                               ## %merge968
                                        ##   in Loop: Header=BB0_178 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB0_182
LBB0_178:                               ## %while_body957
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_180 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edi, (%rdx)
	jg	LBB0_181
	.p2align	4, 0x90
LBB0_180:                               ## %while_body960
                                        ##   Parent Loop BB0_178 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	imull	%esi, %ecx
	addl	(%rdx), %ecx
	movslq	%ecx, %rcx
	movq	$0, (%rbx,%rcx,8)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	LBB0_180
	jmp	LBB0_181
LBB0_182:                               ## %merge973
	movq	(%r9), %rbx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	xorpd	%xmm0, %xmm0
	cmpl	%r8d, (%rax)
	jle	LBB0_184
	jmp	LBB0_188
	.p2align	4, 0x90
LBB0_187:                               ## %merge998
                                        ##   in Loop: Header=BB0_184 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB0_188
LBB0_184:                               ## %while_body980
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_186 Depth 2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%edi, (%rdx)
	jg	LBB0_187
	.p2align	4, 0x90
LBB0_186:                               ## %while_body983
                                        ##   Parent Loop BB0_184 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	imull	%esi, %ecx
	addl	(%rdx), %ecx
	movslq	%ecx, %rcx
	movsd	(%r11,%rcx,8), %xmm1    ## xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, (%rbx,%rcx,8)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	LBB0_186
	jmp	LBB0_187
LBB0_188:                               ## %merge1003
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
	jle	LBB0_190
	jmp	LBB0_194
	.p2align	4, 0x90
LBB0_193:                               ## %merge1031
                                        ##   in Loop: Header=BB0_190 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB0_194
LBB0_190:                               ## %while_body1020
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_192 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%edx, (%rcx)
	jg	LBB0_193
	.p2align	4, 0x90
LBB0_192:                               ## %while_body1023
                                        ##   Parent Loop BB0_190 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%esi, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rdi,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	LBB0_192
	jmp	LBB0_193
LBB0_194:                               ## %merge1036
	movq	(%r14), %r10
	movl	12(%r14), %r11d
	movq	(%r9), %r15
	movl	12(%r9), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%rcx)
	jle	LBB0_196
	jmp	LBB0_200
	.p2align	4, 0x90
LBB0_199:                               ## %merge1076
                                        ##   in Loop: Header=BB0_196 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	LBB0_200
LBB0_196:                               ## %while_body1055
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_198 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r9)
	cmpl	%edx, (%rsi)
	jg	LBB0_199
	.p2align	4, 0x90
LBB0_198:                               ## %while_body1058
                                        ##   Parent Loop BB0_196 Depth=1
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
	jle	LBB0_198
	jmp	LBB0_199
LBB0_200:                               ## %merge1081
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
	jle	LBB0_202
	jmp	LBB0_208
	.p2align	4, 0x90
LBB0_207:                               ## %merge1119
                                        ##   in Loop: Header=BB0_202 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	LBB0_208
LBB0_202:                               ## %while_body1097
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_204 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rbx)
	jle	LBB0_204
	jmp	LBB0_207
	.p2align	4, 0x90
LBB0_206:                               ## %then1114
                                        ##   in Loop: Header=BB0_204 Depth=2
	movb	$0, (%r9)
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jg	LBB0_207
LBB0_204:                               ## %while_body1100
                                        ##   Parent Loop BB0_202 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	imull	%edx, %eax
	addl	(%rbx), %eax
	cltq
	movsd	(%r11,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	ucomisd	(%rdi,%rax,8), %xmm0
	jne	LBB0_206
## BB#205:                              ## %merge1113
                                        ##   in Loop: Header=BB0_204 Depth=2
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jle	LBB0_204
	jmp	LBB0_207
LBB0_208:                               ## %merge1124
	cmpb	$1, (%r9)
	je	LBB0_233
## BB#209:                              ## %then1129
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.5(%rip), %rsi
	jmp	LBB0_210
LBB0_233:                               ## %else1131
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.4(%rip), %rsi
LBB0_210:                               ## %merge1128
	xorl	%eax, %eax
	callq	_printf
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.3(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
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
	jle	LBB0_212
	jmp	LBB0_218
	.p2align	4, 0x90
LBB0_217:                               ## %merge1171
                                        ##   in Loop: Header=BB0_212 Depth=1
	incl	(%rdx)
	cmpl	%r9d, (%rdx)
	jg	LBB0_218
LBB0_212:                               ## %while_body1149
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_214 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r11)
	cmpl	%edi, (%rax)
	jle	LBB0_214
	jmp	LBB0_217
	.p2align	4, 0x90
LBB0_216:                               ## %then1166
                                        ##   in Loop: Header=BB0_214 Depth=2
	movb	$0, (%r10)
	incl	(%rax)
	cmpl	%edi, (%rax)
	jg	LBB0_217
LBB0_214:                               ## %while_body1152
                                        ##   Parent Loop BB0_212 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %ecx
	imull	%esi, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	movsd	(%r15,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	ucomisd	(%rbx,%rcx,8), %xmm0
	jne	LBB0_216
## BB#215:                              ## %merge1165
                                        ##   in Loop: Header=BB0_214 Depth=2
	incl	(%rax)
	cmpl	%edi, (%rax)
	jle	LBB0_214
	jmp	LBB0_217
LBB0_218:                               ## %merge1176
	cmpb	$1, (%r10)
	je	LBB0_220
## BB#219:                              ## %then1181
	movb	$1, (%r8)
	cmpb	$1, (%r8)
	je	LBB0_224
LBB0_222:                               ## %then1186
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.5(%rip), %rsi
	jmp	LBB0_223
LBB0_220:                               ## %else1182
	movb	$0, (%r8)
	cmpb	$1, (%r8)
	jne	LBB0_222
LBB0_224:                               ## %else1188
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.4(%rip), %rsi
LBB0_223:                               ## %merge1185
	xorl	%eax, %eax
	callq	_printf
	leaq	L_fmt_str(%rip), %rbx
	leaq	L_fmt_str.3(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	leaq	L_fmt_str.1(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
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


.subsections_via_symbols
