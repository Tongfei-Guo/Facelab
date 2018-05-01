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
	subq	$72, %rsp
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
	leaq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$0, -104(%rbp)
	movl	$0, -52(%rbp)
	cmpl	$0, -52(%rbp)
	js	LBB0_2
	jmp	LBB0_6
	.p2align	4, 0x90
LBB0_5:                                 ## %merge
                                        ##   in Loop: Header=BB0_2 Depth=1
	incl	-52(%rbp)
	cmpl	$0, -52(%rbp)
	jns	LBB0_6
LBB0_2:                                 ## %while_body
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_4 Depth 2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	$0, (%rax)
	jns	LBB0_5
	.p2align	4, 0x90
LBB0_4:                                 ## %while_body2
                                        ##   Parent Loop BB0_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movslq	(%rax), %rcx
	movq	$0, -48(%rbp,%rcx,8)
	incl	(%rax)
	cmpl	$0, (%rax)
	js	LBB0_4
	jmp	LBB0_5
LBB0_6:                                 ## %merge8
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movabsq	$4591870180066957722, %rdx ## imm = 0x3FB999999999999A
	movq	%rdx, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movq	%rcx, -16(%rax)
	movabsq	$4294967297, %rcx       ## imm = 0x100000001
	movq	%rcx, -8(%rax)
	movl	-8(%rax), %ecx
	movl	$1, %eax
	leaq	15(,%rcx,8), %rdi
	movabsq	$68719476720, %r13      ## imm = 0xFFFFFFFF0
	andq	%r13, %rdi
	movq	%rsp, %rsi
	subq	%rdi, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, -80(%rbp)         ## 8-byte Spill
	movq	%rbx, %rsp
	movq	%rsi, -16(%rdi)
	movl	%ecx, -8(%rdi)
	movl	$1, -4(%rdi)
	leal	-1(%rcx), %r8d
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdi)
	cmpl	%r8d, (%rcx)
	jle	LBB0_8
	jmp	LBB0_12
	.p2align	4, 0x90
LBB0_11:                                ## %merge39
                                        ##   in Loop: Header=BB0_8 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	LBB0_12
LBB0_8:                                 ## %while_body28
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_10 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	$0, (%rdi)
	jg	LBB0_11
	.p2align	4, 0x90
LBB0_10:                                ## %while_body31
                                        ##   Parent Loop BB0_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %ebx
	imull	%eax, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	$0, (%rdi)
	jle	LBB0_10
	jmp	LBB0_11
LBB0_12:                                ## %merge44
	decl	%eax
	movq	-80(%rbp), %rcx         ## 8-byte Reload
	movq	(%rcx), %r9
	movl	12(%rcx), %r11d
	movq	(%rdx), %r14
	movl	12(%rdx), %r15d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%rcx)
	jle	LBB0_14
	jmp	LBB0_18
	.p2align	4, 0x90
LBB0_17:                                ## %merge79
                                        ##   in Loop: Header=BB0_14 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	LBB0_18
LBB0_14:                                ## %while_body59
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_16 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%eax, (%rsi)
	jg	LBB0_17
	.p2align	4, 0x90
LBB0_16:                                ## %while_body62
                                        ##   Parent Loop BB0_14 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rcx), %ebx
	movl	%r11d, %edx
	imull	%ebx, %edx
	addl	%edi, %edx
	movslq	%edx, %rdx
	imull	%r15d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r14,%rdi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%eax, (%rsi)
	jle	LBB0_16
	jmp	LBB0_17
LBB0_18:                                ## %merge84
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -64(%rbp)         ## 8-byte Spill
	movq	%rcx, %rsp
	movq	$0, -16(%rax)
	callq	_funky
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	movq	(%rax), %r12
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
	jle	LBB0_20
	jmp	LBB0_24
	.p2align	4, 0x90
LBB0_23:                                ## %merge114
                                        ##   in Loop: Header=BB0_20 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB0_24
LBB0_20:                                ## %while_body103
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_22 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	LBB0_23
	.p2align	4, 0x90
LBB0_22:                                ## %while_body106
                                        ##   Parent Loop BB0_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	LBB0_22
	jmp	LBB0_23
LBB0_24:                                ## %merge119
	movq	(%r11), %r9
	movq	%r11, -88(%rbp)         ## 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r12), %r13
	movl	12(%r12), %r14d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r15
	movq	%r15, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r15)
	jle	LBB0_26
	jmp	LBB0_30
	.p2align	4, 0x90
LBB0_29:                                ## %merge159
                                        ##   in Loop: Header=BB0_26 Depth=1
	incl	(%r15)
	cmpl	%r8d, (%r15)
	jg	LBB0_30
LBB0_26:                                ## %while_body138
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_28 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	LBB0_29
	.p2align	4, 0x90
LBB0_28:                                ## %while_body141
                                        ##   Parent Loop BB0_26 Depth=1
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
	movsd	(%r13,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	LBB0_28
	jmp	LBB0_29
LBB0_30:                                ## %merge164
	callq	_free
	movq	%r12, %rdi
	callq	_free
	movq	-88(%rbp), %r10         ## 8-byte Reload
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
	jle	LBB0_32
	jmp	LBB0_36
	.p2align	4, 0x90
LBB0_35:                                ## %merge192
                                        ##   in Loop: Header=BB0_32 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB0_36
LBB0_32:                                ## %while_body181
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_34 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	LBB0_35
	.p2align	4, 0x90
LBB0_34:                                ## %while_body184
                                        ##   Parent Loop BB0_32 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	LBB0_34
	jmp	LBB0_35
LBB0_36:                                ## %merge197
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
	jle	LBB0_38
	jmp	LBB0_42
	.p2align	4, 0x90
LBB0_41:                                ## %merge237
                                        ##   in Loop: Header=BB0_38 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	LBB0_42
LBB0_38:                                ## %while_body216
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_40 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	LBB0_41
	.p2align	4, 0x90
LBB0_40:                                ## %while_body219
                                        ##   Parent Loop BB0_38 Depth=1
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
	jle	LBB0_40
	jmp	LBB0_41
LBB0_42:                                ## %merge242
	movq	-96(%rbp), %rdi         ## 8-byte Reload
	movsd	8(%rdi), %xmm0          ## xmm0 = mem[0],zero
	movq	-64(%rbp), %rax         ## 8-byte Reload
	movsd	%xmm0, (%rax)
	callq	_free
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	leaq	L_fmt_str(%rip), %r12
	leaq	L_fmt_str.1(%rip), %r13
	movq	%rcx, -64(%rbp)         ## 8-byte Spill
	cmpl	$2, (%rcx)
	jle	LBB0_44
	jmp	LBB0_71
	.p2align	4, 0x90
LBB0_70:                                ## %merge381
                                        ##   in Loop: Header=BB0_44 Depth=1
	incl	(%rcx)
	cmpl	$2, (%rcx)
	jg	LBB0_71
LBB0_44:                                ## %while_body249
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_46 Depth 2
                                        ##       Child Loop BB0_48 Depth 3
                                        ##         Child Loop BB0_50 Depth 4
                                        ##       Child Loop BB0_54 Depth 3
                                        ##         Child Loop BB0_56 Depth 4
                                        ##       Child Loop BB0_60 Depth 3
                                        ##         Child Loop BB0_62 Depth 4
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	cmpl	$2, (%r14)
	jle	LBB0_46
	jmp	LBB0_70
	.p2align	4, 0x90
LBB0_69:                                ## %merge371
                                        ##   in Loop: Header=BB0_46 Depth=2
	callq	_printf
	xorl	%eax, %eax
	movq	%r12, %rdi
	leaq	L_fmt_str.3(%rip), %rsi
	callq	_printf
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	_printf
	incl	(%r14)
	movq	-64(%rbp), %rcx         ## 8-byte Reload
	cmpl	$2, (%r14)
	jg	LBB0_70
LBB0_46:                                ## %while_body252
                                        ##   Parent Loop BB0_44 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_48 Depth 3
                                        ##         Child Loop BB0_50 Depth 4
                                        ##       Child Loop BB0_54 Depth 3
                                        ##         Child Loop BB0_56 Depth 4
                                        ##       Child Loop BB0_60 Depth 3
                                        ##         Child Loop BB0_62 Depth 4
	movl	(%rcx), %esi
	xorl	%eax, %eax
	leaq	L_fmt_int(%rip), %rbx
	movq	%rbx, %rdi
	callq	_printf
	movl	(%r14), %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	_printf
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r9
	movq	%r9, %rsp
	movq	%rcx, -16(%rax)
	movabsq	$4294967297, %rdx       ## imm = 0x100000001
	movq	%rdx, -8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rax)
	cmpl	$0, (%rdx)
	jle	LBB0_48
	jmp	LBB0_52
	.p2align	4, 0x90
LBB0_51:                                ## %merge279
                                        ##   in Loop: Header=BB0_48 Depth=3
	incl	(%rdx)
	cmpl	$0, (%rdx)
	jg	LBB0_52
LBB0_48:                                ## %while_body268
                                        ##   Parent Loop BB0_44 Depth=1
                                        ##     Parent Loop BB0_46 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB0_50 Depth 4
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rsi)
	cmpl	$0, (%rax)
	jg	LBB0_51
	.p2align	4, 0x90
LBB0_50:                                ## %while_body271
                                        ##   Parent Loop BB0_44 Depth=1
                                        ##     Parent Loop BB0_46 Depth=2
                                        ##       Parent Loop BB0_48 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movl	(%rax), %esi
	addl	(%rdx), %esi
	movslq	%esi, %rsi
	movq	$0, (%rcx,%rsi,8)
	incl	(%rax)
	cmpl	$0, (%rax)
	jle	LBB0_50
	jmp	LBB0_51
	.p2align	4, 0x90
LBB0_52:                                ## %merge284
                                        ##   in Loop: Header=BB0_46 Depth=2
	movq	%r13, %r15
	movq	(%r9), %r10
	movl	12(%r9), %r11d
	movq	-72(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %r13
	movl	12(%rax), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	cmpl	$0, (%rbx)
	jle	LBB0_54
	jmp	LBB0_58
	.p2align	4, 0x90
LBB0_57:                                ## %merge322
                                        ##   in Loop: Header=BB0_54 Depth=3
	incl	(%rbx)
	cmpl	$0, (%rbx)
	jg	LBB0_58
LBB0_54:                                ## %while_body301
                                        ##   Parent Loop BB0_44 Depth=1
                                        ##     Parent Loop BB0_46 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB0_56 Depth 4
	movq	%rsp, %r8
	leaq	-16(%r8), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r8)
	cmpl	$0, (%rax)
	jg	LBB0_57
	.p2align	4, 0x90
LBB0_56:                                ## %while_body304
                                        ##   Parent Loop BB0_44 Depth=1
                                        ##     Parent Loop BB0_46 Depth=2
                                        ##       Parent Loop BB0_54 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movl	(%rax), %ecx
	movl	(%rbx), %edx
	movl	%r11d, %esi
	imull	%edx, %esi
	addl	%ecx, %esi
	movslq	%esi, %rsi
	imull	%edi, %edx
	addl	%ecx, %edx
	movslq	%edx, %rcx
	movsd	(%r13,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rsi,8)
	incl	(%rax)
	cmpl	$0, (%rax)
	jle	LBB0_56
	jmp	LBB0_57
	.p2align	4, 0x90
LBB0_58:                                ## %merge327
                                        ##   in Loop: Header=BB0_46 Depth=2
	movq	(%r9), %r11
	movl	8(%r9), %r8d
	decl	%r8d
	movl	12(%r9), %eax
	leal	-1(%rax), %esi
	movq	-80(%rbp), %rcx         ## 8-byte Reload
	movq	(%rcx), %rdi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %r9
	movq	%r9, %rsp
	movb	$1, -16(%rdx)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rbx)
	movq	%r15, %r13
	cmpl	%r8d, (%rdx)
	jle	LBB0_60
	.p2align	4, 0x90
LBB0_66:                                ## %merge367
                                        ##   in Loop: Header=BB0_46 Depth=2
	cmpb	$1, (%r9)
	je	LBB0_68
## BB#67:                               ## %then372
                                        ##   in Loop: Header=BB0_46 Depth=2
	xorl	%eax, %eax
	movq	%r12, %rdi
	leaq	L_fmt_str.5(%rip), %rsi
	jmp	LBB0_69
	.p2align	4, 0x90
LBB0_65:                                ## %merge362
                                        ##   in Loop: Header=BB0_60 Depth=3
	incl	(%rdx)
	cmpl	%r8d, (%rdx)
	jg	LBB0_66
LBB0_60:                                ## %while_body342
                                        ##   Parent Loop BB0_44 Depth=1
                                        ##     Parent Loop BB0_46 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB0_62 Depth 4
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rbx)
	jle	LBB0_62
	jmp	LBB0_65
	.p2align	4, 0x90
LBB0_64:                                ## %then
                                        ##   in Loop: Header=BB0_62 Depth=4
	movb	$0, (%r9)
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jg	LBB0_65
LBB0_62:                                ## %while_body345
                                        ##   Parent Loop BB0_44 Depth=1
                                        ##     Parent Loop BB0_46 Depth=2
                                        ##       Parent Loop BB0_60 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movl	(%rdx), %ecx
	imull	%eax, %ecx
	addl	(%rbx), %ecx
	movslq	%ecx, %rcx
	movsd	(%r11,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	ucomisd	(%rdi,%rcx,8), %xmm0
	jne	LBB0_64
## BB#63:                               ## %merge358
                                        ##   in Loop: Header=BB0_62 Depth=4
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jle	LBB0_62
	jmp	LBB0_65
	.p2align	4, 0x90
LBB0_68:                                ## %else374
                                        ##   in Loop: Header=BB0_46 Depth=2
	xorl	%eax, %eax
	movq	%r12, %rdi
	leaq	L_fmt_str.4(%rip), %rsi
	jmp	LBB0_69
LBB0_71:                                ## %merge386
	movl	$2, (%rcx)
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
	.globl	_funky                  ## -- Begin function funky
	.p2align	4, 0x90
_funky:                                 ## @funky
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
	subq	$120, %rsp
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
	movq	$0, -160(%rbp)
	movabsq	$4591870180066957722, %r8 ## imm = 0x3FB999999999999A
	movq	%r8, -152(%rbp)
	movabsq	$4596373779694328218, %rax ## imm = 0x3FC999999999999A
	movq	%rax, -144(%rbp)
	movabsq	$4607182418800017408, %rax ## imm = 0x3FF0000000000000
	movq	%rax, -136(%rbp)
	movabsq	$4607632778762754458, %rax ## imm = 0x3FF199999999999A
	movq	%rax, -128(%rbp)
	movabsq	$4608083138725491507, %rax ## imm = 0x3FF3333333333333
	movq	%rax, -120(%rbp)
	movabsq	$4611686018427387904, %rax ## imm = 0x4000000000000000
	movq	%rax, -112(%rbp)
	movabsq	$4611911198408756429, %rax ## imm = 0x4000CCCCCCCCCCCD
	movq	%rax, -104(%rbp)
	movabsq	$4612136378390124954, %rax ## imm = 0x400199999999999A
	movq	%rax, -96(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -88(%rbp)
	movabsq	$12884901891, %rdx      ## imm = 0x300000003
	movq	%rdx, -80(%rbp)
	movl	$3, %ecx
	movq	%rsp, %rax
	addq	$-80, %rax
	movq	%rax, %rsp
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$2, %edx
	movl	$0, -44(%rbp)
	cmpl	%edx, -44(%rbp)
	jle	LBB1_2
	jmp	LBB1_6
	.p2align	4, 0x90
LBB1_5:                                 ## %merge
                                        ##   in Loop: Header=BB1_2 Depth=1
	incl	-44(%rbp)
	cmpl	%edx, -44(%rbp)
	jg	LBB1_6
LBB1_2:                                 ## %while_body
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_4 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%edx, (%rsi)
	jg	LBB1_5
	.p2align	4, 0x90
LBB1_4:                                 ## %while_body18
                                        ##   Parent Loop BB1_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %edi
	imull	%ecx, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rax,%rdi,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	LBB1_4
	jmp	LBB1_5
LBB1_6:                                 ## %merge26
	decl	%ecx
	movq	-64(%rbp), %r9
	movl	-52(%rbp), %r11d
	movq	-88(%rbp), %r14
	movl	-76(%rbp), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%ecx, (%rax)
	jle	LBB1_8
	jmp	LBB1_12
	.p2align	4, 0x90
LBB1_11:                                ## %merge61
                                        ##   in Loop: Header=BB1_8 Depth=1
	incl	(%rax)
	cmpl	%ecx, (%rax)
	jg	LBB1_12
LBB1_8:                                 ## %while_body41
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_10 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	LBB1_11
	.p2align	4, 0x90
LBB1_10:                                ## %while_body44
                                        ##   Parent Loop BB1_8 Depth=1
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
	jle	LBB1_10
	jmp	LBB1_11
LBB1_12:                                ## %merge66
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -72(%rbp)         ## 8-byte Spill
	movq	%rcx, %rsp
	movq	%r8, -16(%rax)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %r14
	movl	-56(%rbp), %r12d
	movl	-52(%rbp), %r13d
	movl	%r12d, %edi
	imull	%r13d, %edi
	shll	$3, %edi
	callq	_malloc
	movq	%rax, %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%rbx, (%rax)
	movl	%r12d, 8(%rax)
	movl	%r13d, 12(%rax)
	decl	%r12d
	leal	-1(%r13), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r12d, (%rdx)
	jle	LBB1_14
	jmp	LBB1_18
	.p2align	4, 0x90
LBB1_17:                                ## %merge96
                                        ##   in Loop: Header=BB1_14 Depth=1
	incl	(%rdx)
	cmpl	%r12d, (%rdx)
	jg	LBB1_18
LBB1_14:                                ## %while_body85
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_16 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%ecx, (%rsi)
	jg	LBB1_17
	.p2align	4, 0x90
LBB1_16:                                ## %while_body88
                                        ##   Parent Loop BB1_14 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	imull	%r13d, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rbx,%rdi,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	LBB1_16
	jmp	LBB1_17
LBB1_18:                                ## %merge101
	movq	(%rax), %r8
	movl	12(%rax), %r9d
	movq	-64(%rbp), %r11
	movl	-52(%rbp), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r15
	movq	%r15, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r12d, (%r15)
	jle	LBB1_20
	jmp	LBB1_24
	.p2align	4, 0x90
LBB1_23:                                ## %merge141
                                        ##   in Loop: Header=BB1_20 Depth=1
	incl	(%r15)
	cmpl	%r12d, (%r15)
	jg	LBB1_24
LBB1_20:                                ## %while_body120
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_22 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rsi)
	jg	LBB1_23
	.p2align	4, 0x90
LBB1_22:                                ## %while_body123
                                        ##   Parent Loop BB1_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%r15), %ebx
	movl	%r9d, %edx
	imull	%ebx, %edx
	addl	%edi, %edx
	movslq	%edx, %rdx
	imull	%r13d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r11,%rdi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r8,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	LBB1_22
	jmp	LBB1_23
LBB1_24:                                ## %merge146
	movq	%rax, (%r14)
	movq	-72(%rbp), %rax         ## 8-byte Reload
	movsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	movsd	%xmm0, 8(%r14)
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
