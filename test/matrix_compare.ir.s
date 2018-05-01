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
	subq	$88, %rsp
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
	movq	$0, -128(%rbp)
	movabsq	$4591870180066957722, %rax ## imm = 0x3FB999999999999A
	movq	%rax, -120(%rbp)
	movabsq	$4596373779694328218, %rax ## imm = 0x3FC999999999999A
	movq	%rax, -112(%rbp)
	movabsq	$4607182418800017408, %r13 ## imm = 0x3FF0000000000000
	movq	%r13, -104(%rbp)
	movabsq	$4607632778762754458, %rax ## imm = 0x3FF199999999999A
	movq	%rax, -96(%rbp)
	movabsq	$4608083138725491507, %rax ## imm = 0x3FF3333333333333
	movq	%rax, -88(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -80(%rbp)
	movabsq	$12884901890, %r15      ## imm = 0x300000002
	movq	%r15, -72(%rbp)
	movl	$2, %r8d
	movl	$3, %ecx
	movq	%rsp, %rax
	addq	$-48, %rax
	movq	%rax, %rsp
	movq	%rax, -64(%rbp)
	movq	%r15, -56(%rbp)
	movl	$1, %edx
	movl	$0, -44(%rbp)
	cmpl	%edx, -44(%rbp)
	jle	LBB0_2
	jmp	LBB0_6
	.p2align	4, 0x90
LBB0_5:                                 ## %merge
                                        ##   in Loop: Header=BB0_2 Depth=1
	incl	-44(%rbp)
	cmpl	%edx, -44(%rbp)
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
LBB0_4:                                 ## %while_body15
                                        ##   Parent Loop BB0_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %edi
	imull	%ecx, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rax,%rdi,8)
	incl	(%rsi)
	cmpl	%r8d, (%rsi)
	jle	LBB0_4
	jmp	LBB0_5
LBB0_6:                                 ## %merge23
	decl	%ecx
	decl	%r8d
	movq	-64(%rbp), %r9
	movl	-52(%rbp), %r11d
	movq	-80(%rbp), %r14
	movl	-68(%rbp), %r12d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	LBB0_8
	jmp	LBB0_12
	.p2align	4, 0x90
LBB0_11:                                ## %merge58
                                        ##   in Loop: Header=BB0_8 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB0_12
LBB0_8:                                 ## %while_body38
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_10 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	LBB0_11
	.p2align	4, 0x90
LBB0_10:                                ## %while_body41
                                        ##   Parent Loop BB0_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %esi
	movl	(%rax), %edi
	movl	%r11d, %ebx
	imull	%edi, %ebx
	addl	%esi, %ebx
	movslq	%ebx, %rbx
	imull	%r12d, %edi
	addl	%esi, %edi
	movslq	%edi, %rsi
	movsd	(%r14,%rsi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rbx,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	LBB0_10
	jmp	LBB0_11
LBB0_12:                                ## %merge63
	movq	%rsp, %rax
	leaq	-48(%rax), %rcx
	movq	%rcx, %rsp
	movq	$0, -48(%rax)
	movabsq	$4591870180066957722, %rdx ## imm = 0x3FB999999999999A
	movq	%rdx, -40(%rax)
	movabsq	$4596373779694328218, %rdx ## imm = 0x3FC999999999999A
	movq	%rdx, -32(%rax)
	movq	%r13, -24(%rax)
	movabsq	$4607632778762754458, %rdx ## imm = 0x3FF199999999999A
	movq	%rdx, -16(%rax)
	movabsq	$4608083138725491507, %rdx ## imm = 0x3FF3333333333333
	movq	%rdx, -8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r8
	movq	%r8, %rsp
	movq	%rcx, -16(%rax)
	movq	%r15, -8(%rax)
	movl	$2, %r9d
	movl	$3, %r13d
	movq	%rsp, %rdi
	addq	$-48, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movq	%rdi, -16(%rax)
	movq	%r15, -8(%rax)
	movl	$1, %r10d
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r10d, (%rdx)
	jle	LBB0_14
	jmp	LBB0_18
	.p2align	4, 0x90
LBB0_17:                                ## %merge102
                                        ##   in Loop: Header=BB0_14 Depth=1
	incl	(%rdx)
	cmpl	%r10d, (%rdx)
	jg	LBB0_18
LBB0_14:                                ## %while_body91
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_16 Depth 2
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r9d, (%rbx)
	jg	LBB0_17
	.p2align	4, 0x90
LBB0_16:                                ## %while_body94
                                        ##   Parent Loop BB0_14 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %eax
	imull	%r13d, %eax
	addl	(%rbx), %eax
	cltq
	movq	$0, (%rdi,%rax,8)
	incl	(%rbx)
	cmpl	%r9d, (%rbx)
	jle	LBB0_16
	jmp	LBB0_17
LBB0_18:                                ## %merge107
	decl	%r13d
	decl	%r9d
	movq	(%rsi), %r10
	movl	12(%rsi), %r11d
	movq	(%r8), %r14
	movl	12(%r8), %r12d
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r9d, (%rdi)
	jle	LBB0_20
	jmp	LBB0_24
	.p2align	4, 0x90
LBB0_23:                                ## %merge147
                                        ##   in Loop: Header=BB0_20 Depth=1
	incl	(%rdi)
	cmpl	%r9d, (%rdi)
	jg	LBB0_24
LBB0_20:                                ## %while_body126
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_22 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r8)
	cmpl	%r13d, (%rbx)
	jg	LBB0_23
	.p2align	4, 0x90
LBB0_22:                                ## %while_body129
                                        ##   Parent Loop BB0_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %edx
	movl	(%rdi), %eax
	movl	%r11d, %ecx
	imull	%eax, %ecx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	imull	%r12d, %eax
	addl	%edx, %eax
	cltq
	movsd	(%r14,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rcx,8)
	incl	(%rbx)
	cmpl	%r13d, (%rbx)
	jle	LBB0_22
	jmp	LBB0_23
LBB0_24:                                ## %merge152
	leaq	-64(%rbp), %rdi
	callq	_compare
	movq	%rsp, %rax
	leaq	-32(%rax), %rcx
	movq	%rcx, %rsp
	movq	$0, -32(%rax)
	movabsq	$4591870180066957722, %rdx ## imm = 0x3FB999999999999A
	movq	%rdx, -24(%rax)
	movabsq	$4596373779694328218, %rdx ## imm = 0x3FC999999999999A
	movq	%rdx, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r10
	movq	%r10, %rsp
	movq	%rcx, -16(%rax)
	movabsq	$12884901889, %rdi      ## imm = 0x300000001
	movq	%rdi, -8(%rax)
	movl	$1, %r8d
	movl	$3, %ecx
	movq	%rsp, %rsi
	addq	$-32, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movq	%rsi, -16(%rax)
	movq	%rdi, -8(%rax)
	movl	$2, %eax
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	$0, (%rdi)
	jle	LBB0_26
	jmp	LBB0_30
	.p2align	4, 0x90
LBB0_29:                                ## %merge188
                                        ##   in Loop: Header=BB0_26 Depth=1
	incl	(%rdi)
	cmpl	$0, (%rdi)
	jg	LBB0_30
LBB0_26:                                ## %while_body177
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_28 Depth 2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rdx)
	cmpl	%eax, (%rbx)
	jg	LBB0_29
	.p2align	4, 0x90
LBB0_28:                                ## %while_body180
                                        ##   Parent Loop BB0_26 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %edx
	imull	%ecx, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%eax, (%rbx)
	jle	LBB0_28
	jmp	LBB0_29
LBB0_30:                                ## %merge193
	decl	%ecx
	decl	%r8d
	movq	(%r14), %r9
	movl	12(%r14), %r11d
	movq	(%r10), %r12
	movl	12(%r10), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%rax)
	jle	LBB0_32
	jmp	LBB0_36
	.p2align	4, 0x90
LBB0_35:                                ## %merge233
                                        ##   in Loop: Header=BB0_32 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB0_36
LBB0_32:                                ## %while_body212
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_34 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rsi)
	jg	LBB0_35
	.p2align	4, 0x90
LBB0_34:                                ## %while_body215
                                        ##   Parent Loop BB0_32 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rax), %ebx
	movl	%r11d, %edx
	imull	%ebx, %edx
	addl	%edi, %edx
	movslq	%edx, %rdx
	imull	%r13d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r12,%rdi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	LBB0_34
	jmp	LBB0_35
LBB0_36:                                ## %merge238
	movq	%rsp, %rax
	leaq	-48(%rax), %rcx
	movq	%rcx, %rsp
	movq	$0, -48(%rax)
	movabsq	$4591870180066957722, %rdx ## imm = 0x3FB999999999999A
	movq	%rdx, -40(%rax)
	movabsq	$4596373779694328218, %rdx ## imm = 0x3FC999999999999A
	movq	%rdx, -32(%rax)
	movabsq	$4607182418800017408, %rdx ## imm = 0x3FF0000000000000
	movq	%rdx, -24(%rax)
	movabsq	$4607632778762754458, %rdx ## imm = 0x3FF199999999999A
	movq	%rdx, -16(%rax)
	movabsq	$4608083138725491507, %rdx ## imm = 0x3FF3333333333333
	movq	%rdx, -8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r10
	movq	%r10, %rsp
	movq	%rcx, -16(%rax)
	movq	%r15, -8(%rax)
	movl	$2, %r8d
	movl	$3, %ecx
	movq	%rsp, %rsi
	addq	$-48, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r12
	movq	%r12, %rsp
	movq	%rsi, -16(%rax)
	movq	%r15, -8(%rax)
	movl	$1, %eax
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%eax, (%rdi)
	jle	LBB0_38
	jmp	LBB0_42
	.p2align	4, 0x90
LBB0_41:                                ## %merge277
                                        ##   in Loop: Header=BB0_38 Depth=1
	incl	(%rdi)
	cmpl	%eax, (%rdi)
	jg	LBB0_42
LBB0_38:                                ## %while_body266
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_40 Depth 2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rbx)
	jg	LBB0_41
	.p2align	4, 0x90
LBB0_40:                                ## %while_body269
                                        ##   Parent Loop BB0_38 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %edx
	imull	%ecx, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jle	LBB0_40
	jmp	LBB0_41
LBB0_42:                                ## %merge282
	decl	%ecx
	decl	%r8d
	movq	(%r12), %r9
	movl	12(%r12), %r11d
	movq	(%r10), %r15
	movl	12(%r10), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%rax)
	jle	LBB0_44
	jmp	LBB0_48
	.p2align	4, 0x90
LBB0_47:                                ## %merge322
                                        ##   in Loop: Header=BB0_44 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB0_48
LBB0_44:                                ## %while_body301
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_46 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rsi)
	jg	LBB0_47
	.p2align	4, 0x90
LBB0_46:                                ## %while_body304
                                        ##   Parent Loop BB0_44 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rax), %ebx
	movl	%r11d, %edx
	imull	%ebx, %edx
	addl	%edi, %edx
	movslq	%edx, %rdx
	imull	%r13d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r15,%rdi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	LBB0_46
	jmp	LBB0_47
LBB0_48:                                ## %merge327
	movq	(%r14), %r11
	movl	8(%r14), %r8d
	decl	%r8d
	movl	12(%r14), %edx
	leal	-1(%rdx), %esi
	movq	(%r12), %rdi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r9
	movq	%r9, %rsp
	movb	$1, -16(%rcx)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%rcx)
	jle	LBB0_50
LBB0_56:                                ## %merge367
	cmpb	$1, (%r9)
	je	LBB0_59
## BB#57:                               ## %then372
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.5(%rip), %rsi
	jmp	LBB0_58
	.p2align	4, 0x90
LBB0_55:                                ## %merge362
                                        ##   in Loop: Header=BB0_50 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	LBB0_56
LBB0_50:                                ## %while_body342
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_52 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rbx)
	jle	LBB0_52
	jmp	LBB0_55
	.p2align	4, 0x90
LBB0_54:                                ## %then
                                        ##   in Loop: Header=BB0_52 Depth=2
	movb	$0, (%r9)
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jg	LBB0_55
LBB0_52:                                ## %while_body345
                                        ##   Parent Loop BB0_50 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	imull	%edx, %eax
	addl	(%rbx), %eax
	cltq
	movsd	(%r11,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	ucomisd	(%rdi,%rax,8), %xmm0
	jne	LBB0_54
## BB#53:                               ## %merge358
                                        ##   in Loop: Header=BB0_52 Depth=2
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jle	LBB0_52
	jmp	LBB0_55
LBB0_59:                                ## %else373
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.4(%rip), %rsi
LBB0_58:                                ## %merge371
	xorl	%eax, %eax
	callq	_printf
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.3(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	_compare
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
	.globl	_compare                ## -- Begin function compare
	.p2align	4, 0x90
_compare:                               ## @compare
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
	movq	%rax, -64(%rbp)
	movl	%r9d, -56(%rbp)
	movl	%r11d, -52(%rbp)
	decl	%r9d
	leal	-1(%r11), %edx
	movl	$0, -48(%rbp)
	cmpl	%r9d, -48(%rbp)
	jle	LBB1_2
	jmp	LBB1_6
	.p2align	4, 0x90
LBB1_5:                                 ## %merge
                                        ##   in Loop: Header=BB1_2 Depth=1
	incl	-48(%rbp)
	cmpl	%r9d, -48(%rbp)
	jg	LBB1_6
LBB1_2:                                 ## %while_body
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_4 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edx, (%rcx)
	jg	LBB1_5
	.p2align	4, 0x90
LBB1_4:                                 ## %while_body5
                                        ##   Parent Loop BB1_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %ebx
	imull	%r11d, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rax,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	LBB1_4
	jmp	LBB1_5
LBB1_6:                                 ## %merge12
	movq	-64(%rbp), %r10
	movl	-52(%rbp), %r11d
	movq	(%rdi), %r15
	movl	12(%rdi), %r12d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r9d, (%r13)
	jle	LBB1_8
	jmp	LBB1_12
	.p2align	4, 0x90
LBB1_11:                                ## %merge47
                                        ##   in Loop: Header=BB1_8 Depth=1
	incl	(%r13)
	cmpl	%r9d, (%r13)
	jg	LBB1_12
LBB1_8:                                 ## %while_body27
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_10 Depth 2
	movq	%rsp, %r14
	leaq	-16(%r14), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r14)
	cmpl	%edx, (%rcx)
	jg	LBB1_11
	.p2align	4, 0x90
LBB1_10:                                ## %while_body30
                                        ##   Parent Loop BB1_8 Depth=1
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
	jle	LBB1_10
	jmp	LBB1_11
LBB1_12:                                ## %merge52
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
	movq	%rcx, -72(%rbp)         ## 8-byte Spill
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
	jle	LBB1_14
	jmp	LBB1_18
	.p2align	4, 0x90
LBB1_17:                                ## %merge80
                                        ##   in Loop: Header=BB1_14 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	LBB1_18
LBB1_14:                                ## %while_body69
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_16 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r8)
	cmpl	%ecx, (%rbx)
	jg	LBB1_17
	.p2align	4, 0x90
LBB1_16:                                ## %while_body72
                                        ##   Parent Loop BB1_14 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rdi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	LBB1_16
	jmp	LBB1_17
LBB1_18:                                ## %merge85
	movq	-72(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %r8
	movl	12(%rax), %r11d
	movq	(%rsi), %r14
	movl	12(%rsi), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r9d, (%rax)
	jle	LBB1_20
	jmp	LBB1_24
	.p2align	4, 0x90
LBB1_23:                                ## %merge125
                                        ##   in Loop: Header=BB1_20 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	LBB1_24
LBB1_20:                                ## %while_body104
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_22 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	LBB1_23
	.p2align	4, 0x90
LBB1_22:                                ## %while_body107
                                        ##   Parent Loop BB1_20 Depth=1
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
	jle	LBB1_22
	jmp	LBB1_23
LBB1_24:                                ## %merge130
	leaq	L_fmt_str(%rip), %rbx
	leaq	L_system_string.8(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	leaq	L_fmt_str.1(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movq	-64(%rbp), %r13
	movl	-56(%rbp), %eax
	movl	-52(%rbp), %r14d
	decl	%eax
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	leal	-1(%r14), %r15d
	movq	%rsp, %rax
	leaq	-16(%rax), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rax)
	jmp	LBB1_25
	.p2align	4, 0x90
LBB1_29:                                ## %merge158
                                        ##   in Loop: Header=BB1_25 Depth=1
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.1(%rip), %rsi
	callq	_printf
	incl	(%r12)
LBB1_25:                                ## %while143
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_28 Depth 2
	movl	-44(%rbp), %eax         ## 4-byte Reload
	cmpl	%eax, (%r12)
	jg	LBB1_30
## BB#26:                               ## %while_body144
                                        ##   in Loop: Header=BB1_25 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r15d, (%rbx)
	jg	LBB1_29
	.p2align	4, 0x90
LBB1_28:                                ## %while_body147
                                        ##   Parent Loop BB1_25 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%r12), %eax
	imull	%r14d, %eax
	addl	(%rbx), %eax
	cltq
	movsd	(%r13,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	movb	$1, %al
	leaq	L_fmt_double(%rip), %rdi
	callq	_printf
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.2(%rip), %rsi
	callq	_printf
	incl	(%rbx)
	cmpl	%r15d, (%rbx)
	jle	LBB1_28
	jmp	LBB1_29
LBB1_30:                                ## %merge164
	leaq	L_fmt_str(%rip), %rbx
	leaq	L_fmt_str.3(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	leaq	L_system_string.9(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	leaq	L_fmt_str.1(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movq	-72(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %rbx
	movl	8(%rax), %ecx
	movl	12(%rax), %r14d
	decl	%ecx
	movl	%ecx, -44(%rbp)         ## 4-byte Spill
	leal	-1(%r14), %r15d
	movq	%rsp, %rax
	leaq	-16(%rax), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rax)
	jmp	LBB1_31
	.p2align	4, 0x90
LBB1_35:                                ## %merge194
                                        ##   in Loop: Header=BB1_31 Depth=1
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.1(%rip), %rsi
	callq	_printf
	incl	(%r12)
LBB1_31:                                ## %while179
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_34 Depth 2
	movl	-44(%rbp), %eax         ## 4-byte Reload
	cmpl	%eax, (%r12)
	jg	LBB1_36
## BB#32:                               ## %while_body180
                                        ##   in Loop: Header=BB1_31 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rax)
	cmpl	%r15d, (%r13)
	jg	LBB1_35
	.p2align	4, 0x90
LBB1_34:                                ## %while_body183
                                        ##   Parent Loop BB1_31 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%r12), %eax
	imull	%r14d, %eax
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
	cmpl	%r15d, (%r13)
	jle	LBB1_34
	jmp	LBB1_35
LBB1_36:                                ## %merge200
	leaq	L_fmt_str(%rip), %rbx
	leaq	L_fmt_str.3(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	leaq	L_system_string.10(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movq	-64(%rbp), %r11
	movl	-56(%rbp), %r8d
	decl	%r8d
	movl	-52(%rbp), %edx
	leal	-1(%rdx), %esi
	movq	-72(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %rdi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r9
	movq	%r9, %rsp
	movb	$1, -16(%rcx)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%rcx)
	jle	LBB1_38
LBB1_44:                                ## %merge242
	cmpb	$1, (%r9)
	je	LBB1_47
## BB#45:                               ## %then247
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.5(%rip), %rsi
	jmp	LBB1_46
	.p2align	4, 0x90
LBB1_43:                                ## %merge237
                                        ##   in Loop: Header=BB1_38 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	LBB1_44
LBB1_38:                                ## %while_body217
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_40 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rbx)
	jle	LBB1_40
	jmp	LBB1_43
	.p2align	4, 0x90
LBB1_42:                                ## %then
                                        ##   in Loop: Header=BB1_40 Depth=2
	movb	$0, (%r9)
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jg	LBB1_43
LBB1_40:                                ## %while_body220
                                        ##   Parent Loop BB1_38 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	imull	%edx, %eax
	addl	(%rbx), %eax
	cltq
	movsd	(%r11,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	ucomisd	(%rdi,%rax,8), %xmm0
	jne	LBB1_42
## BB#41:                               ## %merge233
                                        ##   in Loop: Header=BB1_40 Depth=2
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jle	LBB1_40
	jmp	LBB1_43
LBB1_47:                                ## %else249
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.4(%rip), %rsi
LBB1_46:                                ## %merge246
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
	movq	%rsp, %rax
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
	.asciz	"m1: "

L_system_string.6:                      ## @system_string.6
	.asciz	"m2: "

L_system_string.7:                      ## @system_string.7
	.asciz	"m1 == m2 ? "

L_system_string.8:                      ## @system_string.8
	.asciz	"m1: "

L_system_string.9:                      ## @system_string.9
	.asciz	"m2: "

L_system_string.10:                     ## @system_string.10
	.asciz	"m1 == m2 ? "


.subsections_via_symbols
