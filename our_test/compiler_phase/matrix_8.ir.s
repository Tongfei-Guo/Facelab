<<<<<<< HEAD
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
=======
	.text
	.file	"MicroC"
	.globl	main                    # -- Begin function main
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
>>>>>>> 4667ed0b5742d3adfc4ba0aa43a8fa7ef07bbc52
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
<<<<<<< HEAD
	subq	$120, %rsp
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
	movq	$0, -160(%rbp)
	movabsq	$4591870180066957722, %rax ## imm = 0x3FB999999999999A
	movq	%rax, -152(%rbp)
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
	movl	$3, %eax
	movq	%rsp, %rcx
	addq	$-80, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$2, %edx
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
=======
	subq	$72, %rsp
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
	movabsq	$-4615739258092021350, %rax # imm = 0xBFF199999999999A
	movq	%rax, -112(%rbp)
	movabsq	$-4611235658464650854, %rax # imm = 0xC00199999999999A
	movq	%rax, -104(%rbp)
	movabsq	$4614613358185178726, %rax # imm = 0x400A666666666666
	movq	%rax, -96(%rbp)
	movabsq	$-4606732058837280358, %rax # imm = 0xC01199999999999A
	movq	%rax, -88(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -80(%rbp)
	movabsq	$8589934594, %rdx       # imm = 0x200000002
	movq	%rdx, -72(%rbp)
	movl	$2, %eax
	movq	%rsp, %rcx
	addq	$-32, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$1, %edx
	movl	$0, -44(%rbp)
	cmpl	%edx, -44(%rbp)
	jle	.LBB0_2
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_5:                                # %merge
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	-44(%rbp)
	cmpl	%edx, -44(%rbp)
	jg	.LBB0_6
.LBB0_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
>>>>>>> 4667ed0b5742d3adfc4ba0aa43a8fa7ef07bbc52
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%edx, (%rsi)
<<<<<<< HEAD
	jg	LBB0_5
	.p2align	4, 0x90
LBB0_4:                                 ## %while_body18
                                        ##   Parent Loop BB0_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
=======
	jg	.LBB0_5
	.p2align	4, 0x90
.LBB0_4:                                # %while_body13
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
>>>>>>> 4667ed0b5742d3adfc4ba0aa43a8fa7ef07bbc52
	movl	-44(%rbp), %edi
	imull	%eax, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rcx,%rdi,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
<<<<<<< HEAD
	jle	LBB0_4
	jmp	LBB0_5
LBB0_6:                                 ## %merge26
	decl	%eax
	movq	-64(%rbp), %r8
	movl	-52(%rbp), %r10d
	movq	-88(%rbp), %r11
	movl	-76(%rbp), %r14d
=======
	jle	.LBB0_4
	jmp	.LBB0_5
.LBB0_6:                                # %merge21
	decl	%eax
	movq	-64(%rbp), %r8
	movl	-52(%rbp), %r10d
	movq	-80(%rbp), %r11
	movl	-68(%rbp), %r14d
>>>>>>> 4667ed0b5742d3adfc4ba0aa43a8fa7ef07bbc52
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%eax, (%rbx)
<<<<<<< HEAD
	jle	LBB0_8
	jmp	LBB0_12
	.p2align	4, 0x90
LBB0_11:                                ## %merge61
                                        ##   in Loop: Header=BB0_8 Depth=1
	incl	(%rbx)
	cmpl	%eax, (%rbx)
	jg	LBB0_12
LBB0_8:                                 ## %while_body41
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_10 Depth 2
=======
	jle	.LBB0_8
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_11:                               # %merge56
                                        #   in Loop: Header=BB0_8 Depth=1
	incl	(%rbx)
	cmpl	%eax, (%rbx)
	jg	.LBB0_12
.LBB0_8:                                # %while_body36
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
>>>>>>> 4667ed0b5742d3adfc4ba0aa43a8fa7ef07bbc52
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%eax, (%rcx)
<<<<<<< HEAD
	jg	LBB0_11
	.p2align	4, 0x90
LBB0_10:                                ## %while_body44
                                        ##   Parent Loop BB0_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
=======
	jg	.LBB0_11
	.p2align	4, 0x90
.LBB0_10:                               # %while_body39
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
>>>>>>> 4667ed0b5742d3adfc4ba0aa43a8fa7ef07bbc52
	movl	(%rcx), %edx
	movl	(%rbx), %esi
	movl	%r10d, %edi
	imull	%esi, %edi
	addl	%edx, %edi
	movslq	%edi, %rdi
	imull	%r14d, %esi
	addl	%edx, %esi
	movslq	%esi, %rdx
<<<<<<< HEAD
	movsd	(%r11,%rdx,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r8,%rdi,8)
	incl	(%rcx)
	cmpl	%eax, (%rcx)
	jle	LBB0_10
	jmp	LBB0_11
LBB0_12:                                ## %merge66
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
	jmp	LBB0_13
	.p2align	4, 0x90
LBB0_17:                                ## %merge92
                                        ##   in Loop: Header=BB0_13 Depth=1
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.1(%rip), %rsi
	callq	_printf
	incl	(%r15)
LBB0_13:                                ## %while78
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_16 Depth 2
	movl	-68(%rbp), %eax         ## 4-byte Reload
	cmpl	%eax, (%r15)
	jg	LBB0_18
## BB#14:                               ## %while_body79
                                        ##   in Loop: Header=BB0_13 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rax)
	cmpl	%r14d, (%r13)
	jg	LBB0_17
	.p2align	4, 0x90
LBB0_16:                                ## %while_body82
                                        ##   Parent Loop BB0_13 Depth=1
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
	jle	LBB0_16
	jmp	LBB0_17
LBB0_18:                                ## %merge98
	leaq	L_fmt_str(%rip), %rbx
	leaq	L_fmt_str.3(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	leaq	L_fmt_str.1(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	leaq	-64(%rbp), %rdi
	callq	_multiply
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
	.globl	_multiply               ## -- Begin function multiply
	.p2align	4, 0x90
_multiply:                              ## @multiply
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
	movl	12(%rdi), %edx
	movl	%r9d, %eax
	imull	%edx, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %r8       ## imm = 0xFFFFFFFF0
	andq	%r8, %rax
	movq	%rsp, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rsi, -72(%rbp)
	movl	%r9d, -64(%rbp)
	movl	%edx, -60(%rbp)
	decl	%r9d
	leal	-1(%rdx), %ecx
	movl	$0, -44(%rbp)
	cmpl	%r9d, -44(%rbp)
	jle	LBB1_2
	jmp	LBB1_6
	.p2align	4, 0x90
LBB1_5:                                 ## %merge
                                        ##   in Loop: Header=BB1_2 Depth=1
	incl	-44(%rbp)
	cmpl	%r9d, -44(%rbp)
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
	movq	-72(%rbp), %r10
	movl	-60(%rbp), %r14d
	movq	(%rdi), %r15
	movl	12(%rdi), %r12d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r9d, (%rax)
	jle	LBB1_8
	jmp	LBB1_12
	.p2align	4, 0x90
LBB1_11:                                ## %merge47
                                        ##   in Loop: Header=BB1_8 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	LBB1_12
LBB1_8:                                 ## %while_body27
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_10 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rdx)
	jg	LBB1_11
	.p2align	4, 0x90
LBB1_10:                                ## %while_body30
                                        ##   Parent Loop BB1_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %esi
	movl	(%rax), %ebx
	movl	%r14d, %edi
	imull	%ebx, %edi
	addl	%esi, %edi
	movslq	%edi, %rdi
	imull	%r12d, %ebx
	addl	%esi, %ebx
	movslq	%ebx, %rsi
	movsd	(%r15,%rsi,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rdi,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	LBB1_10
	jmp	LBB1_11
LBB1_12:                                ## %merge52
	movq	%rsp, %rax
	leaq	-48(%rax), %rcx
	movq	%rcx, %rsp
	movq	$0, -48(%rax)
	movabsq	$4591870180066957722, %rdx ## imm = 0x3FB999999999999A
	movq	%rdx, -40(%rax)
	movabsq	$4607182418800017408, %rdx ## imm = 0x3FF0000000000000
	movq	%rdx, -32(%rax)
	movabsq	$4607632778762754458, %rdx ## imm = 0x3FF199999999999A
	movq	%rdx, -24(%rax)
	movabsq	$4611911198408756429, %rdx ## imm = 0x4000CCCCCCCCCCCD
	movq	%rdx, -16(%rax)
	movabsq	$4612136378390124954, %rdx ## imm = 0x400199999999999A
	movq	%rdx, -8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r9
	movq	%r9, %rsp
	movq	%rcx, -16(%rax)
	movabsq	$8589934595, %rdx       ## imm = 0x200000003
	movq	%rdx, -8(%rax)
	movl	$3, %r11d
	movl	$2, %ecx
	movq	%rsp, %rdi
	addq	$-48, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r10
	movq	%r10, %rsp
	movq	%rdi, -16(%rax)
	movq	%rdx, -8(%rax)
	movl	$1, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%ecx, (%rdx)
	jle	LBB1_14
	jmp	LBB1_18
	.p2align	4, 0x90
LBB1_17:                                ## %merge91
                                        ##   in Loop: Header=BB1_14 Depth=1
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jg	LBB1_18
LBB1_14:                                ## %while_body80
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_16 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%eax, (%rsi)
	jg	LBB1_17
	.p2align	4, 0x90
LBB1_16:                                ## %while_body83
                                        ##   Parent Loop BB1_14 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %ebx
	imull	%ecx, %ebx
	addl	(%rsi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rdi,%rbx,8)
	incl	(%rsi)
	cmpl	%eax, (%rsi)
	jle	LBB1_16
	jmp	LBB1_17
LBB1_18:                                ## %merge96
	decl	%ecx
	decl	%r11d
	movq	(%r10), %r14
	movl	12(%r10), %r15d
	movq	(%r9), %r12
	movl	12(%r9), %r13d
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdi)
	cmpl	%r11d, (%rax)
	jle	LBB1_20
	jmp	LBB1_24
	.p2align	4, 0x90
LBB1_23:                                ## %merge136
                                        ##   in Loop: Header=BB1_20 Depth=1
	incl	(%rax)
	cmpl	%r11d, (%rax)
	jg	LBB1_24
LBB1_20:                                ## %while_body115
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_22 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rdi)
	jg	LBB1_23
	.p2align	4, 0x90
LBB1_22:                                ## %while_body118
                                        ##   Parent Loop BB1_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %ebx
	movl	(%rax), %edx
	movl	%r15d, %esi
	imull	%edx, %esi
	addl	%ebx, %esi
	movslq	%esi, %rsi
	imull	%r13d, %edx
	addl	%ebx, %edx
	movslq	%edx, %rdx
	movsd	(%r12,%rdx,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r14,%rsi,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	LBB1_22
	jmp	LBB1_23
LBB1_24:                                ## %merge141
	movq	-72(%rbp), %r14
	movq	(%r10), %r12
	movl	-64(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, -48(%rbp)         ## 4-byte Spill
	movl	12(%r10), %r9d
	leal	-1(%r9), %r11d
	movl	-60(%rbp), %r13d
	leal	-1(%r13), %r10d
	movl	%eax, %ecx
	imull	%r9d, %ecx
	leaq	15(,%rcx,8), %rdx
	andq	%r8, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, -80(%rbp)         ## 8-byte Spill
	movq	%rsi, %rsp
	movq	%rcx, -16(%rdx)
	movl	%eax, -8(%rdx)
	movl	%r9d, -4(%rdx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rax)
	jmp	LBB1_25
	.p2align	4, 0x90
LBB1_29:                                ## %merge176
                                        ##   in Loop: Header=BB1_25 Depth=1
	incl	(%rdx)
LBB1_25:                                ## %while164
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_28 Depth 2
	movl	-48(%rbp), %eax         ## 4-byte Reload
	cmpl	%eax, (%rdx)
	jg	LBB1_30
## BB#26:                               ## %while_body165
                                        ##   in Loop: Header=BB1_25 Depth=1
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r11d, (%rax)
	jg	LBB1_29
	.p2align	4, 0x90
LBB1_28:                                ## %while_body168
                                        ##   Parent Loop BB1_25 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %ebx
	imull	%r9d, %ebx
	addl	(%rax), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rcx,%rbx,8)
	incl	(%rax)
	cmpl	%r11d, (%rax)
	jle	LBB1_28
	jmp	LBB1_29
LBB1_30:                                ## %merge181
	movq	-80(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
=======
	movsd	(%r11,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r8,%rdi,8)
	incl	(%rcx)
	cmpl	%eax, (%rcx)
	jle	.LBB0_10
	jmp	.LBB0_11
.LBB0_12:                               # %merge61
	movq	-64(%rbp), %r15
	movl	-56(%rbp), %eax
	movl	-52(%rbp), %r12d
	decl	%eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	leal	-1(%r12), %r13d
>>>>>>> 4667ed0b5742d3adfc4ba0aa43a8fa7ef07bbc52
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
<<<<<<< HEAD
	jmp	LBB1_31
	.p2align	4, 0x90
LBB1_38:                                ## %merge222
                                        ##   in Loop: Header=BB1_31 Depth=1
	incl	(%rbx)
LBB1_31:                                ## %while187
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_34 Depth 2
                                        ##       Child Loop BB1_36 Depth 3
	movl	-48(%rbp), %eax         ## 4-byte Reload
	cmpl	%eax, (%rbx)
	jg	LBB1_39
## BB#32:                               ## %while_body188
                                        ##   in Loop: Header=BB1_31 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r11d, (%rcx)
	jle	LBB1_34
	jmp	LBB1_38
	.p2align	4, 0x90
LBB1_37:                                ## %merge216
                                        ##   in Loop: Header=BB1_34 Depth=2
	movsd	(%rdx), %xmm0           ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r15)
	incl	(%rcx)
	cmpl	%r11d, (%rcx)
	jg	LBB1_38
LBB1_34:                                ## %while_body191
                                        ##   Parent Loop BB1_31 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB1_36 Depth 3
	movl	(%rbx), %eax
	imull	%r9d, %eax
	addl	(%rcx), %eax
	cltq
	movq	-56(%rbp), %rdx         ## 8-byte Reload
	leaq	(%rdx,%rax,8), %r15
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movq	$0, -16(%rax)
	movq	%rsp, %r8
	leaq	-16(%r8), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r8)
	cmpl	%r10d, (%rax)
	jg	LBB1_37
	.p2align	4, 0x90
LBB1_36:                                ## %while_body199
                                        ##   Parent Loop BB1_31 Depth=1
                                        ##     Parent Loop BB1_34 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	(%rax), %edi
	movl	(%rbx), %esi
	imull	%r13d, %esi
	addl	%edi, %esi
	movslq	%esi, %rsi
	movsd	(%r14,%rsi,8), %xmm0    ## xmm0 = mem[0],zero
	imull	%r9d, %edi
	addl	(%rcx), %edi
	movslq	%edi, %rsi
	mulsd	(%r12,%rsi,8), %xmm0
	addsd	(%rdx), %xmm0
	movsd	%xmm0, (%rdx)
	incl	(%rax)
	cmpl	%r10d, (%rax)
	jle	LBB1_36
	jmp	LBB1_37
LBB1_39:                                ## %merge227
	movq	-80(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %rbx
	movl	8(%rax), %ecx
	movl	12(%rax), %r12d
	decl	%ecx
	movl	%ecx, -56(%rbp)         ## 4-byte Spill
	leal	-1(%r12), %r14d
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
	movl	$0, -16(%rax)
	jmp	LBB1_40
	.p2align	4, 0x90
LBB1_44:                                ## %merge253
                                        ##   in Loop: Header=BB1_40 Depth=1
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.1(%rip), %rsi
	callq	_printf
	incl	(%r15)
LBB1_40:                                ## %while239
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_43 Depth 2
	movl	-56(%rbp), %eax         ## 4-byte Reload
	cmpl	%eax, (%r15)
	jg	LBB1_45
## BB#41:                               ## %while_body240
                                        ##   in Loop: Header=BB1_40 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rax)
	cmpl	%r14d, (%r13)
	jg	LBB1_44
	.p2align	4, 0x90
LBB1_43:                                ## %while_body243
                                        ##   Parent Loop BB1_40 Depth=1
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
	jle	LBB1_43
	jmp	LBB1_44
LBB1_45:                                ## %merge259
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.3(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	%rsp, %rax
=======
	jmp	.LBB0_13
	.p2align	4, 0x90
.LBB0_17:                               # %merge87
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%rbx)
.LBB0_13:                               # %while73
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
	movl	-48(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rbx)
	jg	.LBB0_18
# BB#14:                                # %while_body74
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	cmpl	%r13d, (%r14)
	jg	.LBB0_17
	.p2align	4, 0x90
.LBB0_16:                               # %while_body77
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
.LBB0_18:                               # %merge93
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
>>>>>>> 4667ed0b5742d3adfc4ba0aa43a8fa7ef07bbc52
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
<<<<<<< HEAD
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
=======
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
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
>>>>>>> 4667ed0b5742d3adfc4ba0aa43a8fa7ef07bbc52
