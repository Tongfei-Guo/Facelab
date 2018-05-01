	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
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
	movabsq	$4607182418800017408, %r12 ## imm = 0x3FF0000000000000
	movq	%r12, -192(%rbp)
	movabsq	$4611686018427387904, %rax ## imm = 0x4000000000000000
	movq	%rax, -184(%rbp)
	movabsq	$4613937818241073152, %rax ## imm = 0x4008000000000000
	movq	%rax, -176(%rbp)
	movabsq	$4616189618054758400, %rax ## imm = 0x4010000000000000
	movq	%rax, -168(%rbp)
	movq	%rax, -160(%rbp)
	movabsq	$4617315517961601024, %r14 ## imm = 0x4014000000000000
	movq	%r14, -152(%rbp)
	movabsq	$4618441417868443648, %rax ## imm = 0x4018000000000000
	movq	%rax, -144(%rbp)
	movq	%r14, -136(%rbp)
	movabsq	$4619567317775286272, %rcx ## imm = 0x401C000000000000
	movq	%rcx, -128(%rbp)
	movabsq	$4620693217682128896, %rcx ## imm = 0x4020000000000000
	movq	%rcx, -120(%rbp)
	movabsq	$4621256167635550208, %rcx ## imm = 0x4022000000000000
	movq	%rcx, -112(%rbp)
	movq	%rax, -104(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -96(%rbp)
	movabsq	$17179869187, %rdx      ## imm = 0x400000003
	movq	%rdx, -88(%rbp)
	movl	$3, %r8d
	movl	$4, %ecx
	movq	%rsp, %rax
	addq	$-96, %rax
	movq	%rax, %rsp
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movl	$2, %edx
	movl	$0, -52(%rbp)
	cmpl	%edx, -52(%rbp)
	jle	LBB0_2
	jmp	LBB0_6
	.p2align	4, 0x90
LBB0_5:                                 ## %merge
                                        ##   in Loop: Header=BB0_2 Depth=1
	incl	-52(%rbp)
	cmpl	%edx, -52(%rbp)
	jg	LBB0_6
LBB0_2:                                 ## %while_body
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_4 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%r8d, (%rsi)
	jg	LBB0_5
	.p2align	4, 0x90
LBB0_4:                                 ## %while_body21
                                        ##   Parent Loop BB0_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %edi
	imull	%ecx, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rax,%rdi,8)
	incl	(%rsi)
	cmpl	%r8d, (%rsi)
	jle	LBB0_4
	jmp	LBB0_5
LBB0_6:                                 ## %merge29
	decl	%ecx
	decl	%r8d
	movq	-72(%rbp), %r9
	movl	-60(%rbp), %r11d
	movq	-96(%rbp), %r15
	movl	-84(%rbp), %r13d
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
	imull	%r13d, %edi
	addl	%esi, %edi
	movslq	%edi, %rsi
	movsd	(%r15,%rsi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rbx,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	LBB0_10
	jmp	LBB0_11
LBB0_12:                                ## %merge69
	callq	_f
	movq	%rsp, %rax
	leaq	-80(%rax), %rcx
	movq	%rcx, %rsp
	movq	$0, -80(%rax)
	movabsq	$-4616189618054758400, %r8 ## imm = 0xBFF0000000000000
	movq	%r8, -72(%rax)
	movq	$0, -64(%rax)
	movq	%r8, -56(%rax)
	movq	%r14, -48(%rax)
	movq	%r8, -40(%rax)
	movq	$0, -32(%rax)
	movq	%r8, -24(%rax)
	movq	$0, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r10
	movq	%r10, %rsp
	movq	%rcx, -16(%rax)
	movabsq	$12884901891, %rdi      ## imm = 0x300000003
	movq	%rdi, -8(%rax)
	movl	$3, %ecx
	movq	%rsp, %rsi
	addq	$-80, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
	movq	%rsi, -16(%rax)
	movq	%rdi, -8(%rax)
	movl	$2, %eax
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%eax, (%rdi)
	jle	LBB0_14
	jmp	LBB0_18
	.p2align	4, 0x90
LBB0_17:                                ## %merge111
                                        ##   in Loop: Header=BB0_14 Depth=1
	incl	(%rdi)
	cmpl	%eax, (%rdi)
	jg	LBB0_18
LBB0_14:                                ## %while_body100
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_16 Depth 2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rdx)
	cmpl	%eax, (%rbx)
	jg	LBB0_17
	.p2align	4, 0x90
LBB0_16:                                ## %while_body103
                                        ##   Parent Loop BB0_14 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %edx
	imull	%ecx, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%eax, (%rbx)
	jle	LBB0_16
	jmp	LBB0_17
LBB0_18:                                ## %merge116
	decl	%ecx
	movq	(%r15), %r9
	movl	12(%r15), %r11d
	movq	(%r10), %r13
	movl	12(%r10), %r14d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rsi)
	cmpl	%ecx, (%rax)
	jle	LBB0_20
	jmp	LBB0_24
	.p2align	4, 0x90
LBB0_23:                                ## %merge156
                                        ##   in Loop: Header=BB0_20 Depth=1
	incl	(%rax)
	cmpl	%ecx, (%rax)
	jg	LBB0_24
LBB0_20:                                ## %while_body135
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_22 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rsi)
	jg	LBB0_23
	.p2align	4, 0x90
LBB0_22:                                ## %while_body138
                                        ##   Parent Loop BB0_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rax), %ebx
	movl	%r11d, %edx
	imull	%ebx, %edx
	addl	%edi, %edx
	movslq	%edx, %rdx
	imull	%r14d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r13,%rdi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	LBB0_22
	jmp	LBB0_23
LBB0_24:                                ## %merge161
	movq	%rsp, %rax
	leaq	-208(%rax), %rdx
	movq	%rdx, %rsp
	movq	$0, -208(%rax)
	movq	%r8, -200(%rax)
	movq	$0, -192(%rax)
	movq	%r12, -184(%rax)
	movq	%r12, -176(%rax)
	movq	%r8, -168(%rax)
	movabsq	$4617315517961601024, %rcx ## imm = 0x4014000000000000
	movq	%rcx, -160(%rax)
	movq	%r8, -152(%rax)
	movq	%r12, -144(%rax)
	movq	%r12, -136(%rax)
	movq	$0, -128(%rax)
	movq	%r8, -120(%rax)
	movq	$0, -112(%rax)
	movq	%r12, -104(%rax)
	movq	%r12, -96(%rax)
	movq	$0, -88(%rax)
	movq	%r8, -80(%rax)
	movq	$0, -72(%rax)
	movq	%r12, -64(%rax)
	movq	$0, -56(%rax)
	movq	$0, -48(%rax)
	movq	%r8, -40(%rax)
	movq	$0, -32(%rax)
	movq	$0, -24(%rax)
	movq	%r12, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r9
	movq	%r9, %rsp
	movq	%rdx, -16(%rax)
	movabsq	$21474836485, %rsi      ## imm = 0x500000005
	movq	%rsi, -8(%rax)
	movl	$5, %eax
	movq	%rsp, %rdx
	addq	$-208, %rdx
	movq	%rdx, %rsp
	movq	%rsp, %rdi
	leaq	-16(%rdi), %r10
	movq	%r10, %rsp
	movq	%rdx, -16(%rdi)
	movq	%rsi, -8(%rdi)
	movl	$4, %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%esi, (%rdi)
	jle	LBB0_26
	jmp	LBB0_30
	.p2align	4, 0x90
LBB0_29:                                ## %merge219
                                        ##   in Loop: Header=BB0_26 Depth=1
	incl	(%rdi)
	cmpl	%esi, (%rdi)
	jg	LBB0_30
LBB0_26:                                ## %while_body208
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_28 Depth 2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%esi, (%rbx)
	jg	LBB0_29
	.p2align	4, 0x90
LBB0_28:                                ## %while_body211
                                        ##   Parent Loop BB0_26 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %ecx
	imull	%eax, %ecx
	addl	(%rbx), %ecx
	movslq	%ecx, %rcx
	movq	$0, (%rdx,%rcx,8)
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jle	LBB0_28
	jmp	LBB0_29
LBB0_30:                                ## %merge224
	decl	%eax
	movq	(%r10), %r8
	movq	%r10, -80(%rbp)         ## 8-byte Spill
	movl	12(%r10), %r10d
	movq	(%r9), %r11
	movl	12(%r9), %r12d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rdx)
	cmpl	%eax, (%rbx)
	jle	LBB0_32
	jmp	LBB0_36
	.p2align	4, 0x90
LBB0_35:                                ## %merge264
                                        ##   in Loop: Header=BB0_32 Depth=1
	incl	(%rbx)
	cmpl	%eax, (%rbx)
	jg	LBB0_36
LBB0_32:                                ## %while_body243
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_34 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r9)
	cmpl	%eax, (%rdx)
	jg	LBB0_35
	.p2align	4, 0x90
LBB0_34:                                ## %while_body246
                                        ##   Parent Loop BB0_32 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %esi
	movl	(%rbx), %edi
	movl	%r10d, %ecx
	imull	%edi, %ecx
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	imull	%r12d, %edi
	addl	%esi, %edi
	movslq	%edi, %rsi
	movsd	(%r11,%rsi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r8,%rcx,8)
	incl	(%rdx)
	cmpl	%eax, (%rdx)
	jle	LBB0_34
	jmp	LBB0_35
LBB0_36:                                ## %merge269
	leaq	-72(%rbp), %rdi
	movq	%r15, %rsi
	callq	_filter
	movq	(%rax), %r13
	movq	%rax, %rdi
	callq	_free
	movq	(%r13), %rdi
	movl	8(%r13), %r8d
	movl	12(%r13), %r11d
	movl	%r8d, %eax
	imull	%r11d, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      ## imm = 0xFFFFFFFF0
	andq	%rcx, %rax
	movq	%rsp, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r10
	movq	%r10, %rsp
	movq	%rsi, -16(%rax)
	movl	%r8d, -8(%rax)
	movl	%r11d, -4(%rax)
	decl	%r8d
	leal	-1(%r11), %ecx
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%rax)
	jle	LBB0_38
	jmp	LBB0_42
	.p2align	4, 0x90
LBB0_41:                                ## %merge299
                                        ##   in Loop: Header=BB0_38 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB0_42
LBB0_38:                                ## %while_body288
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_40 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	LBB0_41
	.p2align	4, 0x90
LBB0_40:                                ## %while_body291
                                        ##   Parent Loop BB0_38 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r11d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	LBB0_40
	jmp	LBB0_41
LBB0_42:                                ## %merge304
	movq	%r15, -48(%rbp)         ## 8-byte Spill
	movq	(%r10), %r9
	movl	12(%r10), %r10d
	movq	(%r13), %r12
	movl	12(%r13), %r14d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r15
	movq	%r15, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r15)
	jle	LBB0_44
	jmp	LBB0_48
	.p2align	4, 0x90
LBB0_47:                                ## %merge344
                                        ##   in Loop: Header=BB0_44 Depth=1
	incl	(%r15)
	cmpl	%r8d, (%r15)
	jg	LBB0_48
LBB0_44:                                ## %while_body323
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_46 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	LBB0_47
	.p2align	4, 0x90
LBB0_46:                                ## %while_body326
                                        ##   Parent Loop BB0_44 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %ebx
	movl	(%r15), %eax
	movl	%r10d, %edx
	imull	%eax, %edx
	addl	%ebx, %edx
	movslq	%edx, %rdx
	imull	%r14d, %eax
	addl	%ebx, %eax
	cltq
	movsd	(%r12,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	LBB0_46
	jmp	LBB0_47
LBB0_48:                                ## %merge349
	callq	_free
	movq	%r13, %rdi
	callq	_free
	leaq	-72(%rbp), %rdi
	movq	-48(%rbp), %rsi         ## 8-byte Reload
	callq	_filter
	movq	(%rax), %r13
	movq	%rax, %rdi
	callq	_free
	movq	(%r13), %rdi
	movl	8(%r13), %r8d
	movl	12(%r13), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      ## imm = 0xFFFFFFFF0
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
	jle	LBB0_50
	jmp	LBB0_54
	.p2align	4, 0x90
LBB0_53:                                ## %merge382
                                        ##   in Loop: Header=BB0_50 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB0_54
LBB0_50:                                ## %while_body371
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_52 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	LBB0_53
	.p2align	4, 0x90
LBB0_52:                                ## %while_body374
                                        ##   Parent Loop BB0_50 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	LBB0_52
	jmp	LBB0_53
LBB0_54:                                ## %merge387
	movq	(%r11), %r9
	movq	%r11, -48(%rbp)         ## 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r13), %r14
	movl	12(%r13), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r15
	movq	%r15, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r15)
	jle	LBB0_56
	jmp	LBB0_60
	.p2align	4, 0x90
LBB0_59:                                ## %merge427
                                        ##   in Loop: Header=BB0_56 Depth=1
	incl	(%r15)
	cmpl	%r8d, (%r15)
	jg	LBB0_60
LBB0_56:                                ## %while_body406
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_58 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	LBB0_59
	.p2align	4, 0x90
LBB0_58:                                ## %while_body409
                                        ##   Parent Loop BB0_56 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %ebx
	movl	(%r15), %eax
	movl	%r10d, %edx
	imull	%eax, %edx
	addl	%ebx, %edx
	movslq	%edx, %rdx
	imull	%r12d, %eax
	addl	%ebx, %eax
	cltq
	movsd	(%r14,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	LBB0_58
	jmp	LBB0_59
LBB0_60:                                ## %merge432
	callq	_free
	movq	%r13, %rdi
	callq	_free
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	movq	-80(%rbp), %rsi         ## 8-byte Reload
	callq	_filter
	movq	(%rax), %r15
	movq	%rax, %rdi
	callq	_free
	movq	(%r15), %rdi
	movl	8(%r15), %r8d
	movl	12(%r15), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      ## imm = 0xFFFFFFFF0
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
	jle	LBB0_62
	jmp	LBB0_66
	.p2align	4, 0x90
LBB0_65:                                ## %merge465
                                        ##   in Loop: Header=BB0_62 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB0_66
LBB0_62:                                ## %while_body454
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_64 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	LBB0_65
	.p2align	4, 0x90
LBB0_64:                                ## %while_body457
                                        ##   Parent Loop BB0_62 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	LBB0_64
	jmp	LBB0_65
LBB0_66:                                ## %merge470
	movq	(%r11), %r9
	movq	%r11, -48(%rbp)         ## 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r15), %r12
	movl	12(%r15), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	LBB0_68
	jmp	LBB0_72
	.p2align	4, 0x90
LBB0_71:                                ## %merge510
                                        ##   in Loop: Header=BB0_68 Depth=1
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	LBB0_72
LBB0_68:                                ## %while_body489
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_70 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	LBB0_71
	.p2align	4, 0x90
LBB0_70:                                ## %while_body492
                                        ##   Parent Loop BB0_68 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %ebx
	movl	(%r14), %eax
	movl	%r10d, %edx
	imull	%eax, %edx
	addl	%ebx, %edx
	movslq	%edx, %rdx
	imull	%r13d, %eax
	addl	%ebx, %eax
	cltq
	movsd	(%r12,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	LBB0_70
	jmp	LBB0_71
LBB0_72:                                ## %merge515
	callq	_free
	movq	%r15, %rdi
	callq	_free
	movq	-48(%rbp), %r11         ## 8-byte Reload
	movl	8(%r11), %r9d
	movl	12(%r11), %esi
	movl	%r9d, %eax
	imull	%esi, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      ## imm = 0xFFFFFFFF0
	andq	%rcx, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r8
	movq	%r8, %rsp
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
	jle	LBB0_74
	jmp	LBB0_78
	.p2align	4, 0x90
LBB0_77:                                ## %merge543
                                        ##   in Loop: Header=BB0_74 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	LBB0_78
LBB0_74:                                ## %while_body532
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_76 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%edx, (%rcx)
	jg	LBB0_77
	.p2align	4, 0x90
LBB0_76:                                ## %while_body535
                                        ##   Parent Loop BB0_74 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%esi, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rdi,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	LBB0_76
	jmp	LBB0_77
LBB0_78:                                ## %merge548
	movq	(%r8), %r10
	movl	12(%r8), %r14d
	movq	(%r11), %r15
	movl	12(%r11), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r9d, (%rax)
	jle	LBB0_80
	jmp	LBB0_84
	.p2align	4, 0x90
LBB0_83:                                ## %merge588
                                        ##   in Loop: Header=BB0_80 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	LBB0_84
LBB0_80:                                ## %while_body567
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_82 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%edx, (%rsi)
	jg	LBB0_83
	.p2align	4, 0x90
LBB0_82:                                ## %while_body570
                                        ##   Parent Loop BB0_80 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rax), %ebx
	movl	%r14d, %ecx
	imull	%ebx, %ecx
	addl	%edi, %ecx
	movslq	%ecx, %rcx
	imull	%r12d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r15,%rdi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rcx,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	LBB0_82
	jmp	LBB0_83
LBB0_84:                                ## %merge593
	movq	(%r8), %rbx
	movl	8(%r8), %eax
	movl	12(%r8), %r12d
	decl	%eax
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	leal	-1(%r12), %r14d
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
	movl	$0, -16(%rax)
	jmp	LBB0_85
	.p2align	4, 0x90
LBB0_89:                                ## %merge619
                                        ##   in Loop: Header=BB0_85 Depth=1
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.1(%rip), %rsi
	callq	_printf
	incl	(%r15)
LBB0_85:                                ## %while605
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_88 Depth 2
	movl	-48(%rbp), %eax         ## 4-byte Reload
	cmpl	%eax, (%r15)
	jg	LBB0_90
## BB#86:                               ## %while_body606
                                        ##   in Loop: Header=BB0_85 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rax)
	cmpl	%r14d, (%r13)
	jg	LBB0_89
	.p2align	4, 0x90
LBB0_88:                                ## %while_body609
                                        ##   Parent Loop BB0_85 Depth=1
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
	jle	LBB0_88
	jmp	LBB0_89
LBB0_90:                                ## %merge625
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.3(%rip), %rsi
	xorl	%eax, %eax
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
	.globl	_size                   ## -- Begin function size
	.p2align	4, 0x90
_size:                                  ## @size
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbx
Lcfi8:
	.cfi_def_cfa_offset 16
Lcfi9:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$8, %edi
	callq	_malloc
	movl	8(%rbx), %ecx
	movl	%ecx, (%rax)
	movl	12(%rbx), %ecx
	movl	%ecx, 4(%rax)
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_zeros                  ## -- Begin function zeros
	.p2align	4, 0x90
_zeros:                                 ## @zeros
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi10:
	.cfi_def_cfa_offset 16
Lcfi11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi12:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
Lcfi13:
	.cfi_offset %rbx, -48
Lcfi14:
	.cfi_offset %r12, -40
Lcfi15:
	.cfi_offset %r14, -32
Lcfi16:
	.cfi_offset %r15, -24
	movl	%esi, %r12d
	movl	%edi, %r14d
	movl	$8, %edi
	callq	_malloc
	movq	%rax, %r15
	movl	%r14d, %edi
	imull	%r12d, %edi
	shll	$3, %edi
	callq	_malloc
	movq	%rax, %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%rbx, (%rax)
	movl	%r14d, 8(%rax)
	movl	%r12d, 12(%rax)
	decl	%r14d
	leal	-1(%r12), %ecx
	movl	$0, -36(%rbp)
	cmpl	%r14d, -36(%rbp)
	jle	LBB2_2
	jmp	LBB2_6
	.p2align	4, 0x90
LBB2_5:                                 ## %merge
                                        ##   in Loop: Header=BB2_2 Depth=1
	incl	-36(%rbp)
	cmpl	%r14d, -36(%rbp)
	jg	LBB2_6
LBB2_2:                                 ## %while_body
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_4 Depth 2
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%ecx, (%rdx)
	jg	LBB2_5
	.p2align	4, 0x90
LBB2_4:                                 ## %while_body5
                                        ##   Parent Loop BB2_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %esi
	imull	%r12d, %esi
	addl	(%rdx), %esi
	movslq	%esi, %rsi
	movq	$0, (%rbx,%rsi,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	LBB2_4
	jmp	LBB2_5
LBB2_6:                                 ## %merge12
	movq	%rax, (%r15)
	movq	%r15, %rax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_int2double             ## -- Begin function int2double
	.p2align	4, 0x90
_int2double:                            ## @int2double
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbx
Lcfi17:
	.cfi_def_cfa_offset 16
Lcfi18:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movl	$8, %edi
	callq	_malloc
	cvtsi2sdl	%ebx, %xmm0
	movsd	%xmm0, (%rax)
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_double2int             ## -- Begin function double2int
	.p2align	4, 0x90
_double2int:                            ## @double2int
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rax
Lcfi19:
	.cfi_def_cfa_offset 16
	movsd	%xmm0, (%rsp)           ## 8-byte Spill
	movl	$4, %edi
	callq	_malloc
	cvttsd2si	(%rsp), %ecx    ## 8-byte Folded Reload
	movl	%ecx, (%rax)
	popq	%rcx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_load                   ## -- Begin function load
	.p2align	4, 0x90
_load:                                  ## @load
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi20:
	.cfi_def_cfa_offset 16
Lcfi21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi22:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Lcfi23:
	.cfi_offset %rbx, -56
Lcfi24:
	.cfi_offset %r12, -48
Lcfi25:
	.cfi_offset %r13, -40
Lcfi26:
	.cfi_offset %r14, -32
Lcfi27:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movl	$24, %edi
	callq	_malloc
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	movq	%rbx, %rdi
	callq	_load_cpp
	movq	%rax, %r15
	cvttsd2si	(%r15), %r14d
	cvttsd2si	8(%r15), %r12d
	movl	%r14d, %edi
	imull	%r12d, %edi
	shll	$3, %edi
	movl	%edi, -52(%rbp)         ## 4-byte Spill
	callq	_malloc
	movq	%rax, %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%rbx, (%rax)
	movl	%r14d, 8(%rax)
	movl	%r12d, 12(%rax)
	movq	%r14, -64(%rbp)         ## 8-byte Spill
	leal	-1(%r14), %esi
	leal	-1(%r12), %r13d
	movl	$0, -48(%rbp)
	cmpl	%esi, -48(%rbp)
	jle	LBB5_2
	jmp	LBB5_6
	.p2align	4, 0x90
LBB5_5:                                 ## %merge
                                        ##   in Loop: Header=BB5_2 Depth=1
	incl	-48(%rbp)
	cmpl	%esi, -48(%rbp)
	jg	LBB5_6
LBB5_2:                                 ## %while_body
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_4 Depth 2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r13d, (%rdx)
	jg	LBB5_5
	.p2align	4, 0x90
LBB5_4:                                 ## %while_body10
                                        ##   Parent Loop BB5_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %ecx
	imull	%r12d, %ecx
	addl	(%rdx), %ecx
	movslq	%ecx, %rcx
	movq	$0, (%rbx,%rcx,8)
	incl	(%rdx)
	cmpl	%r13d, (%rdx)
	jle	LBB5_4
	jmp	LBB5_5
LBB5_6:                                 ## %merge18
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	movl	-52(%rbp), %ebx         ## 4-byte Reload
	movl	%ebx, %edi
	movl	%esi, -44(%rbp)         ## 4-byte Spill
	callq	_malloc
	movq	%rax, %r14
	movl	$16, %edi
	callq	_malloc
	movl	-44(%rbp), %esi         ## 4-byte Reload
	movq	%r14, (%rax)
	movq	-64(%rbp), %rcx         ## 8-byte Reload
	movl	%ecx, 8(%rax)
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	movl	%r12d, 12(%rax)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%esi, (%rax)
	jle	LBB5_8
	jmp	LBB5_12
	.p2align	4, 0x90
LBB5_11:                                ## %merge45
                                        ##   in Loop: Header=BB5_8 Depth=1
	incl	(%rax)
	cmpl	%esi, (%rax)
	jg	LBB5_12
LBB5_8:                                 ## %while_body34
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_10 Depth 2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r13d, (%rcx)
	jg	LBB5_11
	.p2align	4, 0x90
LBB5_10:                                ## %while_body37
                                        ##   Parent Loop BB5_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r12d, %edx
	addl	(%rcx), %edx
	movslq	%edx, %rdx
	movq	$0, (%r14,%rdx,8)
	incl	(%rcx)
	cmpl	%r13d, (%rcx)
	jle	LBB5_10
	jmp	LBB5_11
LBB5_12:                                ## %merge50
	movl	%ebx, %edi
	callq	_malloc
	movq	%rax, %rbx
	movl	$16, %edi
	callq	_malloc
	movl	-44(%rbp), %r9d         ## 4-byte Reload
	movq	%rbx, (%rax)
	movq	-64(%rbp), %rcx         ## 8-byte Reload
	movl	%ecx, 8(%rax)
	movl	%r12d, 12(%rax)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	movq	-80(%rbp), %r14         ## 8-byte Reload
	cmpl	%r9d, (%rcx)
	jle	LBB5_14
	jmp	LBB5_18
	.p2align	4, 0x90
LBB5_17:                                ## %merge77
                                        ##   in Loop: Header=BB5_14 Depth=1
	incl	(%rcx)
	cmpl	%r9d, (%rcx)
	jg	LBB5_18
LBB5_14:                                ## %while_body66
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_16 Depth 2
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r13d, (%rdx)
	jg	LBB5_17
	.p2align	4, 0x90
LBB5_16:                                ## %while_body69
                                        ##   Parent Loop BB5_14 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %esi
	imull	%r12d, %esi
	addl	(%rdx), %esi
	movslq	%esi, %rsi
	movq	$0, (%rbx,%rsi,8)
	incl	(%rdx)
	cmpl	%r13d, (%rdx)
	jle	LBB5_16
	jmp	LBB5_17
LBB5_18:                                ## %merge82
	movq	(%r14), %r8
	movq	-72(%rbp), %rcx         ## 8-byte Reload
	movq	(%rcx), %r10
	movq	(%rax), %r11
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movl	$2, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r9d, (%rbx)
	jle	LBB5_20
	jmp	LBB5_24
	.p2align	4, 0x90
LBB5_23:                                ## %merge126
                                        ##   in Loop: Header=BB5_20 Depth=1
	incl	(%rbx)
	movl	-44(%rbp), %r9d         ## 4-byte Reload
	cmpl	%r9d, (%rbx)
	jg	LBB5_24
LBB5_20:                                ## %while_body91
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_22 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%r13d, (%rcx)
	jg	LBB5_23
	.p2align	4, 0x90
LBB5_22:                                ## %while_body94
                                        ##   Parent Loop BB5_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %edx
	imull	%r12d, %edx
	addl	(%rcx), %edx
	movslq	%edx, %rdx
	movslq	(%rdi), %rsi
	movsd	(%r15,%rsi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r11,%rdx,8)
	incl	(%rdi)
	movslq	(%rdi), %rsi
	movsd	(%r15,%rsi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rdx,8)
	incl	(%rdi)
	movslq	(%rdi), %rsi
	movsd	(%r15,%rsi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r8,%rdx,8)
	incl	(%rdi)
	incl	(%rcx)
	cmpl	%r13d, (%rcx)
	jle	LBB5_22
	jmp	LBB5_23
LBB5_24:                                ## %merge131
	movq	-88(%rbp), %rcx         ## 8-byte Reload
	movq	%r14, (%rcx)
	movq	-72(%rbp), %rdx         ## 8-byte Reload
	movq	%rdx, 8(%rcx)
	movq	%rax, 16(%rcx)
	movq	%rcx, %rax
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
	.globl	_save                   ## -- Begin function save
	.p2align	4, 0x90
_save:                                  ## @save
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi28:
	.cfi_def_cfa_offset 16
Lcfi29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi30:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Lcfi31:
	.cfi_offset %rbx, -56
Lcfi32:
	.cfi_offset %r12, -48
Lcfi33:
	.cfi_offset %r13, -40
Lcfi34:
	.cfi_offset %r14, -32
Lcfi35:
	.cfi_offset %r15, -24
	movq	%rcx, -56(%rbp)         ## 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r13
	movl	8(%r13), %r15d
	movl	12(%r13), %r14d
	movl	%r15d, %eax
	imull	%r14d, %eax
	leal	(%rax,%rax,2), %eax
	leal	16(,%rax,8), %edi
	callq	_malloc
	movq	(%r13), %r9
	movq	(%r12), %r10
	movq	(%rbx), %rsi
	leal	-1(%r14), %edi
	cvtsi2sdl	%r15d, %xmm0
	decl	%r15d
	movsd	%xmm0, (%rax)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%r14d, %xmm0
	movsd	%xmm0, 8(%rax)
	movl	$2, -44(%rbp)
	movl	$0, -48(%rbp)
	cmpl	%r15d, -48(%rbp)
	jle	LBB6_2
	jmp	LBB6_6
	.p2align	4, 0x90
LBB6_5:                                 ## %merge
                                        ##   in Loop: Header=BB6_2 Depth=1
	incl	-48(%rbp)
	cmpl	%r15d, -48(%rbp)
	jg	LBB6_6
LBB6_2:                                 ## %while_body
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_4 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r8)
	cmpl	%edi, (%rbx)
	jg	LBB6_5
	.p2align	4, 0x90
LBB6_4:                                 ## %while_body11
                                        ##   Parent Loop BB6_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %ecx
	imull	%r14d, %ecx
	addl	(%rbx), %ecx
	movslq	%ecx, %rcx
	movslq	-44(%rbp), %rdx
	movsd	(%rsi,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%rax,%rdx,8)
	incl	-44(%rbp)
	movslq	-44(%rbp), %rdx
	movsd	(%r10,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%rax,%rdx,8)
	incl	-44(%rbp)
	movslq	-44(%rbp), %rdx
	movsd	(%r9,%rcx,8), %xmm0     ## xmm0 = mem[0],zero
	movsd	%xmm0, (%rax,%rdx,8)
	incl	-44(%rbp)
	incl	(%rbx)
	cmpl	%edi, (%rbx)
	jle	LBB6_4
	jmp	LBB6_5
LBB6_6:                                 ## %merge43
	movq	%rax, %rdi
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	callq	_save_cpp
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
	.globl	_face                   ## -- Begin function face
	.p2align	4, 0x90
_face:                                  ## @face
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi36:
	.cfi_def_cfa_offset 16
Lcfi37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi38:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Lcfi39:
	.cfi_offset %rbx, -56
Lcfi40:
	.cfi_offset %r12, -48
Lcfi41:
	.cfi_offset %r13, -40
Lcfi42:
	.cfi_offset %r14, -32
Lcfi43:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movl	$8, %edi
	callq	_malloc
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_faceDetect
	movq	%rax, %r15
	cvttsd2si	(%r15), %r13d
	movl	%r13d, %edi
	shll	$5, %edi
	callq	_malloc
	movq	%rax, %r12
	movl	$16, %edi
	callq	_malloc
	movq	%r12, (%rax)
	movl	$4, 8(%rax)
	movl	%r13d, 12(%rax)
	leal	-1(%r13), %r8d
	movl	$0, -44(%rbp)
	cmpl	$3, -44(%rbp)
	jle	LBB7_2
	jmp	LBB7_6
	.p2align	4, 0x90
LBB7_5:                                 ## %merge
                                        ##   in Loop: Header=BB7_2 Depth=1
	incl	-44(%rbp)
	cmpl	$3, -44(%rbp)
	jg	LBB7_6
LBB7_2:                                 ## %while_body
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_4 Depth 2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rcx)
	jg	LBB7_5
	.p2align	4, 0x90
LBB7_4:                                 ## %while_body6
                                        ##   Parent Loop BB7_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %edx
	imull	%r13d, %edx
	addl	(%rcx), %edx
	movslq	%edx, %rdx
	movq	$0, (%r12,%rdx,8)
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jle	LBB7_4
	jmp	LBB7_5
LBB7_6:                                 ## %merge14
	movq	(%rax), %r10
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movl	$1, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r8d, (%rdi)
	jle	LBB7_8
	jmp	LBB7_12
	.p2align	4, 0x90
LBB7_11:                                ## %merge35
                                        ##   in Loop: Header=BB7_8 Depth=1
	incl	(%rdi)
	cmpl	%r8d, (%rdi)
	jg	LBB7_12
LBB7_8:                                 ## %while_body20
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_10 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	$3, (%rcx)
	jg	LBB7_11
	.p2align	4, 0x90
LBB7_10:                                ## %while_body23
                                        ##   Parent Loop BB7_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %edx
	imull	%r13d, %edx
	addl	(%rcx), %edx
	movslq	%edx, %rdx
	movslq	(%rsi), %rbx
	movsd	(%r15,%rbx,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rdx,8)
	incl	(%rsi)
	incl	(%rcx)
	cmpl	$3, (%rcx)
	jle	LBB7_10
	jmp	LBB7_11
LBB7_12:                                ## %merge40
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
	.cfi_endproc
                                        ## -- End function
	.globl	_bitwise                ## -- Begin function bitwise
	.p2align	4, 0x90
_bitwise:                               ## @bitwise
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi44:
	.cfi_def_cfa_offset 16
Lcfi45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi46:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Lcfi47:
	.cfi_offset %rbx, -56
Lcfi48:
	.cfi_offset %r12, -48
Lcfi49:
	.cfi_offset %r13, -40
Lcfi50:
	.cfi_offset %r14, -32
Lcfi51:
	.cfi_offset %r15, -24
	movl	8(%rdi), %r9d
	movl	12(%rdi), %r11d
	movl	%r9d, %eax
	imull	%r11d, %eax
	leaq	15(,%rax,8), %rcx
	movabsq	$68719476720, %r8       ## imm = 0xFFFFFFFF0
	andq	%r8, %rcx
	movq	%rsp, %rax
	subq	%rcx, %rax
	movq	%rax, %rsp
	movq	%rax, -88(%rbp)
	movl	%r9d, -80(%rbp)
	movl	%r11d, -76(%rbp)
	decl	%r9d
	leal	-1(%r11), %edx
	movl	$0, -44(%rbp)
	cmpl	%r9d, -44(%rbp)
	jle	LBB8_2
	jmp	LBB8_6
	.p2align	4, 0x90
LBB8_5:                                 ## %merge
                                        ##   in Loop: Header=BB8_2 Depth=1
	incl	-44(%rbp)
	cmpl	%r9d, -44(%rbp)
	jg	LBB8_6
LBB8_2:                                 ## %while_body
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_4 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edx, (%rcx)
	jg	LBB8_5
	.p2align	4, 0x90
LBB8_4:                                 ## %while_body5
                                        ##   Parent Loop BB8_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %ebx
	imull	%r11d, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rax,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	LBB8_4
	jmp	LBB8_5
LBB8_6:                                 ## %merge12
	movq	-88(%rbp), %r10
	movl	-76(%rbp), %r11d
	movq	(%rdi), %r15
	movl	12(%rdi), %r12d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r9d, (%r13)
	jle	LBB8_8
	jmp	LBB8_12
	.p2align	4, 0x90
LBB8_11:                                ## %merge47
                                        ##   in Loop: Header=BB8_8 Depth=1
	incl	(%r13)
	cmpl	%r9d, (%r13)
	jg	LBB8_12
LBB8_8:                                 ## %while_body27
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_10 Depth 2
	movq	%rsp, %r14
	leaq	-16(%r14), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r14)
	cmpl	%edx, (%rcx)
	jg	LBB8_11
	.p2align	4, 0x90
LBB8_10:                                ## %while_body30
                                        ##   Parent Loop BB8_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	movl	(%r13), %edi
	movl	%r11d, %ebx
	imull	%edi, %ebx
	addl	%eax, %ebx
	movslq	%ebx, %rbx
	imull	%r12d, %edi
	addl	%eax, %edi
	movslq	%edi, %rax
	movsd	(%r15,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	LBB8_10
	jmp	LBB8_11
LBB8_12:                                ## %merge52
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
	movq	%rcx, -64(%rbp)         ## 8-byte Spill
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
	jle	LBB8_14
	jmp	LBB8_18
	.p2align	4, 0x90
LBB8_17:                                ## %merge80
                                        ##   in Loop: Header=BB8_14 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	LBB8_18
LBB8_14:                                ## %while_body69
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_16 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r8)
	cmpl	%ecx, (%rbx)
	jg	LBB8_17
	.p2align	4, 0x90
LBB8_16:                                ## %while_body72
                                        ##   Parent Loop BB8_14 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rdi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	LBB8_16
	jmp	LBB8_17
LBB8_18:                                ## %merge85
	movq	-64(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %r8
	movl	12(%rax), %r11d
	movq	(%rsi), %r14
	movl	12(%rsi), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r9d, (%rax)
	jle	LBB8_20
	jmp	LBB8_24
	.p2align	4, 0x90
LBB8_23:                                ## %merge125
                                        ##   in Loop: Header=BB8_20 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	LBB8_24
LBB8_20:                                ## %while_body104
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_22 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	LBB8_23
	.p2align	4, 0x90
LBB8_22:                                ## %while_body107
                                        ##   Parent Loop BB8_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	movl	(%rax), %ebx
	movl	%r11d, %esi
	imull	%ebx, %esi
	addl	%edi, %esi
	movslq	%esi, %rsi
	imull	%r15d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r14,%rdi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r8,%rsi,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	LBB8_22
	jmp	LBB8_23
LBB8_24:                                ## %merge130
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movq	$0, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rax)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rcx)
	movl	$0, -16(%rax)
	movq	%rbx, -96(%rbp)         ## 8-byte Spill
	movq	%r12, -72(%rbp)         ## 8-byte Spill
	movq	%rdx, -56(%rbp)         ## 8-byte Spill
	cmpl	$2, (%r12)
	jle	LBB8_26
	jmp	LBB8_47
	.p2align	4, 0x90
LBB8_46:                                ## %merge266
                                        ##   in Loop: Header=BB8_26 Depth=1
	incl	(%r12)
	cmpl	$2, (%r12)
	jg	LBB8_47
LBB8_26:                                ## %while_body142
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_28 Depth 2
	movl	$0, (%rdx)
	cmpl	$2, (%rdx)
	jle	LBB8_28
	jmp	LBB8_46
	.p2align	4, 0x90
LBB8_44:                                ## %merge249
                                        ##   in Loop: Header=BB8_28 Depth=2
	movq	-64(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %rax
	imull	%r15d, %r14d
	addl	%r14d, %r12d
	movslq	%r12d, %rcx
	movsd	-104(%rbp), %xmm1       ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	(%rax,%rcx,8), %xmm1
	movsd	-112(%rbp), %xmm0       ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-96(%rbp), %rbx         ## 8-byte Reload
	movsd	%xmm0, (%rbx)
	movq	-56(%rbp), %rdx         ## 8-byte Reload
	incl	(%rdx)
	movq	-72(%rbp), %r12         ## 8-byte Reload
	cmpl	$2, (%rdx)
	jg	LBB8_46
LBB8_28:                                ## %while_body147
                                        ##   Parent Loop BB8_26 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	(%rbx), %xmm0           ## xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       ## 8-byte Spill
	movl	-80(%rbp), %r14d
	movl	-76(%rbp), %r15d
	movl	(%r12), %r13d
	testl	%r13d, %r13d
	jns	LBB8_29
## BB#48:                               ## %then
                                        ##   in Loop: Header=BB8_28 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB8_29:                                ## %merge154
                                        ##   in Loop: Header=BB8_28 Depth=2
	decl	%r14d
	cmpl	%r13d, %r14d
	jge	LBB8_30
## BB#49:                               ## %then158
                                        ##   in Loop: Header=BB8_28 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB8_30:                                ## %merge157
                                        ##   in Loop: Header=BB8_28 Depth=2
	movl	(%r12), %ebx
	testl	%ebx, %ebx
	jns	LBB8_31
## BB#50:                               ## %then164
                                        ##   in Loop: Header=BB8_28 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB8_31:                                ## %merge163
                                        ##   in Loop: Header=BB8_28 Depth=2
	cmpl	%ebx, %r14d
	jge	LBB8_32
## BB#51:                               ## %then170
                                        ##   in Loop: Header=BB8_28 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB8_32:                                ## %merge169
                                        ##   in Loop: Header=BB8_28 Depth=2
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movl	(%rax), %r14d
	testl	%r14d, %r14d
	jns	LBB8_33
## BB#52:                               ## %then176
                                        ##   in Loop: Header=BB8_28 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB8_33:                                ## %merge175
                                        ##   in Loop: Header=BB8_28 Depth=2
	leal	-1(%r15), %ebx
	cmpl	%r14d, %ebx
	jge	LBB8_34
## BB#53:                               ## %then182
                                        ##   in Loop: Header=BB8_28 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB8_34:                                ## %merge181
                                        ##   in Loop: Header=BB8_28 Depth=2
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movl	(%rax), %r12d
	testl	%r12d, %r12d
	jns	LBB8_35
## BB#54:                               ## %then188
                                        ##   in Loop: Header=BB8_28 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB8_35:                                ## %merge187
                                        ##   in Loop: Header=BB8_28 Depth=2
	cmpl	%r12d, %ebx
	jge	LBB8_36
## BB#55:                               ## %then194
                                        ##   in Loop: Header=BB8_28 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB8_36:                                ## %merge193
                                        ##   in Loop: Header=BB8_28 Depth=2
	movq	-88(%rbp), %rax
	imull	%r13d, %r15d
	addl	%r15d, %r14d
	movslq	%r14d, %rcx
	movsd	(%rax,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       ## 8-byte Spill
	movq	-64(%rbp), %rax         ## 8-byte Reload
	movl	8(%rax), %r12d
	movl	12(%rax), %r14d
	movq	-72(%rbp), %rax         ## 8-byte Reload
	movl	(%rax), %r15d
	testl	%r15d, %r15d
	jns	LBB8_37
## BB#56:                               ## %then208
                                        ##   in Loop: Header=BB8_28 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB8_37:                                ## %merge207
                                        ##   in Loop: Header=BB8_28 Depth=2
	decl	%r12d
	cmpl	%r15d, %r12d
	jge	LBB8_38
## BB#57:                               ## %then214
                                        ##   in Loop: Header=BB8_28 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB8_38:                                ## %merge213
                                        ##   in Loop: Header=BB8_28 Depth=2
	movq	-72(%rbp), %rax         ## 8-byte Reload
	movl	(%rax), %ebx
	testl	%ebx, %ebx
	jns	LBB8_39
## BB#58:                               ## %then220
                                        ##   in Loop: Header=BB8_28 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB8_39:                                ## %merge219
                                        ##   in Loop: Header=BB8_28 Depth=2
	cmpl	%ebx, %r12d
	jge	LBB8_40
## BB#59:                               ## %then226
                                        ##   in Loop: Header=BB8_28 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB8_40:                                ## %merge225
                                        ##   in Loop: Header=BB8_28 Depth=2
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movl	(%rax), %r12d
	testl	%r12d, %r12d
	jns	LBB8_41
## BB#60:                               ## %then232
                                        ##   in Loop: Header=BB8_28 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB8_41:                                ## %merge231
                                        ##   in Loop: Header=BB8_28 Depth=2
	leal	-1(%r14), %r13d
	cmpl	%r12d, %r13d
	jge	LBB8_42
## BB#61:                               ## %then238
                                        ##   in Loop: Header=BB8_28 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB8_42:                                ## %merge237
                                        ##   in Loop: Header=BB8_28 Depth=2
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movl	(%rax), %ebx
	testl	%ebx, %ebx
	jns	LBB8_43
## BB#62:                               ## %then244
                                        ##   in Loop: Header=BB8_28 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB8_43:                                ## %merge243
                                        ##   in Loop: Header=BB8_28 Depth=2
	cmpl	%ebx, %r13d
	jge	LBB8_44
## BB#45:                               ## %then250
                                        ##   in Loop: Header=BB8_28 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
	jmp	LBB8_44
LBB8_47:                                ## %merge272
	movl	$8, %edi
	callq	_malloc
	movsd	(%rbx), %xmm0           ## xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
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
	.globl	_filter                 ## -- Begin function filter
	.p2align	4, 0x90
_filter:                                ## @filter
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi52:
	.cfi_def_cfa_offset 16
Lcfi53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi54:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
Lcfi55:
	.cfi_offset %rbx, -56
Lcfi56:
	.cfi_offset %r12, -48
Lcfi57:
	.cfi_offset %r13, -40
Lcfi58:
	.cfi_offset %r14, -32
Lcfi59:
	.cfi_offset %r15, -24
	movl	8(%rdi), %r8d
	movl	12(%rdi), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rcx
	movabsq	$68719476720, %rax      ## imm = 0xFFFFFFFF0
	andq	%rax, %rcx
	movq	%rsp, %rax
	subq	%rcx, %rax
	movq	%rax, %rsp
	movq	%rax, -112(%rbp)
	movl	%r8d, -104(%rbp)
	movl	%r10d, -100(%rbp)
	decl	%r8d
	leal	-1(%r10), %ecx
	movl	$0, -52(%rbp)
	cmpl	%r8d, -52(%rbp)
	jle	LBB9_2
	jmp	LBB9_6
	.p2align	4, 0x90
LBB9_5:                                 ## %merge
                                        ##   in Loop: Header=BB9_2 Depth=1
	incl	-52(%rbp)
	cmpl	%r8d, -52(%rbp)
	jg	LBB9_6
LBB9_2:                                 ## %while_body
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_4 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	LBB9_5
	.p2align	4, 0x90
LBB9_4:                                 ## %while_body5
                                        ##   Parent Loop BB9_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rax,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	LBB9_4
	jmp	LBB9_5
LBB9_6:                                 ## %merge12
	movq	-112(%rbp), %r9
	movl	-100(%rbp), %r10d
	movq	(%rdi), %r14
	movl	12(%rdi), %r15d
	movq	%rsp, %rbx
	leaq	-16(%rbx), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%r12)
	jle	LBB9_8
	jmp	LBB9_12
	.p2align	4, 0x90
LBB9_11:                                ## %merge47
                                        ##   in Loop: Header=BB9_8 Depth=1
	incl	(%r12)
	cmpl	%r8d, (%r12)
	jg	LBB9_12
LBB9_8:                                 ## %while_body27
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_10 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rbx)
	jg	LBB9_11
	.p2align	4, 0x90
LBB9_10:                                ## %while_body30
                                        ##   Parent Loop BB9_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	movl	(%r12), %edi
	movl	%r10d, %edx
	imull	%edi, %edx
	addl	%eax, %edx
	movslq	%edx, %rdx
	imull	%r15d, %edi
	addl	%eax, %edi
	movslq	%edi, %rax
	movsd	(%r14,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	LBB9_10
	jmp	LBB9_11
LBB9_12:                                ## %merge52
	movl	8(%rsi), %r8d
	movl	12(%rsi), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      ## imm = 0xFFFFFFFF0
	andq	%rcx, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -128(%rbp)        ## 8-byte Spill
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
	jle	LBB9_14
	jmp	LBB9_18
	.p2align	4, 0x90
LBB9_17:                                ## %merge80
                                        ##   in Loop: Header=BB9_14 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB9_18
LBB9_14:                                ## %while_body69
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_16 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	LBB9_17
	.p2align	4, 0x90
LBB9_16:                                ## %while_body72
                                        ##   Parent Loop BB9_14 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rdi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	LBB9_16
	jmp	LBB9_17
LBB9_18:                                ## %merge85
	movq	-128(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r11d
	movq	(%rsi), %r14
	movl	12(%rsi), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	LBB9_20
	jmp	LBB9_24
	.p2align	4, 0x90
LBB9_23:                                ## %merge125
                                        ##   in Loop: Header=BB9_20 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB9_24
LBB9_20:                                ## %while_body104
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_22 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	LBB9_23
	.p2align	4, 0x90
LBB9_22:                                ## %while_body107
                                        ##   Parent Loop BB9_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	movl	(%rax), %ebx
	movl	%r11d, %esi
	imull	%ebx, %esi
	addl	%edi, %esi
	movslq	%esi, %rsi
	imull	%r15d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r14,%rdi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rsi,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	LBB9_22
	jmp	LBB9_23
LBB9_24:                                ## %merge130
	movq	%rsp, %r14
	leaq	-16(%r14), %rax
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	movq	%rax, %rsp
	movl	$0, -16(%r14)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	movq	%rax, %rsp
	movl	$0, -16(%rbx)
	leaq	-112(%rbp), %rdi
	callq	_size
	movl	(%rax), %ecx
	movl	%ecx, -16(%r14)
	movl	4(%rax), %ecx
	movl	%ecx, -16(%rbx)
	movq	%rax, %rdi
	callq	_free
	movl	-16(%rbx), %esi
	addl	$2, %esi
	movl	-16(%r14), %edi
	addl	$2, %edi
	callq	_zeros
	movq	(%rax), %r15
	movq	%rax, %rdi
	callq	_free
	movq	(%r15), %rdi
	movl	8(%r15), %r8d
	movl	12(%r15), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      ## imm = 0xFFFFFFFF0
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
	jle	LBB9_26
	jmp	LBB9_30
	.p2align	4, 0x90
LBB9_29:                                ## %merge172
                                        ##   in Loop: Header=BB9_26 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB9_30
LBB9_26:                                ## %while_body161
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_28 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	LBB9_29
	.p2align	4, 0x90
LBB9_28:                                ## %while_body164
                                        ##   Parent Loop BB9_26 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	LBB9_28
	jmp	LBB9_29
LBB9_30:                                ## %merge177
	movq	(%r11), %r9
	movq	%r11, -48(%rbp)         ## 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r15), %r12
	movl	12(%r15), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	LBB9_32
	jmp	LBB9_36
	.p2align	4, 0x90
LBB9_35:                                ## %merge217
                                        ##   in Loop: Header=BB9_32 Depth=1
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	LBB9_36
LBB9_32:                                ## %while_body196
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_34 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	LBB9_35
	.p2align	4, 0x90
LBB9_34:                                ## %while_body199
                                        ##   Parent Loop BB9_32 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %ebx
	movl	(%r14), %eax
	movl	%r10d, %edx
	imull	%eax, %edx
	addl	%ebx, %edx
	movslq	%edx, %rdx
	imull	%r13d, %eax
	addl	%ebx, %eax
	cltq
	movsd	(%r12,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	LBB9_34
	jmp	LBB9_35
LBB9_36:                                ## %merge222
	callq	_free
	movq	%r15, %rdi
	callq	_free
	movq	-48(%rbp), %r10         ## 8-byte Reload
	movl	8(%r10), %r8d
	movl	12(%r10), %edx
	movl	%r8d, %eax
	imull	%edx, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      ## imm = 0xFFFFFFFF0
	andq	%rcx, %rax
	movq	%rsp, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -80(%rbp)         ## 8-byte Spill
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
	jle	LBB9_38
	jmp	LBB9_42
	.p2align	4, 0x90
LBB9_41:                                ## %merge250
                                        ##   in Loop: Header=BB9_38 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB9_42
LBB9_38:                                ## %while_body239
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_40 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	LBB9_41
	.p2align	4, 0x90
LBB9_40:                                ## %while_body242
                                        ##   Parent Loop BB9_38 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	LBB9_40
	jmp	LBB9_41
LBB9_42:                                ## %merge255
	movq	-80(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r11d
	movq	(%r10), %r14
	movl	12(%r10), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	LBB9_44
	jmp	LBB9_48
	.p2align	4, 0x90
LBB9_47:                                ## %merge295
                                        ##   in Loop: Header=BB9_44 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB9_48
LBB9_44:                                ## %while_body274
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_46 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	LBB9_47
	.p2align	4, 0x90
LBB9_46:                                ## %while_body277
                                        ##   Parent Loop BB9_44 Depth=1
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
	jle	LBB9_46
	jmp	LBB9_47
LBB9_48:                                ## %merge300
	movq	-96(%rbp), %rax         ## 8-byte Reload
	movl	(%rax), %esi
	movq	-88(%rbp), %rax         ## 8-byte Reload
	movl	(%rax), %edi
	callq	_zeros
	movq	(%rax), %r15
	movq	%rax, %rdi
	callq	_free
	movq	(%r15), %rdi
	movl	8(%r15), %r8d
	movl	12(%r15), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      ## imm = 0xFFFFFFFF0
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
	jle	LBB9_50
	jmp	LBB9_54
	.p2align	4, 0x90
LBB9_53:                                ## %merge335
                                        ##   in Loop: Header=BB9_50 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB9_54
LBB9_50:                                ## %while_body324
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_52 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	LBB9_53
	.p2align	4, 0x90
LBB9_52:                                ## %while_body327
                                        ##   Parent Loop BB9_50 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	LBB9_52
	jmp	LBB9_53
LBB9_54:                                ## %merge340
	movq	(%r11), %r9
	movq	%r11, -48(%rbp)         ## 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r15), %r12
	movl	12(%r15), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	LBB9_56
	jmp	LBB9_60
	.p2align	4, 0x90
LBB9_59:                                ## %merge380
                                        ##   in Loop: Header=BB9_56 Depth=1
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	LBB9_60
LBB9_56:                                ## %while_body359
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_58 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	LBB9_59
	.p2align	4, 0x90
LBB9_58:                                ## %while_body362
                                        ##   Parent Loop BB9_56 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %ebx
	movl	(%r14), %eax
	movl	%r10d, %edx
	imull	%eax, %edx
	addl	%ebx, %edx
	movslq	%edx, %rdx
	imull	%r13d, %eax
	addl	%ebx, %eax
	cltq
	movsd	(%r12,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	LBB9_58
	jmp	LBB9_59
LBB9_60:                                ## %merge385
	callq	_free
	movq	%r15, %rdi
	callq	_free
	movq	-48(%rbp), %r10         ## 8-byte Reload
	movl	8(%r10), %r8d
	movl	12(%r10), %edx
	movl	%r8d, %eax
	imull	%edx, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      ## imm = 0xFFFFFFFF0
	andq	%rcx, %rax
	movq	%rsp, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -72(%rbp)         ## 8-byte Spill
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
	jle	LBB9_62
	jmp	LBB9_66
	.p2align	4, 0x90
LBB9_65:                                ## %merge413
                                        ##   in Loop: Header=BB9_62 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB9_66
LBB9_62:                                ## %while_body402
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_64 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	LBB9_65
	.p2align	4, 0x90
LBB9_64:                                ## %while_body405
                                        ##   Parent Loop BB9_62 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	LBB9_64
	jmp	LBB9_65
LBB9_66:                                ## %merge418
	movq	-72(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r11d
	movq	(%r10), %r14
	movl	12(%r10), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	LBB9_68
	jmp	LBB9_72
	.p2align	4, 0x90
LBB9_71:                                ## %merge458
                                        ##   in Loop: Header=BB9_68 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB9_72
LBB9_68:                                ## %while_body437
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_70 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	LBB9_71
	.p2align	4, 0x90
LBB9_70:                                ## %while_body440
                                        ##   Parent Loop BB9_68 Depth=1
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
	jle	LBB9_70
	jmp	LBB9_71
LBB9_72:                                ## %merge470
	movl	-104(%rbp), %ebx
	movl	-100(%rbp), %r14d
	decl	%ebx
	jns	LBB9_73
## BB#154:                              ## %then473
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	callq	_abort
LBB9_73:                                ## %merge472
	movq	-88(%rbp), %rax         ## 8-byte Reload
	movl	(%rax), %r15d
	decl	%r15d
	js	LBB9_155
## BB#74:                               ## %merge479
	cmpl	%r15d, %ebx
	jl	LBB9_75
LBB9_76:                                ## %merge490
	decl	%r14d
	js	LBB9_156
LBB9_77:                                ## %merge495
	movq	-96(%rbp), %rax         ## 8-byte Reload
	movl	(%rax), %r12d
	decl	%r12d
	jns	LBB9_78
## BB#157:                              ## %then503
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	callq	_abort
LBB9_78:                                ## %merge502
	cmpl	%r12d, %r14d
	jge	LBB9_79
## BB#158:                              ## %then509
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	callq	_abort
LBB9_79:                                ## %merge508
	leal	1(%r12), %eax
	leal	1(%r15), %edx
	movl	%edx, %ecx
	imull	%eax, %ecx
	leaq	15(,%rcx,8), %rsi
	movabsq	$68719476720, %rcx      ## imm = 0xFFFFFFFF0
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
	jle	LBB9_81
	jmp	LBB9_85
	.p2align	4, 0x90
LBB9_84:                                ## %merge538
                                        ##   in Loop: Header=BB9_81 Depth=1
	incl	(%rdx)
	cmpl	%r15d, (%rdx)
	jg	LBB9_85
LBB9_81:                                ## %while_body527
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_83 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%r12d, (%rsi)
	jg	LBB9_84
	.p2align	4, 0x90
LBB9_83:                                ## %while_body530
                                        ##   Parent Loop BB9_81 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	imull	%eax, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rcx,%rdi,8)
	incl	(%rsi)
	cmpl	%r12d, (%rsi)
	jle	LBB9_83
	jmp	LBB9_84
LBB9_85:                                ## %merge543
	movq	(%r14), %r9
	movl	12(%r14), %r10d
	movq	-112(%rbp), %r11
	movl	-100(%rbp), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r15d, (%rdi)
	jle	LBB9_87
	jmp	LBB9_91
	.p2align	4, 0x90
LBB9_90:                                ## %merge581
                                        ##   in Loop: Header=BB9_87 Depth=1
	incl	(%rdi)
	cmpl	%r15d, (%rdi)
	jg	LBB9_91
LBB9_87:                                ## %while_body560
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_89 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r8)
	cmpl	%r12d, (%rbx)
	jg	LBB9_90
	.p2align	4, 0x90
LBB9_89:                                ## %while_body563
                                        ##   Parent Loop BB9_87 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	movl	(%rdi), %ecx
	movl	%r10d, %edx
	imull	%ecx, %edx
	addl	%eax, %edx
	movslq	%edx, %rdx
	imull	%esi, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movsd	(%r11,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	%r12d, (%rbx)
	jle	LBB9_89
	jmp	LBB9_90
LBB9_91:                                ## %merge593
	movq	-80(%rbp), %rax         ## 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %r12d
	decl	%ebx
	testl	%ebx, %ebx
	jg	LBB9_92
## BB#159:                              ## %then599
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	callq	_abort
LBB9_92:                                ## %merge598
	movq	-88(%rbp), %rax         ## 8-byte Reload
	movl	(%rax), %r15d
	testl	%r15d, %r15d
	jns	LBB9_93
## BB#160:                              ## %then605
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	callq	_abort
LBB9_93:                                ## %merge604
	cmpl	%r15d, %ebx
	jge	LBB9_95
## BB#94:                               ## %then611
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	callq	_abort
LBB9_95:                                ## %merge615
	decl	%r12d
	testl	%r12d, %r12d
	jg	LBB9_96
## BB#161:                              ## %then621
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	callq	_abort
LBB9_96:                                ## %merge620
	movq	-96(%rbp), %rax         ## 8-byte Reload
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	js	LBB9_162
## BB#97:                               ## %merge626
	cmpl	%r13d, %r12d
	jl	LBB9_163
LBB9_98:                                ## %merge632
	cmpl	8(%r14), %r15d
	jne	LBB9_164
LBB9_99:                                ## %merge641
	cmpl	12(%r14), %r13d
	je	LBB9_100
LBB9_165:                               ## %then651
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.8(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	callq	_abort
LBB9_100:                               ## %merge650
	movq	-80(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r10d
	movq	(%r14), %r11
	movl	12(%r14), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$1, -16(%rbx)
	cmpl	%r15d, (%rdi)
	jle	LBB9_102
	jmp	LBB9_106
	.p2align	4, 0x90
LBB9_105:                               ## %merge690
                                        ##   in Loop: Header=BB9_102 Depth=1
	incl	(%rdi)
	cmpl	%r15d, (%rdi)
	jg	LBB9_106
LBB9_102:                               ## %while_body669
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_104 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	$1, -16(%r8)
	cmpl	%r13d, (%rbx)
	jg	LBB9_105
	.p2align	4, 0x90
LBB9_104:                               ## %while_body672
                                        ##   Parent Loop BB9_102 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
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
	movsd	(%r11,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	%r13d, (%rbx)
	jle	LBB9_104
	jmp	LBB9_105
LBB9_106:                               ## %merge695
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rcx)
	movl	$0, -16(%rax)
	movq	%r14, -48(%rbp)         ## 8-byte Spill
	movq	%rdx, -120(%rbp)        ## 8-byte Spill
	jmp	LBB9_107
	.p2align	4, 0x90
LBB9_140:                               ## %merge908
                                        ##   in Loop: Header=BB9_107 Depth=1
	incl	(%r14)
LBB9_107:                               ## %while706
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_109 Depth 2
                                        ##       Child Loop BB9_120 Depth 3
                                        ##         Child Loop BB9_122 Depth 4
                                        ##       Child Loop BB9_126 Depth 3
                                        ##         Child Loop BB9_128 Depth 4
	movl	(%r14), %eax
	movq	-88(%rbp), %rcx         ## 8-byte Reload
	cmpl	(%rcx), %eax
	jge	LBB9_141
## BB#108:                              ## %while_body707
                                        ##   in Loop: Header=BB9_107 Depth=1
	movl	$0, (%rdx)
	jmp	LBB9_109
	.p2align	4, 0x90
LBB9_138:                               ## %merge896
                                        ##   in Loop: Header=BB9_109 Depth=2
	movq	-72(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %rax
	imull	%r15d, %r14d
	addl	%r14d, %r13d
	movslq	%r13d, %rcx
	movsd	-64(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-120(%rbp), %rdx        ## 8-byte Reload
	incl	(%rdx)
	movq	-48(%rbp), %r14         ## 8-byte Reload
LBB9_109:                               ## %while712
                                        ##   Parent Loop BB9_107 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB9_120 Depth 3
                                        ##         Child Loop BB9_122 Depth 4
                                        ##       Child Loop BB9_126 Depth 3
                                        ##         Child Loop BB9_128 Depth 4
	movl	(%rdx), %eax
	movq	-96(%rbp), %rcx         ## 8-byte Reload
	cmpl	(%rcx), %eax
	jge	LBB9_140
## BB#110:                              ## %while_body713
                                        ##   in Loop: Header=BB9_109 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -136(%rbp)        ## 8-byte Spill
	movq	%rcx, %rsp
	movq	$0, -16(%rax)
	movq	-80(%rbp), %rax         ## 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %r12d
	movl	(%r14), %r13d
	testl	%r13d, %r13d
	jns	LBB9_111
## BB#166:                              ## %then721
                                        ##   in Loop: Header=BB9_109 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB9_111:                               ## %merge720
                                        ##   in Loop: Header=BB9_109 Depth=2
	decl	%ebx
	cmpl	%r13d, %ebx
	jge	LBB9_112
## BB#167:                              ## %then727
                                        ##   in Loop: Header=BB9_109 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB9_112:                               ## %merge726
                                        ##   in Loop: Header=BB9_109 Depth=2
	movl	(%r14), %r15d
	addl	$2, %r15d
	jns	LBB9_113
## BB#168:                              ## %then734
                                        ##   in Loop: Header=BB9_109 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB9_113:                               ## %merge733
                                        ##   in Loop: Header=BB9_109 Depth=2
	cmpl	%r15d, %ebx
	jge	LBB9_114
## BB#169:                              ## %then740
                                        ##   in Loop: Header=BB9_109 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB9_114:                               ## %merge739
                                        ##   in Loop: Header=BB9_109 Depth=2
	movq	-120(%rbp), %rbx        ## 8-byte Reload
	movl	(%rbx), %r14d
	testl	%r14d, %r14d
	jns	LBB9_115
## BB#170:                              ## %then746
                                        ##   in Loop: Header=BB9_109 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB9_115:                               ## %merge745
                                        ##   in Loop: Header=BB9_109 Depth=2
	decl	%r12d
	movl	%r12d, -64(%rbp)        ## 4-byte Spill
	cmpl	%r14d, %r12d
	jge	LBB9_116
## BB#171:                              ## %then752
                                        ##   in Loop: Header=BB9_109 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB9_116:                               ## %merge751
                                        ##   in Loop: Header=BB9_109 Depth=2
	movl	(%rbx), %r12d
	addl	$2, %r12d
	jns	LBB9_117
## BB#172:                              ## %then759
                                        ##   in Loop: Header=BB9_109 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB9_117:                               ## %merge758
                                        ##   in Loop: Header=BB9_109 Depth=2
	cmpl	%r12d, -64(%rbp)        ## 4-byte Folded Reload
	jge	LBB9_118
## BB#173:                              ## %then765
                                        ##   in Loop: Header=BB9_109 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB9_118:                               ## %merge764
                                        ##   in Loop: Header=BB9_109 Depth=2
	subl	%r13d, %r15d
	subl	%r14d, %r12d
	leal	1(%r12), %eax
	leal	1(%r15), %edx
	movl	%edx, %ecx
	imull	%eax, %ecx
	leaq	15(,%rcx,8), %rsi
	movabsq	$68719476720, %rcx      ## imm = 0xFFFFFFFF0
	andq	%rcx, %rsi
	movq	%rsp, %rcx
	subq	%rsi, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r9
	movq	%r9, %rsp
	movq	%rcx, -16(%rsi)
	movl	%edx, -8(%rsi)
	movl	%eax, -4(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r15d, (%rdx)
	jle	LBB9_120
	jmp	LBB9_124
	.p2align	4, 0x90
LBB9_123:                               ## %merge794
                                        ##   in Loop: Header=BB9_120 Depth=3
	incl	(%rdx)
	cmpl	%r15d, (%rdx)
	jg	LBB9_124
LBB9_120:                               ## %while_body783
                                        ##   Parent Loop BB9_107 Depth=1
                                        ##     Parent Loop BB9_109 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB9_122 Depth 4
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r12d, (%rsi)
	jg	LBB9_123
	.p2align	4, 0x90
LBB9_122:                               ## %while_body786
                                        ##   Parent Loop BB9_107 Depth=1
                                        ##     Parent Loop BB9_109 Depth=2
                                        ##       Parent Loop BB9_120 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movl	(%rdx), %ebx
	imull	%eax, %ebx
	addl	(%rsi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rcx,%rbx,8)
	incl	(%rsi)
	cmpl	%r12d, (%rsi)
	jle	LBB9_122
	jmp	LBB9_123
	.p2align	4, 0x90
LBB9_124:                               ## %merge799
                                        ##   in Loop: Header=BB9_109 Depth=2
	movq	%r15, %rdi
	movq	(%r9), %r8
	movq	%r9, -64(%rbp)          ## 8-byte Spill
	movl	12(%r9), %r10d
	movq	-80(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %r11
	movl	12(%rax), %r15d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	cmpl	%edi, (%rbx)
	jle	LBB9_126
	jmp	LBB9_130
	.p2align	4, 0x90
LBB9_129:                               ## %merge837
                                        ##   in Loop: Header=BB9_126 Depth=3
	incl	(%rbx)
	cmpl	%edi, (%rbx)
	jg	LBB9_130
LBB9_126:                               ## %while_body816
                                        ##   Parent Loop BB9_107 Depth=1
                                        ##     Parent Loop BB9_109 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB9_128 Depth 4
	movq	%rsp, %r9
	leaq	-16(%r9), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r9)
	cmpl	%r12d, (%rax)
	jg	LBB9_129
	.p2align	4, 0x90
LBB9_128:                               ## %while_body819
                                        ##   Parent Loop BB9_107 Depth=1
                                        ##     Parent Loop BB9_109 Depth=2
                                        ##       Parent Loop BB9_126 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movl	(%rax), %ecx
	movl	(%rbx), %edx
	movl	%r10d, %esi
	imull	%edx, %esi
	addl	%ecx, %esi
	movslq	%esi, %rsi
	addl	%r14d, %ecx
	addl	%r13d, %edx
	imull	%r15d, %edx
	addl	%ecx, %edx
	movslq	%edx, %rcx
	movsd	(%r11,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r8,%rsi,8)
	incl	(%rax)
	cmpl	%r12d, (%rax)
	jle	LBB9_128
	jmp	LBB9_129
	.p2align	4, 0x90
LBB9_130:                               ## %merge842
                                        ##   in Loop: Header=BB9_109 Depth=2
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	movq	-128(%rbp), %rsi        ## 8-byte Reload
	callq	_bitwise
	movsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        ## 8-byte Spill
	movq	%rax, %rdi
	callq	_free
	movq	-136(%rbp), %rax        ## 8-byte Reload
	movsd	-64(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	movq	-72(%rbp), %rax         ## 8-byte Reload
	movl	8(%rax), %r12d
	movl	12(%rax), %r14d
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movl	(%rax), %r15d
	testl	%r15d, %r15d
	jns	LBB9_131
## BB#174:                              ## %then855
                                        ##   in Loop: Header=BB9_109 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB9_131:                               ## %merge854
                                        ##   in Loop: Header=BB9_109 Depth=2
	decl	%r12d
	cmpl	%r15d, %r12d
	jge	LBB9_132
## BB#175:                              ## %then861
                                        ##   in Loop: Header=BB9_109 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB9_132:                               ## %merge860
                                        ##   in Loop: Header=BB9_109 Depth=2
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movl	(%rax), %ebx
	testl	%ebx, %ebx
	jns	LBB9_133
## BB#176:                              ## %then867
                                        ##   in Loop: Header=BB9_109 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB9_133:                               ## %merge866
                                        ##   in Loop: Header=BB9_109 Depth=2
	cmpl	%ebx, %r12d
	jge	LBB9_134
## BB#177:                              ## %then873
                                        ##   in Loop: Header=BB9_109 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB9_134:                               ## %merge872
                                        ##   in Loop: Header=BB9_109 Depth=2
	movq	-120(%rbp), %rbx        ## 8-byte Reload
	movl	(%rbx), %r13d
	testl	%r13d, %r13d
	jns	LBB9_135
## BB#178:                              ## %then879
                                        ##   in Loop: Header=BB9_109 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB9_135:                               ## %merge878
                                        ##   in Loop: Header=BB9_109 Depth=2
	leal	-1(%r14), %r12d
	cmpl	%r13d, %r12d
	jge	LBB9_136
## BB#179:                              ## %then885
                                        ##   in Loop: Header=BB9_109 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB9_136:                               ## %merge884
                                        ##   in Loop: Header=BB9_109 Depth=2
	movl	(%rbx), %ebx
	testl	%ebx, %ebx
	jns	LBB9_137
## BB#180:                              ## %then891
                                        ##   in Loop: Header=BB9_109 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
LBB9_137:                               ## %merge890
                                        ##   in Loop: Header=BB9_109 Depth=2
	cmpl	%ebx, %r12d
	jge	LBB9_138
## BB#139:                              ## %then897
                                        ##   in Loop: Header=BB9_109 Depth=2
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	callq	_printf
	callq	_abort
	jmp	LBB9_138
LBB9_141:                               ## %merge915
	movl	$8, %edi
	callq	_malloc
	movq	%rax, %r15
	movq	-72(%rbp), %rax         ## 8-byte Reload
	movl	8(%rax), %r14d
	movl	12(%rax), %r12d
	movl	%r14d, %edi
	imull	%r12d, %edi
	shll	$3, %edi
	callq	_malloc
	movq	%rax, %rbx
	movl	$16, %edi
	callq	_malloc
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
	jle	LBB9_143
	jmp	LBB9_147
	.p2align	4, 0x90
LBB9_146:                               ## %merge946
                                        ##   in Loop: Header=BB9_143 Depth=1
	incl	(%rdx)
	cmpl	%r14d, (%rdx)
	jg	LBB9_147
LBB9_143:                               ## %while_body935
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_145 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%ecx, (%rsi)
	jg	LBB9_146
	.p2align	4, 0x90
LBB9_145:                               ## %while_body938
                                        ##   Parent Loop BB9_143 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	imull	%r12d, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rbx,%rdi,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	LBB9_145
	jmp	LBB9_146
LBB9_147:                               ## %merge951
	movq	(%rax), %r8
	movl	12(%rax), %r9d
	movq	-72(%rbp), %rdx         ## 8-byte Reload
	movq	(%rdx), %r11
	movl	12(%rdx), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r14d, (%r13)
	jle	LBB9_149
	jmp	LBB9_153
	.p2align	4, 0x90
LBB9_152:                               ## %merge991
                                        ##   in Loop: Header=BB9_149 Depth=1
	incl	(%r13)
	cmpl	%r14d, (%r13)
	jg	LBB9_153
LBB9_149:                               ## %while_body970
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_151 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rsi)
	jg	LBB9_152
	.p2align	4, 0x90
LBB9_151:                               ## %while_body973
                                        ##   Parent Loop BB9_149 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%r13), %ebx
	movl	%r9d, %edx
	imull	%ebx, %edx
	addl	%edi, %edx
	movslq	%edx, %rdx
	imull	%r12d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r11,%rdi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r8,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	LBB9_151
	jmp	LBB9_152
LBB9_153:                               ## %merge996
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
LBB9_155:                               ## %then480
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	callq	_abort
	cmpl	%r15d, %ebx
	jge	LBB9_76
LBB9_75:                                ## %then486
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	callq	_abort
	decl	%r14d
	jns	LBB9_77
LBB9_156:                               ## %then496
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	callq	_abort
	jmp	LBB9_77
LBB9_162:                               ## %then627
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	callq	_abort
	cmpl	%r13d, %r12d
	jge	LBB9_98
LBB9_163:                               ## %then633
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.7(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	callq	_abort
	cmpl	8(%r14), %r15d
	je	LBB9_99
LBB9_164:                               ## %then642
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.8(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	callq	_abort
	cmpl	12(%r14), %r13d
	jne	LBB9_165
	jmp	LBB9_100
	.cfi_endproc
                                        ## -- End function
	.globl	_f                      ## -- Begin function f
	.p2align	4, 0x90
_f:                                     ## @f
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rax
Lcfi60:
	.cfi_def_cfa_offset 16
	leaq	L_fmt_int(%rip), %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	_printf
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.1(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	popq	%rax
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

	.p2align	4               ## @fmt_str.6
L_fmt_str.6:
	.asciz	"Semantic error : wrong dimension of operands of matrix operation."

	.p2align	4               ## @fmt_str.7
L_fmt_str.7:
	.asciz	"Semantic error : matrix index out of bounds."

	.p2align	4               ## @fmt_str.8
L_fmt_str.8:
	.asciz	"Semantic error : matrix block assignment must have agreeable dimension on both sides."


.subsections_via_symbols
