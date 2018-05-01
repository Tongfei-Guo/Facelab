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
	subq	$40, %rsp
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
	movl	$3, %edi
	movl	$4, %esi
	callq	zeros
	movq	(%rax), %r15
	movq	%rax, %rdi
	callq	free
	movq	(%r15), %rdi
	movl	8(%r15), %r8d
	movl	12(%r15), %edx
	movl	%r8d, %eax
	imull	%edx, %eax
	leaq	15(,%rax,8), %rcx
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rax, %rcx
	movq	%rsp, %rax
	subq	%rcx, %rax
	movq	%rax, %rsp
	movq	%rax, -64(%rbp)
	movl	%r8d, -56(%rbp)
	movl	%edx, -52(%rbp)
	decl	%r8d
	leal	-1(%rdx), %ecx
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
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_5
	.p2align	4, 0x90
.LBB0_4:                                # %while_body6
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %ebx
	imull	%edx, %ebx
	addl	(%rsi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rax,%rbx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB0_4
	jmp	.LBB0_5
.LBB0_6:                                # %merge13
	movq	-64(%rbp), %r9
	movl	-52(%rbp), %r10d
	movq	(%r15), %r12
	movl	12(%r15), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	.LBB0_8
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_11:                               # %merge49
                                        #   in Loop: Header=BB0_8 Depth=1
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	.LBB0_12
.LBB0_8:                                # %while_body29
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_11
	.p2align	4, 0x90
.LBB0_10:                               # %while_body32
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %ebx
	movl	(%r14), %eax
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
	jle	.LBB0_10
	jmp	.LBB0_11
.LBB0_12:                               # %merge54
	callq	free
	movq	%r15, %rdi
	callq	free
	movl	-56(%rbp), %r9d
	movl	-52(%rbp), %esi
	movl	%r9d, %eax
	imull	%esi, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
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
	jle	.LBB0_14
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_17:                               # %merge82
                                        #   in Loop: Header=BB0_14 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	.LBB0_18
.LBB0_14:                               # %while_body71
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%edx, (%rcx)
	jg	.LBB0_17
	.p2align	4, 0x90
.LBB0_16:                               # %while_body74
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%esi, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rdi,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	.LBB0_16
	jmp	.LBB0_17
.LBB0_18:                               # %merge87
	movq	(%r8), %r10
	movl	12(%r8), %r14d
	movq	-64(%rbp), %r15
	movl	-52(%rbp), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r9d, (%rax)
	jle	.LBB0_20
	jmp	.LBB0_24
	.p2align	4, 0x90
.LBB0_23:                               # %merge127
                                        #   in Loop: Header=BB0_20 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	.LBB0_24
.LBB0_20:                               # %while_body106
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%edx, (%rsi)
	jg	.LBB0_23
	.p2align	4, 0x90
.LBB0_22:                               # %while_body109
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rax), %ebx
	movl	%r14d, %ecx
	imull	%ebx, %ecx
	addl	%edi, %ecx
	movslq	%ecx, %rcx
	imull	%r12d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r15,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rcx,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	.LBB0_22
	jmp	.LBB0_23
.LBB0_24:                               # %merge132
	movl	12(%r8), %eax
	movq	(%r8), %rcx
	leal	3(%rax,%rax), %eax
	cltq
	movabsq	$4612136378390124954, %rdx # imm = 0x400199999999999A
	movq	%rdx, (%rcx,%rax,8)
	movq	(%r8), %rax
	movabsq	$4614613358185178726, %rcx # imm = 0x400A666666666666
	movq	%rcx, (%rax)
	movq	(%r8), %r15
	movl	8(%r8), %eax
	movl	12(%r8), %r12d
	decl	%eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	leal	-1(%r12), %r13d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB0_25
	.p2align	4, 0x90
.LBB0_29:                               # %merge175
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%rbx)
.LBB0_25:                               # %while161
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_28 Depth 2
	movl	-68(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rbx)
	jg	.LBB0_30
# BB#26:                                # %while_body162
                                        #   in Loop: Header=BB0_25 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	cmpl	%r13d, (%r14)
	jg	.LBB0_29
	.p2align	4, 0x90
.LBB0_28:                               # %while_body165
                                        #   Parent Loop BB0_25 Depth=1
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
	jle	.LBB0_28
	jmp	.LBB0_29
.LBB0_30:                               # %merge181
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
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
