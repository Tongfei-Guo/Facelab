	.text
	.file	"Facelab"
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
	subq	$360, %rsp              # imm = 0x168
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
	movl	$0, -44(%rbp)
	movq	$0, -80(%rbp)
	movq	$.Lsystem_string.14, -72(%rbp)
	movabsq	$4620805807672813158, %r14 # imm = 0x4020666666666666
	movq	%r14, -400(%rbp)
	movabsq	$4639953142963555533, %rax # imm = 0x40646CCCCCCCCCCD
	movq	%rax, -392(%rbp)
	movabsq	$4651344083427314893, %r15 # imm = 0x408CE4CCCCCCCCCD
	movq	%r15, -384(%rbp)
	movabsq	$4636730254480218522, %r12 # imm = 0x4058F9999999999A
	movq	%r12, -376(%rbp)
	leaq	-400(%rbp), %rax
	movq	%rax, -176(%rbp)
	movabsq	$8589934594, %rax       # imm = 0x200000002
	movq	%rax, -168(%rbp)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, -368(%rbp)
	movabsq	$4611686018427387904, %r13 # imm = 0x4000000000000000
	movq	%r13, -360(%rbp)
	movabsq	$4613937818241073152, %rax # imm = 0x4008000000000000
	movq	%rax, -352(%rbp)
	movabsq	$4616189618054758400, %rbx # imm = 0x4010000000000000
	movq	%rbx, -344(%rbp)
	leaq	-368(%rbp), %rax
	movq	%rax, -128(%rbp)
	movl	$2, -120(%rbp)
	movl	$2, -116(%rbp)
	leaq	-128(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	f2
	movl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movq	%rax, %rdi
	callq	free
	movq	%r14, -336(%rbp)
	movabsq	$4639953142963555533, %rax # imm = 0x40646CCCCCCCCCCD
	movq	%rax, -328(%rbp)
	movq	%r15, -320(%rbp)
	movq	%r12, -312(%rbp)
	leaq	-336(%rbp), %rax
	movq	%rax, -160(%rbp)
	movabsq	$8589934594, %rcx       # imm = 0x200000002
	movq	%rcx, -152(%rbp)
	movabsq	$4607182418800017408, %rdx # imm = 0x3FF0000000000000
	movq	%rdx, -304(%rbp)
	movq	%r13, -296(%rbp)
	movabsq	$4613937818241073152, %rsi # imm = 0x4008000000000000
	movq	%rsi, -288(%rbp)
	movq	%rbx, -280(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	%rcx, -136(%rbp)
	movq	%rdx, -272(%rbp)
	movq	%rdx, %r12
	movq	%r13, -264(%rbp)
	movq	%r13, %r15
	movq	%rsi, -256(%rbp)
	movq	%rsi, %r13
	movq	%rbx, -248(%rbp)
	movq	%rbx, %r14
	leaq	-272(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	$2, -104(%rbp)
	movl	$2, -100(%rbp)
	leaq	-112(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	movl	$.Lsystem_string.15, %edi
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	f
	movl	-44(%rbp), %esi
	xorl	%ebx, %ebx
	movl	$.Lfmt_int, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movq	-72(%rbp), %rsi
	movl	$.Lfmt_str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movq	%r12, -240(%rbp)
	movq	%r15, -232(%rbp)
	movq	%r13, -224(%rbp)
	movq	%r14, -216(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -64(%rbp)
	movabsq	$8589934594, %rax       # imm = 0x200000002
	movq	%rax, -56(%rbp)
	movq	%r12, -208(%rbp)
	movq	%r15, -200(%rbp)
	movq	%r13, -192(%rbp)
	movq	%r14, %r13
	movq	%rax, %r15
	movq	%r13, -184(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	%r15, -88(%rbp)
	testb	%bl, %bl
	jne	.LBB0_1
# BB#8:                                 # %else
	movl	-52(%rbp), %eax
	cmpl	-84(%rbp), %eax
	je	.LBB0_2
.LBB0_1:                                # %then
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.6, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_2:                                # %merge
	movq	-64(%rbp), %r11
	movl	-56(%rbp), %r8d
	decl	%r8d
	movl	-52(%rbp), %edx
	leal	-1(%rdx), %esi
	movq	-96(%rbp), %rdi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r9
	movq	%r9, %rsp
	movb	$1, -16(%rcx)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%rcx)
	jle	.LBB0_4
.LBB0_11:                               # %merge117
	cmpb	$1, (%r9)
	je	.LBB0_40
# BB#12:                                # %then122
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_13
	.p2align	4, 0x90
.LBB0_10:                               # %merge113
                                        #   in Loop: Header=BB0_4 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_11
.LBB0_4:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rbx)
	jle	.LBB0_6
	jmp	.LBB0_10
	.p2align	4, 0x90
.LBB0_9:                                # %then108
                                        #   in Loop: Header=BB0_6 Depth=2
	movb	$0, (%r9)
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jg	.LBB0_10
.LBB0_6:                                # %while_body98
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	imull	%edx, %eax
	addl	(%rbx), %eax
	cltq
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%rdi,%rax,8), %xmm0
	jne	.LBB0_9
# BB#7:                                 # %merge107
                                        #   in Loop: Header=BB0_6 Depth=2
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jle	.LBB0_6
	jmp	.LBB0_10
.LBB0_40:                               # %else124
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_13:                               # %merge121
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
	leaq	-32(%rax), %rdx
	movq	%rdx, %rsp
	movabsq	$4620805807672813158, %rcx # imm = 0x4020666666666666
	movq	%rcx, -32(%rax)
	movabsq	$4639953142963555533, %rcx # imm = 0x40646CCCCCCCCCCD
	movq	%rcx, -24(%rax)
	movabsq	$4651344083427314893, %rcx # imm = 0x408CE4CCCCCCCCCD
	movq	%rcx, -16(%rax)
	movabsq	$4636730254480218522, %rcx # imm = 0x4058F9999999999A
	movq	%rcx, -8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r9
	movq	%r9, %rsp
	movq	%rdx, -16(%rax)
	movq	%r15, -8(%rax)
	movl	$2, %eax
	movq	%rsp, %rdx
	addq	$-32, %rdx
	movq	%rdx, %rsp
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movq	%rdx, -16(%rsi)
	movq	%r15, -8(%rsi)
	movl	$1, %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%esi, (%rdi)
	jle	.LBB0_15
	jmp	.LBB0_19
	.p2align	4, 0x90
.LBB0_18:                               # %merge162
                                        #   in Loop: Header=BB0_15 Depth=1
	incl	(%rdi)
	cmpl	%esi, (%rdi)
	jg	.LBB0_19
.LBB0_15:                               # %while_body151
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%esi, (%rbx)
	jg	.LBB0_18
	.p2align	4, 0x90
.LBB0_17:                               # %while_body154
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %ecx
	imull	%eax, %ecx
	addl	(%rbx), %ecx
	movslq	%ecx, %rcx
	movq	$0, (%rdx,%rcx,8)
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jle	.LBB0_17
	jmp	.LBB0_18
.LBB0_19:                               # %merge167
	decl	%eax
	movq	(%r14), %r8
	movl	12(%r14), %r10d
	movq	(%r9), %r11
	movl	12(%r9), %r12d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rdx)
	cmpl	%eax, (%rbx)
	jle	.LBB0_21
	jmp	.LBB0_25
	.p2align	4, 0x90
.LBB0_24:                               # %merge205
                                        #   in Loop: Header=BB0_21 Depth=1
	incl	(%rbx)
	cmpl	%eax, (%rbx)
	jg	.LBB0_25
.LBB0_21:                               # %while_body184
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r9)
	cmpl	%eax, (%rdx)
	jg	.LBB0_24
	.p2align	4, 0x90
.LBB0_23:                               # %while_body187
                                        #   Parent Loop BB0_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %esi
	movl	(%rbx), %edi
	movl	%r10d, %ecx
	imull	%edi, %ecx
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	imull	%r12d, %edi
	addl	%esi, %edi
	movslq	%edi, %rsi
	movsd	(%r11,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r8,%rcx,8)
	incl	(%rdx)
	cmpl	%eax, (%rdx)
	jle	.LBB0_23
	jmp	.LBB0_24
.LBB0_25:                               # %merge210
	movq	%rsp, %rax
	leaq	-32(%rax), %rcx
	movq	%rcx, %rsp
	movabsq	$4607182418800017408, %rdx # imm = 0x3FF0000000000000
	movq	%rdx, -32(%rax)
	movabsq	$4611686018427387904, %rdx # imm = 0x4000000000000000
	movq	%rdx, -24(%rax)
	movabsq	$4613937818241073152, %rdx # imm = 0x4008000000000000
	movq	%rdx, -16(%rax)
	movq	%r13, -8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movq	%rcx, -16(%rax)
	movq	%r15, -8(%rax)
	cmpl	$2, 8(%r14)
	jne	.LBB0_26
# BB#33:                                # %else229
	movl	12(%r14), %eax
	cmpl	12(%rbx), %eax
	je	.LBB0_27
.LBB0_26:                               # %then227
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.6, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_27:                               # %merge226
	movq	(%r14), %r11
	movl	8(%r14), %r8d
	decl	%r8d
	movl	12(%r14), %edx
	leal	-1(%rdx), %esi
	movq	(%rbx), %rdi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r9
	movq	%r9, %rsp
	movb	$1, -16(%rcx)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%rcx)
	jle	.LBB0_29
.LBB0_36:                               # %merge280
	cmpb	$1, (%r9)
	je	.LBB0_39
# BB#37:                                # %then285
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.5, %esi
	jmp	.LBB0_38
	.p2align	4, 0x90
.LBB0_35:                               # %merge275
                                        #   in Loop: Header=BB0_29 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_36
.LBB0_29:                               # %while_body253
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_31 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rbx)
	jle	.LBB0_31
	jmp	.LBB0_35
	.p2align	4, 0x90
.LBB0_34:                               # %then270
                                        #   in Loop: Header=BB0_31 Depth=2
	movb	$0, (%r9)
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jg	.LBB0_35
.LBB0_31:                               # %while_body256
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	imull	%edx, %eax
	addl	(%rbx), %eax
	cltq
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	(%rdi,%rax,8), %xmm0
	jne	.LBB0_34
# BB#32:                                # %merge269
                                        #   in Loop: Header=BB0_31 Depth=2
	incl	(%rbx)
	cmpl	%esi, (%rbx)
	jle	.LBB0_31
	jmp	.LBB0_35
.LBB0_39:                               # %else287
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.4, %esi
.LBB0_38:                               # %merge284
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
	.globl	int2double              # -- Begin function int2double
	.p2align	4, 0x90
	.type	int2double,@function
int2double:                             # @int2double
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Lcfi17:
	.cfi_def_cfa_offset 16
.Lcfi18:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movl	$8, %edi
	callq	malloc
	cvtsi2sdl	%ebx, %xmm0
	movsd	%xmm0, (%rax)
	popq	%rbx
	retq
.Lfunc_end3:
	.size	int2double, .Lfunc_end3-int2double
	.cfi_endproc
                                        # -- End function
	.globl	double2int              # -- Begin function double2int
	.p2align	4, 0x90
	.type	double2int,@function
double2int:                             # @double2int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi19:
	.cfi_def_cfa_offset 16
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movl	$4, %edi
	callq	malloc
	cvttsd2si	(%rsp), %ecx    # 8-byte Folded Reload
	movl	%ecx, (%rax)
	popq	%rcx
	retq
.Lfunc_end4:
	.size	double2int, .Lfunc_end4-double2int
	.cfi_endproc
                                        # -- End function
	.globl	load                    # -- Begin function load
	.p2align	4, 0x90
	.type	load,@function
load:                                   # @load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi20:
	.cfi_def_cfa_offset 16
.Lcfi21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi22:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
.Lcfi23:
	.cfi_offset %rbx, -56
.Lcfi24:
	.cfi_offset %r12, -48
.Lcfi25:
	.cfi_offset %r13, -40
.Lcfi26:
	.cfi_offset %r14, -32
.Lcfi27:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movl	$24, %edi
	callq	malloc
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	callq	load_cpp
	movq	%rax, %r15
	cvttsd2si	(%r15), %r14d
	cvttsd2si	8(%r15), %r12d
	movl	%r14d, %edi
	imull	%r12d, %edi
	shll	$3, %edi
	movl	%edi, -52(%rbp)         # 4-byte Spill
	callq	malloc
	movq	%rax, %rbx
	movl	$16, %edi
	callq	malloc
	movq	%rbx, (%rax)
	movl	%r14d, 8(%rax)
	movl	%r12d, 12(%rax)
	movq	%r14, -64(%rbp)         # 8-byte Spill
	leal	-1(%r14), %esi
	leal	-1(%r12), %r13d
	movl	$0, -48(%rbp)
	cmpl	%esi, -48(%rbp)
	jle	.LBB5_2
	jmp	.LBB5_6
	.p2align	4, 0x90
.LBB5_5:                                # %merge
                                        #   in Loop: Header=BB5_2 Depth=1
	incl	-48(%rbp)
	cmpl	%esi, -48(%rbp)
	jg	.LBB5_6
.LBB5_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r13d, (%rdx)
	jg	.LBB5_5
	.p2align	4, 0x90
.LBB5_4:                                # %while_body10
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %ecx
	imull	%r12d, %ecx
	addl	(%rdx), %ecx
	movslq	%ecx, %rcx
	movq	$0, (%rbx,%rcx,8)
	incl	(%rdx)
	cmpl	%r13d, (%rdx)
	jle	.LBB5_4
	jmp	.LBB5_5
.LBB5_6:                                # %merge18
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	-52(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, %edi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	callq	malloc
	movq	%rax, %r14
	movl	$16, %edi
	callq	malloc
	movl	-44(%rbp), %esi         # 4-byte Reload
	movq	%r14, (%rax)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	%ecx, 8(%rax)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%r12d, 12(%rax)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%esi, (%rax)
	jle	.LBB5_8
	jmp	.LBB5_12
	.p2align	4, 0x90
.LBB5_11:                               # %merge45
                                        #   in Loop: Header=BB5_8 Depth=1
	incl	(%rax)
	cmpl	%esi, (%rax)
	jg	.LBB5_12
.LBB5_8:                                # %while_body34
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_10 Depth 2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r13d, (%rcx)
	jg	.LBB5_11
	.p2align	4, 0x90
.LBB5_10:                               # %while_body37
                                        #   Parent Loop BB5_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r12d, %edx
	addl	(%rcx), %edx
	movslq	%edx, %rdx
	movq	$0, (%r14,%rdx,8)
	incl	(%rcx)
	cmpl	%r13d, (%rcx)
	jle	.LBB5_10
	jmp	.LBB5_11
.LBB5_12:                               # %merge50
	movl	%ebx, %edi
	callq	malloc
	movq	%rax, %rbx
	movl	$16, %edi
	callq	malloc
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movq	%rbx, (%rax)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	%ecx, 8(%rax)
	movl	%r12d, 12(%rax)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	movq	-80(%rbp), %r14         # 8-byte Reload
	cmpl	%r9d, (%rcx)
	jle	.LBB5_14
	jmp	.LBB5_18
	.p2align	4, 0x90
.LBB5_17:                               # %merge77
                                        #   in Loop: Header=BB5_14 Depth=1
	incl	(%rcx)
	cmpl	%r9d, (%rcx)
	jg	.LBB5_18
.LBB5_14:                               # %while_body66
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_16 Depth 2
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r13d, (%rdx)
	jg	.LBB5_17
	.p2align	4, 0x90
.LBB5_16:                               # %while_body69
                                        #   Parent Loop BB5_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %esi
	imull	%r12d, %esi
	addl	(%rdx), %esi
	movslq	%esi, %rsi
	movq	$0, (%rbx,%rsi,8)
	incl	(%rdx)
	cmpl	%r13d, (%rdx)
	jle	.LBB5_16
	jmp	.LBB5_17
.LBB5_18:                               # %merge82
	movq	(%r14), %r8
	movq	-72(%rbp), %rcx         # 8-byte Reload
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
	jle	.LBB5_20
	jmp	.LBB5_24
	.p2align	4, 0x90
.LBB5_23:                               # %merge126
                                        #   in Loop: Header=BB5_20 Depth=1
	incl	(%rbx)
	movl	-44(%rbp), %r9d         # 4-byte Reload
	cmpl	%r9d, (%rbx)
	jg	.LBB5_24
.LBB5_20:                               # %while_body91
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_22 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%r13d, (%rcx)
	jg	.LBB5_23
	.p2align	4, 0x90
.LBB5_22:                               # %while_body94
                                        #   Parent Loop BB5_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %edx
	imull	%r12d, %edx
	addl	(%rcx), %edx
	movslq	%edx, %rdx
	movslq	(%rdi), %rsi
	movsd	(%r15,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r11,%rdx,8)
	incl	(%rdi)
	movslq	(%rdi), %rsi
	movsd	(%r15,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rdx,8)
	incl	(%rdi)
	movslq	(%rdi), %rsi
	movsd	(%r15,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r8,%rdx,8)
	incl	(%rdi)
	incl	(%rcx)
	cmpl	%r13d, (%rcx)
	jle	.LBB5_22
	jmp	.LBB5_23
.LBB5_24:                               # %merge131
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%r14, (%rcx)
	movq	-72(%rbp), %rdx         # 8-byte Reload
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
.Lfunc_end5:
	.size	load, .Lfunc_end5-load
	.cfi_endproc
                                        # -- End function
	.globl	bitwise                 # -- Begin function bitwise
	.p2align	4, 0x90
	.type	bitwise,@function
bitwise:                                # @bitwise
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi28:
	.cfi_def_cfa_offset 16
.Lcfi29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi30:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
.Lcfi31:
	.cfi_offset %rbx, -56
.Lcfi32:
	.cfi_offset %r12, -48
.Lcfi33:
	.cfi_offset %r13, -40
.Lcfi34:
	.cfi_offset %r14, -32
.Lcfi35:
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
	movq	%rax, -80(%rbp)
	movl	%r9d, -72(%rbp)
	movl	%r11d, -68(%rbp)
	decl	%r9d
	leal	-1(%r11), %edx
	movl	$0, -44(%rbp)
	cmpl	%r9d, -44(%rbp)
	jle	.LBB6_2
	jmp	.LBB6_6
	.p2align	4, 0x90
.LBB6_5:                                # %merge
                                        #   in Loop: Header=BB6_2 Depth=1
	incl	-44(%rbp)
	cmpl	%r9d, -44(%rbp)
	jg	.LBB6_6
.LBB6_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_4 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edx, (%rcx)
	jg	.LBB6_5
	.p2align	4, 0x90
.LBB6_4:                                # %while_body5
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %ebx
	imull	%r11d, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rax,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	.LBB6_4
	jmp	.LBB6_5
.LBB6_6:                                # %merge12
	movq	-80(%rbp), %r10
	movl	-68(%rbp), %r11d
	movq	(%rdi), %r15
	movl	12(%rdi), %r12d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r9d, (%r13)
	jle	.LBB6_8
	jmp	.LBB6_12
	.p2align	4, 0x90
.LBB6_11:                               # %merge47
                                        #   in Loop: Header=BB6_8 Depth=1
	incl	(%r13)
	cmpl	%r9d, (%r13)
	jg	.LBB6_12
.LBB6_8:                                # %while_body27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_10 Depth 2
	movq	%rsp, %r14
	leaq	-16(%r14), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r14)
	cmpl	%edx, (%rcx)
	jg	.LBB6_11
	.p2align	4, 0x90
.LBB6_10:                               # %while_body30
                                        #   Parent Loop BB6_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	movl	(%r13), %edi
	movl	%r11d, %ebx
	imull	%edi, %ebx
	addl	%eax, %ebx
	movslq	%ebx, %rbx
	imull	%r12d, %edi
	addl	%eax, %edi
	movslq	%edi, %rax
	movsd	(%r15,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	.LBB6_10
	jmp	.LBB6_11
.LBB6_12:                               # %merge52
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
	movq	%rcx, -64(%rbp)         # 8-byte Spill
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
	jle	.LBB6_14
	jmp	.LBB6_18
	.p2align	4, 0x90
.LBB6_17:                               # %merge80
                                        #   in Loop: Header=BB6_14 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	.LBB6_18
.LBB6_14:                               # %while_body69
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_16 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r8)
	cmpl	%ecx, (%rbx)
	jg	.LBB6_17
	.p2align	4, 0x90
.LBB6_16:                               # %while_body72
                                        #   Parent Loop BB6_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rdi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB6_16
	jmp	.LBB6_17
.LBB6_18:                               # %merge85
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r8
	movl	12(%rax), %r11d
	movq	(%rsi), %r14
	movl	12(%rsi), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r9d, (%rax)
	jle	.LBB6_20
	jmp	.LBB6_24
	.p2align	4, 0x90
.LBB6_23:                               # %merge125
                                        #   in Loop: Header=BB6_20 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	.LBB6_24
.LBB6_20:                               # %while_body104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_22 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB6_23
	.p2align	4, 0x90
.LBB6_22:                               # %while_body107
                                        #   Parent Loop BB6_20 Depth=1
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
	movsd	%xmm0, (%r8,%rsi,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	.LBB6_22
	jmp	.LBB6_23
.LBB6_24:                               # %merge130
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movq	$0, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rax)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rcx)
	movl	$0, -16(%rax)
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	movq	%r13, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	cmpl	$2, (%r13)
	jle	.LBB6_26
	jmp	.LBB6_47
	.p2align	4, 0x90
.LBB6_46:                               # %merge266
                                        #   in Loop: Header=BB6_26 Depth=1
	incl	(%r13)
	cmpl	$2, (%r13)
	jg	.LBB6_47
.LBB6_26:                               # %while_body142
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_28 Depth 2
	movl	$0, (%rdx)
	cmpl	$2, (%rdx)
	jle	.LBB6_28
	jmp	.LBB6_46
	.p2align	4, 0x90
.LBB6_44:                               # %merge249
                                        #   in Loop: Header=BB6_28 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	imull	%r14d, %r15d
	addl	%r15d, %r13d
	movslq	%r13d, %rcx
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	(%rax,%rcx,8), %xmm1
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movsd	%xmm0, (%rbx)
	movq	-56(%rbp), %rdx         # 8-byte Reload
	incl	(%rdx)
	movq	-88(%rbp), %r13         # 8-byte Reload
	cmpl	$2, (%rdx)
	jg	.LBB6_46
.LBB6_28:                               # %while_body147
                                        #   Parent Loop BB6_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movl	-72(%rbp), %r15d
	movl	-68(%rbp), %r12d
	movl	(%r13), %r14d
	testl	%r14d, %r14d
	jns	.LBB6_29
# BB#48:                                # %then
                                        #   in Loop: Header=BB6_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_29:                               # %merge154
                                        #   in Loop: Header=BB6_28 Depth=2
	decl	%r15d
	cmpl	%r14d, %r15d
	jge	.LBB6_30
# BB#49:                                # %then158
                                        #   in Loop: Header=BB6_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_30:                               # %merge157
                                        #   in Loop: Header=BB6_28 Depth=2
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB6_31
# BB#50:                                # %then164
                                        #   in Loop: Header=BB6_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_31:                               # %merge163
                                        #   in Loop: Header=BB6_28 Depth=2
	cmpl	%ebx, %r15d
	jge	.LBB6_32
# BB#51:                                # %then170
                                        #   in Loop: Header=BB6_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_32:                               # %merge169
                                        #   in Loop: Header=BB6_28 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r15d
	testl	%r15d, %r15d
	jns	.LBB6_33
# BB#52:                                # %then176
                                        #   in Loop: Header=BB6_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_33:                               # %merge175
                                        #   in Loop: Header=BB6_28 Depth=2
	leal	-1(%r12), %ebx
	cmpl	%r15d, %ebx
	jge	.LBB6_34
# BB#53:                                # %then182
                                        #   in Loop: Header=BB6_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_34:                               # %merge181
                                        #   in Loop: Header=BB6_28 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	jns	.LBB6_35
# BB#54:                                # %then188
                                        #   in Loop: Header=BB6_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_35:                               # %merge187
                                        #   in Loop: Header=BB6_28 Depth=2
	cmpl	%r13d, %ebx
	jge	.LBB6_36
# BB#55:                                # %then194
                                        #   in Loop: Header=BB6_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_36:                               # %merge193
                                        #   in Loop: Header=BB6_28 Depth=2
	movq	-80(%rbp), %rax
	imull	%r14d, %r12d
	addl	%r12d, %r15d
	movslq	%r15d, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %r12d
	movl	12(%rax), %r15d
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx), %r14d
	testl	%r14d, %r14d
	jns	.LBB6_37
# BB#56:                                # %then208
                                        #   in Loop: Header=BB6_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_37:                               # %merge207
                                        #   in Loop: Header=BB6_28 Depth=2
	decl	%r12d
	cmpl	%r14d, %r12d
	jge	.LBB6_38
# BB#57:                                # %then214
                                        #   in Loop: Header=BB6_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_38:                               # %merge213
                                        #   in Loop: Header=BB6_28 Depth=2
	movl	(%rbx), %ebx
	testl	%ebx, %ebx
	jns	.LBB6_39
# BB#58:                                # %then220
                                        #   in Loop: Header=BB6_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_39:                               # %merge219
                                        #   in Loop: Header=BB6_28 Depth=2
	cmpl	%ebx, %r12d
	jge	.LBB6_40
# BB#59:                                # %then226
                                        #   in Loop: Header=BB6_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_40:                               # %merge225
                                        #   in Loop: Header=BB6_28 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	jns	.LBB6_41
# BB#60:                                # %then232
                                        #   in Loop: Header=BB6_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_41:                               # %merge231
                                        #   in Loop: Header=BB6_28 Depth=2
	leal	-1(%r15), %r12d
	cmpl	%r13d, %r12d
	jge	.LBB6_42
# BB#61:                                # %then238
                                        #   in Loop: Header=BB6_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_42:                               # %merge237
                                        #   in Loop: Header=BB6_28 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ebx
	testl	%ebx, %ebx
	jns	.LBB6_43
# BB#62:                                # %then244
                                        #   in Loop: Header=BB6_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB6_43:                               # %merge243
                                        #   in Loop: Header=BB6_28 Depth=2
	cmpl	%ebx, %r12d
	jge	.LBB6_44
# BB#45:                                # %then250
                                        #   in Loop: Header=BB6_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	jmp	.LBB6_44
.LBB6_47:                               # %merge272
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
.Lfunc_end6:
	.size	bitwise, .Lfunc_end6-bitwise
	.cfi_endproc
                                        # -- End function
	.globl	filter                  # -- Begin function filter
	.p2align	4, 0x90
	.type	filter,@function
filter:                                 # @filter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi36:
	.cfi_def_cfa_offset 16
.Lcfi37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi38:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
.Lcfi39:
	.cfi_offset %rbx, -56
.Lcfi40:
	.cfi_offset %r12, -48
.Lcfi41:
	.cfi_offset %r13, -40
.Lcfi42:
	.cfi_offset %r14, -32
.Lcfi43:
	.cfi_offset %r15, -24
	movl	8(%rdi), %r8d
	movl	12(%rdi), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rcx
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rax, %rcx
	movq	%rsp, %rax
	subq	%rcx, %rax
	movq	%rax, %rsp
	movq	%rax, -104(%rbp)
	movl	%r8d, -96(%rbp)
	movl	%r10d, -92(%rbp)
	decl	%r8d
	leal	-1(%r10), %ecx
	movl	$0, -52(%rbp)
	cmpl	%r8d, -52(%rbp)
	jle	.LBB7_2
	jmp	.LBB7_6
	.p2align	4, 0x90
.LBB7_5:                                # %merge
                                        #   in Loop: Header=BB7_2 Depth=1
	incl	-52(%rbp)
	cmpl	%r8d, -52(%rbp)
	jg	.LBB7_6
.LBB7_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB7_5
	.p2align	4, 0x90
.LBB7_4:                                # %while_body5
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rax,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB7_4
	jmp	.LBB7_5
.LBB7_6:                                # %merge12
	movq	-104(%rbp), %r9
	movl	-92(%rbp), %r10d
	movq	(%rdi), %r14
	movl	12(%rdi), %r15d
	movq	%rsp, %rbx
	leaq	-16(%rbx), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%r12)
	jle	.LBB7_8
	jmp	.LBB7_12
	.p2align	4, 0x90
.LBB7_11:                               # %merge47
                                        #   in Loop: Header=BB7_8 Depth=1
	incl	(%r12)
	cmpl	%r8d, (%r12)
	jg	.LBB7_12
.LBB7_8:                                # %while_body27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_10 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rbx)
	jg	.LBB7_11
	.p2align	4, 0x90
.LBB7_10:                               # %while_body30
                                        #   Parent Loop BB7_8 Depth=1
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
	jle	.LBB7_10
	jmp	.LBB7_11
.LBB7_12:                               # %merge52
	movl	8(%rsi), %r8d
	movl	12(%rsi), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
	andq	%rcx, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
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
	jle	.LBB7_14
	jmp	.LBB7_18
	.p2align	4, 0x90
.LBB7_17:                               # %merge80
                                        #   in Loop: Header=BB7_14 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB7_18
.LBB7_14:                               # %while_body69
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB7_17
	.p2align	4, 0x90
.LBB7_16:                               # %while_body72
                                        #   Parent Loop BB7_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rdi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB7_16
	jmp	.LBB7_17
.LBB7_18:                               # %merge85
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r11d
	movq	(%rsi), %r14
	movl	12(%rsi), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB7_20
	jmp	.LBB7_24
	.p2align	4, 0x90
.LBB7_23:                               # %merge125
                                        #   in Loop: Header=BB7_20 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB7_24
.LBB7_20:                               # %while_body104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_22 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB7_23
	.p2align	4, 0x90
.LBB7_22:                               # %while_body107
                                        #   Parent Loop BB7_20 Depth=1
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
	jle	.LBB7_22
	jmp	.LBB7_23
.LBB7_24:                               # %merge130
	movq	%rsp, %r14
	leaq	-16(%r14), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movl	$0, -16(%r14)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
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
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
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
	jle	.LBB7_26
	jmp	.LBB7_30
	.p2align	4, 0x90
.LBB7_29:                               # %merge172
                                        #   in Loop: Header=BB7_26 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB7_30
.LBB7_26:                               # %while_body161
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_28 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB7_29
	.p2align	4, 0x90
.LBB7_28:                               # %while_body164
                                        #   Parent Loop BB7_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB7_28
	jmp	.LBB7_29
.LBB7_30:                               # %merge177
	movq	(%r11), %r9
	movq	%r11, -48(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r14), %r12
	movl	12(%r14), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r15
	movq	%r15, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r15)
	jle	.LBB7_32
	jmp	.LBB7_36
	.p2align	4, 0x90
.LBB7_35:                               # %merge217
                                        #   in Loop: Header=BB7_32 Depth=1
	incl	(%r15)
	cmpl	%r8d, (%r15)
	jg	.LBB7_36
.LBB7_32:                               # %while_body196
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_34 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB7_35
	.p2align	4, 0x90
.LBB7_34:                               # %while_body199
                                        #   Parent Loop BB7_32 Depth=1
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
	movsd	(%r12,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB7_34
	jmp	.LBB7_35
.LBB7_36:                               # %merge222
	callq	free
	movq	%r14, %rdi
	callq	free
	movq	-48(%rbp), %r10         # 8-byte Reload
	movl	8(%r10), %r8d
	movl	12(%r10), %edx
	movl	%r8d, %eax
	imull	%edx, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
	andq	%rcx, %rax
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
	jle	.LBB7_38
	jmp	.LBB7_42
	.p2align	4, 0x90
.LBB7_41:                               # %merge250
                                        #   in Loop: Header=BB7_38 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB7_42
.LBB7_38:                               # %while_body239
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_40 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB7_41
	.p2align	4, 0x90
.LBB7_40:                               # %while_body242
                                        #   Parent Loop BB7_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB7_40
	jmp	.LBB7_41
.LBB7_42:                               # %merge255
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
	jle	.LBB7_44
	jmp	.LBB7_48
	.p2align	4, 0x90
.LBB7_47:                               # %merge295
                                        #   in Loop: Header=BB7_44 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB7_48
.LBB7_44:                               # %while_body274
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_46 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB7_47
	.p2align	4, 0x90
.LBB7_46:                               # %while_body277
                                        #   Parent Loop BB7_44 Depth=1
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
	jle	.LBB7_46
	jmp	.LBB7_47
.LBB7_48:                               # %merge300
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %esi
	movq	-80(%rbp), %rax         # 8-byte Reload
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
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
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
	jle	.LBB7_50
	jmp	.LBB7_54
	.p2align	4, 0x90
.LBB7_53:                               # %merge335
                                        #   in Loop: Header=BB7_50 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB7_54
.LBB7_50:                               # %while_body324
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_52 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB7_53
	.p2align	4, 0x90
.LBB7_52:                               # %while_body327
                                        #   Parent Loop BB7_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB7_52
	jmp	.LBB7_53
.LBB7_54:                               # %merge340
	movq	(%r11), %r9
	movq	%r11, -48(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r14), %r12
	movl	12(%r14), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r15
	movq	%r15, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r15)
	jle	.LBB7_56
	jmp	.LBB7_60
	.p2align	4, 0x90
.LBB7_59:                               # %merge380
                                        #   in Loop: Header=BB7_56 Depth=1
	incl	(%r15)
	cmpl	%r8d, (%r15)
	jg	.LBB7_60
.LBB7_56:                               # %while_body359
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_58 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB7_59
	.p2align	4, 0x90
.LBB7_58:                               # %while_body362
                                        #   Parent Loop BB7_56 Depth=1
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
	movsd	(%r12,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB7_58
	jmp	.LBB7_59
.LBB7_60:                               # %merge385
	callq	free
	movq	%r14, %rdi
	callq	free
	movq	-48(%rbp), %r10         # 8-byte Reload
	movl	8(%r10), %r8d
	movl	12(%r10), %edx
	movl	%r8d, %eax
	imull	%edx, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
	andq	%rcx, %rax
	movq	%rsp, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
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
	jle	.LBB7_62
	jmp	.LBB7_66
	.p2align	4, 0x90
.LBB7_65:                               # %merge413
                                        #   in Loop: Header=BB7_62 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB7_66
.LBB7_62:                               # %while_body402
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_64 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB7_65
	.p2align	4, 0x90
.LBB7_64:                               # %while_body405
                                        #   Parent Loop BB7_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB7_64
	jmp	.LBB7_65
.LBB7_66:                               # %merge418
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r11d
	movq	(%r10), %r14
	movl	12(%r10), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB7_68
	jmp	.LBB7_72
	.p2align	4, 0x90
.LBB7_71:                               # %merge458
                                        #   in Loop: Header=BB7_68 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB7_72
.LBB7_68:                               # %while_body437
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_70 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB7_71
	.p2align	4, 0x90
.LBB7_70:                               # %while_body440
                                        #   Parent Loop BB7_68 Depth=1
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
	jle	.LBB7_70
	jmp	.LBB7_71
.LBB7_72:                               # %merge470
	movl	-96(%rbp), %ebx
	movl	-92(%rbp), %r14d
	decl	%ebx
	jns	.LBB7_73
# BB#154:                               # %then473
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB7_73:                               # %merge472
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r15d
	decl	%r15d
	js	.LBB7_155
# BB#74:                                # %merge479
	cmpl	%r15d, %ebx
	jl	.LBB7_75
.LBB7_76:                               # %merge490
	decl	%r14d
	js	.LBB7_156
.LBB7_77:                               # %merge495
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r12d
	decl	%r12d
	jns	.LBB7_78
# BB#157:                               # %then503
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB7_78:                               # %merge502
	cmpl	%r12d, %r14d
	jge	.LBB7_79
# BB#158:                               # %then509
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB7_79:                               # %merge508
	leal	1(%r12), %eax
	leal	1(%r15), %edx
	movl	%edx, %ecx
	imull	%eax, %ecx
	leaq	15(,%rcx,8), %rsi
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
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
	jle	.LBB7_81
	jmp	.LBB7_85
	.p2align	4, 0x90
.LBB7_84:                               # %merge538
                                        #   in Loop: Header=BB7_81 Depth=1
	incl	(%rdx)
	cmpl	%r15d, (%rdx)
	jg	.LBB7_85
.LBB7_81:                               # %while_body527
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_83 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%r12d, (%rsi)
	jg	.LBB7_84
	.p2align	4, 0x90
.LBB7_83:                               # %while_body530
                                        #   Parent Loop BB7_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	imull	%eax, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rcx,%rdi,8)
	incl	(%rsi)
	cmpl	%r12d, (%rsi)
	jle	.LBB7_83
	jmp	.LBB7_84
.LBB7_85:                               # %merge543
	movq	(%r14), %r9
	movl	12(%r14), %r10d
	movq	-104(%rbp), %r11
	movl	-92(%rbp), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r15d, (%rdi)
	jle	.LBB7_87
	jmp	.LBB7_91
	.p2align	4, 0x90
.LBB7_90:                               # %merge581
                                        #   in Loop: Header=BB7_87 Depth=1
	incl	(%rdi)
	cmpl	%r15d, (%rdi)
	jg	.LBB7_91
.LBB7_87:                               # %while_body560
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_89 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r8)
	cmpl	%r12d, (%rbx)
	jg	.LBB7_90
	.p2align	4, 0x90
.LBB7_89:                               # %while_body563
                                        #   Parent Loop BB7_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	movl	(%rdi), %ecx
	movl	%r10d, %edx
	imull	%ecx, %edx
	addl	%eax, %edx
	movslq	%edx, %rdx
	imull	%esi, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	%r12d, (%rbx)
	jle	.LBB7_89
	jmp	.LBB7_90
.LBB7_91:                               # %merge593
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %r12d
	decl	%ebx
	testl	%ebx, %ebx
	jg	.LBB7_92
# BB#159:                               # %then599
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB7_92:                               # %merge598
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r15d
	testl	%r15d, %r15d
	jns	.LBB7_93
# BB#160:                               # %then605
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB7_93:                               # %merge604
	cmpl	%r15d, %ebx
	jge	.LBB7_95
# BB#94:                                # %then611
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB7_95:                               # %merge615
	decl	%r12d
	testl	%r12d, %r12d
	jg	.LBB7_96
# BB#161:                               # %then621
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB7_96:                               # %merge620
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	js	.LBB7_162
# BB#97:                                # %merge626
	cmpl	%r13d, %r12d
	jl	.LBB7_163
.LBB7_98:                               # %merge632
	cmpl	8(%r14), %r15d
	jne	.LBB7_164
.LBB7_99:                               # %merge641
	cmpl	12(%r14), %r13d
	je	.LBB7_100
.LBB7_165:                              # %then651
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB7_100:                              # %merge650
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r10d
	movq	(%r14), %r11
	movl	12(%r14), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$1, -16(%rbx)
	cmpl	%r15d, (%rdi)
	jle	.LBB7_102
	jmp	.LBB7_106
	.p2align	4, 0x90
.LBB7_105:                              # %merge690
                                        #   in Loop: Header=BB7_102 Depth=1
	incl	(%rdi)
	cmpl	%r15d, (%rdi)
	jg	.LBB7_106
.LBB7_102:                              # %while_body669
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_104 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	$1, -16(%r8)
	cmpl	%r13d, (%rbx)
	jg	.LBB7_105
	.p2align	4, 0x90
.LBB7_104:                              # %while_body672
                                        #   Parent Loop BB7_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
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
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	%r13d, (%rbx)
	jle	.LBB7_104
	jmp	.LBB7_105
.LBB7_106:                              # %merge695
	movq	%rsp, %rax
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rax)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rcx)
	movl	$0, -16(%rax)
	movq	%r13, -136(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB7_107
	.p2align	4, 0x90
.LBB7_140:                              # %merge908
                                        #   in Loop: Header=BB7_107 Depth=1
	incl	(%r13)
.LBB7_107:                              # %while706
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_109 Depth 2
                                        #       Child Loop BB7_120 Depth 3
                                        #         Child Loop BB7_122 Depth 4
                                        #       Child Loop BB7_126 Depth 3
                                        #         Child Loop BB7_128 Depth 4
	movl	(%r13), %eax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpl	(%rcx), %eax
	jge	.LBB7_141
# BB#108:                               # %while_body707
                                        #   in Loop: Header=BB7_107 Depth=1
	movl	$0, (%rdx)
	jmp	.LBB7_109
	.p2align	4, 0x90
.LBB7_138:                              # %merge896
                                        #   in Loop: Header=BB7_109 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	imull	%r14d, %r15d
	addl	%r15d, %r13d
	movslq	%r13d, %rcx
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-112(%rbp), %rdx        # 8-byte Reload
	incl	(%rdx)
	movq	-136(%rbp), %r13        # 8-byte Reload
.LBB7_109:                              # %while712
                                        #   Parent Loop BB7_107 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_120 Depth 3
                                        #         Child Loop BB7_122 Depth 4
                                        #       Child Loop BB7_126 Depth 3
                                        #         Child Loop BB7_128 Depth 4
	movl	(%rdx), %eax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpl	(%rcx), %eax
	jge	.LBB7_140
# BB#110:                               # %while_body713
                                        #   in Loop: Header=BB7_109 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rsp
	movq	$0, -16(%rax)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	(%r13), %r14d
	testl	%r14d, %r14d
	jns	.LBB7_111
# BB#166:                               # %then721
                                        #   in Loop: Header=BB7_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB7_111:                              # %merge720
                                        #   in Loop: Header=BB7_109 Depth=2
	decl	%ebx
	cmpl	%r14d, %ebx
	jge	.LBB7_112
# BB#167:                               # %then727
                                        #   in Loop: Header=BB7_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB7_112:                              # %merge726
                                        #   in Loop: Header=BB7_109 Depth=2
	movl	(%r13), %r9d
	addl	$2, %r9d
	movq	%r9, -48(%rbp)          # 8-byte Spill
	jns	.LBB7_113
# BB#168:                               # %then734
                                        #   in Loop: Header=BB7_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %r9          # 8-byte Reload
.LBB7_113:                              # %merge733
                                        #   in Loop: Header=BB7_109 Depth=2
	cmpl	%r9d, %ebx
	jge	.LBB7_114
# BB#169:                               # %then740
                                        #   in Loop: Header=BB7_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %r9          # 8-byte Reload
.LBB7_114:                              # %merge739
                                        #   in Loop: Header=BB7_109 Depth=2
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movl	(%rbx), %r15d
	testl	%r15d, %r15d
	jns	.LBB7_115
# BB#170:                               # %then746
                                        #   in Loop: Header=BB7_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %r9          # 8-byte Reload
.LBB7_115:                              # %merge745
                                        #   in Loop: Header=BB7_109 Depth=2
	movl	-116(%rbp), %eax        # 4-byte Reload
	decl	%eax
	movl	%eax, %r12d
	cmpl	%r15d, %eax
	jge	.LBB7_116
# BB#171:                               # %then752
                                        #   in Loop: Header=BB7_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %r9          # 8-byte Reload
.LBB7_116:                              # %merge751
                                        #   in Loop: Header=BB7_109 Depth=2
	movl	(%rbx), %r13d
	addl	$2, %r13d
	jns	.LBB7_117
# BB#172:                               # %then759
                                        #   in Loop: Header=BB7_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %r9          # 8-byte Reload
.LBB7_117:                              # %merge758
                                        #   in Loop: Header=BB7_109 Depth=2
	cmpl	%r13d, %r12d
	jge	.LBB7_118
# BB#173:                               # %then765
                                        #   in Loop: Header=BB7_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %r9          # 8-byte Reload
.LBB7_118:                              # %merge764
                                        #   in Loop: Header=BB7_109 Depth=2
	subl	%r14d, %r9d
	subl	%r15d, %r13d
	leal	1(%r13), %eax
	leal	1(%r9), %edx
	movl	%edx, %ecx
	imull	%eax, %ecx
	leaq	15(,%rcx,8), %rsi
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
	andq	%rcx, %rsi
	movq	%rsp, %rcx
	subq	%rsi, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movq	%rcx, -16(%rsi)
	movl	%edx, -8(%rsi)
	movl	%eax, -4(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r9d, (%rdx)
	jle	.LBB7_120
	jmp	.LBB7_124
	.p2align	4, 0x90
.LBB7_123:                              # %merge794
                                        #   in Loop: Header=BB7_120 Depth=3
	incl	(%rdx)
	cmpl	%r9d, (%rdx)
	jg	.LBB7_124
.LBB7_120:                              # %while_body783
                                        #   Parent Loop BB7_107 Depth=1
                                        #     Parent Loop BB7_109 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_122 Depth 4
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r13d, (%rsi)
	jg	.LBB7_123
	.p2align	4, 0x90
.LBB7_122:                              # %while_body786
                                        #   Parent Loop BB7_107 Depth=1
                                        #     Parent Loop BB7_109 Depth=2
                                        #       Parent Loop BB7_120 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%rdx), %ebx
	imull	%eax, %ebx
	addl	(%rsi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rcx,%rbx,8)
	incl	(%rsi)
	cmpl	%r13d, (%rsi)
	jle	.LBB7_122
	jmp	.LBB7_123
	.p2align	4, 0x90
.LBB7_124:                              # %merge799
                                        #   in Loop: Header=BB7_109 Depth=2
	movq	(%rdi), %r8
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	12(%rdi), %r10d
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r11
	movl	12(%rax), %r12d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r9d, (%rbx)
	jle	.LBB7_126
	jmp	.LBB7_130
	.p2align	4, 0x90
.LBB7_129:                              # %merge837
                                        #   in Loop: Header=BB7_126 Depth=3
	incl	(%rbx)
	movq	%rdi, %r9
	cmpl	%r9d, (%rbx)
	jg	.LBB7_130
.LBB7_126:                              # %while_body816
                                        #   Parent Loop BB7_107 Depth=1
                                        #     Parent Loop BB7_109 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_128 Depth 4
	movq	%r9, %rdi
	movq	%rsp, %r9
	leaq	-16(%r9), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r9)
	cmpl	%r13d, (%rax)
	jg	.LBB7_129
	.p2align	4, 0x90
.LBB7_128:                              # %while_body819
                                        #   Parent Loop BB7_107 Depth=1
                                        #     Parent Loop BB7_109 Depth=2
                                        #       Parent Loop BB7_126 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%rax), %ecx
	movl	(%rbx), %edx
	movl	%r10d, %esi
	imull	%edx, %esi
	addl	%ecx, %esi
	movslq	%esi, %rsi
	addl	%r15d, %ecx
	addl	%r14d, %edx
	imull	%r12d, %edx
	addl	%ecx, %edx
	movslq	%edx, %rcx
	movsd	(%r11,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r8,%rsi,8)
	incl	(%rax)
	cmpl	%r13d, (%rax)
	jle	.LBB7_128
	jmp	.LBB7_129
	.p2align	4, 0x90
.LBB7_130:                              # %merge842
                                        #   in Loop: Header=BB7_109 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	callq	bitwise
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	free
	movq	-144(%rbp), %rax        # 8-byte Reload
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %r12d
	movl	12(%rax), %r15d
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movl	(%rbx), %r14d
	testl	%r14d, %r14d
	jns	.LBB7_131
# BB#174:                               # %then855
                                        #   in Loop: Header=BB7_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB7_131:                              # %merge854
                                        #   in Loop: Header=BB7_109 Depth=2
	decl	%r12d
	cmpl	%r14d, %r12d
	jge	.LBB7_132
# BB#175:                               # %then861
                                        #   in Loop: Header=BB7_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB7_132:                              # %merge860
                                        #   in Loop: Header=BB7_109 Depth=2
	movl	(%rbx), %ebx
	testl	%ebx, %ebx
	jns	.LBB7_133
# BB#176:                               # %then867
                                        #   in Loop: Header=BB7_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB7_133:                              # %merge866
                                        #   in Loop: Header=BB7_109 Depth=2
	cmpl	%ebx, %r12d
	jge	.LBB7_134
# BB#177:                               # %then873
                                        #   in Loop: Header=BB7_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB7_134:                              # %merge872
                                        #   in Loop: Header=BB7_109 Depth=2
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movl	(%rbx), %r13d
	testl	%r13d, %r13d
	jns	.LBB7_135
# BB#178:                               # %then879
                                        #   in Loop: Header=BB7_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB7_135:                              # %merge878
                                        #   in Loop: Header=BB7_109 Depth=2
	leal	-1(%r15), %r12d
	cmpl	%r13d, %r12d
	jge	.LBB7_136
# BB#179:                               # %then885
                                        #   in Loop: Header=BB7_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB7_136:                              # %merge884
                                        #   in Loop: Header=BB7_109 Depth=2
	movl	(%rbx), %ebx
	testl	%ebx, %ebx
	jns	.LBB7_137
# BB#180:                               # %then891
                                        #   in Loop: Header=BB7_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB7_137:                              # %merge890
                                        #   in Loop: Header=BB7_109 Depth=2
	cmpl	%ebx, %r12d
	jge	.LBB7_138
# BB#139:                               # %then897
                                        #   in Loop: Header=BB7_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	jmp	.LBB7_138
.LBB7_141:                              # %merge915
	movl	$8, %edi
	callq	malloc
	movq	%rax, %r15
	movq	-64(%rbp), %rax         # 8-byte Reload
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
	jle	.LBB7_143
	jmp	.LBB7_147
	.p2align	4, 0x90
.LBB7_146:                              # %merge946
                                        #   in Loop: Header=BB7_143 Depth=1
	incl	(%rdx)
	cmpl	%r14d, (%rdx)
	jg	.LBB7_147
.LBB7_143:                              # %while_body935
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_145 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%ecx, (%rsi)
	jg	.LBB7_146
	.p2align	4, 0x90
.LBB7_145:                              # %while_body938
                                        #   Parent Loop BB7_143 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	imull	%r12d, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rbx,%rdi,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB7_145
	jmp	.LBB7_146
.LBB7_147:                              # %merge951
	movq	(%rax), %r8
	movl	12(%rax), %r9d
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %r11
	movl	12(%rdx), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r14d, (%r13)
	jle	.LBB7_149
	jmp	.LBB7_153
	.p2align	4, 0x90
.LBB7_152:                              # %merge991
                                        #   in Loop: Header=BB7_149 Depth=1
	incl	(%r13)
	cmpl	%r14d, (%r13)
	jg	.LBB7_153
.LBB7_149:                              # %while_body970
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_151 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rsi)
	jg	.LBB7_152
	.p2align	4, 0x90
.LBB7_151:                              # %while_body973
                                        #   Parent Loop BB7_149 Depth=1
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
	jle	.LBB7_151
	jmp	.LBB7_152
.LBB7_153:                              # %merge996
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
.LBB7_155:                              # %then480
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	cmpl	%r15d, %ebx
	jge	.LBB7_76
.LBB7_75:                               # %then486
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	decl	%r14d
	jns	.LBB7_77
.LBB7_156:                              # %then496
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	jmp	.LBB7_77
.LBB7_162:                              # %then627
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	cmpl	%r13d, %r12d
	jge	.LBB7_98
.LBB7_163:                              # %then633
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	cmpl	8(%r14), %r15d
	je	.LBB7_99
.LBB7_164:                              # %then642
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	cmpl	12(%r14), %r13d
	jne	.LBB7_165
	jmp	.LBB7_100
.Lfunc_end7:
	.size	filter, .Lfunc_end7-filter
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function f
.LCPI8_0:
	.quad	4617315517961601024     # double 5
	.text
	.globl	f
	.p2align	4, 0x90
	.type	f,@function
f:                                      # @f
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi44:
	.cfi_def_cfa_offset 16
.Lcfi45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi46:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
.Lcfi47:
	.cfi_offset %rbx, -56
.Lcfi48:
	.cfi_offset %r12, -48
.Lcfi49:
	.cfi_offset %r13, -40
.Lcfi50:
	.cfi_offset %r14, -32
.Lcfi51:
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
	movq	%r11, -88(%rbp)
	movl	%r8d, -80(%rbp)
	movl	%r9d, -76(%rbp)
	decl	%r8d
	leal	-1(%r9), %r13d
	movl	$0, -68(%rbp)
	cmpl	%r8d, -68(%rbp)
	jle	.LBB8_2
	jmp	.LBB8_6
	.p2align	4, 0x90
.LBB8_5:                                # %merge
                                        #   in Loop: Header=BB8_2 Depth=1
	incl	-68(%rbp)
	cmpl	%r8d, -68(%rbp)
	jg	.LBB8_6
.LBB8_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_4 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%r13d, (%rbx)
	jg	.LBB8_5
	.p2align	4, 0x90
.LBB8_4:                                # %while_body5
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	imull	%r9d, %eax
	addl	(%rbx), %eax
	cltq
	movq	$0, (%r11,%rax,8)
	incl	(%rbx)
	cmpl	%r13d, (%rbx)
	jle	.LBB8_4
	jmp	.LBB8_5
.LBB8_6:                                # %merge12
	movq	-88(%rbp), %r9
	movl	-76(%rbp), %r10d
	movq	(%rsi), %r11
	movl	12(%rsi), %r15d
	movq	%rsp, %rbx
	leaq	-16(%rbx), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%r12)
	jle	.LBB8_8
	jmp	.LBB8_12
	.p2align	4, 0x90
.LBB8_11:                               # %merge47
                                        #   in Loop: Header=BB8_8 Depth=1
	incl	(%r12)
	cmpl	%r8d, (%r12)
	jg	.LBB8_12
.LBB8_8:                                # %while_body27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_10 Depth 2
	movq	%rsp, %r14
	leaq	-16(%r14), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r14)
	cmpl	%r13d, (%rbx)
	jg	.LBB8_11
	.p2align	4, 0x90
.LBB8_10:                               # %while_body30
                                        #   Parent Loop BB8_8 Depth=1
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
	jle	.LBB8_10
	jmp	.LBB8_11
.LBB8_12:                               # %merge52
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
	jle	.LBB8_14
	jmp	.LBB8_18
	.p2align	4, 0x90
.LBB8_17:                               # %merge80
                                        #   in Loop: Header=BB8_14 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB8_18
.LBB8_14:                               # %while_body69
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_16 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rdi)
	jg	.LBB8_17
	.p2align	4, 0x90
.LBB8_16:                               # %while_body72
                                        #   Parent Loop BB8_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%r9d, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%r11,%rbx,8)
	incl	(%rdi)
	cmpl	%esi, (%rdi)
	jle	.LBB8_16
	jmp	.LBB8_17
.LBB8_18:                               # %merge85
	movq	(%r13), %r9
	movl	12(%r13), %r10d
	movq	(%rdx), %r14
	movl	12(%rdx), %r15d
	movq	%rsp, %rbx
	leaq	-16(%rbx), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%r12)
	jle	.LBB8_20
	jmp	.LBB8_24
	.p2align	4, 0x90
.LBB8_23:                               # %merge125
                                        #   in Loop: Header=BB8_20 Depth=1
	incl	(%r12)
	cmpl	%r8d, (%r12)
	jg	.LBB8_24
.LBB8_20:                               # %while_body104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_22 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r11)
	cmpl	%esi, (%rbx)
	jg	.LBB8_23
	.p2align	4, 0x90
.LBB8_22:                               # %while_body107
                                        #   Parent Loop BB8_20 Depth=1
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
	jle	.LBB8_22
	jmp	.LBB8_23
.LBB8_24:                               # %merge130
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
	leaq	-16(%rax), %r12
	movq	%r12, %rsp
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
	jle	.LBB8_26
	jmp	.LBB8_30
	.p2align	4, 0x90
.LBB8_29:                               # %merge158
                                        #   in Loop: Header=BB8_26 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB8_30
.LBB8_26:                               # %while_body147
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_28 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%edx, (%rbx)
	jg	.LBB8_29
	.p2align	4, 0x90
.LBB8_28:                               # %while_body150
                                        #   Parent Loop BB8_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %esi
	imull	%r10d, %esi
	addl	(%rbx), %esi
	movslq	%esi, %rsi
	movq	$0, (%rdi,%rsi,8)
	incl	(%rbx)
	cmpl	%edx, (%rbx)
	jle	.LBB8_28
	jmp	.LBB8_29
.LBB8_30:                               # %merge163
	movq	(%r12), %r9
	movl	12(%r12), %r11d
	movq	(%rcx), %r14
	movl	12(%rcx), %r15d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%rax)
	jle	.LBB8_32
	jmp	.LBB8_36
	.p2align	4, 0x90
.LBB8_35:                               # %merge203
                                        #   in Loop: Header=BB8_32 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB8_36
.LBB8_32:                               # %while_body182
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_34 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%edx, (%rsi)
	jg	.LBB8_35
	.p2align	4, 0x90
.LBB8_34:                               # %while_body185
                                        #   Parent Loop BB8_32 Depth=1
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
	jle	.LBB8_34
	jmp	.LBB8_35
.LBB8_36:                               # %merge208
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
	movl	$.Lsystem_string.9, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movl	-80(%rbp), %eax
	cmpl	8(%r13), %eax
	jne	.LBB8_37
# BB#43:                                # %else
	movl	-76(%rbp), %eax
	cmpl	12(%r13), %eax
	je	.LBB8_38
.LBB8_37:                               # %then
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.6, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB8_38:                               # %merge218
	movq	-88(%rbp), %r9
	movl	-80(%rbp), %eax
	leal	-1(%rax), %r8d
	movl	-76(%rbp), %edx
	leal	-1(%rdx), %esi
	movq	(%r13), %r11
	movl	%eax, %ecx
	imull	%edx, %ecx
	leaq	15(,%rcx,8), %rcx
	movabsq	$68719476720, %rdi      # imm = 0xFFFFFFFF0
	andq	%rdi, %rcx
	movq	%rsp, %rbx
	subq	%rcx, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r15
	movq	%r15, %rsp
	movq	%rbx, -16(%rcx)
	movl	%eax, -8(%rcx)
	movl	%edx, -4(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r8d, (%rcx)
	jle	.LBB8_40
	jmp	.LBB8_45
	.p2align	4, 0x90
.LBB8_44:                               # %merge261
                                        #   in Loop: Header=BB8_40 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB8_45
.LBB8_40:                               # %while_body250
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_42 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rax)
	jg	.LBB8_44
	.p2align	4, 0x90
.LBB8_42:                               # %while_body253
                                        #   Parent Loop BB8_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %edi
	imull	%edx, %edi
	addl	(%rax), %edi
	movslq	%edi, %rdi
	movq	$0, (%rbx,%rdi,8)
	incl	(%rax)
	cmpl	%esi, (%rax)
	jle	.LBB8_42
	jmp	.LBB8_44
.LBB8_45:                               # %merge266
	movq	(%r15), %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r8d, (%rcx)
	jle	.LBB8_47
	jmp	.LBB8_51
	.p2align	4, 0x90
.LBB8_50:                               # %merge297
                                        #   in Loop: Header=BB8_47 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB8_51
.LBB8_47:                               # %while_body273
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_49 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdi)
	cmpl	%esi, (%rax)
	jg	.LBB8_50
	.p2align	4, 0x90
.LBB8_49:                               # %while_body276
                                        #   Parent Loop BB8_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %edi
	imull	%edx, %edi
	addl	(%rax), %edi
	movslq	%edi, %rdi
	movsd	(%r9,%rdi,8), %xmm0     # xmm0 = mem[0],zero
	addsd	(%r11,%rdi,8), %xmm0
	movsd	%xmm0, (%rbx,%rdi,8)
	incl	(%rax)
	cmpl	%esi, (%rax)
	jle	.LBB8_49
	jmp	.LBB8_50
.LBB8_51:                               # %merge302
	movq	%r13, -120(%rbp)        # 8-byte Spill
	movl	12(%r15), %eax
	cmpl	8(%r12), %eax
	je	.LBB8_52
# BB#154:                               # %then310
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.6, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB8_52:                               # %merge309
	movq	(%r15), %r14
	movq	%r12, %rax
	movq	(%rax), %r12
	movl	8(%r15), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	12(%rax), %r8d
	leal	-1(%r8), %r11d
	movl	12(%r15), %r13d
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
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rsp
	movq	%rax, -16(%rdi)
	movl	%ecx, -8(%rdi)
	movl	%r8d, -4(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdi)
	jmp	.LBB8_53
	.p2align	4, 0x90
.LBB8_57:                               # %merge346
                                        #   in Loop: Header=BB8_53 Depth=1
	incl	(%rcx)
.LBB8_53:                               # %while334
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_56 Depth 2
	movl	-44(%rbp), %edx         # 4-byte Reload
	cmpl	%edx, (%rcx)
	jg	.LBB8_58
# BB#54:                                # %while_body335
                                        #   in Loop: Header=BB8_53 Depth=1
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r11d, (%rdi)
	jg	.LBB8_57
	.p2align	4, 0x90
.LBB8_56:                               # %while_body338
                                        #   Parent Loop BB8_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %ebx
	imull	%r8d, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rax,%rbx,8)
	incl	(%rdi)
	cmpl	%r11d, (%rdi)
	jle	.LBB8_56
	jmp	.LBB8_57
.LBB8_58:                               # %merge351
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB8_59
	.p2align	4, 0x90
.LBB8_66:                               # %merge392
                                        #   in Loop: Header=BB8_59 Depth=1
	incl	(%rdi)
.LBB8_59:                               # %while357
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_62 Depth 2
                                        #       Child Loop BB8_64 Depth 3
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rdi)
	jg	.LBB8_67
# BB#60:                                # %while_body358
                                        #   in Loop: Header=BB8_59 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r11d, (%rax)
	jle	.LBB8_62
	jmp	.LBB8_66
	.p2align	4, 0x90
.LBB8_65:                               # %merge386
                                        #   in Loop: Header=BB8_62 Depth=2
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, (%r15)
	incl	(%rax)
	cmpl	%r11d, (%rax)
	jg	.LBB8_66
.LBB8_62:                               # %while_body361
                                        #   Parent Loop BB8_59 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_64 Depth 3
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
	jg	.LBB8_65
	.p2align	4, 0x90
.LBB8_64:                               # %while_body369
                                        #   Parent Loop BB8_59 Depth=1
                                        #     Parent Loop BB8_62 Depth=2
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
	jle	.LBB8_64
	jmp	.LBB8_65
.LBB8_67:                               # %merge397
	movq	-112(%rbp), %rax        # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax         # 8-byte Reload
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
	jle	.LBB8_69
	jmp	.LBB8_73
	.p2align	4, 0x90
.LBB8_72:                               # %merge430
                                        #   in Loop: Header=BB8_69 Depth=1
	incl	(%rdi)
	cmpl	%r10d, (%rdi)
	jg	.LBB8_73
.LBB8_69:                               # %while_body419
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_71 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%esi, (%rcx)
	jg	.LBB8_72
	.p2align	4, 0x90
.LBB8_71:                               # %while_body422
                                        #   Parent Loop BB8_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movq	$0, (%rbx,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB8_71
	jmp	.LBB8_72
.LBB8_73:                               # %merge435
	movq	(%r8), %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rax)
	cmpl	%r10d, (%rdi)
	jle	.LBB8_75
	jmp	.LBB8_79
	.p2align	4, 0x90
.LBB8_78:                               # %merge460
                                        #   in Loop: Header=BB8_75 Depth=1
	incl	(%rdi)
	cmpl	%r10d, (%rdi)
	jg	.LBB8_79
.LBB8_75:                               # %while_body442
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_77 Depth 2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%esi, (%rcx)
	jg	.LBB8_78
	.p2align	4, 0x90
.LBB8_77:                               # %while_body445
                                        #   Parent Loop BB8_75 Depth=1
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
	jle	.LBB8_77
	jmp	.LBB8_78
.LBB8_79:                               # %merge465
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
	jle	.LBB8_81
	jmp	.LBB8_85
	.p2align	4, 0x90
.LBB8_84:                               # %merge497
                                        #   in Loop: Header=BB8_81 Depth=1
	incl	(%rdi)
	cmpl	%r9d, (%rdi)
	jg	.LBB8_85
.LBB8_81:                               # %while_body486
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_83 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rcx)
	jg	.LBB8_84
	.p2align	4, 0x90
.LBB8_83:                               # %while_body489
                                        #   Parent Loop BB8_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movq	$0, (%rbx,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB8_83
	jmp	.LBB8_84
.LBB8_85:                               # %merge502
	movq	(%r8), %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rax)
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	cmpl	%r9d, (%rdi)
	jle	.LBB8_87
	jmp	.LBB8_91
	.p2align	4, 0x90
.LBB8_90:                               # %merge527
                                        #   in Loop: Header=BB8_87 Depth=1
	incl	(%rdi)
	cmpl	%r9d, (%rdi)
	jg	.LBB8_91
.LBB8_87:                               # %while_body509
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_89 Depth 2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%esi, (%rcx)
	jg	.LBB8_90
	.p2align	4, 0x90
.LBB8_89:                               # %while_body512
                                        #   Parent Loop BB8_87 Depth=1
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
	jle	.LBB8_89
	jmp	.LBB8_90
.LBB8_91:                               # %merge532
	movq	(%r8), %r15
	movl	8(%r8), %eax
	movl	12(%r8), %ebx
	decl	%eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	leal	-1(%rbx), %r13d
	movq	%rsp, %rax
	leaq	-16(%rax), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB8_92
	.p2align	4, 0x90
.LBB8_96:                               # %merge559
                                        #   in Loop: Header=BB8_92 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%r12)
.LBB8_92:                               # %while544
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_95 Depth 2
	movl	-64(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%r12)
	jg	.LBB8_97
# BB#93:                                # %while_body545
                                        #   in Loop: Header=BB8_92 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	cmpl	%r13d, (%r14)
	jg	.LBB8_96
	.p2align	4, 0x90
.LBB8_95:                               # %while_body548
                                        #   Parent Loop BB8_92 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r12), %eax
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
	cmpl	%r13d, (%r14)
	jle	.LBB8_95
	jmp	.LBB8_96
.LBB8_97:                               # %merge565
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
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	-76(%rbp), %eax
	movq	-104(%rbp), %rbx        # 8-byte Reload
	cmpl	8(%rbx), %eax
	je	.LBB8_98
# BB#155:                               # %then575
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.6, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB8_98:                               # %merge574
	movq	-88(%rbp), %r11
	movq	(%rbx), %r12
	movl	-80(%rbp), %ecx
	leal	-1(%rcx), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	12(%rbx), %r8d
	leal	-1(%r8), %r10d
	movl	-76(%rbp), %r13d
	leal	-1(%r13), %r9d
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
	jmp	.LBB8_99
	.p2align	4, 0x90
.LBB8_103:                              # %merge613
                                        #   in Loop: Header=BB8_99 Depth=1
	incl	(%rcx)
.LBB8_99:                               # %while601
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_102 Depth 2
	movl	-44(%rbp), %edx         # 4-byte Reload
	cmpl	%edx, (%rcx)
	jg	.LBB8_104
# BB#100:                               # %while_body602
                                        #   in Loop: Header=BB8_99 Depth=1
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r10d, (%rdi)
	jg	.LBB8_103
	.p2align	4, 0x90
.LBB8_102:                              # %while_body605
                                        #   Parent Loop BB8_99 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %ebx
	imull	%r8d, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rax,%rbx,8)
	incl	(%rdi)
	cmpl	%r10d, (%rdi)
	jle	.LBB8_102
	jmp	.LBB8_103
.LBB8_104:                              # %merge618
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB8_105
	.p2align	4, 0x90
.LBB8_112:                              # %merge661
                                        #   in Loop: Header=BB8_105 Depth=1
	incl	(%rdi)
.LBB8_105:                              # %while624
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_108 Depth 2
                                        #       Child Loop BB8_110 Depth 3
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rdi)
	jg	.LBB8_113
# BB#106:                               # %while_body625
                                        #   in Loop: Header=BB8_105 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r10d, (%rax)
	jle	.LBB8_108
	jmp	.LBB8_112
	.p2align	4, 0x90
.LBB8_111:                              # %merge655
                                        #   in Loop: Header=BB8_108 Depth=2
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, (%r14)
	incl	(%rax)
	cmpl	%r10d, (%rax)
	jg	.LBB8_112
.LBB8_108:                              # %while_body628
                                        #   Parent Loop BB8_105 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_110 Depth 3
	movl	(%rdi), %ecx
	imull	%r8d, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx,8), %r14
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movq	$0, -16(%rbx)
	movq	%rsp, %r15
	leaq	-16(%r15), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r15)
	cmpl	%r9d, (%rbx)
	jg	.LBB8_111
	.p2align	4, 0x90
.LBB8_110:                              # %while_body637
                                        #   Parent Loop BB8_105 Depth=1
                                        #     Parent Loop BB8_108 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %esi
	movl	(%rdi), %edx
	imull	%r13d, %edx
	addl	%esi, %edx
	movslq	%edx, %rdx
	movsd	(%r11,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	imull	%r8d, %esi
	addl	(%rax), %esi
	movslq	%esi, %rdx
	mulsd	(%r12,%rdx,8), %xmm0
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	incl	(%rbx)
	cmpl	%r9d, (%rbx)
	jle	.LBB8_110
	jmp	.LBB8_111
.LBB8_113:                              # %merge666
	movq	-56(%rbp), %rax         # 8-byte Reload
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
	movq	-120(%rbp), %r13        # 8-byte Reload
	cmpl	%r14d, (%rdx)
	jle	.LBB8_115
	jmp	.LBB8_119
	.p2align	4, 0x90
.LBB8_118:                              # %merge696
                                        #   in Loop: Header=BB8_115 Depth=1
	incl	(%rdx)
	cmpl	%r14d, (%rdx)
	jg	.LBB8_119
.LBB8_115:                              # %while_body685
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_117 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%ecx, (%rsi)
	jg	.LBB8_118
	.p2align	4, 0x90
.LBB8_117:                              # %while_body688
                                        #   Parent Loop BB8_115 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	imull	%r12d, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rbx,%rdi,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB8_117
	jmp	.LBB8_118
.LBB8_119:                              # %merge701
	movq	(%rax), %r8
	movl	12(%rax), %r9d
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %r11
	movl	12(%rdx), %r15d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r14d, (%r12)
	jle	.LBB8_121
	jmp	.LBB8_125
	.p2align	4, 0x90
.LBB8_124:                              # %merge741
                                        #   in Loop: Header=BB8_121 Depth=1
	incl	(%r12)
	cmpl	%r14d, (%r12)
	jg	.LBB8_125
.LBB8_121:                              # %while_body720
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_123 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rsi)
	jg	.LBB8_124
	.p2align	4, 0x90
.LBB8_123:                              # %while_body723
                                        #   Parent Loop BB8_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%r12), %ebx
	movl	%r9d, %edx
	imull	%ebx, %edx
	addl	%edi, %edx
	movslq	%edx, %rdx
	imull	%r15d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r11,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r8,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB8_123
	jmp	.LBB8_124
.LBB8_125:                              # %merge746
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movl	12(%r13), %eax
	movq	-104(%rbp), %rbx        # 8-byte Reload
	cmpl	8(%rbx), %eax
	je	.LBB8_126
# BB#156:                               # %then754
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.6, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB8_126:                              # %merge753
	movq	(%r13), %r11
	movq	(%rbx), %r12
	movl	8(%r13), %ecx
	leal	-1(%rcx), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	12(%rbx), %r8d
	leal	-1(%r8), %r10d
	movl	12(%r13), %r13d
	leal	-1(%r13), %r9d
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
	jmp	.LBB8_127
	.p2align	4, 0x90
.LBB8_131:                              # %merge792
                                        #   in Loop: Header=BB8_127 Depth=1
	incl	(%rcx)
.LBB8_127:                              # %while780
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_130 Depth 2
	movl	-44(%rbp), %edx         # 4-byte Reload
	cmpl	%edx, (%rcx)
	jg	.LBB8_132
# BB#128:                               # %while_body781
                                        #   in Loop: Header=BB8_127 Depth=1
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r10d, (%rdi)
	jg	.LBB8_131
	.p2align	4, 0x90
.LBB8_130:                              # %while_body784
                                        #   Parent Loop BB8_127 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %ebx
	imull	%r8d, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rax,%rbx,8)
	incl	(%rdi)
	cmpl	%r10d, (%rdi)
	jle	.LBB8_130
	jmp	.LBB8_131
.LBB8_132:                              # %merge797
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB8_133
	.p2align	4, 0x90
.LBB8_140:                              # %merge840
                                        #   in Loop: Header=BB8_133 Depth=1
	incl	(%rdi)
.LBB8_133:                              # %while803
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_136 Depth 2
                                        #       Child Loop BB8_138 Depth 3
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rdi)
	jg	.LBB8_141
# BB#134:                               # %while_body804
                                        #   in Loop: Header=BB8_133 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r10d, (%rax)
	jle	.LBB8_136
	jmp	.LBB8_140
	.p2align	4, 0x90
.LBB8_139:                              # %merge834
                                        #   in Loop: Header=BB8_136 Depth=2
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, (%r14)
	incl	(%rax)
	cmpl	%r10d, (%rax)
	jg	.LBB8_140
.LBB8_136:                              # %while_body807
                                        #   Parent Loop BB8_133 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_138 Depth 3
	movl	(%rdi), %ecx
	imull	%r8d, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx,8), %r14
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movq	$0, -16(%rbx)
	movq	%rsp, %r15
	leaq	-16(%r15), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r15)
	cmpl	%r9d, (%rbx)
	jg	.LBB8_139
	.p2align	4, 0x90
.LBB8_138:                              # %while_body816
                                        #   Parent Loop BB8_133 Depth=1
                                        #     Parent Loop BB8_136 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %esi
	movl	(%rdi), %edx
	imull	%r13d, %edx
	addl	%esi, %edx
	movslq	%edx, %rdx
	movsd	(%r11,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	imull	%r8d, %esi
	addl	(%rax), %esi
	movslq	%esi, %rdx
	mulsd	(%r12,%rdx,8), %xmm0
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	incl	(%rbx)
	cmpl	%r9d, (%rbx)
	jle	.LBB8_138
	jmp	.LBB8_139
.LBB8_141:                              # %merge845
	movq	-56(%rbp), %rax         # 8-byte Reload
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
	jle	.LBB8_143
	jmp	.LBB8_147
	.p2align	4, 0x90
.LBB8_146:                              # %merge876
                                        #   in Loop: Header=BB8_143 Depth=1
	incl	(%rdx)
	cmpl	%r14d, (%rdx)
	jg	.LBB8_147
.LBB8_143:                              # %while_body865
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_145 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%ecx, (%rsi)
	jg	.LBB8_146
	.p2align	4, 0x90
.LBB8_145:                              # %while_body868
                                        #   Parent Loop BB8_143 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	imull	%r12d, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rbx,%rdi,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB8_145
	jmp	.LBB8_146
.LBB8_147:                              # %merge881
	movq	(%rax), %r8
	movl	12(%rax), %r9d
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %r11
	movl	12(%rdx), %r15d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r14d, (%r12)
	jle	.LBB8_149
	jmp	.LBB8_153
	.p2align	4, 0x90
.LBB8_152:                              # %merge921
                                        #   in Loop: Header=BB8_149 Depth=1
	incl	(%r12)
	cmpl	%r14d, (%r12)
	jg	.LBB8_153
.LBB8_149:                              # %while_body900
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_151 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rsi)
	jg	.LBB8_152
	.p2align	4, 0x90
.LBB8_151:                              # %while_body903
                                        #   Parent Loop BB8_149 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%r12), %ebx
	movl	%r9d, %edx
	imull	%ebx, %edx
	addl	%edi, %edx
	movslq	%edx, %rdx
	imull	%r15d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r11,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r8,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB8_151
	jmp	.LBB8_152
.LBB8_153:                              # %merge926
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	mulsd	.LCPI8_0(%rip), %xmm0
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
.Lfunc_end8:
	.size	f, .Lfunc_end8-f
	.cfi_endproc
                                        # -- End function
	.globl	f2                      # -- Begin function f2
	.p2align	4, 0x90
	.type	f2,@function
f2:                                     # @f2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi52:
	.cfi_def_cfa_offset 16
.Lcfi53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi54:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
.Lcfi55:
	.cfi_offset %rbx, -56
.Lcfi56:
	.cfi_offset %r12, -48
.Lcfi57:
	.cfi_offset %r13, -40
.Lcfi58:
	.cfi_offset %r14, -32
.Lcfi59:
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
	jle	.LBB9_2
	jmp	.LBB9_6
	.p2align	4, 0x90
.LBB9_5:                                # %merge
                                        #   in Loop: Header=BB9_2 Depth=1
	incl	-44(%rbp)
	cmpl	%r8d, -44(%rbp)
	jg	.LBB9_6
.LBB9_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_4 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB9_5
	.p2align	4, 0x90
.LBB9_4:                                # %while_body5
                                        #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rax,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB9_4
	jmp	.LBB9_5
.LBB9_6:                                # %merge12
	movq	-96(%rbp), %r9
	movl	-84(%rbp), %r10d
	movq	(%rdi), %r14
	movl	12(%rdi), %r15d
	movq	%rsp, %rbx
	leaq	-16(%rbx), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%r12)
	jle	.LBB9_8
	jmp	.LBB9_12
	.p2align	4, 0x90
.LBB9_11:                               # %merge47
                                        #   in Loop: Header=BB9_8 Depth=1
	incl	(%r12)
	cmpl	%r8d, (%r12)
	jg	.LBB9_12
.LBB9_8:                                # %while_body27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_10 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rbx)
	jg	.LBB9_11
	.p2align	4, 0x90
.LBB9_10:                               # %while_body30
                                        #   Parent Loop BB9_8 Depth=1
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
	jle	.LBB9_10
	jmp	.LBB9_11
.LBB9_12:                               # %merge52
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
	jle	.LBB9_14
	jmp	.LBB9_18
	.p2align	4, 0x90
.LBB9_17:                               # %merge80
                                        #   in Loop: Header=BB9_14 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB9_18
.LBB9_14:                               # %while_body69
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_16 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%r10)
	cmpl	%edx, (%rdi)
	jg	.LBB9_17
	.p2align	4, 0x90
.LBB9_16:                               # %while_body72
                                        #   Parent Loop BB9_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%r9d, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%r11,%rbx,8)
	incl	(%rdi)
	cmpl	%edx, (%rdi)
	jle	.LBB9_16
	jmp	.LBB9_17
.LBB9_18:                               # %merge85
	movq	(%rcx), %r9
	movl	12(%rcx), %r10d
	movq	(%rsi), %r14
	movl	12(%rsi), %r15d
	movq	%rsp, %rbx
	leaq	-16(%rbx), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r8d, (%r12)
	jle	.LBB9_20
	jmp	.LBB9_24
	.p2align	4, 0x90
.LBB9_23:                               # %merge125
                                        #   in Loop: Header=BB9_20 Depth=1
	incl	(%r12)
	cmpl	%r8d, (%r12)
	jg	.LBB9_24
.LBB9_20:                               # %while_body104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_22 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r11)
	cmpl	%edx, (%rbx)
	jg	.LBB9_23
	.p2align	4, 0x90
.LBB9_22:                               # %while_body107
                                        #   Parent Loop BB9_20 Depth=1
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
	jle	.LBB9_22
	jmp	.LBB9_23
.LBB9_24:                               # %merge130
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
	js	.LBB9_26
	jmp	.LBB9_30
	.p2align	4, 0x90
.LBB9_29:                               # %merge151
                                        #   in Loop: Header=BB9_26 Depth=1
	incl	(%rsi)
	cmpl	$0, (%rsi)
	jns	.LBB9_30
.LBB9_26:                               # %while_body140
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_28 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	$0, (%rdi)
	jns	.LBB9_29
	.p2align	4, 0x90
.LBB9_28:                               # %while_body143
                                        #   Parent Loop BB9_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdi), %rbx
	movq	$0, (%rdx,%rbx,8)
	incl	(%rdi)
	cmpl	$0, (%rdi)
	js	.LBB9_28
	jmp	.LBB9_29
.LBB9_30:                               # %merge156
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
	js	.LBB9_32
	jmp	.LBB9_36
	.p2align	4, 0x90
.LBB9_35:                               # %merge177
                                        #   in Loop: Header=BB9_32 Depth=1
	incl	(%rsi)
	cmpl	$0, (%rsi)
	jns	.LBB9_36
.LBB9_32:                               # %while_body166
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_34 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	$0, (%rdi)
	jns	.LBB9_35
	.p2align	4, 0x90
.LBB9_34:                               # %while_body169
                                        #   Parent Loop BB9_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdi), %rbx
	movq	$0, (%rdx,%rbx,8)
	incl	(%rdi)
	cmpl	$0, (%rdi)
	js	.LBB9_34
	jmp	.LBB9_35
.LBB9_36:                               # %merge182
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rsi, %rsp
	movq	$0, -16(%rdx)
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	leaq	-96(%rbp), %rsi
	movl	$.Lsystem_string.12, %edi
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
	jle	.LBB9_38
	jmp	.LBB9_42
	.p2align	4, 0x90
.LBB9_41:                               # %merge214
                                        #   in Loop: Header=BB9_38 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB9_42
.LBB9_38:                               # %while_body203
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_40 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB9_41
	.p2align	4, 0x90
.LBB9_40:                               # %while_body206
                                        #   Parent Loop BB9_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB9_40
	jmp	.LBB9_41
.LBB9_42:                               # %merge219
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
	jle	.LBB9_44
	jmp	.LBB9_48
	.p2align	4, 0x90
.LBB9_47:                               # %merge259
                                        #   in Loop: Header=BB9_44 Depth=1
	incl	(%r15)
	cmpl	%r8d, (%r15)
	jg	.LBB9_48
.LBB9_44:                               # %while_body238
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_46 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB9_47
	.p2align	4, 0x90
.LBB9_46:                               # %while_body241
                                        #   Parent Loop BB9_44 Depth=1
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
	jle	.LBB9_46
	jmp	.LBB9_47
.LBB9_48:                               # %merge264
	callq	free
	movq	%r12, %rdi
	callq	free
	movq	-64(%rbp), %r15         # 8-byte Reload
	movl	8(%r15), %r8d
	movl	12(%r15), %edx
	movl	%r8d, %eax
	imull	%edx, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %r13      # imm = 0xFFFFFFFF0
	andq	%r13, %rax
	movq	%rsp, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r10
	movq	%r10, %rsp
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
	jle	.LBB9_50
	jmp	.LBB9_54
	.p2align	4, 0x90
.LBB9_53:                               # %merge292
                                        #   in Loop: Header=BB9_50 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB9_54
.LBB9_50:                               # %while_body281
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_52 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB9_53
	.p2align	4, 0x90
.LBB9_52:                               # %while_body284
                                        #   Parent Loop BB9_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB9_52
	jmp	.LBB9_53
.LBB9_54:                               # %merge297
	movq	(%r10), %r9
	movq	%r10, -80(%rbp)         # 8-byte Spill
	movl	12(%r10), %r11d
	movq	(%r15), %r14
	movl	12(%r15), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB9_56
	jmp	.LBB9_60
	.p2align	4, 0x90
.LBB9_59:                               # %merge337
                                        #   in Loop: Header=BB9_56 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB9_60
.LBB9_56:                               # %while_body316
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_58 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB9_59
	.p2align	4, 0x90
.LBB9_58:                               # %while_body319
                                        #   Parent Loop BB9_56 Depth=1
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
	jle	.LBB9_58
	jmp	.LBB9_59
.LBB9_60:                               # %merge342
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
	jle	.LBB9_62
	jmp	.LBB9_66
	.p2align	4, 0x90
.LBB9_65:                               # %merge374
                                        #   in Loop: Header=BB9_62 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB9_66
.LBB9_62:                               # %while_body363
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_64 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB9_65
	.p2align	4, 0x90
.LBB9_64:                               # %while_body366
                                        #   Parent Loop BB9_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB9_64
	jmp	.LBB9_65
.LBB9_66:                               # %merge379
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
	jle	.LBB9_68
	jmp	.LBB9_72
	.p2align	4, 0x90
.LBB9_71:                               # %merge419
                                        #   in Loop: Header=BB9_68 Depth=1
	incl	(%r15)
	cmpl	%r8d, (%r15)
	jg	.LBB9_72
.LBB9_68:                               # %while_body398
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_70 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB9_71
	.p2align	4, 0x90
.LBB9_70:                               # %while_body401
                                        #   Parent Loop BB9_68 Depth=1
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
	jle	.LBB9_70
	jmp	.LBB9_71
.LBB9_72:                               # %merge424
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
	jle	.LBB9_74
	jmp	.LBB9_78
	.p2align	4, 0x90
.LBB9_77:                               # %merge452
                                        #   in Loop: Header=BB9_74 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB9_78
.LBB9_74:                               # %while_body441
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_76 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB9_77
	.p2align	4, 0x90
.LBB9_76:                               # %while_body444
                                        #   Parent Loop BB9_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB9_76
	jmp	.LBB9_77
.LBB9_78:                               # %merge457
	movq	(%r12), %r9
	movl	12(%r12), %r11d
	movq	(%r10), %r14
	movl	12(%r10), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB9_80
	jmp	.LBB9_84
	.p2align	4, 0x90
.LBB9_83:                               # %merge497
                                        #   in Loop: Header=BB9_80 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB9_84
.LBB9_80:                               # %while_body476
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_82 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB9_83
	.p2align	4, 0x90
.LBB9_82:                               # %while_body479
                                        #   Parent Loop BB9_80 Depth=1
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
	jle	.LBB9_82
	jmp	.LBB9_83
.LBB9_84:                               # %merge502
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax         # 8-byte Reload
	movsd	%xmm0, (%rax)
	callq	free
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movl	8(%rbx), %eax
	cmpl	8(%r12), %eax
	jne	.LBB9_85
# BB#91:                                # %else
	movl	12(%rbx), %eax
	cmpl	12(%r12), %eax
	je	.LBB9_86
.LBB9_85:                               # %then
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.6, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB9_86:                               # %merge512
	movq	(%rbx), %r10
	movl	8(%rbx), %eax
	leal	-1(%rax), %r9d
	movl	12(%rbx), %edx
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
	jle	.LBB9_88
	jmp	.LBB9_93
	.p2align	4, 0x90
.LBB9_92:                               # %merge555
                                        #   in Loop: Header=BB9_88 Depth=1
	incl	(%rcx)
	cmpl	%r9d, (%rcx)
	jg	.LBB9_93
.LBB9_88:                               # %while_body544
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_90 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r11)
	cmpl	%esi, (%rax)
	jg	.LBB9_92
	.p2align	4, 0x90
.LBB9_90:                               # %while_body547
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %edi
	imull	%edx, %edi
	addl	(%rax), %edi
	movslq	%edi, %rdi
	movq	$0, (%rbx,%rdi,8)
	incl	(%rax)
	cmpl	%esi, (%rax)
	jle	.LBB9_90
	jmp	.LBB9_92
.LBB9_93:                               # %merge560
	movq	(%r8), %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r9d, (%rcx)
	jle	.LBB9_95
	jmp	.LBB9_99
	.p2align	4, 0x90
.LBB9_98:                               # %merge591
                                        #   in Loop: Header=BB9_95 Depth=1
	incl	(%rcx)
	cmpl	%r9d, (%rcx)
	jg	.LBB9_99
.LBB9_95:                               # %while_body567
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_97 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdi)
	cmpl	%esi, (%rax)
	jg	.LBB9_98
	.p2align	4, 0x90
.LBB9_97:                               # %while_body570
                                        #   Parent Loop BB9_95 Depth=1
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
	jle	.LBB9_97
	jmp	.LBB9_98
.LBB9_99:                               # %merge596
	movq	-72(%rbp), %rax         # 8-byte Reload
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
	jle	.LBB9_101
	jmp	.LBB9_105
	.p2align	4, 0x90
.LBB9_104:                              # %merge629
                                        #   in Loop: Header=BB9_101 Depth=1
	incl	(%rdi)
	cmpl	%r9d, (%rdi)
	jg	.LBB9_105
.LBB9_101:                              # %while_body618
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_103 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rcx)
	jg	.LBB9_104
	.p2align	4, 0x90
.LBB9_103:                              # %while_body621
                                        #   Parent Loop BB9_101 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movq	$0, (%rbx,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB9_103
	jmp	.LBB9_104
.LBB9_105:                              # %merge634
	movq	(%r8), %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rax)
	cmpl	%r9d, (%rdi)
	jle	.LBB9_107
	jmp	.LBB9_111
	.p2align	4, 0x90
.LBB9_110:                              # %merge659
                                        #   in Loop: Header=BB9_107 Depth=1
	incl	(%rdi)
	cmpl	%r9d, (%rdi)
	jg	.LBB9_111
.LBB9_107:                              # %while_body641
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_109 Depth 2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%esi, (%rcx)
	jg	.LBB9_110
	.p2align	4, 0x90
.LBB9_109:                              # %while_body644
                                        #   Parent Loop BB9_107 Depth=1
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
	jle	.LBB9_109
	jmp	.LBB9_110
.LBB9_111:                              # %merge664
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
	jmp	.LBB9_112
	.p2align	4, 0x90
.LBB9_116:                              # %merge691
                                        #   in Loop: Header=BB9_112 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%r13)
.LBB9_112:                              # %while676
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_115 Depth 2
	movl	-56(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%r13)
	jg	.LBB9_117
# BB#113:                               # %while_body677
                                        #   in Loop: Header=BB9_112 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	cmpl	%r12d, (%r14)
	jg	.LBB9_116
	.p2align	4, 0x90
.LBB9_115:                              # %while_body680
                                        #   Parent Loop BB9_112 Depth=1
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
	jle	.LBB9_115
	jmp	.LBB9_116
.LBB9_117:                              # %merge697
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movq	-80(%rbp), %rax         # 8-byte Reload
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
	jle	.LBB9_119
	jmp	.LBB9_123
	.p2align	4, 0x90
.LBB9_122:                              # %merge731
                                        #   in Loop: Header=BB9_119 Depth=1
	incl	(%rdi)
	cmpl	%r9d, (%rdi)
	jg	.LBB9_123
.LBB9_119:                              # %while_body720
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_121 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rcx)
	jg	.LBB9_122
	.p2align	4, 0x90
.LBB9_121:                              # %while_body723
                                        #   Parent Loop BB9_119 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movq	$0, (%rbx,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB9_121
	jmp	.LBB9_122
.LBB9_123:                              # %merge736
	movq	(%r8), %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rax)
	cmpl	%r9d, (%rdi)
	jle	.LBB9_125
	jmp	.LBB9_129
	.p2align	4, 0x90
.LBB9_128:                              # %merge761
                                        #   in Loop: Header=BB9_125 Depth=1
	incl	(%rdi)
	cmpl	%r9d, (%rdi)
	jg	.LBB9_129
.LBB9_125:                              # %while_body743
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_127 Depth 2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%esi, (%rcx)
	jg	.LBB9_128
	.p2align	4, 0x90
.LBB9_127:                              # %while_body746
                                        #   Parent Loop BB9_125 Depth=1
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
	jle	.LBB9_127
	jmp	.LBB9_128
.LBB9_129:                              # %merge766
	movq	-72(%rbp), %rax         # 8-byte Reload
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
	jle	.LBB9_131
	jmp	.LBB9_135
	.p2align	4, 0x90
.LBB9_134:                              # %merge799
                                        #   in Loop: Header=BB9_131 Depth=1
	incl	(%rdi)
	cmpl	%r9d, (%rdi)
	jg	.LBB9_135
.LBB9_131:                              # %while_body788
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_133 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r10)
	cmpl	%esi, (%rcx)
	jg	.LBB9_134
	.p2align	4, 0x90
.LBB9_133:                              # %while_body791
                                        #   Parent Loop BB9_131 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movq	$0, (%rbx,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB9_133
	jmp	.LBB9_134
.LBB9_135:                              # %merge804
	movq	(%r8), %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rax)
	cmpl	%r9d, (%rdi)
	jle	.LBB9_137
	jmp	.LBB9_141
	.p2align	4, 0x90
.LBB9_140:                              # %merge829
                                        #   in Loop: Header=BB9_137 Depth=1
	incl	(%rdi)
	cmpl	%r9d, (%rdi)
	jg	.LBB9_141
.LBB9_137:                              # %while_body811
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_139 Depth 2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%esi, (%rcx)
	jg	.LBB9_140
	.p2align	4, 0x90
.LBB9_139:                              # %while_body814
                                        #   Parent Loop BB9_137 Depth=1
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
	jle	.LBB9_139
	jmp	.LBB9_140
.LBB9_141:                              # %merge834
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
	jmp	.LBB9_142
	.p2align	4, 0x90
.LBB9_146:                              # %merge861
                                        #   in Loop: Header=BB9_142 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%rbx)
.LBB9_142:                              # %while846
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_145 Depth 2
	movl	-56(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rbx)
	jg	.LBB9_147
# BB#143:                               # %while_body847
                                        #   in Loop: Header=BB9_142 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	cmpl	%r13d, (%r14)
	jg	.LBB9_146
	.p2align	4, 0x90
.LBB9_145:                              # %while_body850
                                        #   Parent Loop BB9_142 Depth=1
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
	jle	.LBB9_145
	jmp	.LBB9_146
.LBB9_147:                              # %merge867
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$24, %edi
	callq	malloc
	movl	$1, (%rax)
	movabsq	$4611686018427387904, %rcx # imm = 0x4000000000000000
	movq	%rcx, 8(%rax)
	movq	$.Lsystem_string.13, 16(%rax)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	f2, .Lfunc_end9-f2
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

	.type	.Lfmt_str.6,@object     # @fmt_str.6
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lfmt_str.6:
	.asciz	"Semantic error : wrong dimension of operands of matrix operation."
	.size	.Lfmt_str.6, 66

	.type	.Lfmt_str.7,@object     # @fmt_str.7
	.p2align	4
.Lfmt_str.7:
	.asciz	"Semantic error : matrix index out of bounds."
	.size	.Lfmt_str.7, 45

	.type	.Lfmt_str.8,@object     # @fmt_str.8
	.p2align	4
.Lfmt_str.8:
	.asciz	"Semantic error : matrix block assignment must have agreeable dimension on both sides."
	.size	.Lfmt_str.8, 86

	.type	.Lsystem_string,@object # @system_string
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lsystem_string:
	.asciz	" : "
	.size	.Lsystem_string, 4

	.type	.Lsystem_string.9,@object # @system_string.9
.Lsystem_string.9:
	.asciz	" : "
	.size	.Lsystem_string.9, 4

	.type	.Lsystem_string.10,@object # @system_string.10
.Lsystem_string.10:
	.asciz	"m1"
	.size	.Lsystem_string.10, 3

	.type	.Lsystem_string.11,@object # @system_string.11
.Lsystem_string.11:
	.asciz	"haha"
	.size	.Lsystem_string.11, 5

	.type	.Lsystem_string.12,@object # @system_string.12
.Lsystem_string.12:
	.asciz	"m1"
	.size	.Lsystem_string.12, 3

	.type	.Lsystem_string.13,@object # @system_string.13
.Lsystem_string.13:
	.asciz	"haha"
	.size	.Lsystem_string.13, 5

	.type	.Lsystem_string.14,@object # @system_string.14
.Lsystem_string.14:
	.zero	1
	.size	.Lsystem_string.14, 1

	.type	.Lsystem_string.15,@object # @system_string.15
.Lsystem_string.15:
	.asciz	"m2"
	.size	.Lsystem_string.15, 3


	.section	".note.GNU-stack","",@progbits
