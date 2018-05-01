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
	movq	-64(%rbp), %rbx
	movl	-56(%rbp), %eax
	movl	-52(%rbp), %r12d
	decl	%eax
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	leal	-1(%r12), %r14d
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
	movl	$0, -16(%rax)
	jmp	LBB0_13
	.p2align	4, 0x90
LBB0_17:                                ## %merge95
                                        ##   in Loop: Header=BB0_13 Depth=1
	xorl	%eax, %eax
	leaq	L_fmt_str(%rip), %rdi
	leaq	L_fmt_str.1(%rip), %rsi
	callq	_printf
	incl	(%r15)
LBB0_13:                                ## %while81
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_16 Depth 2
	movl	-48(%rbp), %eax         ## 4-byte Reload
	cmpl	%eax, (%r15)
	jg	LBB0_18
## BB#14:                               ## %while_body82
                                        ##   in Loop: Header=BB0_13 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rax)
	cmpl	%r14d, (%r13)
	jg	LBB0_17
	.p2align	4, 0x90
LBB0_16:                                ## %while_body85
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
LBB0_18:                                ## %merge101
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
