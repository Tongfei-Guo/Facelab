	.text
	.file	"MicroC"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4616189618054758400     # double 4
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
	subq	$376, %rsp              # imm = 0x178
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
	movl	$0, -52(%rbp)
	movq	$0, -72(%rbp)
	movq	$.Lsystem_string.11, -64(%rbp)
	movabsq	$4620805807672813158, %r15 # imm = 0x4020666666666666
	movq	%r15, -376(%rbp)
	movabsq	$4639953142963555533, %rax # imm = 0x40646CCCCCCCCCCD
	movq	%rax, -368(%rbp)
	movabsq	$4651344083427314893, %r12 # imm = 0x408CE4CCCCCCCCCD
	movq	%r12, -360(%rbp)
	movabsq	$4636730254480218522, %rax # imm = 0x4058F9999999999A
	movq	%rax, -352(%rbp)
	leaq	-376(%rbp), %rax
	movq	%rax, -152(%rbp)
	movabsq	$8589934594, %r14       # imm = 0x200000002
	movq	%r14, -144(%rbp)
	movabsq	$4607182418800017408, %rbx # imm = 0x3FF0000000000000
	movq	%rbx, -344(%rbp)
	movabsq	$4611686018427387904, %rax # imm = 0x4000000000000000
	movq	%rax, -336(%rbp)
	movabsq	$4613937818241073152, %rax # imm = 0x4008000000000000
	movq	%rax, -328(%rbp)
	movabsq	$4616189618054758400, %r13 # imm = 0x4010000000000000
	movq	%r13, -320(%rbp)
	leaq	-344(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	%r14, -128(%rbp)
	leaq	-136(%rbp), %rdi
	leaq	-152(%rbp), %rsi
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	f2
	movl	(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	%rax, %rdi
	callq	free
	movq	%r15, -312(%rbp)
	movabsq	$4639953142963555533, %rax # imm = 0x40646CCCCCCCCCCD
	movq	%rax, -304(%rbp)
	movq	%r12, -296(%rbp)
	movabsq	$4636730254480218522, %rax # imm = 0x4058F9999999999A
	movq	%rax, -288(%rbp)
	leaq	-312(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	%r14, -112(%rbp)
	movq	%rbx, -280(%rbp)
	movabsq	$4611686018427387904, %rcx # imm = 0x4000000000000000
	movq	%rcx, -272(%rbp)
	movabsq	$4613937818241073152, %r12 # imm = 0x4008000000000000
	movq	%r12, -264(%rbp)
	movq	%r13, -256(%rbp)
	leaq	-280(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	%r14, -96(%rbp)
	movq	%rbx, -248(%rbp)
	movq	%rbx, %r15
	movq	%rcx, -240(%rbp)
	movq	%rcx, %rbx
	movq	%r12, -232(%rbp)
	movq	%r13, -224(%rbp)
	leaq	-248(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$2, -80(%rbp)
	movl	$2, -76(%rbp)
	leaq	-88(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	leaq	-120(%rbp), %rcx
	movl	$.Lsystem_string.12, %edi
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	f
	movl	-52(%rbp), %esi
	movl	$.Lfmt_int, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movq	-64(%rbp), %rsi
	movl	$.Lfmt_str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movq	%r15, -216(%rbp)
	movq	%rbx, -208(%rbp)
	movq	%r12, -200(%rbp)
	movq	%r13, -192(%rbp)
	leaq	-216(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	%r14, -400(%rbp)
	movq	%r15, -184(%rbp)
	movq	%rbx, -176(%rbp)
	movq	%r12, -168(%rbp)
	movq	%r13, -160(%rbp)
	leaq	-184(%rbp), %rcx
	movq	%rcx, -392(%rbp)
	movq	%r14, -384(%rbp)
	movl	$1, %edx
	movl	$2, %esi
	movb	$1, -41(%rbp)
	movl	$0, -48(%rbp)
	cmpl	%edx, -48(%rbp)
	jle	.LBB0_2
.LBB0_8:                                # %merge93
	cmpb	$1, -41(%rbp)
	je	.LBB0_34
# BB#9:                                 # %then98
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_10
	.p2align	4, 0x90
.LBB0_7:                                # %merge89
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	-48(%rbp)
	cmpl	%edx, -48(%rbp)
	jg	.LBB0_8
.LBB0_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%edx, (%rdi)
	jle	.LBB0_4
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_6:                                # %then
                                        #   in Loop: Header=BB0_4 Depth=2
	movb	$0, -41(%rbp)
	incl	(%rdi)
	cmpl	%edx, (%rdi)
	jg	.LBB0_7
.LBB0_4:                                # %while_body77
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %ebx
	imull	%esi, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movsd	(%rax,%rbx,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%rcx,%rbx,8), %xmm0
	jne	.LBB0_6
# BB#5:                                 # %merge
                                        #   in Loop: Header=BB0_4 Depth=2
	incl	(%rdi)
	cmpl	%edx, (%rdi)
	jle	.LBB0_4
	jmp	.LBB0_7
.LBB0_34:                               # %else100
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_10:                               # %merge97
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
	movq	%rsp, %rax
	leaq	-32(%rax), %rcx
	movq	%rcx, %rsp
	movabsq	$4620805807672813158, %rdx # imm = 0x4020666666666666
	movq	%rdx, -32(%rax)
	movabsq	$4639953142963555533, %rdx # imm = 0x40646CCCCCCCCCCD
	movq	%rdx, -24(%rax)
	movabsq	$4651344083427314893, %rdx # imm = 0x408CE4CCCCCCCCCD
	movq	%rdx, -16(%rax)
	movabsq	$4636730254480218522, %rdx # imm = 0x4058F9999999999A
	movq	%rdx, -8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r10
	movq	%r10, %rsp
	movq	%rcx, -16(%rax)
	movq	%r14, -8(%rax)
	movl	$2, %ecx
	movq	%rsp, %rsi
	addq	$-32, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r8
	movq	%r8, %rsp
	movq	%rsi, -16(%rax)
	movq	%r14, -8(%rax)
	movl	$1, %eax
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%eax, (%rdi)
	jle	.LBB0_12
	jmp	.LBB0_16
	.p2align	4, 0x90
.LBB0_15:                               # %merge138
                                        #   in Loop: Header=BB0_12 Depth=1
	incl	(%rdi)
	cmpl	%eax, (%rdi)
	jg	.LBB0_16
.LBB0_12:                               # %while_body127
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rdx)
	cmpl	%eax, (%rbx)
	jg	.LBB0_15
	.p2align	4, 0x90
.LBB0_14:                               # %while_body130
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %edx
	imull	%ecx, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%eax, (%rbx)
	jle	.LBB0_14
	jmp	.LBB0_15
.LBB0_16:                               # %merge143
	decl	%ecx
	movq	(%r8), %r9
	movl	12(%r8), %r11d
	movq	(%r10), %r15
	movl	12(%r10), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rsi)
	cmpl	%ecx, (%rax)
	jle	.LBB0_18
	jmp	.LBB0_22
	.p2align	4, 0x90
.LBB0_21:                               # %merge181
                                        #   in Loop: Header=BB0_18 Depth=1
	incl	(%rax)
	cmpl	%ecx, (%rax)
	jg	.LBB0_22
.LBB0_18:                               # %while_body160
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_21
	.p2align	4, 0x90
.LBB0_20:                               # %while_body163
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rax), %ebx
	movl	%r11d, %edx
	imull	%ebx, %edx
	addl	%edi, %edx
	movslq	%edx, %rdx
	imull	%r12d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r15,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB0_20
	jmp	.LBB0_21
.LBB0_22:                               # %merge186
	movq	%rsp, %rax
	leaq	-32(%rax), %r11
	movq	%r11, %rsp
	movabsq	$4607182418800017408, %rcx # imm = 0x3FF0000000000000
	movq	%rcx, -32(%rax)
	movabsq	$4611686018427387904, %rcx # imm = 0x4000000000000000
	movq	%rcx, -24(%rax)
	movabsq	$4613937818241073152, %rcx # imm = 0x4008000000000000
	movq	%rcx, -16(%rax)
	movq	%r13, -8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r11, -16(%rax)
	movq	%r14, -8(%rax)
	movq	(%r8), %rdx
	movl	8(%r8), %r9d
	decl	%r9d
	movl	12(%r8), %eax
	leal	-1(%rax), %edi
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r8
	movq	%r8, %rsp
	movb	$1, -16(%rsi)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r9d, (%rsi)
	jle	.LBB0_24
.LBB0_30:                               # %merge238
	cmpb	$1, (%r8)
	je	.LBB0_33
# BB#31:                                # %then243
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_32
	.p2align	4, 0x90
.LBB0_29:                               # %merge233
                                        #   in Loop: Header=BB0_24 Depth=1
	incl	(%rsi)
	cmpl	%r9d, (%rsi)
	jg	.LBB0_30
.LBB0_24:                               # %while_body211
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_26 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edi, (%rbx)
	jle	.LBB0_26
	jmp	.LBB0_29
	.p2align	4, 0x90
.LBB0_28:                               # %then228
                                        #   in Loop: Header=BB0_26 Depth=2
	movb	$0, (%r8)
	incl	(%rbx)
	cmpl	%edi, (%rbx)
	jg	.LBB0_29
.LBB0_26:                               # %while_body214
                                        #   Parent Loop BB0_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %ecx
	imull	%eax, %ecx
	addl	(%rbx), %ecx
	movslq	%ecx, %rcx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%r11,%rcx,8), %xmm0
	jne	.LBB0_28
# BB#27:                                # %merge227
                                        #   in Loop: Header=BB0_26 Depth=2
	incl	(%rbx)
	cmpl	%edi, (%rbx)
	jle	.LBB0_26
	jmp	.LBB0_29
.LBB0_33:                               # %else245
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_32:                               # %merge242
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
	.globl	bitwise                 # -- Begin function bitwise
	.p2align	4, 0x90
	.type	bitwise,@function
bitwise:                                # @bitwise
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi17:
	.cfi_def_cfa_offset 16
.Lcfi18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi19:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
.Lcfi20:
	.cfi_offset %rbx, -56
.Lcfi21:
	.cfi_offset %r12, -48
.Lcfi22:
	.cfi_offset %r13, -40
.Lcfi23:
	.cfi_offset %r14, -32
.Lcfi24:
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
	movq	%rax, -64(%rbp)
	movl	%r9d, -56(%rbp)
	movl	%r11d, -52(%rbp)
	decl	%r9d
	leal	-1(%r11), %edx
	movl	$0, -44(%rbp)
	cmpl	%r9d, -44(%rbp)
	jle	.LBB3_2
	jmp	.LBB3_6
	.p2align	4, 0x90
.LBB3_5:                                # %merge
                                        #   in Loop: Header=BB3_2 Depth=1
	incl	-44(%rbp)
	cmpl	%r9d, -44(%rbp)
	jg	.LBB3_6
.LBB3_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edx, (%rcx)
	jg	.LBB3_5
	.p2align	4, 0x90
.LBB3_4:                                # %while_body5
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %ebx
	imull	%r11d, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rax,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	.LBB3_4
	jmp	.LBB3_5
.LBB3_6:                                # %merge12
	movq	-64(%rbp), %r10
	movl	-52(%rbp), %r11d
	movq	(%rdi), %r15
	movl	12(%rdi), %r12d
	movq	%rsp, %rax
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rax)
	cmpl	%r9d, (%r13)
	jle	.LBB3_8
	jmp	.LBB3_12
	.p2align	4, 0x90
.LBB3_11:                               # %merge47
                                        #   in Loop: Header=BB3_8 Depth=1
	incl	(%r13)
	cmpl	%r9d, (%r13)
	jg	.LBB3_12
.LBB3_8:                                # %while_body27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
	movq	%rsp, %r14
	leaq	-16(%r14), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r14)
	cmpl	%edx, (%rax)
	jg	.LBB3_11
	.p2align	4, 0x90
.LBB3_10:                               # %while_body30
                                        #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	movl	(%r13), %edi
	movl	%r11d, %ebx
	imull	%edi, %ebx
	addl	%ecx, %ebx
	movslq	%ebx, %rbx
	imull	%r12d, %edi
	addl	%ecx, %edi
	movslq	%edi, %rcx
	movsd	(%r15,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rbx,8)
	incl	(%rax)
	cmpl	%edx, (%rax)
	jle	.LBB3_10
	jmp	.LBB3_11
.LBB3_12:                               # %merge52
	movl	8(%rsi), %r9d
	movl	12(%rsi), %r11d
	movl	%r9d, %eax
	imull	%r11d, %eax
	leaq	15(,%rax,8), %rax
	andq	%r8, %rax
	movq	%rsp, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r8
	movq	%r8, %rsp
	movq	%rbx, -16(%rax)
	movl	%r9d, -8(%rax)
	movl	%r11d, -4(%rax)
	decl	%r9d
	leal	-1(%r11), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r9d, (%rax)
	jle	.LBB3_14
	jmp	.LBB3_18
	.p2align	4, 0x90
.LBB3_17:                               # %merge80
                                        #   in Loop: Header=BB3_14 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	.LBB3_18
.LBB3_14:                               # %while_body69
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_16 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edx, (%rcx)
	jg	.LBB3_17
	.p2align	4, 0x90
.LBB3_16:                               # %while_body72
                                        #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edi
	imull	%r11d, %edi
	addl	(%rcx), %edi
	movslq	%edi, %rdi
	movq	$0, (%rbx,%rdi,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	.LBB3_16
	jmp	.LBB3_17
.LBB3_18:                               # %merge85
	movq	(%r8), %r10
	movl	12(%r8), %r14d
	movq	(%rsi), %r15
	movl	12(%rsi), %r12d
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdi)
	cmpl	%r9d, (%rax)
	jle	.LBB3_20
	jmp	.LBB3_24
	.p2align	4, 0x90
.LBB3_23:                               # %merge125
                                        #   in Loop: Header=BB3_20 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	.LBB3_24
.LBB3_20:                               # %while_body104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_22 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%r11)
	cmpl	%edx, (%rdi)
	jg	.LBB3_23
	.p2align	4, 0x90
.LBB3_22:                               # %while_body107
                                        #   Parent Loop BB3_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %ebx
	movl	(%rax), %ecx
	movl	%r14d, %esi
	imull	%ecx, %esi
	addl	%ebx, %esi
	movslq	%esi, %rsi
	imull	%r12d, %ecx
	addl	%ebx, %ecx
	movslq	%ecx, %rcx
	movsd	(%r15,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rsi,8)
	incl	(%rdi)
	cmpl	%edx, (%rdi)
	jle	.LBB3_22
	jmp	.LBB3_23
.LBB3_24:                               # %merge130
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movq	$0, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r9
	movq	%r9, %rsp
	movl	$0, -16(%rax)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	movl	$0, -16(%rax)
	cmpl	$2, (%r9)
	jle	.LBB3_26
	jmp	.LBB3_30
	.p2align	4, 0x90
.LBB3_29:                               # %merge170
                                        #   in Loop: Header=BB3_26 Depth=1
	incl	(%r9)
	cmpl	$2, (%r9)
	jg	.LBB3_30
.LBB3_26:                               # %while_body136
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_28 Depth 2
	movl	$0, (%rdx)
	cmpl	$2, (%rdx)
	jg	.LBB3_29
	.p2align	4, 0x90
.LBB3_28:                               # %while_body138
                                        #   Parent Loop BB3_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r9), %eax
	movl	(%rdx), %esi
	movq	-64(%rbp), %rdi
	movl	-52(%rbp), %ecx
	imull	%eax, %ecx
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	movsd	(%rdi,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%r8), %rcx
	imull	12(%r8), %eax
	addl	%esi, %eax
	cltq
	mulsd	(%rcx,%rax,8), %xmm0
	addsd	(%rbx), %xmm0
	movsd	%xmm0, (%rbx)
	incl	(%rdx)
	cmpl	$2, (%rdx)
	jle	.LBB3_28
	jmp	.LBB3_29
.LBB3_30:                               # %merge175
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
.Lfunc_end3:
	.size	bitwise, .Lfunc_end3-bitwise
	.cfi_endproc
                                        # -- End function
	.globl	filter                  # -- Begin function filter
	.p2align	4, 0x90
	.type	filter,@function
filter:                                 # @filter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi25:
	.cfi_def_cfa_offset 16
.Lcfi26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi27:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
.Lcfi28:
	.cfi_offset %rbx, -56
.Lcfi29:
	.cfi_offset %r12, -48
.Lcfi30:
	.cfi_offset %r13, -40
.Lcfi31:
	.cfi_offset %r14, -32
.Lcfi32:
	.cfi_offset %r15, -24
	movl	8(%rdi), %r8d
	movl	12(%rdi), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rcx
	movabsq	$68719476720, %r13      # imm = 0xFFFFFFFF0
	andq	%r13, %rcx
	movq	%rsp, %rax
	subq	%rcx, %rax
	movq	%rax, %rsp
	movq	%rax, -104(%rbp)
	movl	%r8d, -96(%rbp)
	movl	%r10d, -92(%rbp)
	decl	%r8d
	leal	-1(%r10), %ecx
	movl	$0, -44(%rbp)
	cmpl	%r8d, -44(%rbp)
	jle	.LBB4_2
	jmp	.LBB4_6
	.p2align	4, 0x90
.LBB4_5:                                # %merge
                                        #   in Loop: Header=BB4_2 Depth=1
	incl	-44(%rbp)
	cmpl	%r8d, -44(%rbp)
	jg	.LBB4_6
.LBB4_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB4_5
	.p2align	4, 0x90
.LBB4_4:                                # %while_body5
                                        #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rax,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB4_4
	jmp	.LBB4_5
.LBB4_6:                                # %merge12
	movq	-104(%rbp), %r9
	movl	-92(%rbp), %r10d
	movq	(%rdi), %r14
	movl	12(%rdi), %r15d
	movq	%rsp, %rbx
	leaq	-16(%rbx), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%r12)
	jle	.LBB4_8
	jmp	.LBB4_12
	.p2align	4, 0x90
.LBB4_11:                               # %merge47
                                        #   in Loop: Header=BB4_8 Depth=1
	incl	(%r12)
	cmpl	%r8d, (%r12)
	jg	.LBB4_12
.LBB4_8:                                # %while_body27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rbx)
	jg	.LBB4_11
	.p2align	4, 0x90
.LBB4_10:                               # %while_body30
                                        #   Parent Loop BB4_8 Depth=1
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
	jle	.LBB4_10
	jmp	.LBB4_11
.LBB4_12:                               # %merge52
	movl	8(%rsi), %r8d
	movl	12(%rsi), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rax
	andq	%r13, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
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
	jle	.LBB4_14
	jmp	.LBB4_18
	.p2align	4, 0x90
.LBB4_17:                               # %merge80
                                        #   in Loop: Header=BB4_14 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB4_18
.LBB4_14:                               # %while_body69
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_16 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB4_17
	.p2align	4, 0x90
.LBB4_16:                               # %while_body72
                                        #   Parent Loop BB4_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rdi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB4_16
	jmp	.LBB4_17
.LBB4_18:                               # %merge85
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r11d
	movq	(%rsi), %r14
	movl	12(%rsi), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB4_20
	jmp	.LBB4_24
	.p2align	4, 0x90
.LBB4_23:                               # %merge125
                                        #   in Loop: Header=BB4_20 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB4_24
.LBB4_20:                               # %while_body104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_22 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB4_23
	.p2align	4, 0x90
.LBB4_22:                               # %while_body107
                                        #   Parent Loop BB4_20 Depth=1
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
	jle	.LBB4_22
	jmp	.LBB4_23
.LBB4_24:                               # %merge130
	movq	%rsp, %r14
	leaq	-16(%r14), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movl	$0, -16(%r14)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
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
	jle	.LBB4_26
	jmp	.LBB4_30
	.p2align	4, 0x90
.LBB4_29:                               # %merge168
                                        #   in Loop: Header=BB4_26 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB4_30
.LBB4_26:                               # %while_body157
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_28 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB4_29
	.p2align	4, 0x90
.LBB4_28:                               # %while_body160
                                        #   Parent Loop BB4_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB4_28
	jmp	.LBB4_29
.LBB4_30:                               # %merge173
	movq	(%r11), %r9
	movq	%r11, -56(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r14), %r15
	movl	12(%r14), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r13)
	jle	.LBB4_32
	jmp	.LBB4_36
	.p2align	4, 0x90
.LBB4_35:                               # %merge213
                                        #   in Loop: Header=BB4_32 Depth=1
	incl	(%r13)
	cmpl	%r8d, (%r13)
	jg	.LBB4_36
.LBB4_32:                               # %while_body192
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_34 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB4_35
	.p2align	4, 0x90
.LBB4_34:                               # %while_body195
                                        #   Parent Loop BB4_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %ebx
	movl	(%r13), %eax
	movl	%r10d, %edx
	imull	%eax, %edx
	addl	%ebx, %edx
	movslq	%edx, %rdx
	imull	%r12d, %eax
	addl	%ebx, %eax
	cltq
	movsd	(%r15,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB4_34
	jmp	.LBB4_35
.LBB4_36:                               # %merge218
	callq	free
	movq	%r14, %rdi
	callq	free
	movq	-56(%rbp), %r10         # 8-byte Reload
	movl	8(%r10), %r8d
	movl	12(%r10), %edx
	movl	%r8d, %eax
	imull	%edx, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %r12      # imm = 0xFFFFFFFF0
	andq	%r12, %rax
	movq	%rsp, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
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
	jle	.LBB4_38
	jmp	.LBB4_42
	.p2align	4, 0x90
.LBB4_41:                               # %merge246
                                        #   in Loop: Header=BB4_38 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB4_42
.LBB4_38:                               # %while_body235
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_40 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB4_41
	.p2align	4, 0x90
.LBB4_40:                               # %while_body238
                                        #   Parent Loop BB4_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB4_40
	jmp	.LBB4_41
.LBB4_42:                               # %merge251
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r11d
	movq	(%r10), %r14
	movl	12(%r10), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB4_44
	jmp	.LBB4_48
	.p2align	4, 0x90
.LBB4_47:                               # %merge291
                                        #   in Loop: Header=BB4_44 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB4_48
.LBB4_44:                               # %while_body270
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_46 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB4_47
	.p2align	4, 0x90
.LBB4_46:                               # %while_body273
                                        #   Parent Loop BB4_44 Depth=1
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
	jle	.LBB4_46
	jmp	.LBB4_47
.LBB4_48:                               # %merge296
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %esi
	movq	-64(%rbp), %rax         # 8-byte Reload
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
	andq	%r12, %rax
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
	jle	.LBB4_50
	jmp	.LBB4_54
	.p2align	4, 0x90
.LBB4_53:                               # %merge331
                                        #   in Loop: Header=BB4_50 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB4_54
.LBB4_50:                               # %while_body320
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_52 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB4_53
	.p2align	4, 0x90
.LBB4_52:                               # %while_body323
                                        #   Parent Loop BB4_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB4_52
	jmp	.LBB4_53
.LBB4_54:                               # %merge336
	movq	(%r11), %r9
	movq	%r11, -56(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r14), %r15
	movl	12(%r14), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r13)
	jle	.LBB4_56
	jmp	.LBB4_60
	.p2align	4, 0x90
.LBB4_59:                               # %merge376
                                        #   in Loop: Header=BB4_56 Depth=1
	incl	(%r13)
	cmpl	%r8d, (%r13)
	jg	.LBB4_60
.LBB4_56:                               # %while_body355
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_58 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB4_59
	.p2align	4, 0x90
.LBB4_58:                               # %while_body358
                                        #   Parent Loop BB4_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %ebx
	movl	(%r13), %eax
	movl	%r10d, %edx
	imull	%eax, %edx
	addl	%ebx, %edx
	movslq	%edx, %rdx
	imull	%r12d, %eax
	addl	%ebx, %eax
	cltq
	movsd	(%r15,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB4_58
	jmp	.LBB4_59
.LBB4_60:                               # %merge381
	callq	free
	movq	%r14, %rdi
	callq	free
	movq	-56(%rbp), %r10         # 8-byte Reload
	movl	8(%r10), %r8d
	movl	12(%r10), %edx
	movl	%r8d, %eax
	imull	%edx, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %r12      # imm = 0xFFFFFFFF0
	andq	%r12, %rax
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
	jle	.LBB4_62
	jmp	.LBB4_66
	.p2align	4, 0x90
.LBB4_65:                               # %merge409
                                        #   in Loop: Header=BB4_62 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB4_66
.LBB4_62:                               # %while_body398
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_64 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB4_65
	.p2align	4, 0x90
.LBB4_64:                               # %while_body401
                                        #   Parent Loop BB4_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB4_64
	jmp	.LBB4_65
.LBB4_66:                               # %merge414
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
	jle	.LBB4_68
	jmp	.LBB4_72
	.p2align	4, 0x90
.LBB4_71:                               # %merge454
                                        #   in Loop: Header=BB4_68 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB4_72
.LBB4_68:                               # %while_body433
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_70 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB4_71
	.p2align	4, 0x90
.LBB4_70:                               # %while_body436
                                        #   Parent Loop BB4_68 Depth=1
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
	jle	.LBB4_70
	jmp	.LBB4_71
.LBB4_72:                               # %merge459
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	leal	-1(%rax), %r9d
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx), %esi
	leal	-1(%rsi), %ecx
	movl	%eax, %edx
	imull	%esi, %edx
	leaq	15(,%rdx,8), %rdx
	andq	%r12, %rdx
	movq	%rsp, %rdi
	subq	%rdx, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rdx
	leaq	-16(%rdx), %r8
	movq	%r8, %rsp
	movq	%rdi, -16(%rdx)
	movl	%eax, -8(%rdx)
	movl	%esi, -4(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r9d, (%rax)
	jle	.LBB4_74
	jmp	.LBB4_78
	.p2align	4, 0x90
.LBB4_77:                               # %merge495
                                        #   in Loop: Header=BB4_74 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	.LBB4_78
.LBB4_74:                               # %while_body484
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_76 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdx)
	jg	.LBB4_77
	.p2align	4, 0x90
.LBB4_76:                               # %while_body487
                                        #   Parent Loop BB4_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%esi, %ebx
	addl	(%rdx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rdi,%rbx,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	.LBB4_76
	jmp	.LBB4_77
.LBB4_78:                               # %merge500
	movq	(%r8), %r10
	movl	12(%r8), %r14d
	movq	-104(%rbp), %r15
	movl	-92(%rbp), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r9d, (%rax)
	jle	.LBB4_80
	jmp	.LBB4_84
	.p2align	4, 0x90
.LBB4_83:                               # %merge538
                                        #   in Loop: Header=BB4_80 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	.LBB4_84
.LBB4_80:                               # %while_body517
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_82 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB4_83
	.p2align	4, 0x90
.LBB4_82:                               # %while_body520
                                        #   Parent Loop BB4_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rax), %ebx
	movl	%r14d, %edx
	imull	%ebx, %edx
	addl	%edi, %edx
	movslq	%edx, %rdx
	imull	%r12d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r15,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB4_82
	jmp	.LBB4_83
.LBB4_84:                               # %merge543
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movl	12(%rcx), %r10d
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r9d
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r15d
	movq	(%rcx), %r11
	movq	(%r8), %r14
	movl	12(%r8), %edx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$1, -16(%rax)
	cmpl	%r9d, (%rcx)
	jle	.LBB4_86
	jmp	.LBB4_90
	.p2align	4, 0x90
.LBB4_89:                               # %merge587
                                        #   in Loop: Header=BB4_86 Depth=1
	incl	(%rcx)
	cmpl	%r9d, (%rcx)
	jg	.LBB4_90
.LBB4_86:                               # %while_body566
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_88 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rax
	movq	%rax, %rsp
	movl	$1, -16(%r8)
	cmpl	%r15d, (%rax)
	jg	.LBB4_89
	.p2align	4, 0x90
.LBB4_88:                               # %while_body569
                                        #   Parent Loop BB4_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edi
	movl	(%rcx), %ebx
	movl	%r10d, %esi
	imull	%ebx, %esi
	addl	%edi, %esi
	movslq	%esi, %rsi
	decl	%ebx
	imull	%edx, %ebx
	leal	-1(%rdi,%rbx), %edi
	movslq	%edi, %rdi
	movsd	(%r14,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r11,%rsi,8)
	incl	(%rax)
	cmpl	%r15d, (%rax)
	jle	.LBB4_88
	jmp	.LBB4_89
.LBB4_90:                               # %merge592
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rax)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rcx)
	movl	$0, -16(%rax)
	movl	$2, %r15d
	movl	$3, %ebx
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	jmp	.LBB4_91
	.p2align	4, 0x90
.LBB4_107:                              # %merge704
                                        #   in Loop: Header=BB4_91 Depth=1
	incl	(%rdx)
.LBB4_91:                               # %while597
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_93 Depth 2
                                        #       Child Loop BB4_96 Depth 3
                                        #         Child Loop BB4_98 Depth 4
                                        #       Child Loop BB4_102 Depth 3
                                        #         Child Loop BB4_104 Depth 4
	movl	(%rdx), %eax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpl	(%rcx), %eax
	jge	.LBB4_108
# BB#92:                                # %while_body598
                                        #   in Loop: Header=BB4_91 Depth=1
	movl	$0, (%rsi)
	jmp	.LBB4_93
	.p2align	4, 0x90
.LBB4_106:                              # %merge684
                                        #   in Loop: Header=BB4_93 Depth=2
	movq	-112(%rbp), %rsi        # 8-byte Reload
	callq	bitwise
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	free
	movq	-56(%rbp), %rax         # 8-byte Reload
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	12(%rcx), %eax
	movq	(%rcx), %rcx
	movq	-128(%rbp), %rdx        # 8-byte Reload
	imull	(%rdx), %eax
	movq	-120(%rbp), %rsi        # 8-byte Reload
	addl	(%rsi), %eax
	cltq
	movsd	%xmm0, (%rcx,%rax,8)
	incl	(%rsi)
	movl	$3, %ebx
.LBB4_93:                               # %while599
                                        #   Parent Loop BB4_91 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_96 Depth 3
                                        #         Child Loop BB4_98 Depth 4
                                        #       Child Loop BB4_102 Depth 3
                                        #         Child Loop BB4_104 Depth 4
	movl	(%rsi), %eax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpl	(%rcx), %eax
	jge	.LBB4_107
# BB#94:                                # %while_body600
                                        #   in Loop: Header=BB4_93 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	movq	$0, -16(%rax)
	movl	(%rdx), %r8d
	movl	(%rsi), %r9d
	movq	%rsp, %rax
	addq	$-80, %rax
	movq	%rax, %rsp
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movq	%rax, -16(%rcx)
	movabsq	$12884901891, %rdx      # imm = 0x300000003
	movq	%rdx, -8(%rcx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r15d, (%rcx)
	jle	.LBB4_96
	jmp	.LBB4_100
	.p2align	4, 0x90
.LBB4_99:                               # %merge636
                                        #   in Loop: Header=BB4_96 Depth=3
	incl	(%rcx)
	cmpl	%r15d, (%rcx)
	jg	.LBB4_100
.LBB4_96:                               # %while_body625
                                        #   Parent Loop BB4_91 Depth=1
                                        #     Parent Loop BB4_93 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_98 Depth 4
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r15d, (%rdx)
	jg	.LBB4_99
	.p2align	4, 0x90
.LBB4_98:                               # %while_body628
                                        #   Parent Loop BB4_91 Depth=1
                                        #     Parent Loop BB4_93 Depth=2
                                        #       Parent Loop BB4_96 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%rcx), %esi
	imull	%ebx, %esi
	addl	(%rdx), %esi
	movslq	%esi, %rsi
	movq	$0, (%rax,%rsi,8)
	incl	(%rdx)
	cmpl	%r15d, (%rdx)
	jle	.LBB4_98
	jmp	.LBB4_99
	.p2align	4, 0x90
.LBB4_100:                              # %merge641
                                        #   in Loop: Header=BB4_93 Depth=2
	movq	(%rdi), %r10
	movl	12(%rdi), %r14d
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r12
	movl	12(%rax), %r13d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r15d, (%rcx)
	jle	.LBB4_102
	jmp	.LBB4_106
	.p2align	4, 0x90
.LBB4_105:                              # %merge679
                                        #   in Loop: Header=BB4_102 Depth=3
	incl	(%rcx)
	cmpl	%r15d, (%rcx)
	jg	.LBB4_106
.LBB4_102:                              # %while_body658
                                        #   Parent Loop BB4_91 Depth=1
                                        #     Parent Loop BB4_93 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_104 Depth 4
	movq	%rsp, %r11
	leaq	-16(%r11), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r11)
	cmpl	%r15d, (%rdx)
	jg	.LBB4_105
	.p2align	4, 0x90
.LBB4_104:                              # %while_body661
                                        #   Parent Loop BB4_91 Depth=1
                                        #     Parent Loop BB4_93 Depth=2
                                        #       Parent Loop BB4_102 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%rdx), %esi
	movl	(%rcx), %ebx
	movl	%r14d, %eax
	imull	%ebx, %eax
	addl	%esi, %eax
	cltq
	addl	%r9d, %esi
	addl	%r8d, %ebx
	imull	%r13d, %ebx
	addl	%esi, %ebx
	movslq	%ebx, %rsi
	movsd	(%r12,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rax,8)
	incl	(%rdx)
	cmpl	%r15d, (%rdx)
	jle	.LBB4_104
	jmp	.LBB4_105
.LBB4_108:                              # %merge710
	movl	$8, %edi
	callq	malloc
	movq	%rax, %r15
	movq	-72(%rbp), %rax         # 8-byte Reload
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
	jle	.LBB4_110
	jmp	.LBB4_114
	.p2align	4, 0x90
.LBB4_113:                              # %merge741
                                        #   in Loop: Header=BB4_110 Depth=1
	incl	(%rdx)
	cmpl	%r14d, (%rdx)
	jg	.LBB4_114
.LBB4_110:                              # %while_body730
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_112 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%ecx, (%rsi)
	jg	.LBB4_113
	.p2align	4, 0x90
.LBB4_112:                              # %while_body733
                                        #   Parent Loop BB4_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	imull	%r12d, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rbx,%rdi,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB4_112
	jmp	.LBB4_113
.LBB4_114:                              # %merge746
	movq	(%rax), %r8
	movl	12(%rax), %r9d
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %r11
	movl	12(%rdx), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r14d, (%r13)
	jle	.LBB4_116
	jmp	.LBB4_120
	.p2align	4, 0x90
.LBB4_119:                              # %merge786
                                        #   in Loop: Header=BB4_116 Depth=1
	incl	(%r13)
	cmpl	%r14d, (%r13)
	jg	.LBB4_120
.LBB4_116:                              # %while_body765
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_118 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rsi)
	jg	.LBB4_119
	.p2align	4, 0x90
.LBB4_118:                              # %while_body768
                                        #   Parent Loop BB4_116 Depth=1
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
	jle	.LBB4_118
	jmp	.LBB4_119
.LBB4_120:                              # %merge791
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
.Lfunc_end4:
	.size	filter, .Lfunc_end4-filter
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function f
.LCPI5_0:
	.quad	4617315517961601024     # double 5
	.text
	.globl	f
	.p2align	4, 0x90
	.type	f,@function
f:                                      # @f
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi33:
	.cfi_def_cfa_offset 16
.Lcfi34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi35:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
.Lcfi36:
	.cfi_offset %rbx, -56
.Lcfi37:
	.cfi_offset %r12, -48
.Lcfi38:
	.cfi_offset %r13, -40
.Lcfi39:
	.cfi_offset %r14, -32
.Lcfi40:
	.cfi_offset %r15, -24
	movq	%rdi, -128(%rbp)
	movl	8(%rsi), %r8d
	movl	12(%rsi), %r9d
	movl	%r8d, %eax
	imull	%r9d, %eax
	leaq	15(,%rax,8), %rdi
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rax, %rdi
	movq	%rsp, %r11
	subq	%rdi, %r11
	movq	%r11, %rsp
	movq	%r11, -96(%rbp)
	movl	%r8d, -88(%rbp)
	movl	%r9d, -84(%rbp)
	decl	%r8d
	leal	-1(%r9), %r13d
	movl	$0, -68(%rbp)
	cmpl	%r8d, -68(%rbp)
	jle	.LBB5_2
	jmp	.LBB5_6
	.p2align	4, 0x90
.LBB5_5:                                # %merge
                                        #   in Loop: Header=BB5_2 Depth=1
	incl	-68(%rbp)
	cmpl	%r8d, -68(%rbp)
	jg	.LBB5_6
.LBB5_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%r13d, (%rbx)
	jg	.LBB5_5
	.p2align	4, 0x90
.LBB5_4:                                # %while_body5
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	imull	%r9d, %eax
	addl	(%rbx), %eax
	cltq
	movq	$0, (%r11,%rax,8)
	incl	(%rbx)
	cmpl	%r13d, (%rbx)
	jle	.LBB5_4
	jmp	.LBB5_5
.LBB5_6:                                # %merge12
	movq	-96(%rbp), %r9
	movl	-84(%rbp), %r10d
	movq	(%rsi), %r11
	movl	12(%rsi), %r15d
	movq	%rsp, %rbx
	leaq	-16(%rbx), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%r12)
	jle	.LBB5_8
	jmp	.LBB5_12
	.p2align	4, 0x90
.LBB5_11:                               # %merge47
                                        #   in Loop: Header=BB5_8 Depth=1
	incl	(%r12)
	cmpl	%r8d, (%r12)
	jg	.LBB5_12
.LBB5_8:                                # %while_body27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_10 Depth 2
	movq	%rsp, %r14
	leaq	-16(%r14), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r14)
	cmpl	%r13d, (%rbx)
	jg	.LBB5_11
	.p2align	4, 0x90
.LBB5_10:                               # %while_body30
                                        #   Parent Loop BB5_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %esi
	movl	(%r12), %eax
	movl	%r10d, %edi
	imull	%eax, %edi
	addl	%esi, %edi
	movslq	%edi, %rdi
	imull	%r15d, %eax
	addl	%esi, %eax
	cltq
	movsd	(%r11,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movsd	%xmm1, (%r9,%rdi,8)
	incl	(%rbx)
	cmpl	%r13d, (%rbx)
	jle	.LBB5_10
	jmp	.LBB5_11
.LBB5_12:                               # %merge52
	movl	8(%rdx), %r8d
	movl	12(%rdx), %r9d
	movl	%r8d, %eax
	imull	%r9d, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rsi      # imm = 0xFFFFFFFF0
	andq	%rsi, %rax
	movq	%rsp, %r11
	subq	%rax, %r11
	movq	%r11, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
	movq	%r11, -16(%rax)
	movl	%r8d, -8(%rax)
	movl	%r9d, -4(%rax)
	decl	%r8d
	leal	-1(%r9), %esi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdi)
	cmpl	%r8d, (%rax)
	jle	.LBB5_14
	jmp	.LBB5_18
	.p2align	4, 0x90
.LBB5_17:                               # %merge80
                                        #   in Loop: Header=BB5_14 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB5_18
.LBB5_14:                               # %while_body69
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_16 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rdi)
	jg	.LBB5_17
	.p2align	4, 0x90
.LBB5_16:                               # %while_body72
                                        #   Parent Loop BB5_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%r9d, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%r11,%rbx,8)
	incl	(%rdi)
	cmpl	%esi, (%rdi)
	jle	.LBB5_16
	jmp	.LBB5_17
.LBB5_18:                               # %merge85
	movq	(%r13), %r9
	movl	12(%r13), %r10d
	movq	(%rdx), %r14
	movl	12(%rdx), %r15d
	movq	%rsp, %rbx
	leaq	-16(%rbx), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%r12)
	jle	.LBB5_20
	jmp	.LBB5_24
	.p2align	4, 0x90
.LBB5_23:                               # %merge125
                                        #   in Loop: Header=BB5_20 Depth=1
	incl	(%r12)
	cmpl	%r8d, (%r12)
	jg	.LBB5_24
.LBB5_20:                               # %while_body104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_22 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r11)
	cmpl	%esi, (%rbx)
	jg	.LBB5_23
	.p2align	4, 0x90
.LBB5_22:                               # %while_body107
                                        #   Parent Loop BB5_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	movl	(%r12), %edx
	movl	%r10d, %edi
	imull	%edx, %edi
	addl	%eax, %edi
	movslq	%edi, %rdi
	imull	%r15d, %edx
	addl	%eax, %edx
	movslq	%edx, %rax
	movsd	(%r14,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movsd	%xmm1, (%r9,%rdi,8)
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jle	.LBB5_22
	jmp	.LBB5_23
.LBB5_24:                               # %merge130
	movl	8(%rcx), %r8d
	movl	12(%rcx), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rdx      # imm = 0xFFFFFFFF0
	andq	%rdx, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rsp
	movq	%rdi, -16(%rax)
	movl	%r8d, -8(%rax)
	movl	%r10d, -4(%rax)
	decl	%r8d
	leal	-1(%r10), %edx
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%rax)
	jle	.LBB5_26
	jmp	.LBB5_30
	.p2align	4, 0x90
.LBB5_29:                               # %merge158
                                        #   in Loop: Header=BB5_26 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB5_30
.LBB5_26:                               # %while_body147
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_28 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%edx, (%rbx)
	jg	.LBB5_29
	.p2align	4, 0x90
.LBB5_28:                               # %while_body150
                                        #   Parent Loop BB5_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %esi
	imull	%r10d, %esi
	addl	(%rbx), %esi
	movslq	%esi, %rsi
	movq	$0, (%rdi,%rsi,8)
	incl	(%rbx)
	cmpl	%edx, (%rbx)
	jle	.LBB5_28
	jmp	.LBB5_29
.LBB5_30:                               # %merge163
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r11d
	movq	(%rcx), %r14
	movl	12(%rcx), %r15d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%rax)
	jle	.LBB5_32
	jmp	.LBB5_36
	.p2align	4, 0x90
.LBB5_35:                               # %merge203
                                        #   in Loop: Header=BB5_32 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB5_36
.LBB5_32:                               # %while_body182
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_34 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%edx, (%rsi)
	jg	.LBB5_35
	.p2align	4, 0x90
.LBB5_34:                               # %while_body185
                                        #   Parent Loop BB5_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rax), %ebx
	movl	%r11d, %ecx
	imull	%ebx, %ecx
	addl	%edi, %ecx
	movslq	%ecx, %rcx
	imull	%r15d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r14,%rdi,8), %xmm1    # xmm1 = mem[0],zero
	movsd	%xmm1, (%r9,%rcx,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	.LBB5_34
	jmp	.LBB5_35
.LBB5_36:                               # %merge208
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rsp
	movsd	%xmm0, -16(%rax)
	movq	-128(%rbp), %rsi
	movl	$.Lfmt_str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string.6, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movq	-96(%rbp), %r10
	movl	-88(%rbp), %eax
	leal	-1(%rax), %r8d
	movl	-84(%rbp), %edx
	leal	-1(%rdx), %esi
	movq	(%r13), %r14
	movl	%eax, %ecx
	imull	%edx, %ecx
	leaq	15(,%rcx,8), %rcx
	movabsq	$68719476720, %rdi      # imm = 0xFFFFFFFF0
	andq	%rdi, %rcx
	movq	%rsp, %rbx
	subq	%rcx, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r9
	movq	%r9, %rsp
	movq	%rbx, -16(%rcx)
	movl	%eax, -8(%rcx)
	movl	%edx, -4(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r8d, (%rcx)
	jle	.LBB5_38
	jmp	.LBB5_42
	.p2align	4, 0x90
.LBB5_41:                               # %merge245
                                        #   in Loop: Header=BB5_38 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB5_42
.LBB5_38:                               # %while_body234
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_40 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r11)
	cmpl	%esi, (%rax)
	jg	.LBB5_41
	.p2align	4, 0x90
.LBB5_40:                               # %while_body237
                                        #   Parent Loop BB5_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %edi
	imull	%edx, %edi
	addl	(%rax), %edi
	movslq	%edi, %rdi
	movq	$0, (%rbx,%rdi,8)
	incl	(%rax)
	cmpl	%esi, (%rax)
	jle	.LBB5_40
	jmp	.LBB5_41
.LBB5_42:                               # %merge250
	movq	(%r9), %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r8d, (%rcx)
	jle	.LBB5_44
	jmp	.LBB5_48
	.p2align	4, 0x90
.LBB5_47:                               # %merge281
                                        #   in Loop: Header=BB5_44 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB5_48
.LBB5_44:                               # %while_body257
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_46 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdi)
	cmpl	%esi, (%rax)
	jg	.LBB5_47
	.p2align	4, 0x90
.LBB5_46:                               # %while_body260
                                        #   Parent Loop BB5_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %edi
	imull	%edx, %edi
	addl	(%rax), %edi
	movslq	%edi, %rdi
	movsd	(%r10,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	addsd	(%r14,%rdi,8), %xmm0
	movsd	%xmm0, (%rbx,%rdi,8)
	incl	(%rax)
	cmpl	%esi, (%rax)
	jle	.LBB5_46
	jmp	.LBB5_47
.LBB5_48:                               # %merge286
	movq	%r13, -120(%rbp)        # 8-byte Spill
	movq	(%r9), %r14
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r12
	movl	8(%r9), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	12(%rax), %r8d
	leal	-1(%r8), %r11d
	movl	12(%r9), %r13d
	leal	-1(%r13), %r10d
	movl	%ecx, %eax
	imull	%r8d, %eax
	leaq	15(,%rax,8), %rdi
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rax, %rdi
	movq	%rsp, %rax
	subq	%rdi, %rax
	movq	%rax, %rsp
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rsp
	movq	%rax, -16(%rdi)
	movl	%ecx, -8(%rdi)
	movl	%r8d, -4(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdi)
	jmp	.LBB5_49
	.p2align	4, 0x90
.LBB5_53:                               # %merge321
                                        #   in Loop: Header=BB5_49 Depth=1
	incl	(%rcx)
.LBB5_49:                               # %while309
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_52 Depth 2
	movl	-44(%rbp), %edx         # 4-byte Reload
	cmpl	%edx, (%rcx)
	jg	.LBB5_54
# BB#50:                                # %while_body310
                                        #   in Loop: Header=BB5_49 Depth=1
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r11d, (%rdi)
	jg	.LBB5_53
	.p2align	4, 0x90
.LBB5_52:                               # %while_body313
                                        #   Parent Loop BB5_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %ebx
	imull	%r8d, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rax,%rbx,8)
	incl	(%rdi)
	cmpl	%r11d, (%rdi)
	jle	.LBB5_52
	jmp	.LBB5_53
.LBB5_54:                               # %merge326
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB5_55
	.p2align	4, 0x90
.LBB5_62:                               # %merge367
                                        #   in Loop: Header=BB5_55 Depth=1
	incl	(%rdi)
.LBB5_55:                               # %while332
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_58 Depth 2
                                        #       Child Loop BB5_60 Depth 3
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rdi)
	jg	.LBB5_63
# BB#56:                                # %while_body333
                                        #   in Loop: Header=BB5_55 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r11d, (%rax)
	jle	.LBB5_58
	jmp	.LBB5_62
	.p2align	4, 0x90
.LBB5_61:                               # %merge361
                                        #   in Loop: Header=BB5_58 Depth=2
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, (%r15)
	incl	(%rax)
	cmpl	%r11d, (%rax)
	jg	.LBB5_62
.LBB5_58:                               # %while_body336
                                        #   Parent Loop BB5_55 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_60 Depth 3
	movl	(%rdi), %ecx
	imull	%r8d, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx,8), %r15
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movq	$0, -16(%rbx)
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%r10d, (%rbx)
	jg	.LBB5_61
	.p2align	4, 0x90
.LBB5_60:                               # %while_body344
                                        #   Parent Loop BB5_55 Depth=1
                                        #     Parent Loop BB5_58 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %esi
	movl	(%rdi), %edx
	imull	%r13d, %edx
	addl	%esi, %edx
	movslq	%edx, %rdx
	movsd	(%r14,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	imull	%r8d, %esi
	addl	(%rax), %esi
	movslq	%esi, %rdx
	mulsd	(%r12,%rdx,8), %xmm0
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	incl	(%rbx)
	cmpl	%r10d, (%rbx)
	jle	.LBB5_60
	jmp	.LBB5_61
.LBB5_63:                               # %merge372
	movq	-112(%rbp), %rax        # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r11
	movl	8(%rax), %ecx
	leal	-1(%rcx), %r10d
	movl	12(%rax), %edx
	leal	-1(%rdx), %esi
	movl	%ecx, %edi
	imull	%edx, %edi
	leaq	15(,%rdi,8), %rdi
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rax, %rdi
	movq	%rsp, %rbx
	subq	%rdi, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rdi
	leaq	-16(%rdi), %r8
	movq	%r8, %rsp
	movq	%rbx, -16(%rdi)
	movl	%ecx, -8(%rdi)
	movl	%edx, -4(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r10d, (%rdi)
	jle	.LBB5_65
	jmp	.LBB5_69
	.p2align	4, 0x90
.LBB5_68:                               # %merge405
                                        #   in Loop: Header=BB5_65 Depth=1
	incl	(%rdi)
	cmpl	%r10d, (%rdi)
	jg	.LBB5_69
.LBB5_65:                               # %while_body394
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_67 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%esi, (%rcx)
	jg	.LBB5_68
	.p2align	4, 0x90
.LBB5_67:                               # %while_body397
                                        #   Parent Loop BB5_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movq	$0, (%rbx,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB5_67
	jmp	.LBB5_68
.LBB5_69:                               # %merge410
	movq	(%r8), %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rax)
	cmpl	%r10d, (%rdi)
	jle	.LBB5_71
	jmp	.LBB5_75
	.p2align	4, 0x90
.LBB5_74:                               # %merge435
                                        #   in Loop: Header=BB5_71 Depth=1
	incl	(%rdi)
	cmpl	%r10d, (%rdi)
	jg	.LBB5_75
.LBB5_71:                               # %while_body417
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_73 Depth 2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%esi, (%rcx)
	jg	.LBB5_74
	.p2align	4, 0x90
.LBB5_73:                               # %while_body420
                                        #   Parent Loop BB5_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movsd	(%r11,%rax,8), %xmm1    # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rbx,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB5_73
	jmp	.LBB5_74
.LBB5_75:                               # %merge440
	movq	(%r8), %r11
	movl	8(%r8), %ecx
	leal	-1(%rcx), %r9d
	movl	12(%r8), %edx
	leal	-1(%rdx), %esi
	movl	%ecx, %edi
	imull	%edx, %edi
	leaq	15(,%rdi,8), %rdi
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rax, %rdi
	movq	%rsp, %rbx
	subq	%rdi, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rdi
	leaq	-16(%rdi), %r8
	movq	%r8, %rsp
	movq	%rbx, -16(%rdi)
	movl	%ecx, -8(%rdi)
	movl	%edx, -4(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r9d, (%rdi)
	jle	.LBB5_77
	jmp	.LBB5_81
	.p2align	4, 0x90
.LBB5_80:                               # %merge472
                                        #   in Loop: Header=BB5_77 Depth=1
	incl	(%rdi)
	cmpl	%r9d, (%rdi)
	jg	.LBB5_81
.LBB5_77:                               # %while_body461
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_79 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rcx)
	jg	.LBB5_80
	.p2align	4, 0x90
.LBB5_79:                               # %while_body464
                                        #   Parent Loop BB5_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movq	$0, (%rbx,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB5_79
	jmp	.LBB5_80
.LBB5_81:                               # %merge477
	movq	(%r8), %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rax)
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	cmpl	%r9d, (%rdi)
	jle	.LBB5_83
	jmp	.LBB5_87
	.p2align	4, 0x90
.LBB5_86:                               # %merge502
                                        #   in Loop: Header=BB5_83 Depth=1
	incl	(%rdi)
	cmpl	%r9d, (%rdi)
	jg	.LBB5_87
.LBB5_83:                               # %while_body484
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_85 Depth 2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%esi, (%rcx)
	jg	.LBB5_86
	.p2align	4, 0x90
.LBB5_85:                               # %while_body487
                                        #   Parent Loop BB5_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movsd	(%r11,%rax,8), %xmm1    # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rbx,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB5_85
	jmp	.LBB5_86
.LBB5_87:                               # %merge507
	movq	(%r8), %r15
	movl	8(%r8), %eax
	movl	12(%r8), %r13d
	decl	%eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	leal	-1(%r13), %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB5_88
	.p2align	4, 0x90
.LBB5_92:                               # %merge534
                                        #   in Loop: Header=BB5_88 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%r12)
.LBB5_88:                               # %while519
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_91 Depth 2
	movl	-64(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%r12)
	jg	.LBB5_93
# BB#89:                                # %while_body520
                                        #   in Loop: Header=BB5_88 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	cmpl	%ebx, (%r14)
	jg	.LBB5_92
	.p2align	4, 0x90
.LBB5_91:                               # %while_body523
                                        #   Parent Loop BB5_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r12), %eax
	imull	%r13d, %eax
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
	cmpl	%ebx, (%r14)
	jle	.LBB5_91
	jmp	.LBB5_92
.LBB5_93:                               # %merge540
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$24, %edi
	callq	malloc
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	-96(%rbp), %r11
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r13
	movl	-88(%rbp), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	12(%rax), %r9d
	leal	-1(%r9), %r10d
	movl	-84(%rbp), %r8d
	leal	-1(%r8), %edx
	movl	%ecx, %eax
	imull	%r9d, %eax
	leaq	15(,%rax,8), %rdi
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rax, %rdi
	movq	%rsp, %r14
	subq	%rdi, %r14
	movq	%r14, %rsp
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%r14, -16(%rdi)
	movl	%ecx, -8(%rdi)
	movl	%r9d, -4(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdi)
	jmp	.LBB5_94
	.p2align	4, 0x90
.LBB5_98:                               # %merge579
                                        #   in Loop: Header=BB5_94 Depth=1
	incl	(%rcx)
.LBB5_94:                               # %while567
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_97 Depth 2
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rcx)
	jg	.LBB5_99
# BB#95:                                # %while_body568
                                        #   in Loop: Header=BB5_94 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rax)
	cmpl	%r10d, (%rdi)
	jg	.LBB5_98
	.p2align	4, 0x90
.LBB5_97:                               # %while_body571
                                        #   Parent Loop BB5_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	imull	%r9d, %eax
	addl	(%rdi), %eax
	cltq
	movq	$0, (%r14,%rax,8)
	incl	(%rdi)
	cmpl	%r10d, (%rdi)
	jle	.LBB5_97
	jmp	.LBB5_98
.LBB5_99:                               # %merge584
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB5_100
	.p2align	4, 0x90
.LBB5_107:                              # %merge627
                                        #   in Loop: Header=BB5_100 Depth=1
	incl	(%rdi)
.LBB5_100:                              # %while590
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_103 Depth 2
                                        #       Child Loop BB5_105 Depth 3
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rdi)
	jg	.LBB5_108
# BB#101:                               # %while_body591
                                        #   in Loop: Header=BB5_100 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r10d, (%rax)
	jle	.LBB5_103
	jmp	.LBB5_107
	.p2align	4, 0x90
.LBB5_106:                              # %merge621
                                        #   in Loop: Header=BB5_103 Depth=2
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, (%r12)
	incl	(%rax)
	cmpl	%r10d, (%rax)
	jg	.LBB5_107
.LBB5_103:                              # %while_body594
                                        #   Parent Loop BB5_100 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_105 Depth 3
	movl	(%rdi), %ecx
	imull	%r9d, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	movq	-64(%rbp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rcx,8), %r12
	movq	%rsp, %r14
	leaq	-16(%r14), %rcx
	movq	%rcx, %rsp
	movq	$0, -16(%r14)
	movq	%rsp, %r15
	leaq	-16(%r15), %r14
	movq	%r14, %rsp
	movl	$0, -16(%r15)
	cmpl	%edx, (%r14)
	jg	.LBB5_106
	.p2align	4, 0x90
.LBB5_105:                              # %while_body603
                                        #   Parent Loop BB5_100 Depth=1
                                        #     Parent Loop BB5_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%r14), %ebx
	movl	(%rdi), %esi
	imull	%r8d, %esi
	addl	%ebx, %esi
	movslq	%esi, %rsi
	movsd	(%r11,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	imull	%r9d, %ebx
	addl	(%rax), %ebx
	movslq	%ebx, %rsi
	mulsd	(%r13,%rsi,8), %xmm0
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	incl	(%r14)
	cmpl	%edx, (%r14)
	jle	.LBB5_105
	jmp	.LBB5_106
.LBB5_108:                              # %merge632
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %r13d
	movl	12(%rax), %r12d
	movl	%r13d, %edi
	imull	%r12d, %edi
	shll	$3, %edi
	callq	malloc
	movq	%rax, %rbx
	movl	$16, %edi
	callq	malloc
	movq	%rbx, (%rax)
	movl	%r13d, 8(%rax)
	movl	%r12d, 12(%rax)
	decl	%r13d
	leal	-1(%r12), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r13d, (%rdx)
	jle	.LBB5_110
	jmp	.LBB5_114
	.p2align	4, 0x90
.LBB5_113:                              # %merge662
                                        #   in Loop: Header=BB5_110 Depth=1
	incl	(%rdx)
	cmpl	%r13d, (%rdx)
	jg	.LBB5_114
.LBB5_110:                              # %while_body651
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_112 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%ecx, (%rsi)
	jg	.LBB5_113
	.p2align	4, 0x90
.LBB5_112:                              # %while_body654
                                        #   Parent Loop BB5_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	imull	%r12d, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rbx,%rdi,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB5_112
	jmp	.LBB5_113
.LBB5_114:                              # %merge667
	movq	(%rax), %r8
	movl	12(%rax), %r9d
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %r11
	movl	12(%rdx), %r14d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r15
	movq	%r15, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r13d, (%r15)
	jle	.LBB5_116
	jmp	.LBB5_120
	.p2align	4, 0x90
.LBB5_119:                              # %merge707
                                        #   in Loop: Header=BB5_116 Depth=1
	incl	(%r15)
	cmpl	%r13d, (%r15)
	jg	.LBB5_120
.LBB5_116:                              # %while_body686
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_118 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rsi)
	jg	.LBB5_119
	.p2align	4, 0x90
.LBB5_118:                              # %while_body689
                                        #   Parent Loop BB5_116 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%r15), %ebx
	movl	%r9d, %edx
	imull	%ebx, %edx
	addl	%edi, %edx
	movslq	%edx, %rdx
	imull	%r14d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r11,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r8,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB5_118
	jmp	.LBB5_119
.LBB5_120:                              # %merge712
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r11
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %r13
	movl	8(%rax), %ecx
	leal	-1(%rcx), %esi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movl	12(%rdx), %r8d
	leal	-1(%r8), %r10d
	movl	12(%rax), %r14d
	leal	-1(%r14), %r9d
	movl	%ecx, %eax
	imull	%r8d, %eax
	leaq	15(,%rax,8), %rdi
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rax, %rdi
	movq	%rsp, %rax
	subq	%rdi, %rax
	movq	%rax, %rsp
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rsp
	movq	%rax, -16(%rdi)
	movl	%ecx, -8(%rdi)
	movl	%r8d, -4(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdi)
	jmp	.LBB5_121
	.p2align	4, 0x90
.LBB5_125:                              # %merge749
                                        #   in Loop: Header=BB5_121 Depth=1
	incl	(%rcx)
.LBB5_121:                              # %while737
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_124 Depth 2
	movl	-44(%rbp), %edx         # 4-byte Reload
	cmpl	%edx, (%rcx)
	jg	.LBB5_126
# BB#122:                               # %while_body738
                                        #   in Loop: Header=BB5_121 Depth=1
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r10d, (%rdi)
	jg	.LBB5_125
	.p2align	4, 0x90
.LBB5_124:                              # %while_body741
                                        #   Parent Loop BB5_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %ebx
	imull	%r8d, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rax,%rbx,8)
	incl	(%rdi)
	cmpl	%r10d, (%rdi)
	jle	.LBB5_124
	jmp	.LBB5_125
.LBB5_126:                              # %merge754
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB5_127
	.p2align	4, 0x90
.LBB5_134:                              # %merge797
                                        #   in Loop: Header=BB5_127 Depth=1
	incl	(%rdi)
.LBB5_127:                              # %while760
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_130 Depth 2
                                        #       Child Loop BB5_132 Depth 3
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rdi)
	jg	.LBB5_135
# BB#128:                               # %while_body761
                                        #   in Loop: Header=BB5_127 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r10d, (%rax)
	jle	.LBB5_130
	jmp	.LBB5_134
	.p2align	4, 0x90
.LBB5_133:                              # %merge791
                                        #   in Loop: Header=BB5_130 Depth=2
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, (%r12)
	incl	(%rax)
	cmpl	%r10d, (%rax)
	jg	.LBB5_134
.LBB5_130:                              # %while_body764
                                        #   Parent Loop BB5_127 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_132 Depth 3
	movl	(%rdi), %ecx
	imull	%r8d, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx,8), %r12
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movq	$0, -16(%rbx)
	movq	%rsp, %r15
	leaq	-16(%r15), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r15)
	cmpl	%r9d, (%rbx)
	jg	.LBB5_133
	.p2align	4, 0x90
.LBB5_132:                              # %while_body773
                                        #   Parent Loop BB5_127 Depth=1
                                        #     Parent Loop BB5_130 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %esi
	movl	(%rdi), %edx
	imull	%r14d, %edx
	addl	%esi, %edx
	movslq	%edx, %rdx
	movsd	(%r11,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	imull	%r8d, %esi
	addl	(%rax), %esi
	movslq	%esi, %rdx
	mulsd	(%r13,%rdx,8), %xmm0
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	incl	(%rbx)
	cmpl	%r9d, (%rbx)
	jle	.LBB5_132
	jmp	.LBB5_133
.LBB5_135:                              # %merge802
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %r12d
	movl	12(%rax), %r13d
	movl	%r12d, %edi
	imull	%r13d, %edi
	shll	$3, %edi
	callq	malloc
	movq	%rax, %rbx
	movl	$16, %edi
	callq	malloc
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
	jle	.LBB5_137
	jmp	.LBB5_141
	.p2align	4, 0x90
.LBB5_140:                              # %merge833
                                        #   in Loop: Header=BB5_137 Depth=1
	incl	(%rdx)
	cmpl	%r12d, (%rdx)
	jg	.LBB5_141
.LBB5_137:                              # %while_body822
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_139 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%ecx, (%rsi)
	jg	.LBB5_140
	.p2align	4, 0x90
.LBB5_139:                              # %while_body825
                                        #   Parent Loop BB5_137 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	imull	%r13d, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rbx,%rdi,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB5_139
	jmp	.LBB5_140
.LBB5_141:                              # %merge838
	movq	(%rax), %r8
	movl	12(%rax), %r9d
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %r11
	movl	12(%rdx), %r14d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r15
	movq	%r15, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r12d, (%r15)
	jle	.LBB5_143
	jmp	.LBB5_147
	.p2align	4, 0x90
.LBB5_146:                              # %merge878
                                        #   in Loop: Header=BB5_143 Depth=1
	incl	(%r15)
	cmpl	%r12d, (%r15)
	jg	.LBB5_147
.LBB5_143:                              # %while_body857
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_145 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rsi)
	jg	.LBB5_146
	.p2align	4, 0x90
.LBB5_145:                              # %while_body860
                                        #   Parent Loop BB5_143 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%r15), %ebx
	movl	%r9d, %edx
	imull	%ebx, %edx
	addl	%edi, %edx
	movslq	%edx, %rdx
	imull	%r14d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r11,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r8,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB5_145
	jmp	.LBB5_146
.LBB5_147:                              # %merge883
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	mulsd	.LCPI5_0(%rip), %xmm0
	movsd	%xmm0, 16(%rcx)
	movq	%rcx, %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	f, .Lfunc_end5-f
	.cfi_endproc
                                        # -- End function
	.globl	f2                      # -- Begin function f2
	.p2align	4, 0x90
	.type	f2,@function
f2:                                     # @f2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi41:
	.cfi_def_cfa_offset 16
.Lcfi42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi43:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
.Lcfi44:
	.cfi_offset %rbx, -56
.Lcfi45:
	.cfi_offset %r12, -48
.Lcfi46:
	.cfi_offset %r13, -40
.Lcfi47:
	.cfi_offset %r14, -32
.Lcfi48:
	.cfi_offset %r15, -24
	movl	8(%rdi), %r8d
	movl	12(%rdi), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rcx
	movabsq	$68719476720, %r13      # imm = 0xFFFFFFFF0
	andq	%r13, %rcx
	movq	%rsp, %rax
	subq	%rcx, %rax
	movq	%rax, %rsp
	movq	%rax, -96(%rbp)
	movl	%r8d, -88(%rbp)
	movl	%r10d, -84(%rbp)
	decl	%r8d
	leal	-1(%r10), %ecx
	movl	$0, -44(%rbp)
	cmpl	%r8d, -44(%rbp)
	jle	.LBB6_2
	jmp	.LBB6_6
	.p2align	4, 0x90
.LBB6_5:                                # %merge
                                        #   in Loop: Header=BB6_2 Depth=1
	incl	-44(%rbp)
	cmpl	%r8d, -44(%rbp)
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
	movl	-44(%rbp), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rax,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB6_4
	jmp	.LBB6_5
.LBB6_6:                                # %merge12
	movq	-96(%rbp), %r9
	movl	-84(%rbp), %r10d
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
	movsd	(%r14,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movsd	%xmm1, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB6_10
	jmp	.LBB6_11
.LBB6_12:                               # %merge52
	movl	8(%rsi), %r8d
	movl	12(%rsi), %r9d
	movl	%r8d, %eax
	imull	%r9d, %eax
	leaq	15(,%rax,8), %rax
	andq	%r13, %rax
	movq	%rsp, %r11
	subq	%rax, %r11
	movq	%r11, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movq	%r11, -16(%rax)
	movl	%r8d, -8(%rax)
	movl	%r9d, -4(%rax)
	decl	%r8d
	leal	-1(%r9), %edx
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdi)
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
	movq	%rsp, %r10
	leaq	-16(%r10), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%r10)
	cmpl	%edx, (%rdi)
	jg	.LBB6_17
	.p2align	4, 0x90
.LBB6_16:                               # %while_body72
                                        #   Parent Loop BB6_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%r9d, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%r11,%rbx,8)
	incl	(%rdi)
	cmpl	%edx, (%rdi)
	jle	.LBB6_16
	jmp	.LBB6_17
.LBB6_18:                               # %merge85
	movq	(%rcx), %r9
	movl	12(%rcx), %r10d
	movq	(%rsi), %r14
	movl	12(%rsi), %r15d
	movq	%rsp, %rbx
	leaq	-16(%rbx), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%r12)
	jle	.LBB6_20
	jmp	.LBB6_24
	.p2align	4, 0x90
.LBB6_23:                               # %merge125
                                        #   in Loop: Header=BB6_20 Depth=1
	incl	(%r12)
	cmpl	%r8d, (%r12)
	jg	.LBB6_24
.LBB6_20:                               # %while_body104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_22 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r11)
	cmpl	%edx, (%rbx)
	jg	.LBB6_23
	.p2align	4, 0x90
.LBB6_22:                               # %while_body107
                                        #   Parent Loop BB6_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	movl	(%r12), %esi
	movl	%r10d, %edi
	imull	%esi, %edi
	addl	%eax, %edi
	movslq	%edi, %rdi
	imull	%r15d, %esi
	addl	%eax, %esi
	movslq	%esi, %rax
	movsd	(%r14,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movsd	%xmm1, (%r9,%rdi,8)
	incl	(%rbx)
	cmpl	%edx, (%rbx)
	jle	.LBB6_22
	jmp	.LBB6_23
.LBB6_24:                               # %merge130
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movsd	%xmm0, -16(%rdx)
	movq	%rsp, %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rsp
	movq	%rdx, -16(%rsi)
	movq	$0, -8(%rsi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	$0, (%rsi)
	js	.LBB6_26
	jmp	.LBB6_30
	.p2align	4, 0x90
.LBB6_29:                               # %merge151
                                        #   in Loop: Header=BB6_26 Depth=1
	incl	(%rsi)
	cmpl	$0, (%rsi)
	jns	.LBB6_30
.LBB6_26:                               # %while_body140
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_28 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	$0, (%rdi)
	jns	.LBB6_29
	.p2align	4, 0x90
.LBB6_28:                               # %while_body143
                                        #   Parent Loop BB6_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdi), %rbx
	movq	$0, (%rdx,%rbx,8)
	incl	(%rdi)
	cmpl	$0, (%rdi)
	js	.LBB6_28
	jmp	.LBB6_29
.LBB6_30:                               # %merge156
	movq	%rsp, %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rsp
	movq	%rdx, -16(%rsi)
	movq	$0, -8(%rsi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	$0, (%rsi)
	js	.LBB6_32
	jmp	.LBB6_36
	.p2align	4, 0x90
.LBB6_35:                               # %merge177
                                        #   in Loop: Header=BB6_32 Depth=1
	incl	(%rsi)
	cmpl	$0, (%rsi)
	jns	.LBB6_36
.LBB6_32:                               # %while_body166
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_34 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	$0, (%rdi)
	jns	.LBB6_35
	.p2align	4, 0x90
.LBB6_34:                               # %while_body169
                                        #   Parent Loop BB6_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdi), %rbx
	movq	$0, (%rdx,%rbx,8)
	incl	(%rdi)
	cmpl	$0, (%rdi)
	js	.LBB6_34
	jmp	.LBB6_35
.LBB6_36:                               # %merge182
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, %rsp
	movq	$0, -16(%rdx)
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	leaq	-96(%rbp), %rsi
	movl	$.Lsystem_string.9, %edi
	movq	%rsi, %rdx
	callq	f
	movq	%rax, -56(%rbp)         # 8-byte Spill
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
	jle	.LBB6_38
	jmp	.LBB6_42
	.p2align	4, 0x90
.LBB6_41:                               # %merge213
                                        #   in Loop: Header=BB6_38 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB6_42
.LBB6_38:                               # %while_body202
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_40 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB6_41
	.p2align	4, 0x90
.LBB6_40:                               # %while_body205
                                        #   Parent Loop BB6_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB6_40
	jmp	.LBB6_41
.LBB6_42:                               # %merge218
	movq	(%r11), %r9
	movq	%r11, -64(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r12), %r13
	movl	12(%r12), %r14d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r15
	movq	%r15, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r15)
	jle	.LBB6_44
	jmp	.LBB6_48
	.p2align	4, 0x90
.LBB6_47:                               # %merge258
                                        #   in Loop: Header=BB6_44 Depth=1
	incl	(%r15)
	cmpl	%r8d, (%r15)
	jg	.LBB6_48
.LBB6_44:                               # %while_body237
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_46 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB6_47
	.p2align	4, 0x90
.LBB6_46:                               # %while_body240
                                        #   Parent Loop BB6_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %ebx
	movl	(%r15), %eax
	movl	%r10d, %edx
	imull	%eax, %edx
	addl	%ebx, %edx
	movslq	%edx, %rdx
	imull	%r14d, %eax
	addl	%ebx, %eax
	cltq
	movsd	(%r13,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB6_46
	jmp	.LBB6_47
.LBB6_48:                               # %merge263
	callq	free
	movq	%r12, %rdi
	callq	free
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	8(%r10), %r8d
	movl	12(%r10), %edx
	movl	%r8d, %eax
	imull	%edx, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %r13      # imm = 0xFFFFFFFF0
	andq	%r13, %rax
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
	jle	.LBB6_50
	jmp	.LBB6_54
	.p2align	4, 0x90
.LBB6_53:                               # %merge291
                                        #   in Loop: Header=BB6_50 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB6_54
.LBB6_50:                               # %while_body280
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_52 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB6_53
	.p2align	4, 0x90
.LBB6_52:                               # %while_body283
                                        #   Parent Loop BB6_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB6_52
	jmp	.LBB6_53
.LBB6_54:                               # %merge296
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
	jle	.LBB6_56
	jmp	.LBB6_60
	.p2align	4, 0x90
.LBB6_59:                               # %merge336
                                        #   in Loop: Header=BB6_56 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB6_60
.LBB6_56:                               # %while_body315
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_58 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB6_59
	.p2align	4, 0x90
.LBB6_58:                               # %while_body318
                                        #   Parent Loop BB6_56 Depth=1
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
	jle	.LBB6_58
	jmp	.LBB6_59
.LBB6_60:                               # %merge341
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %r12
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
	jle	.LBB6_62
	jmp	.LBB6_66
	.p2align	4, 0x90
.LBB6_65:                               # %merge373
                                        #   in Loop: Header=BB6_62 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB6_66
.LBB6_62:                               # %while_body362
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_64 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB6_65
	.p2align	4, 0x90
.LBB6_64:                               # %while_body365
                                        #   Parent Loop BB6_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB6_64
	jmp	.LBB6_65
.LBB6_66:                               # %merge378
	movq	(%r11), %r9
	movq	%r11, -64(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r12), %r14
	movl	12(%r12), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r15
	movq	%r15, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r15)
	jle	.LBB6_68
	jmp	.LBB6_72
	.p2align	4, 0x90
.LBB6_71:                               # %merge418
                                        #   in Loop: Header=BB6_68 Depth=1
	incl	(%r15)
	cmpl	%r8d, (%r15)
	jg	.LBB6_72
.LBB6_68:                               # %while_body397
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_70 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB6_71
	.p2align	4, 0x90
.LBB6_70:                               # %while_body400
                                        #   Parent Loop BB6_68 Depth=1
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
	movsd	(%r14,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB6_70
	jmp	.LBB6_71
.LBB6_72:                               # %merge423
	callq	free
	movq	%r12, %rdi
	callq	free
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	8(%r10), %r8d
	movl	12(%r10), %edx
	movl	%r8d, %eax
	imull	%edx, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %r13      # imm = 0xFFFFFFFF0
	andq	%r13, %rax
	movq	%rsp, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r12
	movq	%r12, %rsp
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
	jle	.LBB6_74
	jmp	.LBB6_78
	.p2align	4, 0x90
.LBB6_77:                               # %merge451
                                        #   in Loop: Header=BB6_74 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB6_78
.LBB6_74:                               # %while_body440
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_76 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB6_77
	.p2align	4, 0x90
.LBB6_76:                               # %while_body443
                                        #   Parent Loop BB6_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB6_76
	jmp	.LBB6_77
.LBB6_78:                               # %merge456
	movq	(%r12), %r9
	movl	12(%r12), %r11d
	movq	(%r10), %r14
	movl	12(%r10), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB6_80
	jmp	.LBB6_84
	.p2align	4, 0x90
.LBB6_83:                               # %merge496
                                        #   in Loop: Header=BB6_80 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB6_84
.LBB6_80:                               # %while_body475
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_82 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB6_83
	.p2align	4, 0x90
.LBB6_82:                               # %while_body478
                                        #   Parent Loop BB6_80 Depth=1
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
	jle	.LBB6_82
	jmp	.LBB6_83
.LBB6_84:                               # %merge501
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax         # 8-byte Reload
	movsd	%xmm0, (%rax)
	callq	free
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %r10
	movl	8(%rcx), %eax
	leal	-1(%rax), %r9d
	movl	12(%rcx), %edx
	leal	-1(%rdx), %esi
	movq	(%r12), %r14
	movl	%eax, %ecx
	imull	%edx, %ecx
	leaq	15(,%rcx,8), %rcx
	andq	%r13, %rcx
	movq	%rsp, %rbx
	subq	%rcx, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r8
	movq	%r8, %rsp
	movq	%rbx, -16(%rcx)
	movl	%eax, -8(%rcx)
	movl	%edx, -4(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r9d, (%rcx)
	jle	.LBB6_86
	jmp	.LBB6_90
	.p2align	4, 0x90
.LBB6_89:                               # %merge537
                                        #   in Loop: Header=BB6_86 Depth=1
	incl	(%rcx)
	cmpl	%r9d, (%rcx)
	jg	.LBB6_90
.LBB6_86:                               # %while_body526
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_88 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r11)
	cmpl	%esi, (%rax)
	jg	.LBB6_89
	.p2align	4, 0x90
.LBB6_88:                               # %while_body529
                                        #   Parent Loop BB6_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %edi
	imull	%edx, %edi
	addl	(%rax), %edi
	movslq	%edi, %rdi
	movq	$0, (%rbx,%rdi,8)
	incl	(%rax)
	cmpl	%esi, (%rax)
	jle	.LBB6_88
	jmp	.LBB6_89
.LBB6_90:                               # %merge542
	movq	(%r8), %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r9d, (%rcx)
	jle	.LBB6_92
	jmp	.LBB6_96
	.p2align	4, 0x90
.LBB6_95:                               # %merge573
                                        #   in Loop: Header=BB6_92 Depth=1
	incl	(%rcx)
	cmpl	%r9d, (%rcx)
	jg	.LBB6_96
.LBB6_92:                               # %while_body549
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_94 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdi)
	cmpl	%esi, (%rax)
	jg	.LBB6_95
	.p2align	4, 0x90
.LBB6_94:                               # %while_body552
                                        #   Parent Loop BB6_92 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %edi
	imull	%edx, %edi
	addl	(%rax), %edi
	movslq	%edi, %rdi
	movsd	(%r10,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	addsd	(%r14,%rdi,8), %xmm0
	movsd	%xmm0, (%rbx,%rdi,8)
	incl	(%rax)
	cmpl	%esi, (%rax)
	jle	.LBB6_94
	jmp	.LBB6_95
.LBB6_96:                               # %merge578
	movq	-80(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	(%r8), %r11
	movl	8(%r8), %ecx
	leal	-1(%rcx), %r9d
	movl	12(%r8), %edx
	leal	-1(%rdx), %esi
	movl	%ecx, %edi
	imull	%edx, %edi
	leaq	15(,%rdi,8), %rdi
	andq	%r13, %rdi
	movq	%rsp, %rbx
	subq	%rdi, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rdi
	leaq	-16(%rdi), %r8
	movq	%r8, %rsp
	movq	%rbx, -16(%rdi)
	movl	%ecx, -8(%rdi)
	movl	%edx, -4(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r9d, (%rdi)
	jle	.LBB6_98
	jmp	.LBB6_102
	.p2align	4, 0x90
.LBB6_101:                              # %merge611
                                        #   in Loop: Header=BB6_98 Depth=1
	incl	(%rdi)
	cmpl	%r9d, (%rdi)
	jg	.LBB6_102
.LBB6_98:                               # %while_body600
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_100 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rcx)
	jg	.LBB6_101
	.p2align	4, 0x90
.LBB6_100:                              # %while_body603
                                        #   Parent Loop BB6_98 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movq	$0, (%rbx,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB6_100
	jmp	.LBB6_101
.LBB6_102:                              # %merge616
	movq	(%r8), %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rax)
	cmpl	%r9d, (%rdi)
	jle	.LBB6_104
	jmp	.LBB6_108
	.p2align	4, 0x90
.LBB6_107:                              # %merge641
                                        #   in Loop: Header=BB6_104 Depth=1
	incl	(%rdi)
	cmpl	%r9d, (%rdi)
	jg	.LBB6_108
.LBB6_104:                              # %while_body623
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_106 Depth 2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%esi, (%rcx)
	jg	.LBB6_107
	.p2align	4, 0x90
.LBB6_106:                              # %while_body626
                                        #   Parent Loop BB6_104 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movsd	(%r11,%rax,8), %xmm1    # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rbx,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB6_106
	jmp	.LBB6_107
.LBB6_108:                              # %merge646
	movq	(%r8), %r15
	movl	8(%r8), %eax
	movl	12(%r8), %ebx
	decl	%eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	leal	-1(%rbx), %r12d
	movq	%rsp, %rax
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB6_109
	.p2align	4, 0x90
.LBB6_113:                              # %merge673
                                        #   in Loop: Header=BB6_109 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%r13)
.LBB6_109:                              # %while658
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_112 Depth 2
	movl	-56(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%r13)
	jg	.LBB6_114
# BB#110:                               # %while_body659
                                        #   in Loop: Header=BB6_109 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	cmpl	%r12d, (%r14)
	jg	.LBB6_113
	.p2align	4, 0x90
.LBB6_112:                              # %while_body662
                                        #   Parent Loop BB6_109 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r13), %eax
	imull	%ebx, %eax
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
	cmpl	%r12d, (%r14)
	jle	.LBB6_112
	jmp	.LBB6_113
.LBB6_114:                              # %merge679
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r11
	movl	8(%rax), %ecx
	leal	-1(%rcx), %r9d
	movl	12(%rax), %edx
	leal	-1(%rdx), %esi
	movl	%ecx, %edi
	imull	%edx, %edi
	leaq	15(,%rdi,8), %rdi
	movabsq	$68719476720, %r14      # imm = 0xFFFFFFFF0
	andq	%r14, %rdi
	movq	%rsp, %rbx
	subq	%rdi, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rdi
	leaq	-16(%rdi), %r8
	movq	%r8, %rsp
	movq	%rbx, -16(%rdi)
	movl	%ecx, -8(%rdi)
	movl	%edx, -4(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r9d, (%rdi)
	jle	.LBB6_116
	jmp	.LBB6_120
	.p2align	4, 0x90
.LBB6_119:                              # %merge713
                                        #   in Loop: Header=BB6_116 Depth=1
	incl	(%rdi)
	cmpl	%r9d, (%rdi)
	jg	.LBB6_120
.LBB6_116:                              # %while_body702
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_118 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rcx)
	jg	.LBB6_119
	.p2align	4, 0x90
.LBB6_118:                              # %while_body705
                                        #   Parent Loop BB6_116 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movq	$0, (%rbx,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB6_118
	jmp	.LBB6_119
.LBB6_120:                              # %merge718
	movq	(%r8), %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rax)
	cmpl	%r9d, (%rdi)
	jle	.LBB6_122
	jmp	.LBB6_126
	.p2align	4, 0x90
.LBB6_125:                              # %merge743
                                        #   in Loop: Header=BB6_122 Depth=1
	incl	(%rdi)
	cmpl	%r9d, (%rdi)
	jg	.LBB6_126
.LBB6_122:                              # %while_body725
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_124 Depth 2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%esi, (%rcx)
	jg	.LBB6_125
	.p2align	4, 0x90
.LBB6_124:                              # %while_body728
                                        #   Parent Loop BB6_122 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm0
	movsd	%xmm0, (%rbx,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB6_124
	jmp	.LBB6_125
.LBB6_126:                              # %merge748
	movq	-80(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	(%r8), %r11
	movl	8(%r8), %ecx
	leal	-1(%rcx), %r9d
	movl	12(%r8), %edx
	leal	-1(%rdx), %esi
	movl	%ecx, %edi
	imull	%edx, %edi
	leaq	15(,%rdi,8), %rdi
	andq	%r14, %rdi
	movq	%rsp, %rbx
	subq	%rdi, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rdi
	leaq	-16(%rdi), %r8
	movq	%r8, %rsp
	movq	%rbx, -16(%rdi)
	movl	%ecx, -8(%rdi)
	movl	%edx, -4(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r9d, (%rdi)
	jle	.LBB6_128
	jmp	.LBB6_132
	.p2align	4, 0x90
.LBB6_131:                              # %merge781
                                        #   in Loop: Header=BB6_128 Depth=1
	incl	(%rdi)
	cmpl	%r9d, (%rdi)
	jg	.LBB6_132
.LBB6_128:                              # %while_body770
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_130 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rcx)
	jg	.LBB6_131
	.p2align	4, 0x90
.LBB6_130:                              # %while_body773
                                        #   Parent Loop BB6_128 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movq	$0, (%rbx,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB6_130
	jmp	.LBB6_131
.LBB6_132:                              # %merge786
	movq	(%r8), %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rax)
	cmpl	%r9d, (%rdi)
	jle	.LBB6_134
	jmp	.LBB6_138
	.p2align	4, 0x90
.LBB6_137:                              # %merge811
                                        #   in Loop: Header=BB6_134 Depth=1
	incl	(%rdi)
	cmpl	%r9d, (%rdi)
	jg	.LBB6_138
.LBB6_134:                              # %while_body793
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_136 Depth 2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%esi, (%rcx)
	jg	.LBB6_137
	.p2align	4, 0x90
.LBB6_136:                              # %while_body796
                                        #   Parent Loop BB6_134 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movsd	(%r11,%rax,8), %xmm1    # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rbx,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB6_136
	jmp	.LBB6_137
.LBB6_138:                              # %merge816
	movq	(%r8), %r15
	movl	8(%r8), %eax
	movl	12(%r8), %r12d
	decl	%eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	leal	-1(%r12), %r13d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB6_139
	.p2align	4, 0x90
.LBB6_143:                              # %merge843
                                        #   in Loop: Header=BB6_139 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%rbx)
.LBB6_139:                              # %while828
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_142 Depth 2
	movl	-56(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rbx)
	jg	.LBB6_144
# BB#140:                               # %while_body829
                                        #   in Loop: Header=BB6_139 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	cmpl	%r13d, (%r14)
	jg	.LBB6_143
	.p2align	4, 0x90
.LBB6_142:                              # %while_body832
                                        #   Parent Loop BB6_139 Depth=1
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
	jle	.LBB6_142
	jmp	.LBB6_143
.LBB6_144:                              # %merge849
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$24, %edi
	callq	malloc
	movl	$1, (%rax)
	movabsq	$4611686018427387904, %rcx # imm = 0x4000000000000000
	movq	%rcx, 8(%rax)
	movq	$.Lsystem_string.10, 16(%rax)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	f2, .Lfunc_end6-f2
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

	.type	.Lsystem_string,@object # @system_string
.Lsystem_string:
	.asciz	" : "
	.size	.Lsystem_string, 4

	.type	.Lsystem_string.6,@object # @system_string.6
.Lsystem_string.6:
	.asciz	" : "
	.size	.Lsystem_string.6, 4

	.type	.Lsystem_string.7,@object # @system_string.7
.Lsystem_string.7:
	.asciz	"m1"
	.size	.Lsystem_string.7, 3

	.type	.Lsystem_string.8,@object # @system_string.8
.Lsystem_string.8:
	.asciz	"haha"
	.size	.Lsystem_string.8, 5

	.type	.Lsystem_string.9,@object # @system_string.9
.Lsystem_string.9:
	.asciz	"m1"
	.size	.Lsystem_string.9, 3

	.type	.Lsystem_string.10,@object # @system_string.10
.Lsystem_string.10:
	.asciz	"haha"
	.size	.Lsystem_string.10, 5

	.type	.Lsystem_string.11,@object # @system_string.11
.Lsystem_string.11:
	.zero	1
	.size	.Lsystem_string.11, 1

	.type	.Lsystem_string.12,@object # @system_string.12
.Lsystem_string.12:
	.asciz	"m2"
	.size	.Lsystem_string.12, 3


	.section	".note.GNU-stack","",@progbits
