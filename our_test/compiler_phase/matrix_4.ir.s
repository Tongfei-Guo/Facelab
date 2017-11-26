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
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
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
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string, %esi
	xorl	%eax, %eax
	callq	printf
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, -184(%rbp)
	movabsq	$4611686018427387904, %rax # imm = 0x4000000000000000
	movq	%rax, -176(%rbp)
	movabsq	$4613937818241073152, %rax # imm = 0x4008000000000000
	movq	%rax, -168(%rbp)
	movabsq	$4616189618054758400, %rax # imm = 0x4010000000000000
	movq	%rax, -160(%rbp)
	movabsq	$4617315517961601024, %rax # imm = 0x4014000000000000
	movq	%rax, -152(%rbp)
	movabsq	$4618441417868443648, %rax # imm = 0x4018000000000000
	movq	%rax, -144(%rbp)
	movabsq	$4619567317775286272, %rax # imm = 0x401C000000000000
	movq	%rax, -136(%rbp)
	movabsq	$4620693217682128896, %rax # imm = 0x4020000000000000
	movq	%rax, -128(%rbp)
	movabsq	$4621256167635550208, %rax # imm = 0x4022000000000000
	movq	%rax, -120(%rbp)
	movabsq	$4621819117588971520, %rax # imm = 0x4024000000000000
	movq	%rax, -112(%rbp)
	movabsq	$4622382067542392832, %rax # imm = 0x4026000000000000
	movq	%rax, -104(%rbp)
	movabsq	$4622945017495814144, %rax # imm = 0x4028000000000000
	movq	%rax, -96(%rbp)
	leaq	-184(%rbp), %rax
	movq	%rax, -88(%rbp)
	movabsq	$12884901892, %rax      # imm = 0x300000004
	movq	%rax, -80(%rbp)
	movq	%rsp, %r10
	addq	$-96, %r10
	movq	%r10, %rsp
	movq	%r10, -64(%rbp)
	movq	%rax, -56(%rbp)
	movl	$2, %r9d
	movl	$3, %r8d
	movq	-88(%rbp), %rsi
	movl	-76(%rbp), %edi
	movl	$0, -44(%rbp)
	cmpl	%r8d, -44(%rbp)
	jle	.LBB0_2
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_5:                                # %merge
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	-44(%rbp)
	cmpl	%r8d, -44(%rbp)
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
	movl	-44(%rbp), %ecx
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
	movq	%rsp, %r9
	addq	$-32, %r9
	movq	%r9, %rsp
	movq	%rsp, %rdx
	leaq	-16(%rdx), %r8
	movq	%r8, %rsp
	movq	%r9, -16(%rdx)
	movabsq	$8589934594, %rsi       # imm = 0x200000002
	movq	%rsi, -8(%rdx)
	movq	-64(%rbp), %r10
	movl	-52(%rbp), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	$1, (%rdi)
	jle	.LBB0_8
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_11:                               # %merge93
                                        #   in Loop: Header=BB0_8 Depth=1
	incl	(%rdi)
	cmpl	$1, (%rdi)
	jg	.LBB0_12
.LBB0_8:                                # %while_body72
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rcx)
	cmpl	$1, (%rbx)
	jg	.LBB0_11
	.p2align	4, 0x90
.LBB0_10:                               # %while_body75
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %ecx
	movl	(%rdi), %eax
	movl	$2, %edx
	imull	%eax, %edx
	addl	%ecx, %edx
	movslq	%edx, %rdx
	imull	%esi, %eax
	addl	%ecx, %eax
	cltq
	movsd	(%r10,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	$1, (%rbx)
	jle	.LBB0_10
	jmp	.LBB0_11
.LBB0_12:                               # %merge98
	movq	(%r8), %r13
	movl	8(%r8), %eax
	movl	12(%r8), %ebx
	decl	%eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	leal	-1(%rbx), %r15d
	movq	%rsp, %rax
	leaq	-16(%rax), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB0_13
	.p2align	4, 0x90
.LBB0_17:                               # %merge125
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.1, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%r12)
.LBB0_13:                               # %while110
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
	movl	-68(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%r12)
	jg	.LBB0_18
# BB#14:                                # %while_body111
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	cmpl	%r15d, (%r14)
	jg	.LBB0_17
	.p2align	4, 0x90
.LBB0_16:                               # %while_body114
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r12), %eax
	imull	%ebx, %eax
	addl	(%r14), %eax
	cltq
	movsd	(%r13,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%r14)
	cmpl	%r15d, (%r14)
	jle	.LBB0_16
	jmp	.LBB0_17
.LBB0_18:                               # %merge131
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.3, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string.4, %esi
	xorl	%eax, %eax
	callq	printf
	movl	-56(%rbp), %eax
	movl	-52(%rbp), %r9d
	leal	-1(%rax), %r8d
	leal	-3(%r9), %r10d
	addl	$-2, %r9d
	movl	%eax, %ecx
	imull	%r9d, %ecx
	leaq	15(,%rcx,8), %rcx
	movabsq	$68719476720, %rdx      # imm = 0xFFFFFFFF0
	andq	%rdx, %rcx
	movq	%rsp, %r14
	subq	%rcx, %r14
	movq	%r14, %rsp
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movq	%r14, -16(%rcx)
	movl	%eax, -8(%rcx)
	movl	%r9d, -4(%rcx)
	movq	-64(%rbp), %r15
	movl	-52(%rbp), %r12d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_20
	jmp	.LBB0_24
	.p2align	4, 0x90
.LBB0_23:                               # %merge187
                                        #   in Loop: Header=BB0_20 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_24
.LBB0_20:                               # %while_body166
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r11)
	cmpl	%r10d, (%rdx)
	jg	.LBB0_23
	.p2align	4, 0x90
.LBB0_22:                               # %while_body169
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %esi
	movl	(%rax), %ebx
	movl	%r9d, %ecx
	imull	%ebx, %ecx
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	imull	%r12d, %ebx
	leal	2(%rsi,%rbx), %esi
	movslq	%esi, %rsi
	movsd	(%r15,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r14,%rcx,8)
	incl	(%rdx)
	cmpl	%r10d, (%rdx)
	jle	.LBB0_22
	jmp	.LBB0_23
.LBB0_24:                               # %merge192
	callq	f
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string.5, %esi
	xorl	%eax, %eax
	callq	printf
	movq	%rsp, %rax
	leaq	-96(%rax), %r13
	movq	%r13, %rsp
	movabsq	$4607182418800017408, %rcx # imm = 0x3FF0000000000000
	movq	%rcx, -96(%rax)
	movabsq	$4611686018427387904, %rcx # imm = 0x4000000000000000
	movq	%rcx, -88(%rax)
	movabsq	$4613937818241073152, %rcx # imm = 0x4008000000000000
	movq	%rcx, -80(%rax)
	movabsq	$4616189618054758400, %rcx # imm = 0x4010000000000000
	movq	%rcx, -72(%rax)
	movabsq	$4617315517961601024, %rcx # imm = 0x4014000000000000
	movq	%rcx, -64(%rax)
	movabsq	$4618441417868443648, %rcx # imm = 0x4018000000000000
	movq	%rcx, -56(%rax)
	movabsq	$4619567317775286272, %rcx # imm = 0x401C000000000000
	movq	%rcx, -48(%rax)
	movabsq	$4620693217682128896, %rcx # imm = 0x4020000000000000
	movq	%rcx, -40(%rax)
	movabsq	$4621256167635550208, %rcx # imm = 0x4022000000000000
	movq	%rcx, -32(%rax)
	movabsq	$4621819117588971520, %rcx # imm = 0x4024000000000000
	movq	%rcx, -24(%rax)
	movabsq	$4622382067542392832, %rcx # imm = 0x4026000000000000
	movq	%rcx, -16(%rax)
	movabsq	$4622945017495814144, %rcx # imm = 0x4028000000000000
	movq	%rcx, -8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r13, -16(%rax)
	movabsq	$12884901892, %rcx      # imm = 0x300000004
	movq	%rcx, -8(%rax)
	movl	$3, %r15d
	movl	$2, %r12d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r15d, (%rbx)
	jle	.LBB0_26
	jmp	.LBB0_30
	.p2align	4, 0x90
.LBB0_29:                               # %merge237
                                        #   in Loop: Header=BB0_26 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.1, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%rbx)
	cmpl	%r15d, (%rbx)
	jg	.LBB0_30
.LBB0_26:                               # %while_body223
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_28 Depth 2
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	cmpl	%r12d, (%r14)
	jg	.LBB0_29
	.p2align	4, 0x90
.LBB0_28:                               # %while_body226
                                        #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	imull	%r15d, %eax
	addl	(%r14), %eax
	cltq
	movsd	(%r13,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%r14)
	cmpl	%r12d, (%r14)
	jle	.LBB0_28
	jmp	.LBB0_29
.LBB0_30:                               # %merge243
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.3, %esi
	xorl	%eax, %eax
	callq	printf
	movl	-56(%rbp), %eax
	movl	-52(%rbp), %r10d
	leal	-1(%rax), %r9d
	leal	-1(%r10), %r14d
	movl	%eax, %ecx
	imull	%r10d, %ecx
	leaq	15(,%rcx,8), %rcx
	movabsq	$68719476720, %r13      # imm = 0xFFFFFFFF0
	andq	%r13, %rcx
	movq	%rsp, %r15
	subq	%rcx, %r15
	movq	%r15, %rsp
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r8
	movq	%r8, %rsp
	movq	%r15, -16(%rcx)
	movl	%eax, -8(%rcx)
	movl	%r10d, -4(%rcx)
	movq	-64(%rbp), %r12
	movl	-52(%rbp), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r9d, (%rdx)
	jle	.LBB0_32
	jmp	.LBB0_36
	.p2align	4, 0x90
.LBB0_35:                               # %merge298
                                        #   in Loop: Header=BB0_32 Depth=1
	incl	(%rdx)
	cmpl	%r9d, (%rdx)
	jg	.LBB0_36
.LBB0_32:                               # %while_body277
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_34 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r11)
	cmpl	%r14d, (%rcx)
	jg	.LBB0_35
	.p2align	4, 0x90
.LBB0_34:                               # %while_body280
                                        #   Parent Loop BB0_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %esi
	movl	(%rdx), %edi
	movl	%r10d, %ebx
	imull	%edi, %ebx
	addl	%esi, %ebx
	movslq	%ebx, %rbx
	imull	%eax, %edi
	addl	%esi, %edi
	movslq	%edi, %rsi
	movsd	(%r12,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r15,%rbx,8)
	incl	(%rcx)
	cmpl	%r14d, (%rcx)
	jle	.LBB0_34
	jmp	.LBB0_35
.LBB0_36:                               # %merge303
	movl	8(%r8), %r9d
	movl	12(%r8), %r10d
	movl	%r9d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rax
	andq	%r13, %rax
	movq	%rsp, %r11
	subq	%rax, %r11
	movq	%r11, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
	movq	%r11, -16(%rax)
	movl	%r9d, -8(%rax)
	movl	%r10d, -4(%rax)
	leal	-1(%r10), %r14d
	decl	%r9d
	movq	(%r8), %r12
	movl	12(%r8), %eax
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r9d, (%rcx)
	jle	.LBB0_38
	jmp	.LBB0_42
	.p2align	4, 0x90
.LBB0_41:                               # %merge353
                                        #   in Loop: Header=BB0_38 Depth=1
	incl	(%rcx)
	cmpl	%r9d, (%rcx)
	jg	.LBB0_42
.LBB0_38:                               # %while_body332
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_40 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r8)
	cmpl	%r14d, (%rdx)
	jg	.LBB0_41
	.p2align	4, 0x90
.LBB0_40:                               # %while_body335
                                        #   Parent Loop BB0_38 Depth=1
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
	cmpl	%r14d, (%rdx)
	jle	.LBB0_40
	jmp	.LBB0_41
.LBB0_42:                               # %merge358
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string.6, %esi
	xorl	%eax, %eax
	callq	printf
	movq	%r15, %rdi
	callq	f
	movl	12(%r15), %eax
	leal	-3(%rax), %r9d
	leal	-2(%rax), %r11d
	leal	-4(%rax,%rax), %eax
	movq	%rsp, %r14
	shlq	$3, %rax
	subq	%rax, %r14
	movq	%r14, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r8
	movq	%r8, %rsp
	movq	%r14, -16(%rax)
	movl	$2, -8(%rax)
	movl	%r11d, -4(%rax)
	movq	(%r15), %r12
	movl	12(%r15), %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	$1, (%rax)
	jle	.LBB0_44
	jmp	.LBB0_48
	.p2align	4, 0x90
.LBB0_47:                               # %merge410
                                        #   in Loop: Header=BB0_44 Depth=1
	incl	(%rax)
	cmpl	$1, (%rax)
	jg	.LBB0_48
.LBB0_44:                               # %while_body389
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_46 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r10)
	cmpl	%r9d, (%rcx)
	jg	.LBB0_47
	.p2align	4, 0x90
.LBB0_46:                               # %while_body392
                                        #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %edx
	movl	(%rax), %esi
	movl	%r11d, %edi
	imull	%esi, %edi
	addl	%edx, %edi
	movslq	%edi, %rdi
	imull	%ebx, %esi
	leal	2(%rdx,%rsi), %edx
	movslq	%edx, %rdx
	movsd	(%r12,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r14,%rdi,8)
	incl	(%rcx)
	cmpl	%r9d, (%rcx)
	jle	.LBB0_46
	jmp	.LBB0_47
.LBB0_48:                               # %merge415
	movl	8(%r8), %r9d
	movl	12(%r8), %r10d
	movl	%r9d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rax
	andq	%r13, %rax
	movq	%rsp, %r11
	subq	%rax, %r11
	movq	%r11, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movq	%r11, -16(%rax)
	movl	%r9d, -8(%rax)
	movl	%r10d, -4(%rax)
	leal	-1(%r10), %r15d
	decl	%r9d
	movq	(%r8), %r12
	movl	12(%r8), %eax
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r9d, (%rcx)
	jle	.LBB0_50
	jmp	.LBB0_54
	.p2align	4, 0x90
.LBB0_53:                               # %merge465
                                        #   in Loop: Header=BB0_50 Depth=1
	incl	(%rcx)
	cmpl	%r9d, (%rcx)
	jg	.LBB0_54
.LBB0_50:                               # %while_body444
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_52 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r8)
	cmpl	%r15d, (%rdx)
	jg	.LBB0_53
	.p2align	4, 0x90
.LBB0_52:                               # %while_body447
                                        #   Parent Loop BB0_50 Depth=1
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
	jle	.LBB0_52
	jmp	.LBB0_53
.LBB0_54:                               # %merge470
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string.7, %esi
	xorl	%eax, %eax
	callq	printf
	movq	%r14, %rdi
	callq	f
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
	movl	$.Lfmt_int.1, %esi
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
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%r14)
	cmpl	%r13d, (%r14)
	jle	.LBB1_10
	jmp	.LBB1_11
.LBB1_12:                               # %merge61
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.3, %esi
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

	.type	.Lfmt_int.1,@object     # @fmt_int.1
.Lfmt_int.1:
	.asciz	"\n"
	.size	.Lfmt_int.1, 2

	.type	.Lfmt_int.2,@object     # @fmt_int.2
.Lfmt_int.2:
	.asciz	"  "
	.size	.Lfmt_int.2, 3

	.type	.Lfmt_int.3,@object     # @fmt_int.3
.Lfmt_int.3:
	.zero	1
	.size	.Lfmt_int.3, 1

	.type	.Lsystem_string,@object # @system_string
.Lsystem_string:
	.asciz	"var"
	.size	.Lsystem_string, 4

	.type	.Lsystem_string.4,@object # @system_string.4
.Lsystem_string.4:
	.asciz	"fun"
	.size	.Lsystem_string.4, 4

	.type	.Lsystem_string.5,@object # @system_string.5
.Lsystem_string.5:
	.asciz	"lit"
	.size	.Lsystem_string.5, 4

	.type	.Lsystem_string.6,@object # @system_string.6
.Lsystem_string.6:
	.asciz	"fun2:"
	.size	.Lsystem_string.6, 6

	.type	.Lsystem_string.7,@object # @system_string.7
.Lsystem_string.7:
	.asciz	"fun3:"
	.size	.Lsystem_string.7, 6


	.section	".note.GNU-stack","",@progbits
