	.text
	.file	"Facelab"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4611686018427387904     # double 2
.LCPI0_1:
	.quad	4607182418800017408     # double 1
.LCPI0_2:
	.quad	4643070478330626048     # double 252
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
	subq	$168, %rsp
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
	leaq	-64(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	$0, -200(%rbp)
	movl	$0, -132(%rbp)
	cmpl	$0, -132(%rbp)
	js	.LBB0_2
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_5:                                # %merge
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	-132(%rbp)
	cmpl	$0, -132(%rbp)
	jns	.LBB0_6
.LBB0_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	$0, (%rax)
	jns	.LBB0_5
	.p2align	4, 0x90
.LBB0_4:                                # %while_body2
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rax), %rcx
	movq	$0, -64(%rbp,%rcx,8)
	incl	(%rax)
	cmpl	$0, (%rax)
	js	.LBB0_4
	jmp	.LBB0_5
.LBB0_6:                                # %merge8
	movq	%rsp, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	$0, -8(%rcx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	cmpl	$0, (%rcx)
	js	.LBB0_8
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_11:                               # %merge29
                                        #   in Loop: Header=BB0_8 Depth=1
	incl	(%rcx)
	cmpl	$0, (%rcx)
	jns	.LBB0_12
.LBB0_8:                                # %while_body18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	$0, (%rdx)
	jns	.LBB0_11
	.p2align	4, 0x90
.LBB0_10:                               # %while_body21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdx), %rsi
	movq	$0, (%rax,%rsi,8)
	incl	(%rdx)
	cmpl	$0, (%rdx)
	js	.LBB0_10
	jmp	.LBB0_11
.LBB0_12:                               # %merge34
	movq	%rsp, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	$0, -8(%rcx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	cmpl	$0, (%rcx)
	js	.LBB0_14
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_17:                               # %merge55
                                        #   in Loop: Header=BB0_14 Depth=1
	incl	(%rcx)
	cmpl	$0, (%rcx)
	jns	.LBB0_18
.LBB0_14:                               # %while_body44
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	$0, (%rdx)
	jns	.LBB0_17
	.p2align	4, 0x90
.LBB0_16:                               # %while_body47
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdx), %rsi
	movq	$0, (%rax,%rsi,8)
	incl	(%rdx)
	cmpl	$0, (%rdx)
	js	.LBB0_16
	jmp	.LBB0_17
.LBB0_18:                               # %merge60
	movl	$.Lsystem_string, %edi
	callq	load
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%rax), %r15
	movq	(%r15), %rdi
	movl	8(%r15), %r8d
	movl	12(%r15), %r10d
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
	jle	.LBB0_20
	jmp	.LBB0_24
	.p2align	4, 0x90
.LBB0_23:                               # %merge86
                                        #   in Loop: Header=BB0_20 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_24
.LBB0_20:                               # %while_body75
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_23
	.p2align	4, 0x90
.LBB0_22:                               # %while_body78
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_22
	jmp	.LBB0_23
.LBB0_24:                               # %merge91
	movq	(%r11), %r9
	movq	%r11, -56(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r15), %r13
	movl	12(%r15), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	.LBB0_26
	jmp	.LBB0_30
	.p2align	4, 0x90
.LBB0_29:                               # %merge127
                                        #   in Loop: Header=BB0_26 Depth=1
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	.LBB0_30
.LBB0_26:                               # %while_body107
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_28 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_29
	.p2align	4, 0x90
.LBB0_28:                               # %while_body110
                                        #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %ebx
	movl	(%r14), %eax
	movl	%r10d, %edx
	imull	%eax, %edx
	addl	%ebx, %edx
	movslq	%edx, %rdx
	imull	%r12d, %eax
	addl	%ebx, %eax
	cltq
	movsd	(%r13,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB0_28
	jmp	.LBB0_29
.LBB0_30:                               # %merge132
	callq	free
	movq	%r15, %rdi
	callq	free
	movq	-56(%rbp), %r10         # 8-byte Reload
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
	movq	%rcx, -104(%rbp)        # 8-byte Spill
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
	jle	.LBB0_32
	jmp	.LBB0_36
	.p2align	4, 0x90
.LBB0_35:                               # %merge160
                                        #   in Loop: Header=BB0_32 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_36
.LBB0_32:                               # %while_body149
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_34 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB0_35
	.p2align	4, 0x90
.LBB0_34:                               # %while_body152
                                        #   Parent Loop BB0_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB0_34
	jmp	.LBB0_35
.LBB0_36:                               # %merge165
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r11d
	movq	(%r10), %r14
	movl	12(%r10), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_38
	jmp	.LBB0_42
	.p2align	4, 0x90
.LBB0_41:                               # %merge205
                                        #   in Loop: Header=BB0_38 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_42
.LBB0_38:                               # %while_body184
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_40 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB0_41
	.p2align	4, 0x90
.LBB0_40:                               # %while_body187
                                        #   Parent Loop BB0_38 Depth=1
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
	jle	.LBB0_40
	jmp	.LBB0_41
.LBB0_42:                               # %merge210
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %r15
	movq	(%r15), %rdi
	movl	8(%r15), %r8d
	movl	12(%r15), %r10d
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
	jle	.LBB0_44
	jmp	.LBB0_48
	.p2align	4, 0x90
.LBB0_47:                               # %merge242
                                        #   in Loop: Header=BB0_44 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_48
.LBB0_44:                               # %while_body231
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_46 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_47
	.p2align	4, 0x90
.LBB0_46:                               # %while_body234
                                        #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_46
	jmp	.LBB0_47
.LBB0_48:                               # %merge247
	movq	(%r11), %r9
	movq	%r11, -56(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r15), %r12
	movl	12(%r15), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	.LBB0_50
	jmp	.LBB0_54
	.p2align	4, 0x90
.LBB0_53:                               # %merge287
                                        #   in Loop: Header=BB0_50 Depth=1
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	.LBB0_54
.LBB0_50:                               # %while_body266
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_52 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_53
	.p2align	4, 0x90
.LBB0_52:                               # %while_body269
                                        #   Parent Loop BB0_50 Depth=1
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
	jle	.LBB0_52
	jmp	.LBB0_53
.LBB0_54:                               # %merge292
	callq	free
	movq	%r15, %rdi
	callq	free
	movq	-56(%rbp), %r10         # 8-byte Reload
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
	movq	%rcx, -120(%rbp)        # 8-byte Spill
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
	jle	.LBB0_56
	jmp	.LBB0_60
	.p2align	4, 0x90
.LBB0_59:                               # %merge320
                                        #   in Loop: Header=BB0_56 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_60
.LBB0_56:                               # %while_body309
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_58 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB0_59
	.p2align	4, 0x90
.LBB0_58:                               # %while_body312
                                        #   Parent Loop BB0_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB0_58
	jmp	.LBB0_59
.LBB0_60:                               # %merge325
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r11d
	movq	(%r10), %r14
	movl	12(%r10), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_62
	jmp	.LBB0_66
	.p2align	4, 0x90
.LBB0_65:                               # %merge365
                                        #   in Loop: Header=BB0_62 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_66
.LBB0_62:                               # %while_body344
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_64 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB0_65
	.p2align	4, 0x90
.LBB0_64:                               # %while_body347
                                        #   Parent Loop BB0_62 Depth=1
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
	jle	.LBB0_64
	jmp	.LBB0_65
.LBB0_66:                               # %merge370
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %r15
	movq	(%r15), %rdi
	movl	8(%r15), %r8d
	movl	12(%r15), %r10d
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
	jle	.LBB0_68
	jmp	.LBB0_72
	.p2align	4, 0x90
.LBB0_71:                               # %merge402
                                        #   in Loop: Header=BB0_68 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_72
.LBB0_68:                               # %while_body391
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_70 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_71
	.p2align	4, 0x90
.LBB0_70:                               # %while_body394
                                        #   Parent Loop BB0_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_70
	jmp	.LBB0_71
.LBB0_72:                               # %merge407
	movq	(%r11), %r9
	movq	%r11, -56(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r15), %r12
	movl	12(%r15), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	.LBB0_74
	jmp	.LBB0_78
	.p2align	4, 0x90
.LBB0_77:                               # %merge447
                                        #   in Loop: Header=BB0_74 Depth=1
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	.LBB0_78
.LBB0_74:                               # %while_body426
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_76 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_77
	.p2align	4, 0x90
.LBB0_76:                               # %while_body429
                                        #   Parent Loop BB0_74 Depth=1
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
	jle	.LBB0_76
	jmp	.LBB0_77
.LBB0_78:                               # %merge452
	callq	free
	movq	%r15, %rdi
	callq	free
	movq	-56(%rbp), %r10         # 8-byte Reload
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
	movq	%rcx, -112(%rbp)        # 8-byte Spill
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
	jle	.LBB0_80
	jmp	.LBB0_84
	.p2align	4, 0x90
.LBB0_83:                               # %merge480
                                        #   in Loop: Header=BB0_80 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_84
.LBB0_80:                               # %while_body469
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_82 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB0_83
	.p2align	4, 0x90
.LBB0_82:                               # %while_body472
                                        #   Parent Loop BB0_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB0_82
	jmp	.LBB0_83
.LBB0_84:                               # %merge485
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r11d
	movq	(%r10), %r14
	movl	12(%r10), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_86
	jmp	.LBB0_90
	.p2align	4, 0x90
.LBB0_89:                               # %merge525
                                        #   in Loop: Header=BB0_86 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_90
.LBB0_86:                               # %while_body504
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_88 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB0_89
	.p2align	4, 0x90
.LBB0_88:                               # %while_body507
                                        #   Parent Loop BB0_86 Depth=1
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
	jle	.LBB0_88
	jmp	.LBB0_89
.LBB0_90:                               # %merge530
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	free
	movq	%rsp, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	$0, -8(%rcx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	cmpl	$0, (%rcx)
	js	.LBB0_92
	jmp	.LBB0_96
	.p2align	4, 0x90
.LBB0_95:                               # %merge551
                                        #   in Loop: Header=BB0_92 Depth=1
	incl	(%rcx)
	cmpl	$0, (%rcx)
	jns	.LBB0_96
.LBB0_92:                               # %while_body540
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_94 Depth 2
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	$0, (%rdx)
	jns	.LBB0_95
	.p2align	4, 0x90
.LBB0_94:                               # %while_body543
                                        #   Parent Loop BB0_92 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdx), %rsi
	movq	$0, (%rax,%rsi,8)
	incl	(%rdx)
	cmpl	$0, (%rdx)
	js	.LBB0_94
	jmp	.LBB0_95
.LBB0_96:                               # %merge556
	movq	%rsp, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	$0, -8(%rcx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	cmpl	$0, (%rcx)
	js	.LBB0_98
	jmp	.LBB0_102
	.p2align	4, 0x90
.LBB0_101:                              # %merge577
                                        #   in Loop: Header=BB0_98 Depth=1
	incl	(%rcx)
	cmpl	$0, (%rcx)
	jns	.LBB0_102
.LBB0_98:                               # %while_body566
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_100 Depth 2
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	$0, (%rdx)
	jns	.LBB0_101
	.p2align	4, 0x90
.LBB0_100:                              # %while_body569
                                        #   Parent Loop BB0_98 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdx), %rsi
	movq	$0, (%rax,%rsi,8)
	incl	(%rdx)
	cmpl	$0, (%rdx)
	js	.LBB0_100
	jmp	.LBB0_101
.LBB0_102:                              # %merge582
	movq	%rsp, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	$0, -8(%rcx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	cmpl	$0, (%rcx)
	js	.LBB0_104
	jmp	.LBB0_108
	.p2align	4, 0x90
.LBB0_107:                              # %merge603
                                        #   in Loop: Header=BB0_104 Depth=1
	incl	(%rcx)
	cmpl	$0, (%rcx)
	jns	.LBB0_108
.LBB0_104:                              # %while_body592
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_106 Depth 2
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	$0, (%rdx)
	jns	.LBB0_107
	.p2align	4, 0x90
.LBB0_106:                              # %while_body595
                                        #   Parent Loop BB0_104 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdx), %rsi
	movq	$0, (%rax,%rsi,8)
	incl	(%rdx)
	cmpl	$0, (%rdx)
	js	.LBB0_106
	jmp	.LBB0_107
.LBB0_108:                              # %merge608
	movl	$.Lsystem_string.9, %edi
	callq	load
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%rax), %r15
	movq	(%r15), %rdi
	movl	8(%r15), %r8d
	movl	12(%r15), %r10d
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
	jle	.LBB0_110
	jmp	.LBB0_114
	.p2align	4, 0x90
.LBB0_113:                              # %merge641
                                        #   in Loop: Header=BB0_110 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_114
.LBB0_110:                              # %while_body630
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_112 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_113
	.p2align	4, 0x90
.LBB0_112:                              # %while_body633
                                        #   Parent Loop BB0_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_112
	jmp	.LBB0_113
.LBB0_114:                              # %merge646
	movq	(%r11), %r9
	movq	%r11, -56(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r15), %r12
	movl	12(%r15), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	.LBB0_116
	jmp	.LBB0_120
	.p2align	4, 0x90
.LBB0_119:                              # %merge686
                                        #   in Loop: Header=BB0_116 Depth=1
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	.LBB0_120
.LBB0_116:                              # %while_body665
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_118 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_119
	.p2align	4, 0x90
.LBB0_118:                              # %while_body668
                                        #   Parent Loop BB0_116 Depth=1
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
	jle	.LBB0_118
	jmp	.LBB0_119
.LBB0_120:                              # %merge691
	callq	free
	movq	%r15, %rdi
	callq	free
	movq	-56(%rbp), %r10         # 8-byte Reload
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
	movq	%rcx, -128(%rbp)        # 8-byte Spill
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
	jle	.LBB0_122
	jmp	.LBB0_126
	.p2align	4, 0x90
.LBB0_125:                              # %merge719
                                        #   in Loop: Header=BB0_122 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_126
.LBB0_122:                              # %while_body708
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_124 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB0_125
	.p2align	4, 0x90
.LBB0_124:                              # %while_body711
                                        #   Parent Loop BB0_122 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB0_124
	jmp	.LBB0_125
.LBB0_126:                              # %merge724
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r11d
	movq	(%r10), %r14
	movl	12(%r10), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_128
	jmp	.LBB0_132
	.p2align	4, 0x90
.LBB0_131:                              # %merge764
                                        #   in Loop: Header=BB0_128 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_132
.LBB0_128:                              # %while_body743
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_130 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB0_131
	.p2align	4, 0x90
.LBB0_130:                              # %while_body746
                                        #   Parent Loop BB0_128 Depth=1
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
	jle	.LBB0_130
	jmp	.LBB0_131
.LBB0_132:                              # %merge769
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %r15
	movq	(%r15), %rdi
	movl	8(%r15), %r8d
	movl	12(%r15), %r10d
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
	jle	.LBB0_134
	jmp	.LBB0_138
	.p2align	4, 0x90
.LBB0_137:                              # %merge801
                                        #   in Loop: Header=BB0_134 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_138
.LBB0_134:                              # %while_body790
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_136 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_137
	.p2align	4, 0x90
.LBB0_136:                              # %while_body793
                                        #   Parent Loop BB0_134 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_136
	jmp	.LBB0_137
.LBB0_138:                              # %merge806
	movq	(%r11), %r9
	movq	%r11, -56(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r15), %r12
	movl	12(%r15), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	.LBB0_140
	jmp	.LBB0_144
	.p2align	4, 0x90
.LBB0_143:                              # %merge846
                                        #   in Loop: Header=BB0_140 Depth=1
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	.LBB0_144
.LBB0_140:                              # %while_body825
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_142 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_143
	.p2align	4, 0x90
.LBB0_142:                              # %while_body828
                                        #   Parent Loop BB0_140 Depth=1
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
	jle	.LBB0_142
	jmp	.LBB0_143
.LBB0_144:                              # %merge851
	callq	free
	movq	%r15, %rdi
	callq	free
	movq	-56(%rbp), %r10         # 8-byte Reload
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
	movq	%rcx, -152(%rbp)        # 8-byte Spill
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
	jle	.LBB0_146
	jmp	.LBB0_150
	.p2align	4, 0x90
.LBB0_149:                              # %merge879
                                        #   in Loop: Header=BB0_146 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_150
.LBB0_146:                              # %while_body868
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_148 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB0_149
	.p2align	4, 0x90
.LBB0_148:                              # %while_body871
                                        #   Parent Loop BB0_146 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB0_148
	jmp	.LBB0_149
.LBB0_150:                              # %merge884
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r11d
	movq	(%r10), %r14
	movl	12(%r10), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_152
	jmp	.LBB0_156
	.p2align	4, 0x90
.LBB0_155:                              # %merge924
                                        #   in Loop: Header=BB0_152 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_156
.LBB0_152:                              # %while_body903
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_154 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB0_155
	.p2align	4, 0x90
.LBB0_154:                              # %while_body906
                                        #   Parent Loop BB0_152 Depth=1
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
	jle	.LBB0_154
	jmp	.LBB0_155
.LBB0_156:                              # %merge929
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %r12
	movq	(%r12), %rdi
	movl	8(%r12), %r8d
	movl	12(%r12), %r10d
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
	jle	.LBB0_158
	jmp	.LBB0_162
	.p2align	4, 0x90
.LBB0_161:                              # %merge961
                                        #   in Loop: Header=BB0_158 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_162
.LBB0_158:                              # %while_body950
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_160 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_161
	.p2align	4, 0x90
.LBB0_160:                              # %while_body953
                                        #   Parent Loop BB0_158 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_160
	jmp	.LBB0_161
.LBB0_162:                              # %merge966
	movq	(%r11), %r9
	movq	%r11, -56(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r12), %r15
	movl	12(%r12), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	.LBB0_164
	jmp	.LBB0_168
	.p2align	4, 0x90
.LBB0_167:                              # %merge1006
                                        #   in Loop: Header=BB0_164 Depth=1
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	.LBB0_168
.LBB0_164:                              # %while_body985
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_166 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_167
	.p2align	4, 0x90
.LBB0_166:                              # %while_body988
                                        #   Parent Loop BB0_164 Depth=1
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
	movsd	(%r15,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB0_166
	jmp	.LBB0_167
.LBB0_168:                              # %merge1011
	callq	free
	movq	%r12, %rdi
	callq	free
	movq	-56(%rbp), %r10         # 8-byte Reload
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
	movq	%rcx, -144(%rbp)        # 8-byte Spill
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
	jle	.LBB0_170
	jmp	.LBB0_174
	.p2align	4, 0x90
.LBB0_173:                              # %merge1039
                                        #   in Loop: Header=BB0_170 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_174
.LBB0_170:                              # %while_body1028
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_172 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB0_173
	.p2align	4, 0x90
.LBB0_172:                              # %while_body1031
                                        #   Parent Loop BB0_170 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB0_172
	jmp	.LBB0_173
.LBB0_174:                              # %merge1044
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r11d
	movq	(%r10), %r14
	movl	12(%r10), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_176
	jmp	.LBB0_180
	.p2align	4, 0x90
.LBB0_179:                              # %merge1084
                                        #   in Loop: Header=BB0_176 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_180
.LBB0_176:                              # %while_body1063
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_178 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB0_179
	.p2align	4, 0x90
.LBB0_178:                              # %while_body1066
                                        #   Parent Loop BB0_176 Depth=1
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
	jle	.LBB0_178
	jmp	.LBB0_179
.LBB0_180:                              # %merge1089
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	free
	movq	%rsp, %r14
	leaq	-16(%r14), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movl	$0, -16(%r14)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movl	$0, -16(%rbx)
	movq	%rsp, %r15
	leaq	-16(%r15), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movl	$0, -16(%r15)
	movq	%rsp, %r12
	leaq	-16(%r12), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movl	$0, -16(%r12)
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	size
	movl	(%rax), %ecx
	movl	%ecx, -16(%r14)
	movl	4(%rax), %ecx
	movl	%ecx, -16(%rbx)
	movq	%rax, %rdi
	callq	free
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	size
	movl	(%rax), %ecx
	movl	%ecx, -16(%r15)
	movl	4(%rax), %ecx
	movl	%ecx, -16(%r12)
	movq	%rax, %rdi
	callq	free
	movq	%rsp, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	$0, -8(%rcx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	cmpl	$0, (%rcx)
	js	.LBB0_182
	jmp	.LBB0_186
	.p2align	4, 0x90
.LBB0_185:                              # %merge1127
                                        #   in Loop: Header=BB0_182 Depth=1
	incl	(%rcx)
	cmpl	$0, (%rcx)
	jns	.LBB0_186
.LBB0_182:                              # %while_body1116
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_184 Depth 2
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	$0, (%rdx)
	jns	.LBB0_185
	.p2align	4, 0x90
.LBB0_184:                              # %while_body1119
                                        #   Parent Loop BB0_182 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdx), %rsi
	movq	$0, (%rax,%rsi,8)
	incl	(%rdx)
	cmpl	$0, (%rdx)
	js	.LBB0_184
	jmp	.LBB0_185
.LBB0_186:                              # %merge1132
	movl	$.Lsystem_string.10, %edi
	callq	face
	movq	(%rax), %r12
	movq	%rax, %rdi
	callq	free
	movq	(%r12), %rdi
	movl	8(%r12), %r8d
	movl	12(%r12), %r10d
	movl	%r8d, %eax
	imull	%r10d, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
	andq	%rcx, %rax
	movq	%rsp, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
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
	jle	.LBB0_188
	jmp	.LBB0_192
	.p2align	4, 0x90
.LBB0_191:                              # %merge1164
                                        #   in Loop: Header=BB0_188 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_192
.LBB0_188:                              # %while_body1153
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_190 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_191
	.p2align	4, 0x90
.LBB0_190:                              # %while_body1156
                                        #   Parent Loop BB0_188 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_190
	jmp	.LBB0_191
.LBB0_192:                              # %merge1169
	movq	(%r14), %r9
	movl	12(%r14), %r10d
	movq	(%r12), %r15
	movq	%r12, -48(%rbp)         # 8-byte Spill
	movl	12(%r12), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r13)
	jle	.LBB0_194
	jmp	.LBB0_198
	.p2align	4, 0x90
.LBB0_197:                              # %merge1209
                                        #   in Loop: Header=BB0_194 Depth=1
	incl	(%r13)
	cmpl	%r8d, (%r13)
	jg	.LBB0_198
.LBB0_194:                              # %while_body1188
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_196 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_197
	.p2align	4, 0x90
.LBB0_196:                              # %while_body1191
                                        #   Parent Loop BB0_194 Depth=1
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
	jle	.LBB0_196
	jmp	.LBB0_197
.LBB0_198:                              # %merge1214
	callq	free
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	free
	movl	8(%r14), %r8d
	movl	12(%r14), %edx
	movl	%r8d, %eax
	imull	%edx, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
	andq	%rcx, %rax
	movq	%rsp, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
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
	jle	.LBB0_200
	jmp	.LBB0_204
	.p2align	4, 0x90
.LBB0_203:                              # %merge1242
                                        #   in Loop: Header=BB0_200 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_204
.LBB0_200:                              # %while_body1231
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_202 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB0_203
	.p2align	4, 0x90
.LBB0_202:                              # %while_body1234
                                        #   Parent Loop BB0_200 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB0_202
	jmp	.LBB0_203
.LBB0_204:                              # %merge1247
	movq	(%r15), %r9
	movl	12(%r15), %r11d
	movq	(%r14), %r12
	movl	12(%r14), %r14d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_206
	jmp	.LBB0_210
	.p2align	4, 0x90
.LBB0_209:                              # %merge1287
                                        #   in Loop: Header=BB0_206 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_210
.LBB0_206:                              # %while_body1266
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_208 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB0_209
	.p2align	4, 0x90
.LBB0_208:                              # %while_body1269
                                        #   Parent Loop BB0_206 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %esi
	movl	(%rax), %edi
	movl	%r11d, %ebx
	imull	%edi, %ebx
	addl	%esi, %ebx
	movslq	%ebx, %rbx
	imull	%r14d, %edi
	addl	%esi, %edi
	movslq	%edi, %rsi
	movsd	(%r12,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rbx,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	.LBB0_208
	jmp	.LBB0_209
.LBB0_210:                              # %merge1299
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movl	8(%r15), %ebx
	movl	12(%r15), %r14d
	movl	%ebx, %eax
	decl	%eax
	js	.LBB0_211
# BB#212:                               # %merge1306
	decl	%ebx
	js	.LBB0_213
.LBB0_214:                              # %merge1316
	movl	%r14d, %eax
	decl	%eax
	js	.LBB0_215
# BB#216:                               # %merge1326
	decl	%r14d
	js	.LBB0_217
.LBB0_218:                              # %merge1344
	movq	(%r15), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movl	8(%r15), %ebx
	movl	12(%r15), %r14d
	decl	%ebx
	cmpl	$1, %ebx
	jg	.LBB0_220
# BB#219:                               # %then1350
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_220:                              # %merge1354
	cmpl	$1, %ebx
	jg	.LBB0_222
# BB#221:                               # %then1360
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_222:                              # %merge1364
	movl	%r14d, %eax
	decl	%eax
	jns	.LBB0_224
# BB#223:                               # %then1370
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_224:                              # %merge1374
	movl	%r14d, %eax
	decl	%eax
	jns	.LBB0_226
# BB#225:                               # %then1380
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_226:                              # %merge1400
	movq	(%r15), %rax
	addl	%r14d, %r14d
	movslq	%r14d, %rcx
	movsd	(%rax,%rcx,8), %xmm1    # xmm1 = mem[0],zero
	divsd	.LCPI0_0(%rip), %xmm1
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	addsd	.LCPI0_1(%rip), %xmm0
	callq	double2int
	movl	(%rax), %ebx
	movq	%rax, %rdi
	callq	free
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	%ebx, (%rax)
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movl	8(%r15), %ebx
	movl	12(%r15), %r14d
	decl	%ebx
	testl	%ebx, %ebx
	jle	.LBB0_227
# BB#228:                               # %merge1410
	testl	%ebx, %ebx
	jle	.LBB0_229
.LBB0_230:                              # %merge1420
	movl	%r14d, %eax
	decl	%eax
	jns	.LBB0_232
# BB#231:                               # %then1426
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_232:                              # %merge1430
	movl	%r14d, %eax
	decl	%eax
	jns	.LBB0_233
# BB#366:                               # %then1436
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_233:                              # %merge1435
	movq	(%r15), %rax
	movslq	%r14d, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-168(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	subsd	%xmm1, %xmm0
	addsd	.LCPI0_1(%rip), %xmm0
	callq	double2int
	movl	(%rax), %ebx
	movq	%rax, %rdi
	callq	free
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	%ebx, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rax)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rcx)
	movl	$0, -16(%rax)
	movq	%r13, -56(%rbp)         # 8-byte Spill
	movq	%r12, -48(%rbp)         # 8-byte Spill
	jmp	.LBB0_234
	.p2align	4, 0x90
.LBB0_364:                              # %merge2229
                                        #   in Loop: Header=BB0_234 Depth=1
	incl	(%r13)
.LBB0_234:                              # %while1463
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_236 Depth 2
	movl	(%r13), %eax
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpl	(%rcx), %eax
	je	.LBB0_365
# BB#235:                               # %while_body1464
                                        #   in Loop: Header=BB0_234 Depth=1
	movl	$0, (%r12)
	jmp	.LBB0_236
	.p2align	4, 0x90
.LBB0_286:                              # %merge1650
                                        #   in Loop: Header=BB0_236 Depth=2
	incl	(%r12)
.LBB0_236:                              # %while1469
                                        #   Parent Loop BB0_234 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r12), %eax
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpl	(%rcx), %eax
	je	.LBB0_364
# BB#237:                               # %while_body1470
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %r15d
	movl	12(%rax), %r14d
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_238
# BB#367:                               # %then1477
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_238:                              # %merge1476
                                        #   in Loop: Header=BB0_236 Depth=2
	decl	%r15d
	cmpl	%ebx, %r15d
	jge	.LBB0_239
# BB#368:                               # %then1483
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_239:                              # %merge1482
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_240
# BB#369:                               # %then1489
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_240:                              # %merge1488
                                        #   in Loop: Header=BB0_236 Depth=2
	cmpl	%ebx, %r15d
	jge	.LBB0_241
# BB#370:                               # %then1495
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_241:                              # %merge1494
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	(%r12), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_242
# BB#371:                               # %then1501
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_242:                              # %merge1500
                                        #   in Loop: Header=BB0_236 Depth=2
	decl	%r14d
	cmpl	%ebx, %r14d
	jge	.LBB0_243
# BB#372:                               # %then1507
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_243:                              # %merge1506
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	(%r12), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_244
# BB#373:                               # %then1513
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_244:                              # %merge1512
                                        #   in Loop: Header=BB0_236 Depth=2
	cmpl	%ebx, %r14d
	jge	.LBB0_245
# BB#374:                               # %then1519
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_245:                              # %merge1518
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %r15d
	movl	12(%rax), %r14d
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_246
# BB#375:                               # %then1536
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_246:                              # %merge1535
                                        #   in Loop: Header=BB0_236 Depth=2
	decl	%r15d
	cmpl	%ebx, %r15d
	jge	.LBB0_247
# BB#376:                               # %then1542
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_247:                              # %merge1541
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_248
# BB#377:                               # %then1548
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_248:                              # %merge1547
                                        #   in Loop: Header=BB0_236 Depth=2
	cmpl	%ebx, %r15d
	jge	.LBB0_249
# BB#378:                               # %then1554
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_249:                              # %merge1553
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	(%r12), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_250
# BB#379:                               # %then1560
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_250:                              # %merge1559
                                        #   in Loop: Header=BB0_236 Depth=2
	decl	%r14d
	cmpl	%ebx, %r14d
	jge	.LBB0_251
# BB#380:                               # %then1566
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_251:                              # %merge1565
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	(%r12), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_252
# BB#381:                               # %then1572
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_252:                              # %merge1571
                                        #   in Loop: Header=BB0_236 Depth=2
	cmpl	%ebx, %r14d
	jge	.LBB0_253
# BB#382:                               # %then1578
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_253:                              # %merge1577
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %r15d
	movl	12(%rax), %r14d
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_254
# BB#383:                               # %then1596
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_254:                              # %merge1595
                                        #   in Loop: Header=BB0_236 Depth=2
	decl	%r15d
	cmpl	%ebx, %r15d
	jge	.LBB0_255
# BB#384:                               # %then1602
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_255:                              # %merge1601
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_256
# BB#385:                               # %then1608
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_256:                              # %merge1607
                                        #   in Loop: Header=BB0_236 Depth=2
	cmpl	%ebx, %r15d
	jge	.LBB0_257
# BB#386:                               # %then1614
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_257:                              # %merge1613
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	(%r12), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_258
# BB#387:                               # %then1620
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_258:                              # %merge1619
                                        #   in Loop: Header=BB0_236 Depth=2
	decl	%r14d
	cmpl	%ebx, %r14d
	jge	.LBB0_259
# BB#388:                               # %then1626
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_259:                              # %merge1625
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	(%r12), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_260
# BB#389:                               # %then1632
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_260:                              # %merge1631
                                        #   in Loop: Header=BB0_236 Depth=2
	cmpl	%ebx, %r14d
	jge	.LBB0_261
# BB#287:                               # %then1638
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_261:                              # %merge1637
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %r12d
	movl	12(%rax), %r15d
	movl	(%r13), %r14d
	testl	%r14d, %r14d
	jns	.LBB0_262
# BB#340:                               # %then2053
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_262:                              # %merge2052
                                        #   in Loop: Header=BB0_236 Depth=2
	decl	%r12d
	cmpl	%r14d, %r12d
	jge	.LBB0_263
# BB#341:                               # %then2059
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_263:                              # %merge2058
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_264
# BB#342:                               # %then2065
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_264:                              # %merge2064
                                        #   in Loop: Header=BB0_236 Depth=2
	cmpl	%ebx, %r12d
	jge	.LBB0_265
# BB#343:                               # %then2071
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_265:                              # %merge2070
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	jns	.LBB0_266
# BB#344:                               # %then2077
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_266:                              # %merge2076
                                        #   in Loop: Header=BB0_236 Depth=2
	leal	-1(%r15), %r12d
	cmpl	%r13d, %r12d
	jge	.LBB0_267
# BB#345:                               # %then2083
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_267:                              # %merge2082
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_268
# BB#346:                               # %then2089
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_268:                              # %merge2088
                                        #   in Loop: Header=BB0_236 Depth=2
	cmpl	%ebx, %r12d
	jge	.LBB0_269
# BB#347:                               # %then2095
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_269:                              # %merge2094
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	imull	%r14d, %r15d
	addl	%r15d, %r13d
	movslq	%r13d, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %r14d
	movl	12(%rax), %r13d
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r12d
	testl	%r12d, %r12d
	jns	.LBB0_270
# BB#348:                               # %then2112
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_270:                              # %merge2111
                                        #   in Loop: Header=BB0_236 Depth=2
	decl	%r14d
	cmpl	%r12d, %r14d
	jge	.LBB0_271
# BB#349:                               # %then2118
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_271:                              # %merge2117
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_272
# BB#350:                               # %then2124
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_272:                              # %merge2123
                                        #   in Loop: Header=BB0_236 Depth=2
	cmpl	%ebx, %r14d
	jge	.LBB0_273
# BB#351:                               # %then2130
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_273:                              # %merge2129
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r15d
	testl	%r15d, %r15d
	jns	.LBB0_274
# BB#352:                               # %then2136
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_274:                              # %merge2135
                                        #   in Loop: Header=BB0_236 Depth=2
	leal	-1(%r13), %r14d
	cmpl	%r15d, %r14d
	jge	.LBB0_275
# BB#353:                               # %then2142
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_275:                              # %merge2141
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_276
# BB#354:                               # %then2148
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_276:                              # %merge2147
                                        #   in Loop: Header=BB0_236 Depth=2
	cmpl	%ebx, %r14d
	jge	.LBB0_277
# BB#355:                               # %then2154
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_277:                              # %merge2153
                                        #   in Loop: Header=BB0_236 Depth=2
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	-80(%rbp), %xmm0        # 8-byte Folded Reload
	setae	%bl
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	imull	%r12d, %r13d
	addl	%r13d, %r15d
	movslq	%r15d, %rcx
	ucomisd	(%rax,%rcx,8), %xmm0
	setae	-65(%rbp)               # 1-byte Folded Spill
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %r14d
	movl	12(%rax), %r12d
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r15d
	testl	%r15d, %r15d
	jns	.LBB0_278
# BB#356:                               # %then2172
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_278:                              # %merge2171
                                        #   in Loop: Header=BB0_236 Depth=2
	movb	%bl, -80(%rbp)          # 1-byte Spill
	decl	%r14d
	cmpl	%r15d, %r14d
	jge	.LBB0_279
# BB#357:                               # %then2178
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_279:                              # %merge2177
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_280
# BB#358:                               # %then2184
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_280:                              # %merge2183
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	%r15d, -156(%rbp)       # 4-byte Spill
	cmpl	%ebx, %r14d
	jge	.LBB0_281
# BB#359:                               # %then2190
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_281:                              # %merge2189
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r15d
	testl	%r15d, %r15d
	jns	.LBB0_282
# BB#360:                               # %then2196
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_282:                              # %merge2195
                                        #   in Loop: Header=BB0_236 Depth=2
	leal	-1(%r12), %ebx
	cmpl	%r15d, %ebx
	jge	.LBB0_283
# BB#361:                               # %then2202
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_283:                              # %merge2201
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r14d
	testl	%r14d, %r14d
	jns	.LBB0_284
# BB#362:                               # %then2208
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_284:                              # %merge2207
                                        #   in Loop: Header=BB0_236 Depth=2
	movzbl	-80(%rbp), %r13d        # 1-byte Folded Reload
	andb	-65(%rbp), %r13b        # 1-byte Folded Reload
	cmpl	%r14d, %ebx
	jge	.LBB0_285
# BB#363:                               # %then2214
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_285:                              # %merge2213
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	imull	-156(%rbp), %r12d       # 4-byte Folded Reload
	addl	%r12d, %r15d
	movslq	%r15d, %rcx
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	(%rax,%rcx,8), %xmm0
	setae	%al
	testb	%al, %r13b
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB0_286
# BB#288:                               # %then1651
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	addl	(%r13), %eax
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpl	(%rcx), %eax
	jge	.LBB0_286
# BB#289:                               # %then1651
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	addl	(%r12), %eax
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpl	(%rcx), %eax
	jge	.LBB0_286
# BB#290:                               # %then1664
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %r12d
	movl	12(%rax), %r15d
	movl	(%r13), %r14d
	testl	%r14d, %r14d
	jns	.LBB0_291
# BB#390:                               # %then1671
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_291:                              # %merge1670
                                        #   in Loop: Header=BB0_236 Depth=2
	decl	%r12d
	cmpl	%r14d, %r12d
	jge	.LBB0_292
# BB#391:                               # %then1677
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_292:                              # %merge1676
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_293
# BB#392:                               # %then1683
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_293:                              # %merge1682
                                        #   in Loop: Header=BB0_236 Depth=2
	cmpl	%ebx, %r12d
	jge	.LBB0_294
# BB#393:                               # %then1689
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_294:                              # %merge1688
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	jns	.LBB0_295
# BB#394:                               # %then1695
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_295:                              # %merge1694
                                        #   in Loop: Header=BB0_236 Depth=2
	leal	-1(%r15), %r12d
	cmpl	%r13d, %r12d
	jge	.LBB0_296
# BB#395:                               # %then1701
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_296:                              # %merge1700
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_297
# BB#396:                               # %then1707
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_297:                              # %merge1706
                                        #   in Loop: Header=BB0_236 Depth=2
	cmpl	%ebx, %r12d
	jge	.LBB0_298
# BB#397:                               # %then1713
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_298:                              # %merge1712
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	imull	%r14d, %r15d
	addl	%r15d, %r13d
	movslq	%r13d, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %r15d
	movl	12(%rax), %r14d
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r12d
	movq	-56(%rbp), %r13         # 8-byte Reload
	addl	(%r13), %r12d
	jns	.LBB0_299
# BB#398:                               # %then1731
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_299:                              # %merge1730
                                        #   in Loop: Header=BB0_236 Depth=2
	decl	%r15d
	cmpl	%r12d, %r15d
	jge	.LBB0_300
# BB#399:                               # %then1737
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_300:                              # %merge1736
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ebx
	addl	(%r13), %ebx
	jns	.LBB0_301
# BB#400:                               # %then1745
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_301:                              # %merge1744
                                        #   in Loop: Header=BB0_236 Depth=2
	cmpl	%ebx, %r15d
	jge	.LBB0_302
# BB#401:                               # %then1751
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_302:                              # %merge1750
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r13d
	movq	-48(%rbp), %rax         # 8-byte Reload
	addl	(%rax), %r13d
	jns	.LBB0_303
# BB#402:                               # %then1759
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_303:                              # %merge1758
                                        #   in Loop: Header=BB0_236 Depth=2
	leal	-1(%r14), %r15d
	cmpl	%r13d, %r15d
	jge	.LBB0_304
# BB#403:                               # %then1765
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_304:                              # %merge1764
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ebx
	movq	-48(%rbp), %rax         # 8-byte Reload
	addl	(%rax), %ebx
	jns	.LBB0_305
# BB#404:                               # %then1773
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_305:                              # %merge1772
                                        #   in Loop: Header=BB0_236 Depth=2
	cmpl	%ebx, %r15d
	jge	.LBB0_306
# BB#405:                               # %then1779
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_306:                              # %merge1778
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	imull	%r12d, %r14d
	addl	%r14d, %r13d
	movslq	%r13d, %rcx
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %r12d
	movl	12(%rax), %r15d
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx), %r14d
	testl	%r14d, %r14d
	jns	.LBB0_307
# BB#406:                               # %then1794
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_307:                              # %merge1793
                                        #   in Loop: Header=BB0_236 Depth=2
	decl	%r12d
	cmpl	%r14d, %r12d
	jge	.LBB0_308
# BB#407:                               # %then1800
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_308:                              # %merge1799
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	(%rbx), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_309
# BB#408:                               # %then1806
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_309:                              # %merge1805
                                        #   in Loop: Header=BB0_236 Depth=2
	cmpl	%ebx, %r12d
	jge	.LBB0_310
# BB#409:                               # %then1812
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_310:                              # %merge1811
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	jns	.LBB0_311
# BB#410:                               # %then1818
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_311:                              # %merge1817
                                        #   in Loop: Header=BB0_236 Depth=2
	leal	-1(%r15), %r12d
	cmpl	%r13d, %r12d
	jge	.LBB0_312
# BB#411:                               # %then1824
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_312:                              # %merge1823
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_313
# BB#412:                               # %then1830
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_313:                              # %merge1829
                                        #   in Loop: Header=BB0_236 Depth=2
	cmpl	%ebx, %r12d
	jge	.LBB0_314
# BB#413:                               # %then1836
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_314:                              # %merge1835
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	imull	%r14d, %r15d
	addl	%r15d, %r13d
	movslq	%r13d, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %r15d
	movl	12(%rax), %r14d
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r12d
	movq	-56(%rbp), %r13         # 8-byte Reload
	addl	(%r13), %r12d
	jns	.LBB0_315
# BB#414:                               # %then1854
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_315:                              # %merge1853
                                        #   in Loop: Header=BB0_236 Depth=2
	decl	%r15d
	cmpl	%r12d, %r15d
	jge	.LBB0_316
# BB#415:                               # %then1860
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_316:                              # %merge1859
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ebx
	addl	(%r13), %ebx
	jns	.LBB0_317
# BB#416:                               # %then1868
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_317:                              # %merge1867
                                        #   in Loop: Header=BB0_236 Depth=2
	cmpl	%ebx, %r15d
	jge	.LBB0_318
# BB#417:                               # %then1874
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_318:                              # %merge1873
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r13d
	movq	-48(%rbp), %rax         # 8-byte Reload
	addl	(%rax), %r13d
	jns	.LBB0_319
# BB#418:                               # %then1882
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_319:                              # %merge1881
                                        #   in Loop: Header=BB0_236 Depth=2
	leal	-1(%r14), %r15d
	cmpl	%r13d, %r15d
	jge	.LBB0_320
# BB#419:                               # %then1888
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_320:                              # %merge1887
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ebx
	movq	-48(%rbp), %rax         # 8-byte Reload
	addl	(%rax), %ebx
	jns	.LBB0_321
# BB#420:                               # %then1896
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_321:                              # %merge1895
                                        #   in Loop: Header=BB0_236 Depth=2
	cmpl	%ebx, %r15d
	jge	.LBB0_322
# BB#421:                               # %then1902
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_322:                              # %merge1901
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	imull	%r12d, %r14d
	addl	%r14d, %r13d
	movslq	%r13d, %rcx
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %r12d
	movl	12(%rax), %r15d
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx), %r14d
	testl	%r14d, %r14d
	jns	.LBB0_323
# BB#422:                               # %then1917
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_323:                              # %merge1916
                                        #   in Loop: Header=BB0_236 Depth=2
	decl	%r12d
	cmpl	%r14d, %r12d
	jge	.LBB0_324
# BB#423:                               # %then1923
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_324:                              # %merge1922
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	(%rbx), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_325
# BB#424:                               # %then1929
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_325:                              # %merge1928
                                        #   in Loop: Header=BB0_236 Depth=2
	cmpl	%ebx, %r12d
	jge	.LBB0_326
# BB#425:                               # %then1935
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_326:                              # %merge1934
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	jns	.LBB0_327
# BB#426:                               # %then1941
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_327:                              # %merge1940
                                        #   in Loop: Header=BB0_236 Depth=2
	leal	-1(%r15), %r12d
	cmpl	%r13d, %r12d
	jge	.LBB0_328
# BB#427:                               # %then1947
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_328:                              # %merge1946
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_329
# BB#428:                               # %then1953
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_329:                              # %merge1952
                                        #   in Loop: Header=BB0_236 Depth=2
	cmpl	%ebx, %r12d
	jge	.LBB0_330
# BB#429:                               # %then1959
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_330:                              # %merge1958
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	imull	%r14d, %r15d
	addl	%r15d, %r13d
	movslq	%r13d, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movq	-144(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %r15d
	movl	12(%rax), %r14d
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r12d
	movq	-56(%rbp), %r13         # 8-byte Reload
	addl	(%r13), %r12d
	jns	.LBB0_331
# BB#430:                               # %then1977
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_331:                              # %merge1976
                                        #   in Loop: Header=BB0_236 Depth=2
	decl	%r15d
	cmpl	%r12d, %r15d
	jge	.LBB0_332
# BB#431:                               # %then1983
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_332:                              # %merge1982
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ebx
	addl	(%r13), %ebx
	jns	.LBB0_333
# BB#432:                               # %then1991
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_333:                              # %merge1990
                                        #   in Loop: Header=BB0_236 Depth=2
	cmpl	%ebx, %r15d
	jge	.LBB0_334
# BB#433:                               # %then1997
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_334:                              # %merge1996
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r13d
	movq	-48(%rbp), %rax         # 8-byte Reload
	addl	(%rax), %r13d
	jns	.LBB0_335
# BB#434:                               # %then2005
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_335:                              # %merge2004
                                        #   in Loop: Header=BB0_236 Depth=2
	leal	-1(%r14), %r15d
	cmpl	%r13d, %r15d
	jge	.LBB0_336
# BB#435:                               # %then2011
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_336:                              # %merge2010
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ebx
	movq	-48(%rbp), %rax         # 8-byte Reload
	addl	(%rax), %ebx
	jns	.LBB0_337
# BB#436:                               # %then2019
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_337:                              # %merge2018
                                        #   in Loop: Header=BB0_236 Depth=2
	cmpl	%ebx, %r15d
	jge	.LBB0_338
# BB#339:                               # %then2025
                                        #   in Loop: Header=BB0_236 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_338:                              # %merge2024
                                        #   in Loop: Header=BB0_236 Depth=2
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	imull	%r12d, %r14d
	addl	%r14d, %r13d
	movslq	%r13d, %rcx
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	-48(%rbp), %r12         # 8-byte Reload
	incl	(%r12)
	jmp	.LBB0_236
.LBB0_365:                              # %merge2236
	movl	$.Lsystem_string.11, %ecx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	-144(%rbp), %rdx        # 8-byte Reload
	callq	save
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_211:                              # %then1302
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	decl	%ebx
	jns	.LBB0_214
.LBB0_213:                              # %then1312
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	jmp	.LBB0_214
.LBB0_215:                              # %then1322
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	decl	%r14d
	jns	.LBB0_218
.LBB0_217:                              # %then1332
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	jmp	.LBB0_218
.LBB0_227:                              # %then1406
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	testl	%ebx, %ebx
	jg	.LBB0_230
.LBB0_229:                              # %then1416
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	jmp	.LBB0_230
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
	.globl	save                    # -- Begin function save
	.p2align	4, 0x90
	.type	save,@function
save:                                   # @save
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
	subq	$24, %rsp
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
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r13
	movl	8(%r13), %r15d
	movl	12(%r13), %r14d
	movl	%r15d, %eax
	imull	%r14d, %eax
	leal	(%rax,%rax,2), %eax
	leal	16(,%rax,8), %edi
	callq	malloc
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
	jle	.LBB6_2
	jmp	.LBB6_6
	.p2align	4, 0x90
.LBB6_5:                                # %merge
                                        #   in Loop: Header=BB6_2 Depth=1
	incl	-48(%rbp)
	cmpl	%r15d, -48(%rbp)
	jg	.LBB6_6
.LBB6_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_4 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r8)
	cmpl	%edi, (%rbx)
	jg	.LBB6_5
	.p2align	4, 0x90
.LBB6_4:                                # %while_body11
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %ecx
	imull	%r14d, %ecx
	addl	(%rbx), %ecx
	movslq	%ecx, %rcx
	movslq	-44(%rbp), %rdx
	movsd	(%rsi,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax,%rdx,8)
	incl	-44(%rbp)
	movslq	-44(%rbp), %rdx
	movsd	(%r10,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax,%rdx,8)
	incl	-44(%rbp)
	movslq	-44(%rbp), %rdx
	movsd	(%r9,%rcx,8), %xmm0     # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax,%rdx,8)
	incl	-44(%rbp)
	incl	(%rbx)
	cmpl	%edi, (%rbx)
	jle	.LBB6_4
	jmp	.LBB6_5
.LBB6_6:                                # %merge43
	movq	%rax, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	save_cpp
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	save, .Lfunc_end6-save
	.cfi_endproc
                                        # -- End function
	.globl	face                    # -- Begin function face
	.p2align	4, 0x90
	.type	face,@function
face:                                   # @face
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
	pushq	%rax
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
	movq	%rdi, %rbx
	movl	$8, %edi
	callq	malloc
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	faceDetect
	movq	%rax, %r15
	cvttsd2si	(%r15), %r13d
	movl	%r13d, %edi
	shll	$5, %edi
	callq	malloc
	movq	%rax, %r12
	movl	$16, %edi
	callq	malloc
	movq	%r12, (%rax)
	movl	$4, 8(%rax)
	movl	%r13d, 12(%rax)
	leal	-1(%r13), %r8d
	movl	$0, -44(%rbp)
	cmpl	$3, -44(%rbp)
	jle	.LBB7_2
	jmp	.LBB7_6
	.p2align	4, 0x90
.LBB7_5:                                # %merge
                                        #   in Loop: Header=BB7_2 Depth=1
	incl	-44(%rbp)
	cmpl	$3, -44(%rbp)
	jg	.LBB7_6
.LBB7_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rcx)
	jg	.LBB7_5
	.p2align	4, 0x90
.LBB7_4:                                # %while_body6
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %edx
	imull	%r13d, %edx
	addl	(%rcx), %edx
	movslq	%edx, %rdx
	movq	$0, (%r12,%rdx,8)
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jle	.LBB7_4
	jmp	.LBB7_5
.LBB7_6:                                # %merge14
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
	jle	.LBB7_8
	jmp	.LBB7_12
	.p2align	4, 0x90
.LBB7_11:                               # %merge35
                                        #   in Loop: Header=BB7_8 Depth=1
	incl	(%rdi)
	cmpl	%r8d, (%rdi)
	jg	.LBB7_12
.LBB7_8:                                # %while_body20
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_10 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	$3, (%rcx)
	jg	.LBB7_11
	.p2align	4, 0x90
.LBB7_10:                               # %while_body23
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %edx
	imull	%r13d, %edx
	addl	(%rcx), %edx
	movslq	%edx, %rdx
	movslq	(%rsi), %rbx
	movsd	(%r15,%rbx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rdx,8)
	incl	(%rsi)
	incl	(%rcx)
	cmpl	$3, (%rcx)
	jle	.LBB7_10
	jmp	.LBB7_11
.LBB7_12:                               # %merge40
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
.Lfunc_end7:
	.size	face, .Lfunc_end7-face
	.cfi_endproc
                                        # -- End function
	.globl	bitwise                 # -- Begin function bitwise
	.p2align	4, 0x90
	.type	bitwise,@function
bitwise:                                # @bitwise
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
	subq	$72, %rsp
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
	jle	.LBB8_2
	jmp	.LBB8_6
	.p2align	4, 0x90
.LBB8_5:                                # %merge
                                        #   in Loop: Header=BB8_2 Depth=1
	incl	-44(%rbp)
	cmpl	%r9d, -44(%rbp)
	jg	.LBB8_6
.LBB8_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_4 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edx, (%rcx)
	jg	.LBB8_5
	.p2align	4, 0x90
.LBB8_4:                                # %while_body5
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %ebx
	imull	%r11d, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rax,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	.LBB8_4
	jmp	.LBB8_5
.LBB8_6:                                # %merge12
	movq	-80(%rbp), %r10
	movl	-68(%rbp), %r11d
	movq	(%rdi), %r15
	movl	12(%rdi), %r12d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r9d, (%r13)
	jle	.LBB8_8
	jmp	.LBB8_12
	.p2align	4, 0x90
.LBB8_11:                               # %merge47
                                        #   in Loop: Header=BB8_8 Depth=1
	incl	(%r13)
	cmpl	%r9d, (%r13)
	jg	.LBB8_12
.LBB8_8:                                # %while_body27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_10 Depth 2
	movq	%rsp, %r14
	leaq	-16(%r14), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r14)
	cmpl	%edx, (%rcx)
	jg	.LBB8_11
	.p2align	4, 0x90
.LBB8_10:                               # %while_body30
                                        #   Parent Loop BB8_8 Depth=1
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
	jle	.LBB8_10
	jmp	.LBB8_11
.LBB8_12:                               # %merge52
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
	jle	.LBB8_14
	jmp	.LBB8_18
	.p2align	4, 0x90
.LBB8_17:                               # %merge80
                                        #   in Loop: Header=BB8_14 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	.LBB8_18
.LBB8_14:                               # %while_body69
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_16 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r8)
	cmpl	%ecx, (%rbx)
	jg	.LBB8_17
	.p2align	4, 0x90
.LBB8_16:                               # %while_body72
                                        #   Parent Loop BB8_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rdi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB8_16
	jmp	.LBB8_17
.LBB8_18:                               # %merge85
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
	jle	.LBB8_20
	jmp	.LBB8_24
	.p2align	4, 0x90
.LBB8_23:                               # %merge125
                                        #   in Loop: Header=BB8_20 Depth=1
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jg	.LBB8_24
.LBB8_20:                               # %while_body104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_22 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB8_23
	.p2align	4, 0x90
.LBB8_22:                               # %while_body107
                                        #   Parent Loop BB8_20 Depth=1
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
	jle	.LBB8_22
	jmp	.LBB8_23
.LBB8_24:                               # %merge130
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
	jle	.LBB8_26
	jmp	.LBB8_47
	.p2align	4, 0x90
.LBB8_46:                               # %merge266
                                        #   in Loop: Header=BB8_26 Depth=1
	incl	(%r13)
	cmpl	$2, (%r13)
	jg	.LBB8_47
.LBB8_26:                               # %while_body142
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_28 Depth 2
	movl	$0, (%rdx)
	cmpl	$2, (%rdx)
	jle	.LBB8_28
	jmp	.LBB8_46
	.p2align	4, 0x90
.LBB8_44:                               # %merge249
                                        #   in Loop: Header=BB8_28 Depth=2
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
	jg	.LBB8_46
.LBB8_28:                               # %while_body147
                                        #   Parent Loop BB8_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movl	-72(%rbp), %r15d
	movl	-68(%rbp), %r12d
	movl	(%r13), %r14d
	testl	%r14d, %r14d
	jns	.LBB8_29
# BB#48:                                # %then
                                        #   in Loop: Header=BB8_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB8_29:                               # %merge154
                                        #   in Loop: Header=BB8_28 Depth=2
	decl	%r15d
	cmpl	%r14d, %r15d
	jge	.LBB8_30
# BB#49:                                # %then158
                                        #   in Loop: Header=BB8_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB8_30:                               # %merge157
                                        #   in Loop: Header=BB8_28 Depth=2
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB8_31
# BB#50:                                # %then164
                                        #   in Loop: Header=BB8_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB8_31:                               # %merge163
                                        #   in Loop: Header=BB8_28 Depth=2
	cmpl	%ebx, %r15d
	jge	.LBB8_32
# BB#51:                                # %then170
                                        #   in Loop: Header=BB8_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB8_32:                               # %merge169
                                        #   in Loop: Header=BB8_28 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r15d
	testl	%r15d, %r15d
	jns	.LBB8_33
# BB#52:                                # %then176
                                        #   in Loop: Header=BB8_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB8_33:                               # %merge175
                                        #   in Loop: Header=BB8_28 Depth=2
	leal	-1(%r12), %ebx
	cmpl	%r15d, %ebx
	jge	.LBB8_34
# BB#53:                                # %then182
                                        #   in Loop: Header=BB8_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB8_34:                               # %merge181
                                        #   in Loop: Header=BB8_28 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	jns	.LBB8_35
# BB#54:                                # %then188
                                        #   in Loop: Header=BB8_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB8_35:                               # %merge187
                                        #   in Loop: Header=BB8_28 Depth=2
	cmpl	%r13d, %ebx
	jge	.LBB8_36
# BB#55:                                # %then194
                                        #   in Loop: Header=BB8_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB8_36:                               # %merge193
                                        #   in Loop: Header=BB8_28 Depth=2
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
	jns	.LBB8_37
# BB#56:                                # %then208
                                        #   in Loop: Header=BB8_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB8_37:                               # %merge207
                                        #   in Loop: Header=BB8_28 Depth=2
	decl	%r12d
	cmpl	%r14d, %r12d
	jge	.LBB8_38
# BB#57:                                # %then214
                                        #   in Loop: Header=BB8_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB8_38:                               # %merge213
                                        #   in Loop: Header=BB8_28 Depth=2
	movl	(%rbx), %ebx
	testl	%ebx, %ebx
	jns	.LBB8_39
# BB#58:                                # %then220
                                        #   in Loop: Header=BB8_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB8_39:                               # %merge219
                                        #   in Loop: Header=BB8_28 Depth=2
	cmpl	%ebx, %r12d
	jge	.LBB8_40
# BB#59:                                # %then226
                                        #   in Loop: Header=BB8_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB8_40:                               # %merge225
                                        #   in Loop: Header=BB8_28 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	jns	.LBB8_41
# BB#60:                                # %then232
                                        #   in Loop: Header=BB8_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB8_41:                               # %merge231
                                        #   in Loop: Header=BB8_28 Depth=2
	leal	-1(%r15), %r12d
	cmpl	%r13d, %r12d
	jge	.LBB8_42
# BB#61:                                # %then238
                                        #   in Loop: Header=BB8_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB8_42:                               # %merge237
                                        #   in Loop: Header=BB8_28 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ebx
	testl	%ebx, %ebx
	jns	.LBB8_43
# BB#62:                                # %then244
                                        #   in Loop: Header=BB8_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB8_43:                               # %merge243
                                        #   in Loop: Header=BB8_28 Depth=2
	cmpl	%ebx, %r12d
	jge	.LBB8_44
# BB#45:                                # %then250
                                        #   in Loop: Header=BB8_28 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	jmp	.LBB8_44
.LBB8_47:                               # %merge272
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
.Lfunc_end8:
	.size	bitwise, .Lfunc_end8-bitwise
	.cfi_endproc
                                        # -- End function
	.globl	filter                  # -- Begin function filter
	.p2align	4, 0x90
	.type	filter,@function
filter:                                 # @filter
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
	subq	$104, %rsp
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
	jle	.LBB9_2
	jmp	.LBB9_6
	.p2align	4, 0x90
.LBB9_5:                                # %merge
                                        #   in Loop: Header=BB9_2 Depth=1
	incl	-52(%rbp)
	cmpl	%r8d, -52(%rbp)
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
	movl	-52(%rbp), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rax,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB9_4
	jmp	.LBB9_5
.LBB9_6:                                # %merge12
	movq	-104(%rbp), %r9
	movl	-92(%rbp), %r10d
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
	movsd	(%r14,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB9_10
	jmp	.LBB9_11
.LBB9_12:                               # %merge52
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
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB9_17
	.p2align	4, 0x90
.LBB9_16:                               # %while_body72
                                        #   Parent Loop BB9_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rdi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB9_16
	jmp	.LBB9_17
.LBB9_18:                               # %merge85
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
	jle	.LBB9_20
	jmp	.LBB9_24
	.p2align	4, 0x90
.LBB9_23:                               # %merge125
                                        #   in Loop: Header=BB9_20 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB9_24
.LBB9_20:                               # %while_body104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_22 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB9_23
	.p2align	4, 0x90
.LBB9_22:                               # %while_body107
                                        #   Parent Loop BB9_20 Depth=1
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
	jle	.LBB9_22
	jmp	.LBB9_23
.LBB9_24:                               # %merge130
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
	jle	.LBB9_26
	jmp	.LBB9_30
	.p2align	4, 0x90
.LBB9_29:                               # %merge172
                                        #   in Loop: Header=BB9_26 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB9_30
.LBB9_26:                               # %while_body161
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_28 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB9_29
	.p2align	4, 0x90
.LBB9_28:                               # %while_body164
                                        #   Parent Loop BB9_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB9_28
	jmp	.LBB9_29
.LBB9_30:                               # %merge177
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
	jle	.LBB9_32
	jmp	.LBB9_36
	.p2align	4, 0x90
.LBB9_35:                               # %merge217
                                        #   in Loop: Header=BB9_32 Depth=1
	incl	(%r15)
	cmpl	%r8d, (%r15)
	jg	.LBB9_36
.LBB9_32:                               # %while_body196
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_34 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB9_35
	.p2align	4, 0x90
.LBB9_34:                               # %while_body199
                                        #   Parent Loop BB9_32 Depth=1
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
	jle	.LBB9_34
	jmp	.LBB9_35
.LBB9_36:                               # %merge222
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
	jle	.LBB9_38
	jmp	.LBB9_42
	.p2align	4, 0x90
.LBB9_41:                               # %merge250
                                        #   in Loop: Header=BB9_38 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB9_42
.LBB9_38:                               # %while_body239
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_40 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB9_41
	.p2align	4, 0x90
.LBB9_40:                               # %while_body242
                                        #   Parent Loop BB9_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB9_40
	jmp	.LBB9_41
.LBB9_42:                               # %merge255
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
	jle	.LBB9_44
	jmp	.LBB9_48
	.p2align	4, 0x90
.LBB9_47:                               # %merge295
                                        #   in Loop: Header=BB9_44 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB9_48
.LBB9_44:                               # %while_body274
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_46 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB9_47
	.p2align	4, 0x90
.LBB9_46:                               # %while_body277
                                        #   Parent Loop BB9_44 Depth=1
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
	jle	.LBB9_46
	jmp	.LBB9_47
.LBB9_48:                               # %merge300
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
	jle	.LBB9_50
	jmp	.LBB9_54
	.p2align	4, 0x90
.LBB9_53:                               # %merge335
                                        #   in Loop: Header=BB9_50 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB9_54
.LBB9_50:                               # %while_body324
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_52 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB9_53
	.p2align	4, 0x90
.LBB9_52:                               # %while_body327
                                        #   Parent Loop BB9_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB9_52
	jmp	.LBB9_53
.LBB9_54:                               # %merge340
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
	jle	.LBB9_56
	jmp	.LBB9_60
	.p2align	4, 0x90
.LBB9_59:                               # %merge380
                                        #   in Loop: Header=BB9_56 Depth=1
	incl	(%r15)
	cmpl	%r8d, (%r15)
	jg	.LBB9_60
.LBB9_56:                               # %while_body359
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_58 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB9_59
	.p2align	4, 0x90
.LBB9_58:                               # %while_body362
                                        #   Parent Loop BB9_56 Depth=1
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
	jle	.LBB9_58
	jmp	.LBB9_59
.LBB9_60:                               # %merge385
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
	jle	.LBB9_62
	jmp	.LBB9_66
	.p2align	4, 0x90
.LBB9_65:                               # %merge413
                                        #   in Loop: Header=BB9_62 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB9_66
.LBB9_62:                               # %while_body402
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_64 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB9_65
	.p2align	4, 0x90
.LBB9_64:                               # %while_body405
                                        #   Parent Loop BB9_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB9_64
	jmp	.LBB9_65
.LBB9_66:                               # %merge418
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
	jle	.LBB9_68
	jmp	.LBB9_72
	.p2align	4, 0x90
.LBB9_71:                               # %merge458
                                        #   in Loop: Header=BB9_68 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB9_72
.LBB9_68:                               # %while_body437
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_70 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB9_71
	.p2align	4, 0x90
.LBB9_70:                               # %while_body440
                                        #   Parent Loop BB9_68 Depth=1
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
	jle	.LBB9_70
	jmp	.LBB9_71
.LBB9_72:                               # %merge470
	movl	-96(%rbp), %ebx
	movl	-92(%rbp), %r14d
	decl	%ebx
	jns	.LBB9_73
# BB#154:                               # %then473
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB9_73:                               # %merge472
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r15d
	decl	%r15d
	js	.LBB9_155
# BB#74:                                # %merge479
	cmpl	%r15d, %ebx
	jl	.LBB9_75
.LBB9_76:                               # %merge490
	decl	%r14d
	js	.LBB9_156
.LBB9_77:                               # %merge495
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r12d
	decl	%r12d
	jns	.LBB9_78
# BB#157:                               # %then503
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB9_78:                               # %merge502
	cmpl	%r12d, %r14d
	jge	.LBB9_79
# BB#158:                               # %then509
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB9_79:                               # %merge508
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
	jle	.LBB9_81
	jmp	.LBB9_85
	.p2align	4, 0x90
.LBB9_84:                               # %merge538
                                        #   in Loop: Header=BB9_81 Depth=1
	incl	(%rdx)
	cmpl	%r15d, (%rdx)
	jg	.LBB9_85
.LBB9_81:                               # %while_body527
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_83 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%r12d, (%rsi)
	jg	.LBB9_84
	.p2align	4, 0x90
.LBB9_83:                               # %while_body530
                                        #   Parent Loop BB9_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	imull	%eax, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rcx,%rdi,8)
	incl	(%rsi)
	cmpl	%r12d, (%rsi)
	jle	.LBB9_83
	jmp	.LBB9_84
.LBB9_85:                               # %merge543
	movq	(%r14), %r9
	movl	12(%r14), %r10d
	movq	-104(%rbp), %r11
	movl	-92(%rbp), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r15d, (%rdi)
	jle	.LBB9_87
	jmp	.LBB9_91
	.p2align	4, 0x90
.LBB9_90:                               # %merge581
                                        #   in Loop: Header=BB9_87 Depth=1
	incl	(%rdi)
	cmpl	%r15d, (%rdi)
	jg	.LBB9_91
.LBB9_87:                               # %while_body560
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_89 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r8)
	cmpl	%r12d, (%rbx)
	jg	.LBB9_90
	.p2align	4, 0x90
.LBB9_89:                               # %while_body563
                                        #   Parent Loop BB9_87 Depth=1
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
	jle	.LBB9_89
	jmp	.LBB9_90
.LBB9_91:                               # %merge593
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %r12d
	decl	%ebx
	testl	%ebx, %ebx
	jg	.LBB9_92
# BB#159:                               # %then599
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB9_92:                               # %merge598
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r15d
	testl	%r15d, %r15d
	jns	.LBB9_93
# BB#160:                               # %then605
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB9_93:                               # %merge604
	cmpl	%r15d, %ebx
	jge	.LBB9_95
# BB#94:                                # %then611
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB9_95:                               # %merge615
	decl	%r12d
	testl	%r12d, %r12d
	jg	.LBB9_96
# BB#161:                               # %then621
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB9_96:                               # %merge620
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	js	.LBB9_162
# BB#97:                                # %merge626
	cmpl	%r13d, %r12d
	jl	.LBB9_163
.LBB9_98:                               # %merge632
	cmpl	8(%r14), %r15d
	jne	.LBB9_164
.LBB9_99:                               # %merge641
	cmpl	12(%r14), %r13d
	je	.LBB9_100
.LBB9_165:                              # %then651
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB9_100:                              # %merge650
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
	jle	.LBB9_102
	jmp	.LBB9_106
	.p2align	4, 0x90
.LBB9_105:                              # %merge690
                                        #   in Loop: Header=BB9_102 Depth=1
	incl	(%rdi)
	cmpl	%r15d, (%rdi)
	jg	.LBB9_106
.LBB9_102:                              # %while_body669
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_104 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	$1, -16(%r8)
	cmpl	%r13d, (%rbx)
	jg	.LBB9_105
	.p2align	4, 0x90
.LBB9_104:                              # %while_body672
                                        #   Parent Loop BB9_102 Depth=1
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
	jle	.LBB9_104
	jmp	.LBB9_105
.LBB9_106:                              # %merge695
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
	jmp	.LBB9_107
	.p2align	4, 0x90
.LBB9_140:                              # %merge908
                                        #   in Loop: Header=BB9_107 Depth=1
	incl	(%r13)
.LBB9_107:                              # %while706
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_109 Depth 2
                                        #       Child Loop BB9_120 Depth 3
                                        #         Child Loop BB9_122 Depth 4
                                        #       Child Loop BB9_126 Depth 3
                                        #         Child Loop BB9_128 Depth 4
	movl	(%r13), %eax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpl	(%rcx), %eax
	jge	.LBB9_141
# BB#108:                               # %while_body707
                                        #   in Loop: Header=BB9_107 Depth=1
	movl	$0, (%rdx)
	jmp	.LBB9_109
	.p2align	4, 0x90
.LBB9_138:                              # %merge896
                                        #   in Loop: Header=BB9_109 Depth=2
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
.LBB9_109:                              # %while712
                                        #   Parent Loop BB9_107 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_120 Depth 3
                                        #         Child Loop BB9_122 Depth 4
                                        #       Child Loop BB9_126 Depth 3
                                        #         Child Loop BB9_128 Depth 4
	movl	(%rdx), %eax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpl	(%rcx), %eax
	jge	.LBB9_140
# BB#110:                               # %while_body713
                                        #   in Loop: Header=BB9_109 Depth=2
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
	jns	.LBB9_111
# BB#166:                               # %then721
                                        #   in Loop: Header=BB9_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB9_111:                              # %merge720
                                        #   in Loop: Header=BB9_109 Depth=2
	decl	%ebx
	cmpl	%r14d, %ebx
	jge	.LBB9_112
# BB#167:                               # %then727
                                        #   in Loop: Header=BB9_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB9_112:                              # %merge726
                                        #   in Loop: Header=BB9_109 Depth=2
	movl	(%r13), %r9d
	addl	$2, %r9d
	movq	%r9, -48(%rbp)          # 8-byte Spill
	jns	.LBB9_113
# BB#168:                               # %then734
                                        #   in Loop: Header=BB9_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %r9          # 8-byte Reload
.LBB9_113:                              # %merge733
                                        #   in Loop: Header=BB9_109 Depth=2
	cmpl	%r9d, %ebx
	jge	.LBB9_114
# BB#169:                               # %then740
                                        #   in Loop: Header=BB9_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %r9          # 8-byte Reload
.LBB9_114:                              # %merge739
                                        #   in Loop: Header=BB9_109 Depth=2
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movl	(%rbx), %r15d
	testl	%r15d, %r15d
	jns	.LBB9_115
# BB#170:                               # %then746
                                        #   in Loop: Header=BB9_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %r9          # 8-byte Reload
.LBB9_115:                              # %merge745
                                        #   in Loop: Header=BB9_109 Depth=2
	movl	-116(%rbp), %eax        # 4-byte Reload
	decl	%eax
	movl	%eax, %r12d
	cmpl	%r15d, %eax
	jge	.LBB9_116
# BB#171:                               # %then752
                                        #   in Loop: Header=BB9_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %r9          # 8-byte Reload
.LBB9_116:                              # %merge751
                                        #   in Loop: Header=BB9_109 Depth=2
	movl	(%rbx), %r13d
	addl	$2, %r13d
	jns	.LBB9_117
# BB#172:                               # %then759
                                        #   in Loop: Header=BB9_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %r9          # 8-byte Reload
.LBB9_117:                              # %merge758
                                        #   in Loop: Header=BB9_109 Depth=2
	cmpl	%r13d, %r12d
	jge	.LBB9_118
# BB#173:                               # %then765
                                        #   in Loop: Header=BB9_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %r9          # 8-byte Reload
.LBB9_118:                              # %merge764
                                        #   in Loop: Header=BB9_109 Depth=2
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
	jle	.LBB9_120
	jmp	.LBB9_124
	.p2align	4, 0x90
.LBB9_123:                              # %merge794
                                        #   in Loop: Header=BB9_120 Depth=3
	incl	(%rdx)
	cmpl	%r9d, (%rdx)
	jg	.LBB9_124
.LBB9_120:                              # %while_body783
                                        #   Parent Loop BB9_107 Depth=1
                                        #     Parent Loop BB9_109 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_122 Depth 4
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r13d, (%rsi)
	jg	.LBB9_123
	.p2align	4, 0x90
.LBB9_122:                              # %while_body786
                                        #   Parent Loop BB9_107 Depth=1
                                        #     Parent Loop BB9_109 Depth=2
                                        #       Parent Loop BB9_120 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%rdx), %ebx
	imull	%eax, %ebx
	addl	(%rsi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rcx,%rbx,8)
	incl	(%rsi)
	cmpl	%r13d, (%rsi)
	jle	.LBB9_122
	jmp	.LBB9_123
	.p2align	4, 0x90
.LBB9_124:                              # %merge799
                                        #   in Loop: Header=BB9_109 Depth=2
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
	jle	.LBB9_126
	jmp	.LBB9_130
	.p2align	4, 0x90
.LBB9_129:                              # %merge837
                                        #   in Loop: Header=BB9_126 Depth=3
	incl	(%rbx)
	movq	%rdi, %r9
	cmpl	%r9d, (%rbx)
	jg	.LBB9_130
.LBB9_126:                              # %while_body816
                                        #   Parent Loop BB9_107 Depth=1
                                        #     Parent Loop BB9_109 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_128 Depth 4
	movq	%r9, %rdi
	movq	%rsp, %r9
	leaq	-16(%r9), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r9)
	cmpl	%r13d, (%rax)
	jg	.LBB9_129
	.p2align	4, 0x90
.LBB9_128:                              # %while_body819
                                        #   Parent Loop BB9_107 Depth=1
                                        #     Parent Loop BB9_109 Depth=2
                                        #       Parent Loop BB9_126 Depth=3
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
	jle	.LBB9_128
	jmp	.LBB9_129
	.p2align	4, 0x90
.LBB9_130:                              # %merge842
                                        #   in Loop: Header=BB9_109 Depth=2
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
	jns	.LBB9_131
# BB#174:                               # %then855
                                        #   in Loop: Header=BB9_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB9_131:                              # %merge854
                                        #   in Loop: Header=BB9_109 Depth=2
	decl	%r12d
	cmpl	%r14d, %r12d
	jge	.LBB9_132
# BB#175:                               # %then861
                                        #   in Loop: Header=BB9_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB9_132:                              # %merge860
                                        #   in Loop: Header=BB9_109 Depth=2
	movl	(%rbx), %ebx
	testl	%ebx, %ebx
	jns	.LBB9_133
# BB#176:                               # %then867
                                        #   in Loop: Header=BB9_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB9_133:                              # %merge866
                                        #   in Loop: Header=BB9_109 Depth=2
	cmpl	%ebx, %r12d
	jge	.LBB9_134
# BB#177:                               # %then873
                                        #   in Loop: Header=BB9_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB9_134:                              # %merge872
                                        #   in Loop: Header=BB9_109 Depth=2
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movl	(%rbx), %r13d
	testl	%r13d, %r13d
	jns	.LBB9_135
# BB#178:                               # %then879
                                        #   in Loop: Header=BB9_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB9_135:                              # %merge878
                                        #   in Loop: Header=BB9_109 Depth=2
	leal	-1(%r15), %r12d
	cmpl	%r13d, %r12d
	jge	.LBB9_136
# BB#179:                               # %then885
                                        #   in Loop: Header=BB9_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB9_136:                              # %merge884
                                        #   in Loop: Header=BB9_109 Depth=2
	movl	(%rbx), %ebx
	testl	%ebx, %ebx
	jns	.LBB9_137
# BB#180:                               # %then891
                                        #   in Loop: Header=BB9_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB9_137:                              # %merge890
                                        #   in Loop: Header=BB9_109 Depth=2
	cmpl	%ebx, %r12d
	jge	.LBB9_138
# BB#139:                               # %then897
                                        #   in Loop: Header=BB9_109 Depth=2
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	jmp	.LBB9_138
.LBB9_141:                              # %merge915
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
	jle	.LBB9_143
	jmp	.LBB9_147
	.p2align	4, 0x90
.LBB9_146:                              # %merge946
                                        #   in Loop: Header=BB9_143 Depth=1
	incl	(%rdx)
	cmpl	%r14d, (%rdx)
	jg	.LBB9_147
.LBB9_143:                              # %while_body935
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_145 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%ecx, (%rsi)
	jg	.LBB9_146
	.p2align	4, 0x90
.LBB9_145:                              # %while_body938
                                        #   Parent Loop BB9_143 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	imull	%r12d, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rbx,%rdi,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB9_145
	jmp	.LBB9_146
.LBB9_147:                              # %merge951
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
	jle	.LBB9_149
	jmp	.LBB9_153
	.p2align	4, 0x90
.LBB9_152:                              # %merge991
                                        #   in Loop: Header=BB9_149 Depth=1
	incl	(%r13)
	cmpl	%r14d, (%r13)
	jg	.LBB9_153
.LBB9_149:                              # %while_body970
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_151 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rsi)
	jg	.LBB9_152
	.p2align	4, 0x90
.LBB9_151:                              # %while_body973
                                        #   Parent Loop BB9_149 Depth=1
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
	jle	.LBB9_151
	jmp	.LBB9_152
.LBB9_153:                              # %merge996
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
.LBB9_155:                              # %then480
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	cmpl	%r15d, %ebx
	jge	.LBB9_76
.LBB9_75:                               # %then486
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	decl	%r14d
	jns	.LBB9_77
.LBB9_156:                              # %then496
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	jmp	.LBB9_77
.LBB9_162:                              # %then627
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	cmpl	%r13d, %r12d
	jge	.LBB9_98
.LBB9_163:                              # %then633
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	cmpl	8(%r14), %r15d
	je	.LBB9_99
.LBB9_164:                              # %then642
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	cmpl	12(%r14), %r13d
	jne	.LBB9_165
	jmp	.LBB9_100
.Lfunc_end9:
	.size	filter, .Lfunc_end9-filter
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
	.asciz	"tshirt.jpg"
	.size	.Lsystem_string, 11

	.type	.Lsystem_string.9,@object # @system_string.9
.Lsystem_string.9:
	.asciz	"edwards.jpg"
	.size	.Lsystem_string.9, 12

	.type	.Lsystem_string.10,@object # @system_string.10
.Lsystem_string.10:
	.asciz	"d.jpg"
	.size	.Lsystem_string.10, 6

	.type	.Lsystem_string.11,@object # @system_string.11
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lsystem_string.11:
	.asciz	"nerd_edwards.jpg"
	.size	.Lsystem_string.11, 17


	.section	".note.GNU-stack","",@progbits
