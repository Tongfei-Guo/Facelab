	.text
	.file	"Facelab"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4611686018427387904     # double 2
.LCPI0_1:
	.quad	-4580196005407883264    # double -255
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
	subq	$120, %rsp
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
	leaq	-104(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	$0, -144(%rbp)
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
	movq	$0, -104(%rbp,%rcx,8)
	incl	(%rax)
	cmpl	$0, (%rax)
	js	.LBB0_4
	jmp	.LBB0_5
.LBB0_6:                                # %merge8
	movl	$.Lsystem_string, %edi
	callq	face
	movq	(%rax), %r15
	movq	%rax, %rdi
	callq	free
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
	jle	.LBB0_8
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_11:                               # %merge34
                                        #   in Loop: Header=BB0_8 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_12
.LBB0_8:                                # %while_body23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_11
	.p2align	4, 0x90
.LBB0_10:                               # %while_body26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_10
	jmp	.LBB0_11
.LBB0_12:                               # %merge39
	movq	(%r11), %r9
	movq	%r11, -64(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r15), %r12
	movl	12(%r15), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	.LBB0_14
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_17:                               # %merge75
                                        #   in Loop: Header=BB0_14 Depth=1
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	.LBB0_18
.LBB0_14:                               # %while_body55
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_17
	.p2align	4, 0x90
.LBB0_16:                               # %while_body58
                                        #   Parent Loop BB0_14 Depth=1
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
	jle	.LBB0_16
	jmp	.LBB0_17
.LBB0_18:                               # %merge80
	callq	free
	movq	%r15, %rdi
	callq	free
	movq	-64(%rbp), %r15         # 8-byte Reload
	movl	8(%r15), %r8d
	movl	12(%r15), %edx
	movl	%r8d, %eax
	imull	%edx, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
	andq	%rcx, %rax
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
	jle	.LBB0_20
	jmp	.LBB0_24
	.p2align	4, 0x90
.LBB0_23:                               # %merge108
                                        #   in Loop: Header=BB0_20 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_24
.LBB0_20:                               # %while_body97
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB0_23
	.p2align	4, 0x90
.LBB0_22:                               # %while_body100
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB0_22
	jmp	.LBB0_23
.LBB0_24:                               # %merge113
	movq	(%r10), %r9
	movq	%r10, -48(%rbp)         # 8-byte Spill
	movl	12(%r10), %r11d
	movq	(%r15), %r14
	movl	12(%r15), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_26
	jmp	.LBB0_30
	.p2align	4, 0x90
.LBB0_29:                               # %merge153
                                        #   in Loop: Header=BB0_26 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_30
.LBB0_26:                               # %while_body132
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_28 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB0_29
	.p2align	4, 0x90
.LBB0_28:                               # %while_body135
                                        #   Parent Loop BB0_26 Depth=1
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
	jle	.LBB0_28
	jmp	.LBB0_29
.LBB0_30:                               # %merge158
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
	js	.LBB0_32
	jmp	.LBB0_36
	.p2align	4, 0x90
.LBB0_35:                               # %merge179
                                        #   in Loop: Header=BB0_32 Depth=1
	incl	(%rcx)
	cmpl	$0, (%rcx)
	jns	.LBB0_36
.LBB0_32:                               # %while_body168
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_34 Depth 2
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	$0, (%rdx)
	jns	.LBB0_35
	.p2align	4, 0x90
.LBB0_34:                               # %while_body171
                                        #   Parent Loop BB0_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdx), %rsi
	movq	$0, (%rax,%rsi,8)
	incl	(%rdx)
	cmpl	$0, (%rdx)
	js	.LBB0_34
	jmp	.LBB0_35
.LBB0_36:                               # %merge184
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
	js	.LBB0_38
	jmp	.LBB0_42
	.p2align	4, 0x90
.LBB0_41:                               # %merge205
                                        #   in Loop: Header=BB0_38 Depth=1
	incl	(%rcx)
	cmpl	$0, (%rcx)
	jns	.LBB0_42
.LBB0_38:                               # %while_body194
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_40 Depth 2
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	$0, (%rdx)
	jns	.LBB0_41
	.p2align	4, 0x90
.LBB0_40:                               # %while_body197
                                        #   Parent Loop BB0_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdx), %rsi
	movq	$0, (%rax,%rsi,8)
	incl	(%rdx)
	cmpl	$0, (%rdx)
	js	.LBB0_40
	jmp	.LBB0_41
.LBB0_42:                               # %merge210
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
	js	.LBB0_44
	jmp	.LBB0_48
	.p2align	4, 0x90
.LBB0_47:                               # %merge231
                                        #   in Loop: Header=BB0_44 Depth=1
	incl	(%rcx)
	cmpl	$0, (%rcx)
	jns	.LBB0_48
.LBB0_44:                               # %while_body220
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_46 Depth 2
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	$0, (%rdx)
	jns	.LBB0_47
	.p2align	4, 0x90
.LBB0_46:                               # %while_body223
                                        #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdx), %rsi
	movq	$0, (%rax,%rsi,8)
	incl	(%rdx)
	cmpl	$0, (%rdx)
	js	.LBB0_46
	jmp	.LBB0_47
.LBB0_48:                               # %merge236
	movl	$.Lsystem_string.9, %edi
	callq	load
	movq	%rax, -64(%rbp)         # 8-byte Spill
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
	jle	.LBB0_50
	jmp	.LBB0_54
	.p2align	4, 0x90
.LBB0_53:                               # %merge268
                                        #   in Loop: Header=BB0_50 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_54
.LBB0_50:                               # %while_body257
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_52 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_53
	.p2align	4, 0x90
.LBB0_52:                               # %while_body260
                                        #   Parent Loop BB0_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_52
	jmp	.LBB0_53
.LBB0_54:                               # %merge273
	movq	(%r11), %r9
	movq	%r11, -72(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r15), %r13
	movl	12(%r15), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	.LBB0_56
	jmp	.LBB0_60
	.p2align	4, 0x90
.LBB0_59:                               # %merge313
                                        #   in Loop: Header=BB0_56 Depth=1
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	.LBB0_60
.LBB0_56:                               # %while_body292
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_58 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_59
	.p2align	4, 0x90
.LBB0_58:                               # %while_body295
                                        #   Parent Loop BB0_56 Depth=1
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
	jle	.LBB0_58
	jmp	.LBB0_59
.LBB0_60:                               # %merge318
	callq	free
	movq	%r15, %rdi
	callq	free
	movq	-72(%rbp), %r10         # 8-byte Reload
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
	jle	.LBB0_62
	jmp	.LBB0_66
	.p2align	4, 0x90
.LBB0_65:                               # %merge346
                                        #   in Loop: Header=BB0_62 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_66
.LBB0_62:                               # %while_body335
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_64 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB0_65
	.p2align	4, 0x90
.LBB0_64:                               # %while_body338
                                        #   Parent Loop BB0_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB0_64
	jmp	.LBB0_65
.LBB0_66:                               # %merge351
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
	jle	.LBB0_68
	jmp	.LBB0_72
	.p2align	4, 0x90
.LBB0_71:                               # %merge391
                                        #   in Loop: Header=BB0_68 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_72
.LBB0_68:                               # %while_body370
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_70 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB0_71
	.p2align	4, 0x90
.LBB0_70:                               # %while_body373
                                        #   Parent Loop BB0_68 Depth=1
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
	jle	.LBB0_70
	jmp	.LBB0_71
.LBB0_72:                               # %merge396
	movq	-64(%rbp), %rax         # 8-byte Reload
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
	jle	.LBB0_74
	jmp	.LBB0_78
	.p2align	4, 0x90
.LBB0_77:                               # %merge428
                                        #   in Loop: Header=BB0_74 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_78
.LBB0_74:                               # %while_body417
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_76 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_77
	.p2align	4, 0x90
.LBB0_76:                               # %while_body420
                                        #   Parent Loop BB0_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_76
	jmp	.LBB0_77
.LBB0_78:                               # %merge433
	movq	(%r11), %r9
	movq	%r11, -72(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r15), %r12
	movl	12(%r15), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	.LBB0_80
	jmp	.LBB0_84
	.p2align	4, 0x90
.LBB0_83:                               # %merge473
                                        #   in Loop: Header=BB0_80 Depth=1
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	.LBB0_84
.LBB0_80:                               # %while_body452
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_82 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_83
	.p2align	4, 0x90
.LBB0_82:                               # %while_body455
                                        #   Parent Loop BB0_80 Depth=1
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
	jle	.LBB0_82
	jmp	.LBB0_83
.LBB0_84:                               # %merge478
	callq	free
	movq	%r15, %rdi
	callq	free
	movq	-72(%rbp), %r10         # 8-byte Reload
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
	jle	.LBB0_86
	jmp	.LBB0_90
	.p2align	4, 0x90
.LBB0_89:                               # %merge506
                                        #   in Loop: Header=BB0_86 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_90
.LBB0_86:                               # %while_body495
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_88 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB0_89
	.p2align	4, 0x90
.LBB0_88:                               # %while_body498
                                        #   Parent Loop BB0_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB0_88
	jmp	.LBB0_89
.LBB0_90:                               # %merge511
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
	jle	.LBB0_92
	jmp	.LBB0_96
	.p2align	4, 0x90
.LBB0_95:                               # %merge551
                                        #   in Loop: Header=BB0_92 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_96
.LBB0_92:                               # %while_body530
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_94 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB0_95
	.p2align	4, 0x90
.LBB0_94:                               # %while_body533
                                        #   Parent Loop BB0_92 Depth=1
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
	jle	.LBB0_94
	jmp	.LBB0_95
.LBB0_96:                               # %merge556
	movq	-64(%rbp), %rax         # 8-byte Reload
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
	jle	.LBB0_98
	jmp	.LBB0_102
	.p2align	4, 0x90
.LBB0_101:                              # %merge588
                                        #   in Loop: Header=BB0_98 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_102
.LBB0_98:                               # %while_body577
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_100 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_101
	.p2align	4, 0x90
.LBB0_100:                              # %while_body580
                                        #   Parent Loop BB0_98 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_100
	jmp	.LBB0_101
.LBB0_102:                              # %merge593
	movq	(%r11), %r9
	movq	%r11, -72(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r15), %r12
	movl	12(%r15), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	.LBB0_104
	jmp	.LBB0_108
	.p2align	4, 0x90
.LBB0_107:                              # %merge633
                                        #   in Loop: Header=BB0_104 Depth=1
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	.LBB0_108
.LBB0_104:                              # %while_body612
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_106 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_107
	.p2align	4, 0x90
.LBB0_106:                              # %while_body615
                                        #   Parent Loop BB0_104 Depth=1
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
	jle	.LBB0_106
	jmp	.LBB0_107
.LBB0_108:                              # %merge638
	callq	free
	movq	%r15, %rdi
	callq	free
	movq	-72(%rbp), %r10         # 8-byte Reload
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
	jle	.LBB0_110
	jmp	.LBB0_114
	.p2align	4, 0x90
.LBB0_113:                              # %merge666
                                        #   in Loop: Header=BB0_110 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_114
.LBB0_110:                              # %while_body655
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_112 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB0_113
	.p2align	4, 0x90
.LBB0_112:                              # %while_body658
                                        #   Parent Loop BB0_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB0_112
	jmp	.LBB0_113
.LBB0_114:                              # %merge671
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
	jle	.LBB0_116
	jmp	.LBB0_120
	.p2align	4, 0x90
.LBB0_119:                              # %merge711
                                        #   in Loop: Header=BB0_116 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_120
.LBB0_116:                              # %while_body690
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_118 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB0_119
	.p2align	4, 0x90
.LBB0_118:                              # %while_body693
                                        #   Parent Loop BB0_116 Depth=1
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
	jle	.LBB0_118
	jmp	.LBB0_119
.LBB0_120:                              # %merge723
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	free
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	8(%r15), %ebx
	movl	12(%r15), %r14d
	movl	%ebx, %eax
	decl	%eax
	js	.LBB0_121
# BB#122:                               # %merge730
	decl	%ebx
	js	.LBB0_123
.LBB0_124:                              # %merge740
	movl	%r14d, %eax
	decl	%eax
	js	.LBB0_125
# BB#126:                               # %merge750
	decl	%r14d
	js	.LBB0_127
.LBB0_128:                              # %merge769
	movq	(%r15), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax         # 8-byte Reload
	movsd	%xmm0, (%rax)
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movl	8(%r15), %ebx
	movl	12(%r15), %r14d
	decl	%ebx
	testl	%ebx, %ebx
	jle	.LBB0_129
# BB#130:                               # %merge779
	testl	%ebx, %ebx
	jle	.LBB0_131
.LBB0_132:                              # %merge789
	movl	%r14d, %eax
	decl	%eax
	jns	.LBB0_134
# BB#133:                               # %then795
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_134:                              # %merge799
	movl	%r14d, %eax
	decl	%eax
	jns	.LBB0_136
# BB#135:                               # %then805
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_136:                              # %merge820
	movq	(%r15), %rax
	movslq	%r14d, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-96(%rbp), %rax         # 8-byte Reload
	movsd	%xmm0, (%rax)
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movl	8(%r15), %ebx
	movl	12(%r15), %r14d
	decl	%ebx
	cmpl	$1, %ebx
	jg	.LBB0_138
# BB#137:                               # %then826
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_138:                              # %merge830
	cmpl	$1, %ebx
	jg	.LBB0_140
# BB#139:                               # %then836
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_140:                              # %merge840
	movl	%r14d, %eax
	decl	%eax
	jns	.LBB0_142
# BB#141:                               # %then846
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_142:                              # %merge850
	movl	%r14d, %eax
	decl	%eax
	jns	.LBB0_144
# BB#143:                               # %then856
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_144:                              # %merge871
	movq	(%r15), %rax
	addl	%r14d, %r14d
	movslq	%r14d, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax         # 8-byte Reload
	movsd	%xmm0, (%rax)
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movl	8(%r15), %ebx
	movl	12(%r15), %r14d
	decl	%ebx
	cmpl	$2, %ebx
	jg	.LBB0_146
# BB#145:                               # %then877
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_146:                              # %merge881
	cmpl	$2, %ebx
	jg	.LBB0_148
# BB#147:                               # %then887
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_148:                              # %merge891
	movl	%r14d, %eax
	decl	%eax
	jns	.LBB0_150
# BB#149:                               # %then897
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_150:                              # %merge901
	movl	%r14d, %eax
	decl	%eax
	jns	.LBB0_151
# BB#590:                               # %then907
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_151:                              # %merge906
	movq	(%r15), %rax
	leal	(%r14,%r14,2), %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax         # 8-byte Reload
	movsd	%xmm0, (%rax)
	movq	%rsp, %r14
	leaq	-16(%r14), %r12
	movq	%r12, %rsp
	movl	$0, -16(%r14)
	movq	-88(%rbp), %r15         # 8-byte Reload
	movsd	(%r15), %xmm0           # xmm0 = mem[0],zero
	divsd	.LCPI0_0(%rip), %xmm0
	movq	-72(%rbp), %rbx         # 8-byte Reload
	addsd	(%rbx), %xmm0
	callq	double2int
	movq	%rax, %rdi
	callq	free
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	(%r15), %xmm1           # xmm1 = mem[0],zero
	divsd	.LCPI0_0(%rip), %xmm1
	subsd	%xmm1, %xmm0
	callq	double2int
	movl	(%rax), %ebx
	movq	%rax, %rdi
	callq	free
	movl	%ebx, -16(%r14)
	movq	%r12, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB0_152
	.p2align	4, 0x90
.LBB0_369:                              # %merge2462
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	incl	(%rax)
.LBB0_152:                              # %while936
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_155 Depth 2
                                        #       Child Loop BB0_157 Depth 3
                                        #     Child Loop BB0_161 Depth 2
                                        #       Child Loop BB0_163 Depth 3
                                        #     Child Loop BB0_167 Depth 2
                                        #       Child Loop BB0_169 Depth 3
                                        #     Child Loop BB0_173 Depth 2
                                        #       Child Loop BB0_175 Depth 3
                                        #     Child Loop BB0_189 Depth 2
                                        #       Child Loop BB0_191 Depth 3
                                        #     Child Loop BB0_195 Depth 2
                                        #       Child Loop BB0_197 Depth 3
                                        #     Child Loop BB0_201 Depth 2
                                        #       Child Loop BB0_203 Depth 3
                                        #     Child Loop BB0_207 Depth 2
                                        #       Child Loop BB0_209 Depth 3
                                        #     Child Loop BB0_213 Depth 2
                                        #       Child Loop BB0_215 Depth 3
                                        #     Child Loop BB0_229 Depth 2
                                        #       Child Loop BB0_231 Depth 3
                                        #     Child Loop BB0_235 Depth 2
                                        #       Child Loop BB0_237 Depth 3
                                        #     Child Loop BB0_241 Depth 2
                                        #       Child Loop BB0_243 Depth 3
                                        #     Child Loop BB0_257 Depth 2
                                        #       Child Loop BB0_259 Depth 3
                                        #     Child Loop BB0_263 Depth 2
                                        #       Child Loop BB0_265 Depth 3
                                        #     Child Loop BB0_269 Depth 2
                                        #       Child Loop BB0_271 Depth 3
                                        #     Child Loop BB0_275 Depth 2
                                        #       Child Loop BB0_277 Depth 3
                                        #     Child Loop BB0_281 Depth 2
                                        #       Child Loop BB0_283 Depth 3
                                        #     Child Loop BB0_297 Depth 2
                                        #       Child Loop BB0_299 Depth 3
                                        #     Child Loop BB0_303 Depth 2
                                        #       Child Loop BB0_305 Depth 3
                                        #     Child Loop BB0_309 Depth 2
                                        #       Child Loop BB0_311 Depth 3
                                        #     Child Loop BB0_315 Depth 2
                                        #       Child Loop BB0_317 Depth 3
                                        #     Child Loop BB0_321 Depth 2
                                        #       Child Loop BB0_323 Depth 3
                                        #     Child Loop BB0_337 Depth 2
                                        #       Child Loop BB0_339 Depth 3
                                        #     Child Loop BB0_343 Depth 2
                                        #       Child Loop BB0_345 Depth 3
                                        #     Child Loop BB0_349 Depth 2
                                        #       Child Loop BB0_351 Depth 3
                                        #     Child Loop BB0_365 Depth 2
                                        #       Child Loop BB0_367 Depth 3
	movl	(%rax), %r14d
	movq	-88(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	divsd	.LCPI0_0(%rip), %xmm0
	movq	-72(%rbp), %rax         # 8-byte Reload
	addsd	(%rax), %xmm0
	callq	double2int
	movl	(%rax), %ebx
	movq	%rax, %rdi
	callq	free
	cmpl	%ebx, %r14d
	jg	.LBB0_370
# BB#153:                               # %while_body937
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$1, %edi
	movl	$5, %esi
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
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
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
	jle	.LBB0_155
	jmp	.LBB0_159
	.p2align	4, 0x90
.LBB0_158:                              # %merge967
                                        #   in Loop: Header=BB0_155 Depth=2
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_159
.LBB0_155:                              # %while_body956
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_157 Depth 3
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_158
	.p2align	4, 0x90
.LBB0_157:                              # %while_body959
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_155 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_157
	jmp	.LBB0_158
	.p2align	4, 0x90
.LBB0_159:                              # %merge972
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	(%r15), %r9
	movl	12(%r15), %r10d
	movq	(%r14), %r12
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movl	12(%r14), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	.LBB0_161
	jmp	.LBB0_165
	.p2align	4, 0x90
.LBB0_164:                              # %merge1012
                                        #   in Loop: Header=BB0_161 Depth=2
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	.LBB0_165
.LBB0_161:                              # %while_body991
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_163 Depth 3
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_164
	.p2align	4, 0x90
.LBB0_163:                              # %while_body994
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_161 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	jle	.LBB0_163
	jmp	.LBB0_164
	.p2align	4, 0x90
.LBB0_165:                              # %merge1017
                                        #   in Loop: Header=BB0_152 Depth=1
	callq	free
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	free
	movq	(%r15), %r10
	movl	8(%r15), %ecx
	leal	-1(%rcx), %r8d
	movl	12(%r15), %edx
	leal	-1(%rdx), %esi
	movl	%ecx, %edi
	imull	%edx, %edi
	leaq	15(,%rdi,8), %rbx
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rax, %rbx
	movq	%rsp, %rdi
	subq	%rbx, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rdi, -16(%rbx)
	movl	%ecx, -8(%rbx)
	movl	%edx, -4(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rcx)
	movq	-64(%rbp), %r14         # 8-byte Reload
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cmpl	%r8d, (%rbx)
	jle	.LBB0_167
	jmp	.LBB0_171
	.p2align	4, 0x90
.LBB0_170:                              # %merge1049
                                        #   in Loop: Header=BB0_167 Depth=2
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB0_171
.LBB0_167:                              # %while_body1038
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_169 Depth 3
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%esi, (%rcx)
	jg	.LBB0_170
	.p2align	4, 0x90
.LBB0_169:                              # %while_body1041
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_167 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movq	$0, (%rdi,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB0_169
	jmp	.LBB0_170
	.p2align	4, 0x90
.LBB0_171:                              # %merge1054
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r8d, (%rbx)
	jle	.LBB0_173
	jmp	.LBB0_177
	.p2align	4, 0x90
.LBB0_176:                              # %merge1079
                                        #   in Loop: Header=BB0_173 Depth=2
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB0_177
.LBB0_173:                              # %while_body1061
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_175 Depth 3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%esi, (%rcx)
	jg	.LBB0_176
	.p2align	4, 0x90
.LBB0_175:                              # %while_body1064
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_173 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movsd	(%r10,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rdi,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB0_175
	jmp	.LBB0_176
	.p2align	4, 0x90
.LBB0_177:                              # %merge1084
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	(%r14), %r13d
	testl	%r13d, %r13d
	jns	.LBB0_178
# BB#591:                               # %then1093
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_178:                              # %merge1092
                                        #   in Loop: Header=BB0_152 Depth=1
	decl	%ebx
	cmpl	%r13d, %ebx
	jge	.LBB0_179
# BB#592:                               # %then1099
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_179:                              # %merge1098
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	(%r14), %r15d
	testl	%r15d, %r15d
	jns	.LBB0_180
# BB#593:                               # %then1105
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_180:                              # %merge1104
                                        #   in Loop: Header=BB0_152 Depth=1
	cmpl	%r15d, %ebx
	jge	.LBB0_181
# BB#594:                               # %then1111
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_181:                              # %merge1110
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	subsd	%xmm2, %xmm0
	callq	double2int
	movl	(%rax), %r12d
	movq	%rax, %rdi
	callq	free
	testl	%r12d, %r12d
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jns	.LBB0_182
# BB#595:                               # %then1124
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_182:                              # %merge1123
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	decl	%eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	cmpl	%r12d, %eax
	jge	.LBB0_183
# BB#596:                               # %then1130
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_183:                              # %merge1129
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	callq	double2int
	movl	(%rax), %r14d
	movq	%rax, %rdi
	callq	free
	testl	%r14d, %r14d
	jns	.LBB0_184
# BB#597:                               # %then1143
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_184:                              # %merge1142
                                        #   in Loop: Header=BB0_152 Depth=1
	cmpl	%r14d, -48(%rbp)        # 4-byte Folded Reload
	jge	.LBB0_185
# BB#598:                               # %then1149
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_185:                              # %merge1148
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	%r15d, %eax
	subl	%r13d, %eax
	incl	%eax
	cmpl	8(%rbx), %eax
	je	.LBB0_186
# BB#599:                               # %then1158
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_186:                              # %merge1157
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	%r14d, %eax
	subl	%r12d, %eax
	incl	%eax
	cmpl	12(%rbx), %eax
	je	.LBB0_187
# BB#600:                               # %then1167
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_187:                              # %merge1166
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r10d
	movq	(%rbx), %r11
	movl	12(%rbx), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	%r13d, -16(%rbx)
	cmpl	%r15d, (%rdi)
	jle	.LBB0_189
	jmp	.LBB0_193
	.p2align	4, 0x90
.LBB0_192:                              # %merge1206
                                        #   in Loop: Header=BB0_189 Depth=2
	incl	(%rdi)
	cmpl	%r15d, (%rdi)
	jg	.LBB0_193
.LBB0_189:                              # %while_body1185
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_191 Depth 3
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	%r12d, -16(%r8)
	cmpl	%r14d, (%rbx)
	jg	.LBB0_192
	.p2align	4, 0x90
.LBB0_191:                              # %while_body1188
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_189 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	movl	(%rdi), %ecx
	movl	%r10d, %edx
	imull	%ecx, %edx
	addl	%eax, %edx
	movslq	%edx, %rdx
	subl	%r12d, %eax
	subl	%r13d, %ecx
	imull	%esi, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	%r14d, (%rbx)
	jle	.LBB0_191
	jmp	.LBB0_192
	.p2align	4, 0x90
.LBB0_193:                              # %merge1211
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$1, %edi
	movl	$5, %esi
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
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
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
	jle	.LBB0_195
	jmp	.LBB0_199
	.p2align	4, 0x90
.LBB0_198:                              # %merge1244
                                        #   in Loop: Header=BB0_195 Depth=2
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_199
.LBB0_195:                              # %while_body1233
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_197 Depth 3
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_198
	.p2align	4, 0x90
.LBB0_197:                              # %while_body1236
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_195 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_197
	jmp	.LBB0_198
	.p2align	4, 0x90
.LBB0_199:                              # %merge1249
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	(%r15), %r9
	movl	12(%r15), %r10d
	movq	(%r14), %r12
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movl	12(%r14), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	.LBB0_201
	jmp	.LBB0_205
	.p2align	4, 0x90
.LBB0_204:                              # %merge1289
                                        #   in Loop: Header=BB0_201 Depth=2
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	.LBB0_205
.LBB0_201:                              # %while_body1268
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_203 Depth 3
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_204
	.p2align	4, 0x90
.LBB0_203:                              # %while_body1271
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	jle	.LBB0_203
	jmp	.LBB0_204
	.p2align	4, 0x90
.LBB0_205:                              # %merge1294
                                        #   in Loop: Header=BB0_152 Depth=1
	callq	free
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	free
	movq	(%r15), %r10
	movl	8(%r15), %ecx
	leal	-1(%rcx), %r8d
	movl	12(%r15), %edx
	leal	-1(%rdx), %esi
	movl	%ecx, %edi
	imull	%edx, %edi
	leaq	15(,%rdi,8), %rbx
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rax, %rbx
	movq	%rsp, %rdi
	subq	%rbx, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rdi, -16(%rbx)
	movl	%ecx, -8(%rbx)
	movl	%edx, -4(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rcx)
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cmpl	%r8d, (%rbx)
	jle	.LBB0_207
	jmp	.LBB0_211
	.p2align	4, 0x90
.LBB0_210:                              # %merge1326
                                        #   in Loop: Header=BB0_207 Depth=2
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB0_211
.LBB0_207:                              # %while_body1315
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_209 Depth 3
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%esi, (%rcx)
	jg	.LBB0_210
	.p2align	4, 0x90
.LBB0_209:                              # %while_body1318
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movq	$0, (%rdi,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB0_209
	jmp	.LBB0_210
	.p2align	4, 0x90
.LBB0_211:                              # %merge1331
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r8d, (%rbx)
	jle	.LBB0_213
	jmp	.LBB0_217
	.p2align	4, 0x90
.LBB0_216:                              # %merge1356
                                        #   in Loop: Header=BB0_213 Depth=2
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB0_217
.LBB0_213:                              # %while_body1338
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_215 Depth 3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%esi, (%rcx)
	jg	.LBB0_216
	.p2align	4, 0x90
.LBB0_215:                              # %while_body1341
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_213 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movsd	(%r10,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rdi,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB0_215
	jmp	.LBB0_216
	.p2align	4, 0x90
.LBB0_217:                              # %merge1361
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %r14d
	movl	12(%rax), %ebx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r12d
	testl	%r12d, %r12d
	jns	.LBB0_218
# BB#601:                               # %then1370
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_218:                              # %merge1369
                                        #   in Loop: Header=BB0_152 Depth=1
	decl	%r14d
	cmpl	%r12d, %r14d
	jge	.LBB0_219
# BB#602:                               # %then1376
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_219:                              # %merge1375
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r15d
	testl	%r15d, %r15d
	jns	.LBB0_220
# BB#603:                               # %then1382
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_220:                              # %merge1381
                                        #   in Loop: Header=BB0_152 Depth=1
	cmpl	%r15d, %r14d
	jge	.LBB0_221
# BB#604:                               # %then1388
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_221:                              # %merge1387
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	subsd	%xmm2, %xmm0
	callq	double2int
	movl	(%rax), %r13d
	movq	%rax, %rdi
	callq	free
	testl	%r13d, %r13d
	jns	.LBB0_222
# BB#605:                               # %then1401
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_222:                              # %merge1400
                                        #   in Loop: Header=BB0_152 Depth=1
	decl	%ebx
	cmpl	%r13d, %ebx
	jge	.LBB0_223
# BB#606:                               # %then1407
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_223:                              # %merge1406
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	callq	double2int
	movl	(%rax), %r14d
	movq	%rax, %rdi
	callq	free
	testl	%r14d, %r14d
	jns	.LBB0_224
# BB#607:                               # %then1420
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_224:                              # %merge1419
                                        #   in Loop: Header=BB0_152 Depth=1
	cmpl	%r14d, %ebx
	jge	.LBB0_225
# BB#608:                               # %then1426
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_225:                              # %merge1425
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	%r15d, %eax
	subl	%r12d, %eax
	incl	%eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	cmpl	8(%rbx), %eax
	je	.LBB0_226
# BB#609:                               # %then1435
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_226:                              # %merge1434
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	%r14d, %eax
	subl	%r13d, %eax
	incl	%eax
	cmpl	12(%rbx), %eax
	je	.LBB0_227
# BB#610:                               # %then1444
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_227:                              # %merge1443
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r10d
	movq	(%rbx), %r11
	movl	12(%rbx), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	%r12d, -16(%rbx)
	cmpl	%r15d, (%rdi)
	jle	.LBB0_229
	jmp	.LBB0_233
	.p2align	4, 0x90
.LBB0_232:                              # %merge1483
                                        #   in Loop: Header=BB0_229 Depth=2
	incl	(%rdi)
	cmpl	%r15d, (%rdi)
	jg	.LBB0_233
.LBB0_229:                              # %while_body1462
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_231 Depth 3
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	%r13d, -16(%r8)
	cmpl	%r14d, (%rbx)
	jg	.LBB0_232
	.p2align	4, 0x90
.LBB0_231:                              # %while_body1465
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_229 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	movl	(%rdi), %ecx
	movl	%r10d, %edx
	imull	%ecx, %edx
	addl	%eax, %edx
	movslq	%edx, %rdx
	subl	%r13d, %eax
	subl	%r12d, %ecx
	imull	%esi, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	%r14d, (%rbx)
	jle	.LBB0_231
	jmp	.LBB0_232
	.p2align	4, 0x90
.LBB0_233:                              # %merge1488
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$1, %edi
	movl	$5, %esi
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
	leaq	-16(%rax), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
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
	jle	.LBB0_235
	jmp	.LBB0_239
	.p2align	4, 0x90
.LBB0_238:                              # %merge1521
                                        #   in Loop: Header=BB0_235 Depth=2
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_239
.LBB0_235:                              # %while_body1510
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_237 Depth 3
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_238
	.p2align	4, 0x90
.LBB0_237:                              # %while_body1513
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_235 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_237
	jmp	.LBB0_238
	.p2align	4, 0x90
.LBB0_239:                              # %merge1526
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r10d
	movq	(%r14), %r15
	movl	12(%r14), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r13)
	jle	.LBB0_241
	jmp	.LBB0_245
	.p2align	4, 0x90
.LBB0_244:                              # %merge1566
                                        #   in Loop: Header=BB0_241 Depth=2
	incl	(%r13)
	cmpl	%r8d, (%r13)
	jg	.LBB0_245
.LBB0_241:                              # %while_body1545
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_243 Depth 3
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_244
	.p2align	4, 0x90
.LBB0_243:                              # %while_body1548
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_241 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	jle	.LBB0_243
	jmp	.LBB0_244
	.p2align	4, 0x90
.LBB0_245:                              # %merge1571
                                        #   in Loop: Header=BB0_152 Depth=1
	callq	free
	movq	%r14, %rdi
	callq	free
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movq	-64(%rbp), %r14         # 8-byte Reload
	movl	(%r14), %r13d
	testl	%r13d, %r13d
	jns	.LBB0_246
# BB#611:                               # %then1580
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_246:                              # %merge1579
                                        #   in Loop: Header=BB0_152 Depth=1
	decl	%ebx
	cmpl	%r13d, %ebx
	jge	.LBB0_247
# BB#612:                               # %then1586
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_247:                              # %merge1585
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	(%r14), %r15d
	testl	%r15d, %r15d
	jns	.LBB0_248
# BB#613:                               # %then1592
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_248:                              # %merge1591
                                        #   in Loop: Header=BB0_152 Depth=1
	cmpl	%r15d, %ebx
	jge	.LBB0_249
# BB#614:                               # %then1598
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_249:                              # %merge1597
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	subsd	%xmm2, %xmm0
	callq	double2int
	movl	(%rax), %r12d
	movq	%rax, %rdi
	callq	free
	testl	%r12d, %r12d
	movl	-56(%rbp), %ebx         # 4-byte Reload
	jns	.LBB0_250
# BB#615:                               # %then1611
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_250:                              # %merge1610
                                        #   in Loop: Header=BB0_152 Depth=1
	decl	%ebx
	cmpl	%r12d, %ebx
	jge	.LBB0_251
# BB#616:                               # %then1617
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_251:                              # %merge1616
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	callq	double2int
	movl	(%rax), %r14d
	movq	%rax, %rdi
	callq	free
	testl	%r14d, %r14d
	jns	.LBB0_252
# BB#617:                               # %then1630
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_252:                              # %merge1629
                                        #   in Loop: Header=BB0_152 Depth=1
	cmpl	%r14d, %ebx
	jge	.LBB0_253
# BB#618:                               # %then1636
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_253:                              # %merge1635
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	%r15d, %eax
	subl	%r13d, %eax
	incl	%eax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpl	8(%rcx), %eax
	je	.LBB0_254
# BB#619:                               # %then1645
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %rcx         # 8-byte Reload
.LBB0_254:                              # %merge1644
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	%r14d, %eax
	subl	%r12d, %eax
	incl	%eax
	cmpl	12(%rcx), %eax
	je	.LBB0_255
# BB#620:                               # %then1654
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %rcx         # 8-byte Reload
.LBB0_255:                              # %merge1653
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r10d
	movq	(%rcx), %r11
	movl	12(%rcx), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	%r13d, -16(%rbx)
	cmpl	%r15d, (%rdi)
	jle	.LBB0_257
	jmp	.LBB0_261
	.p2align	4, 0x90
.LBB0_260:                              # %merge1693
                                        #   in Loop: Header=BB0_257 Depth=2
	incl	(%rdi)
	cmpl	%r15d, (%rdi)
	jg	.LBB0_261
.LBB0_257:                              # %while_body1672
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_259 Depth 3
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	%r12d, -16(%r8)
	cmpl	%r14d, (%rbx)
	jg	.LBB0_260
	.p2align	4, 0x90
.LBB0_259:                              # %while_body1675
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_257 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	movl	(%rdi), %ecx
	movl	%r10d, %edx
	imull	%ecx, %edx
	addl	%eax, %edx
	movslq	%edx, %rdx
	subl	%r12d, %eax
	subl	%r13d, %ecx
	imull	%esi, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	%r14d, (%rbx)
	jle	.LBB0_259
	jmp	.LBB0_260
	.p2align	4, 0x90
.LBB0_261:                              # %merge1698
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$1, %edi
	movl	$5, %esi
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
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
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
	jle	.LBB0_263
	jmp	.LBB0_267
	.p2align	4, 0x90
.LBB0_266:                              # %merge1731
                                        #   in Loop: Header=BB0_263 Depth=2
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_267
.LBB0_263:                              # %while_body1720
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_265 Depth 3
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_266
	.p2align	4, 0x90
.LBB0_265:                              # %while_body1723
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_265
	jmp	.LBB0_266
	.p2align	4, 0x90
.LBB0_267:                              # %merge1736
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	(%r15), %r9
	movl	12(%r15), %r10d
	movq	(%r14), %r12
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movl	12(%r14), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	.LBB0_269
	jmp	.LBB0_273
	.p2align	4, 0x90
.LBB0_272:                              # %merge1776
                                        #   in Loop: Header=BB0_269 Depth=2
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	.LBB0_273
.LBB0_269:                              # %while_body1755
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_271 Depth 3
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_272
	.p2align	4, 0x90
.LBB0_271:                              # %while_body1758
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_269 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	jle	.LBB0_271
	jmp	.LBB0_272
	.p2align	4, 0x90
.LBB0_273:                              # %merge1781
                                        #   in Loop: Header=BB0_152 Depth=1
	callq	free
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	free
	movq	(%r15), %r10
	movl	8(%r15), %ecx
	leal	-1(%rcx), %r8d
	movl	12(%r15), %edx
	leal	-1(%rdx), %esi
	movl	%ecx, %edi
	imull	%edx, %edi
	leaq	15(,%rdi,8), %rbx
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rax, %rbx
	movq	%rsp, %rdi
	subq	%rbx, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rdi, -16(%rbx)
	movl	%ecx, -8(%rbx)
	movl	%edx, -4(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rcx)
	movq	-64(%rbp), %r14         # 8-byte Reload
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cmpl	%r8d, (%rbx)
	jle	.LBB0_275
	jmp	.LBB0_279
	.p2align	4, 0x90
.LBB0_278:                              # %merge1813
                                        #   in Loop: Header=BB0_275 Depth=2
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB0_279
.LBB0_275:                              # %while_body1802
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_277 Depth 3
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%esi, (%rcx)
	jg	.LBB0_278
	.p2align	4, 0x90
.LBB0_277:                              # %while_body1805
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_275 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movq	$0, (%rdi,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB0_277
	jmp	.LBB0_278
	.p2align	4, 0x90
.LBB0_279:                              # %merge1818
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r8d, (%rbx)
	jle	.LBB0_281
	jmp	.LBB0_285
	.p2align	4, 0x90
.LBB0_284:                              # %merge1843
                                        #   in Loop: Header=BB0_281 Depth=2
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB0_285
.LBB0_281:                              # %while_body1825
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_283 Depth 3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%esi, (%rcx)
	jg	.LBB0_284
	.p2align	4, 0x90
.LBB0_283:                              # %while_body1828
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_281 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movsd	(%r10,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rdi,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB0_283
	jmp	.LBB0_284
	.p2align	4, 0x90
.LBB0_285:                              # %merge1848
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	(%r14), %r13d
	testl	%r13d, %r13d
	jns	.LBB0_286
# BB#621:                               # %then1857
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_286:                              # %merge1856
                                        #   in Loop: Header=BB0_152 Depth=1
	decl	%ebx
	cmpl	%r13d, %ebx
	jge	.LBB0_287
# BB#622:                               # %then1863
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_287:                              # %merge1862
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	(%r14), %r15d
	testl	%r15d, %r15d
	jns	.LBB0_288
# BB#623:                               # %then1869
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_288:                              # %merge1868
                                        #   in Loop: Header=BB0_152 Depth=1
	cmpl	%r15d, %ebx
	jge	.LBB0_289
# BB#624:                               # %then1875
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_289:                              # %merge1874
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-96(%rbp), %rax         # 8-byte Reload
	addsd	(%rax), %xmm0
	subsd	%xmm1, %xmm0
	callq	double2int
	movl	(%rax), %r12d
	movq	%rax, %rdi
	callq	free
	testl	%r12d, %r12d
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jns	.LBB0_290
# BB#625:                               # %then1888
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_290:                              # %merge1887
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	decl	%eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	cmpl	%r12d, %eax
	jge	.LBB0_291
# BB#626:                               # %then1894
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_291:                              # %merge1893
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-96(%rbp), %rax         # 8-byte Reload
	addsd	(%rax), %xmm0
	addsd	%xmm1, %xmm0
	callq	double2int
	movl	(%rax), %r14d
	movq	%rax, %rdi
	callq	free
	testl	%r14d, %r14d
	jns	.LBB0_292
# BB#627:                               # %then1907
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_292:                              # %merge1906
                                        #   in Loop: Header=BB0_152 Depth=1
	cmpl	%r14d, -48(%rbp)        # 4-byte Folded Reload
	jge	.LBB0_293
# BB#628:                               # %then1913
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_293:                              # %merge1912
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	%r15d, %eax
	subl	%r13d, %eax
	incl	%eax
	cmpl	8(%rbx), %eax
	je	.LBB0_294
# BB#629:                               # %then1922
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_294:                              # %merge1921
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	%r14d, %eax
	subl	%r12d, %eax
	incl	%eax
	cmpl	12(%rbx), %eax
	je	.LBB0_295
# BB#630:                               # %then1931
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_295:                              # %merge1930
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r10d
	movq	(%rbx), %r11
	movl	12(%rbx), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	%r13d, -16(%rbx)
	cmpl	%r15d, (%rdi)
	jle	.LBB0_297
	jmp	.LBB0_301
	.p2align	4, 0x90
.LBB0_300:                              # %merge1970
                                        #   in Loop: Header=BB0_297 Depth=2
	incl	(%rdi)
	cmpl	%r15d, (%rdi)
	jg	.LBB0_301
.LBB0_297:                              # %while_body1949
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_299 Depth 3
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	%r12d, -16(%r8)
	cmpl	%r14d, (%rbx)
	jg	.LBB0_300
	.p2align	4, 0x90
.LBB0_299:                              # %while_body1952
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_297 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	movl	(%rdi), %ecx
	movl	%r10d, %edx
	imull	%ecx, %edx
	addl	%eax, %edx
	movslq	%edx, %rdx
	subl	%r12d, %eax
	subl	%r13d, %ecx
	imull	%esi, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	%r14d, (%rbx)
	jle	.LBB0_299
	jmp	.LBB0_300
	.p2align	4, 0x90
.LBB0_301:                              # %merge1975
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$1, %edi
	movl	$5, %esi
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
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
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
	jle	.LBB0_303
	jmp	.LBB0_307
	.p2align	4, 0x90
.LBB0_306:                              # %merge2008
                                        #   in Loop: Header=BB0_303 Depth=2
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_307
.LBB0_303:                              # %while_body1997
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_305 Depth 3
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_306
	.p2align	4, 0x90
.LBB0_305:                              # %while_body2000
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_303 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_305
	jmp	.LBB0_306
	.p2align	4, 0x90
.LBB0_307:                              # %merge2013
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	(%r15), %r9
	movl	12(%r15), %r10d
	movq	(%r14), %r12
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movl	12(%r14), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	.LBB0_309
	jmp	.LBB0_313
	.p2align	4, 0x90
.LBB0_312:                              # %merge2053
                                        #   in Loop: Header=BB0_309 Depth=2
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	.LBB0_313
.LBB0_309:                              # %while_body2032
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_311 Depth 3
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_312
	.p2align	4, 0x90
.LBB0_311:                              # %while_body2035
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_309 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	jle	.LBB0_311
	jmp	.LBB0_312
	.p2align	4, 0x90
.LBB0_313:                              # %merge2058
                                        #   in Loop: Header=BB0_152 Depth=1
	callq	free
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	free
	movq	(%r15), %r10
	movl	8(%r15), %ecx
	leal	-1(%rcx), %r8d
	movl	12(%r15), %edx
	leal	-1(%rdx), %esi
	movl	%ecx, %edi
	imull	%edx, %edi
	leaq	15(,%rdi,8), %rbx
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rax, %rbx
	movq	%rsp, %rdi
	subq	%rbx, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rdi, -16(%rbx)
	movl	%ecx, -8(%rbx)
	movl	%edx, -4(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rcx)
	movq	-64(%rbp), %r14         # 8-byte Reload
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cmpl	%r8d, (%rbx)
	jle	.LBB0_315
	jmp	.LBB0_319
	.p2align	4, 0x90
.LBB0_318:                              # %merge2090
                                        #   in Loop: Header=BB0_315 Depth=2
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB0_319
.LBB0_315:                              # %while_body2079
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_317 Depth 3
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%esi, (%rcx)
	jg	.LBB0_318
	.p2align	4, 0x90
.LBB0_317:                              # %while_body2082
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_315 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movq	$0, (%rdi,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB0_317
	jmp	.LBB0_318
	.p2align	4, 0x90
.LBB0_319:                              # %merge2095
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r8d, (%rbx)
	jle	.LBB0_321
	jmp	.LBB0_325
	.p2align	4, 0x90
.LBB0_324:                              # %merge2120
                                        #   in Loop: Header=BB0_321 Depth=2
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB0_325
.LBB0_321:                              # %while_body2102
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_323 Depth 3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%esi, (%rcx)
	jg	.LBB0_324
	.p2align	4, 0x90
.LBB0_323:                              # %while_body2105
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_321 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movsd	(%r10,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rdi,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB0_323
	jmp	.LBB0_324
	.p2align	4, 0x90
.LBB0_325:                              # %merge2125
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	(%r14), %r13d
	testl	%r13d, %r13d
	jns	.LBB0_326
# BB#631:                               # %then2134
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_326:                              # %merge2133
                                        #   in Loop: Header=BB0_152 Depth=1
	decl	%ebx
	cmpl	%r13d, %ebx
	jge	.LBB0_327
# BB#632:                               # %then2140
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_327:                              # %merge2139
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	(%r14), %r15d
	testl	%r15d, %r15d
	jns	.LBB0_328
# BB#633:                               # %then2146
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_328:                              # %merge2145
                                        #   in Loop: Header=BB0_152 Depth=1
	cmpl	%r15d, %ebx
	jge	.LBB0_329
# BB#634:                               # %then2152
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_329:                              # %merge2151
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-96(%rbp), %rax         # 8-byte Reload
	addsd	(%rax), %xmm0
	subsd	%xmm1, %xmm0
	callq	double2int
	movl	(%rax), %r12d
	movq	%rax, %rdi
	callq	free
	testl	%r12d, %r12d
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jns	.LBB0_330
# BB#635:                               # %then2165
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_330:                              # %merge2164
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	decl	%eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	cmpl	%r12d, %eax
	jge	.LBB0_331
# BB#636:                               # %then2171
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_331:                              # %merge2170
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-96(%rbp), %rax         # 8-byte Reload
	addsd	(%rax), %xmm0
	addsd	%xmm1, %xmm0
	callq	double2int
	movl	(%rax), %r14d
	movq	%rax, %rdi
	callq	free
	testl	%r14d, %r14d
	jns	.LBB0_332
# BB#637:                               # %then2184
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_332:                              # %merge2183
                                        #   in Loop: Header=BB0_152 Depth=1
	cmpl	%r14d, -48(%rbp)        # 4-byte Folded Reload
	jge	.LBB0_333
# BB#638:                               # %then2190
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_333:                              # %merge2189
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	%r15d, %eax
	subl	%r13d, %eax
	incl	%eax
	cmpl	8(%rbx), %eax
	je	.LBB0_334
# BB#639:                               # %then2199
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_334:                              # %merge2198
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	%r14d, %eax
	subl	%r12d, %eax
	incl	%eax
	cmpl	12(%rbx), %eax
	je	.LBB0_335
# BB#640:                               # %then2208
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_335:                              # %merge2207
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r10d
	movq	(%rbx), %r11
	movl	12(%rbx), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	%r13d, -16(%rbx)
	cmpl	%r15d, (%rdi)
	jle	.LBB0_337
	jmp	.LBB0_341
	.p2align	4, 0x90
.LBB0_340:                              # %merge2247
                                        #   in Loop: Header=BB0_337 Depth=2
	incl	(%rdi)
	cmpl	%r15d, (%rdi)
	jg	.LBB0_341
.LBB0_337:                              # %while_body2226
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_339 Depth 3
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	%r12d, -16(%r8)
	cmpl	%r14d, (%rbx)
	jg	.LBB0_340
	.p2align	4, 0x90
.LBB0_339:                              # %while_body2229
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_337 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	movl	(%rdi), %ecx
	movl	%r10d, %edx
	imull	%ecx, %edx
	addl	%eax, %edx
	movslq	%edx, %rdx
	subl	%r12d, %eax
	subl	%r13d, %ecx
	imull	%esi, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	%r14d, (%rbx)
	jle	.LBB0_339
	jmp	.LBB0_340
	.p2align	4, 0x90
.LBB0_341:                              # %merge2252
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$1, %edi
	movl	$5, %esi
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
	leaq	-16(%rax), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
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
	jle	.LBB0_343
	jmp	.LBB0_347
	.p2align	4, 0x90
.LBB0_346:                              # %merge2285
                                        #   in Loop: Header=BB0_343 Depth=2
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_347
.LBB0_343:                              # %while_body2274
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_345 Depth 3
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_346
	.p2align	4, 0x90
.LBB0_345:                              # %while_body2277
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_343 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_345
	jmp	.LBB0_346
	.p2align	4, 0x90
.LBB0_347:                              # %merge2290
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r10d
	movq	(%r14), %r15
	movl	12(%r14), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r13)
	jle	.LBB0_349
	jmp	.LBB0_353
	.p2align	4, 0x90
.LBB0_352:                              # %merge2330
                                        #   in Loop: Header=BB0_349 Depth=2
	incl	(%r13)
	cmpl	%r8d, (%r13)
	jg	.LBB0_353
.LBB0_349:                              # %while_body2309
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_351 Depth 3
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_352
	.p2align	4, 0x90
.LBB0_351:                              # %while_body2312
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_349 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	jle	.LBB0_351
	jmp	.LBB0_352
	.p2align	4, 0x90
.LBB0_353:                              # %merge2335
                                        #   in Loop: Header=BB0_152 Depth=1
	callq	free
	movq	%r14, %rdi
	callq	free
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movq	-64(%rbp), %r14         # 8-byte Reload
	movl	(%r14), %r13d
	testl	%r13d, %r13d
	jns	.LBB0_354
# BB#641:                               # %then2344
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_354:                              # %merge2343
                                        #   in Loop: Header=BB0_152 Depth=1
	decl	%ebx
	cmpl	%r13d, %ebx
	jge	.LBB0_355
# BB#642:                               # %then2350
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_355:                              # %merge2349
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	(%r14), %r15d
	testl	%r15d, %r15d
	jns	.LBB0_356
# BB#643:                               # %then2356
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_356:                              # %merge2355
                                        #   in Loop: Header=BB0_152 Depth=1
	cmpl	%r15d, %ebx
	jge	.LBB0_357
# BB#644:                               # %then2362
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_357:                              # %merge2361
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-96(%rbp), %rax         # 8-byte Reload
	addsd	(%rax), %xmm0
	subsd	%xmm1, %xmm0
	callq	double2int
	movl	(%rax), %r12d
	movq	%rax, %rdi
	callq	free
	testl	%r12d, %r12d
	movl	-56(%rbp), %ebx         # 4-byte Reload
	jns	.LBB0_358
# BB#645:                               # %then2375
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_358:                              # %merge2374
                                        #   in Loop: Header=BB0_152 Depth=1
	decl	%ebx
	cmpl	%r12d, %ebx
	jge	.LBB0_359
# BB#646:                               # %then2381
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_359:                              # %merge2380
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-96(%rbp), %rax         # 8-byte Reload
	addsd	(%rax), %xmm0
	addsd	%xmm1, %xmm0
	callq	double2int
	movl	(%rax), %r14d
	movq	%rax, %rdi
	callq	free
	testl	%r14d, %r14d
	jns	.LBB0_360
# BB#647:                               # %then2394
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_360:                              # %merge2393
                                        #   in Loop: Header=BB0_152 Depth=1
	cmpl	%r14d, %ebx
	jge	.LBB0_361
# BB#648:                               # %then2400
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_361:                              # %merge2399
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	%r15d, %eax
	subl	%r13d, %eax
	incl	%eax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpl	8(%rcx), %eax
	je	.LBB0_362
# BB#649:                               # %then2409
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %rcx         # 8-byte Reload
.LBB0_362:                              # %merge2408
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	%r14d, %eax
	subl	%r12d, %eax
	incl	%eax
	cmpl	12(%rcx), %eax
	je	.LBB0_363
# BB#650:                               # %then2418
                                        #   in Loop: Header=BB0_152 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %rcx         # 8-byte Reload
.LBB0_363:                              # %merge2417
                                        #   in Loop: Header=BB0_152 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r10d
	movq	(%rcx), %r11
	movl	12(%rcx), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	%r13d, -16(%rbx)
	cmpl	%r15d, (%rdi)
	jle	.LBB0_365
	jmp	.LBB0_369
	.p2align	4, 0x90
.LBB0_368:                              # %merge2457
                                        #   in Loop: Header=BB0_365 Depth=2
	incl	(%rdi)
	cmpl	%r15d, (%rdi)
	jg	.LBB0_369
.LBB0_365:                              # %while_body2436
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_367 Depth 3
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	%r12d, -16(%r8)
	cmpl	%r14d, (%rbx)
	jg	.LBB0_368
	.p2align	4, 0x90
.LBB0_367:                              # %while_body2439
                                        #   Parent Loop BB0_152 Depth=1
                                        #     Parent Loop BB0_365 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	movl	(%rdi), %ecx
	movl	%r10d, %edx
	imull	%ecx, %edx
	addl	%eax, %edx
	movslq	%edx, %rdx
	subl	%r12d, %eax
	subl	%r13d, %ecx
	imull	%esi, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	%r14d, (%rbx)
	jle	.LBB0_367
	jmp	.LBB0_368
.LBB0_370:                              # %merge2468
	movq	-80(%rbp), %r14         # 8-byte Reload
	movsd	(%r14), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-96(%rbp), %rbx         # 8-byte Reload
	addsd	(%rbx), %xmm0
	callq	double2int
	movq	%rax, %rdi
	callq	free
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	(%r14), %xmm1           # xmm1 = mem[0],zero
	divsd	.LCPI0_0(%rip), %xmm1
	subsd	%xmm1, %xmm0
	callq	double2int
	movl	(%rax), %ebx
	movq	%rax, %rdi
	callq	free
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	%ebx, (%rax)
	jmp	.LBB0_371
	.p2align	4, 0x90
.LBB0_588:                              # %merge4022
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	incl	(%rax)
.LBB0_371:                              # %while2495
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_374 Depth 2
                                        #       Child Loop BB0_376 Depth 3
                                        #     Child Loop BB0_380 Depth 2
                                        #       Child Loop BB0_382 Depth 3
                                        #     Child Loop BB0_386 Depth 2
                                        #       Child Loop BB0_388 Depth 3
                                        #     Child Loop BB0_392 Depth 2
                                        #       Child Loop BB0_394 Depth 3
                                        #     Child Loop BB0_408 Depth 2
                                        #       Child Loop BB0_410 Depth 3
                                        #     Child Loop BB0_414 Depth 2
                                        #       Child Loop BB0_416 Depth 3
                                        #     Child Loop BB0_420 Depth 2
                                        #       Child Loop BB0_422 Depth 3
                                        #     Child Loop BB0_426 Depth 2
                                        #       Child Loop BB0_428 Depth 3
                                        #     Child Loop BB0_432 Depth 2
                                        #       Child Loop BB0_434 Depth 3
                                        #     Child Loop BB0_448 Depth 2
                                        #       Child Loop BB0_450 Depth 3
                                        #     Child Loop BB0_454 Depth 2
                                        #       Child Loop BB0_456 Depth 3
                                        #     Child Loop BB0_460 Depth 2
                                        #       Child Loop BB0_462 Depth 3
                                        #     Child Loop BB0_476 Depth 2
                                        #       Child Loop BB0_478 Depth 3
                                        #     Child Loop BB0_482 Depth 2
                                        #       Child Loop BB0_484 Depth 3
                                        #     Child Loop BB0_488 Depth 2
                                        #       Child Loop BB0_490 Depth 3
                                        #     Child Loop BB0_494 Depth 2
                                        #       Child Loop BB0_496 Depth 3
                                        #     Child Loop BB0_500 Depth 2
                                        #       Child Loop BB0_502 Depth 3
                                        #     Child Loop BB0_516 Depth 2
                                        #       Child Loop BB0_518 Depth 3
                                        #     Child Loop BB0_522 Depth 2
                                        #       Child Loop BB0_524 Depth 3
                                        #     Child Loop BB0_528 Depth 2
                                        #       Child Loop BB0_530 Depth 3
                                        #     Child Loop BB0_534 Depth 2
                                        #       Child Loop BB0_536 Depth 3
                                        #     Child Loop BB0_540 Depth 2
                                        #       Child Loop BB0_542 Depth 3
                                        #     Child Loop BB0_556 Depth 2
                                        #       Child Loop BB0_558 Depth 3
                                        #     Child Loop BB0_562 Depth 2
                                        #       Child Loop BB0_564 Depth 3
                                        #     Child Loop BB0_568 Depth 2
                                        #       Child Loop BB0_570 Depth 3
                                        #     Child Loop BB0_584 Depth 2
                                        #       Child Loop BB0_586 Depth 3
	movl	(%rax), %r14d
	movq	-80(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	divsd	.LCPI0_0(%rip), %xmm0
	movq	-96(%rbp), %rax         # 8-byte Reload
	addsd	(%rax), %xmm0
	callq	double2int
	movl	(%rax), %ebx
	movq	%rax, %rdi
	callq	free
	cmpl	%ebx, %r14d
	jg	.LBB0_589
# BB#372:                               # %while_body2496
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$5, %edi
	movl	$1, %esi
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
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
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
	jle	.LBB0_374
	jmp	.LBB0_378
	.p2align	4, 0x90
.LBB0_377:                              # %merge2527
                                        #   in Loop: Header=BB0_374 Depth=2
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_378
.LBB0_374:                              # %while_body2516
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_376 Depth 3
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_377
	.p2align	4, 0x90
.LBB0_376:                              # %while_body2519
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_374 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_376
	jmp	.LBB0_377
	.p2align	4, 0x90
.LBB0_378:                              # %merge2532
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	(%r15), %r9
	movl	12(%r15), %r10d
	movq	(%r14), %r12
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movl	12(%r14), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	.LBB0_380
	jmp	.LBB0_384
	.p2align	4, 0x90
.LBB0_383:                              # %merge2572
                                        #   in Loop: Header=BB0_380 Depth=2
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	.LBB0_384
.LBB0_380:                              # %while_body2551
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_382 Depth 3
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_383
	.p2align	4, 0x90
.LBB0_382:                              # %while_body2554
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_380 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	jle	.LBB0_382
	jmp	.LBB0_383
	.p2align	4, 0x90
.LBB0_384:                              # %merge2577
                                        #   in Loop: Header=BB0_371 Depth=1
	callq	free
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	free
	movq	(%r15), %r10
	movl	8(%r15), %ecx
	leal	-1(%rcx), %r8d
	movl	12(%r15), %edx
	leal	-1(%rdx), %esi
	movl	%ecx, %edi
	imull	%edx, %edi
	leaq	15(,%rdi,8), %rbx
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rax, %rbx
	movq	%rsp, %rdi
	subq	%rbx, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rdi, -16(%rbx)
	movl	%ecx, -8(%rbx)
	movl	%edx, -4(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rcx)
	movq	-64(%rbp), %r13         # 8-byte Reload
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cmpl	%r8d, (%rbx)
	jle	.LBB0_386
	jmp	.LBB0_390
	.p2align	4, 0x90
.LBB0_389:                              # %merge2609
                                        #   in Loop: Header=BB0_386 Depth=2
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB0_390
.LBB0_386:                              # %while_body2598
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_388 Depth 3
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%esi, (%rcx)
	jg	.LBB0_389
	.p2align	4, 0x90
.LBB0_388:                              # %while_body2601
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_386 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movq	$0, (%rdi,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB0_388
	jmp	.LBB0_389
	.p2align	4, 0x90
.LBB0_390:                              # %merge2614
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r8d, (%rbx)
	jle	.LBB0_392
	jmp	.LBB0_396
	.p2align	4, 0x90
.LBB0_395:                              # %merge2639
                                        #   in Loop: Header=BB0_392 Depth=2
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB0_396
.LBB0_392:                              # %while_body2621
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_394 Depth 3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%esi, (%rcx)
	jg	.LBB0_395
	.p2align	4, 0x90
.LBB0_394:                              # %while_body2624
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_392 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movsd	(%r10,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rdi,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB0_394
	jmp	.LBB0_395
	.p2align	4, 0x90
.LBB0_396:                              # %merge2644
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movq	-72(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	subsd	%xmm2, %xmm0
	callq	double2int
	movl	(%rax), %r12d
	movq	%rax, %rdi
	callq	free
	testl	%r12d, %r12d
	jns	.LBB0_397
# BB#651:                               # %then2660
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_397:                              # %merge2659
                                        #   in Loop: Header=BB0_371 Depth=1
	decl	%ebx
	cmpl	%r12d, %ebx
	jge	.LBB0_398
# BB#652:                               # %then2666
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_398:                              # %merge2665
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	callq	double2int
	movl	(%rax), %r15d
	movq	%rax, %rdi
	callq	free
	testl	%r15d, %r15d
	jns	.LBB0_399
# BB#653:                               # %then2679
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_399:                              # %merge2678
                                        #   in Loop: Header=BB0_371 Depth=1
	cmpl	%r15d, %ebx
	jge	.LBB0_400
# BB#654:                               # %then2685
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_400:                              # %merge2684
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	(%r13), %r13d
	testl	%r13d, %r13d
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jns	.LBB0_401
# BB#655:                               # %then2691
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_401:                              # %merge2690
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	decl	%eax
	cmpl	%r13d, %eax
	jge	.LBB0_402
# BB#656:                               # %then2697
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	movl	%eax, %r14d
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movl	%r14d, %eax
.LBB0_402:                              # %merge2696
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx), %r14d
	testl	%r14d, %r14d
	jns	.LBB0_403
# BB#657:                               # %then2703
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movl	-56(%rbp), %eax         # 4-byte Reload
.LBB0_403:                              # %merge2702
                                        #   in Loop: Header=BB0_371 Depth=1
	cmpl	%r14d, %eax
	jge	.LBB0_404
# BB#658:                               # %then2709
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_404:                              # %merge2708
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	%r15d, %eax
	subl	%r12d, %eax
	incl	%eax
	cmpl	8(%rbx), %eax
	je	.LBB0_405
# BB#659:                               # %then2718
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_405:                              # %merge2717
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	%r14d, %eax
	subl	%r13d, %eax
	incl	%eax
	cmpl	12(%rbx), %eax
	je	.LBB0_406
# BB#660:                               # %then2727
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_406:                              # %merge2726
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r10d
	movq	(%rbx), %r11
	movl	12(%rbx), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	%r12d, -16(%rbx)
	cmpl	%r15d, (%rdi)
	jle	.LBB0_408
	jmp	.LBB0_412
	.p2align	4, 0x90
.LBB0_411:                              # %merge2766
                                        #   in Loop: Header=BB0_408 Depth=2
	incl	(%rdi)
	cmpl	%r15d, (%rdi)
	jg	.LBB0_412
.LBB0_408:                              # %while_body2745
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_410 Depth 3
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	%r13d, -16(%r8)
	cmpl	%r14d, (%rbx)
	jg	.LBB0_411
	.p2align	4, 0x90
.LBB0_410:                              # %while_body2748
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_408 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	movl	(%rdi), %ecx
	movl	%r10d, %edx
	imull	%ecx, %edx
	addl	%eax, %edx
	movslq	%edx, %rdx
	subl	%r13d, %eax
	subl	%r12d, %ecx
	imull	%esi, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	%r14d, (%rbx)
	jle	.LBB0_410
	jmp	.LBB0_411
	.p2align	4, 0x90
.LBB0_412:                              # %merge2771
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$5, %edi
	movl	$1, %esi
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
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
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
	jle	.LBB0_414
	jmp	.LBB0_418
	.p2align	4, 0x90
.LBB0_417:                              # %merge2804
                                        #   in Loop: Header=BB0_414 Depth=2
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_418
.LBB0_414:                              # %while_body2793
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_416 Depth 3
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_417
	.p2align	4, 0x90
.LBB0_416:                              # %while_body2796
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_414 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_416
	jmp	.LBB0_417
	.p2align	4, 0x90
.LBB0_418:                              # %merge2809
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	(%r15), %r9
	movl	12(%r15), %r10d
	movq	(%r14), %r12
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movl	12(%r14), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	.LBB0_420
	jmp	.LBB0_424
	.p2align	4, 0x90
.LBB0_423:                              # %merge2849
                                        #   in Loop: Header=BB0_420 Depth=2
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	.LBB0_424
.LBB0_420:                              # %while_body2828
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_422 Depth 3
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_423
	.p2align	4, 0x90
.LBB0_422:                              # %while_body2831
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_420 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	jle	.LBB0_422
	jmp	.LBB0_423
	.p2align	4, 0x90
.LBB0_424:                              # %merge2854
                                        #   in Loop: Header=BB0_371 Depth=1
	callq	free
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	free
	movq	(%r15), %r10
	movl	8(%r15), %ecx
	leal	-1(%rcx), %r8d
	movl	12(%r15), %edx
	leal	-1(%rdx), %esi
	movl	%ecx, %edi
	imull	%edx, %edi
	leaq	15(,%rdi,8), %rbx
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rax, %rbx
	movq	%rsp, %rdi
	subq	%rbx, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rdi, -16(%rbx)
	movl	%ecx, -8(%rbx)
	movl	%edx, -4(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rcx)
	movq	-64(%rbp), %r12         # 8-byte Reload
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cmpl	%r8d, (%rbx)
	jle	.LBB0_426
	jmp	.LBB0_430
	.p2align	4, 0x90
.LBB0_429:                              # %merge2886
                                        #   in Loop: Header=BB0_426 Depth=2
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB0_430
.LBB0_426:                              # %while_body2875
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_428 Depth 3
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%esi, (%rcx)
	jg	.LBB0_429
	.p2align	4, 0x90
.LBB0_428:                              # %while_body2878
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_426 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movq	$0, (%rdi,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB0_428
	jmp	.LBB0_429
	.p2align	4, 0x90
.LBB0_430:                              # %merge2891
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r8d, (%rbx)
	jle	.LBB0_432
	jmp	.LBB0_436
	.p2align	4, 0x90
.LBB0_435:                              # %merge2916
                                        #   in Loop: Header=BB0_432 Depth=2
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB0_436
.LBB0_432:                              # %while_body2898
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_434 Depth 3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%esi, (%rcx)
	jg	.LBB0_435
	.p2align	4, 0x90
.LBB0_434:                              # %while_body2901
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_432 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movsd	(%r10,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rdi,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB0_434
	jmp	.LBB0_435
	.p2align	4, 0x90
.LBB0_436:                              # %merge2921
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movq	-72(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	subsd	%xmm2, %xmm0
	callq	double2int
	movl	(%rax), %r13d
	movq	%rax, %rdi
	callq	free
	testl	%r13d, %r13d
	jns	.LBB0_437
# BB#661:                               # %then2937
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_437:                              # %merge2936
                                        #   in Loop: Header=BB0_371 Depth=1
	decl	%ebx
	cmpl	%r13d, %ebx
	jge	.LBB0_438
# BB#662:                               # %then2943
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_438:                              # %merge2942
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	callq	double2int
	movl	(%rax), %r15d
	movq	%rax, %rdi
	callq	free
	testl	%r15d, %r15d
	jns	.LBB0_439
# BB#663:                               # %then2956
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_439:                              # %merge2955
                                        #   in Loop: Header=BB0_371 Depth=1
	cmpl	%r15d, %ebx
	jge	.LBB0_440
# BB#664:                               # %then2962
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_440:                              # %merge2961
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	(%r12), %r12d
	testl	%r12d, %r12d
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jns	.LBB0_441
# BB#665:                               # %then2968
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_441:                              # %merge2967
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	decl	%eax
	cmpl	%r12d, %eax
	jge	.LBB0_442
# BB#666:                               # %then2974
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	movl	%eax, %r14d
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movl	%r14d, %eax
.LBB0_442:                              # %merge2973
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx), %r14d
	testl	%r14d, %r14d
	jns	.LBB0_443
# BB#667:                               # %then2980
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movl	-56(%rbp), %eax         # 4-byte Reload
.LBB0_443:                              # %merge2979
                                        #   in Loop: Header=BB0_371 Depth=1
	cmpl	%r14d, %eax
	jge	.LBB0_444
# BB#668:                               # %then2986
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_444:                              # %merge2985
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	%r15d, %eax
	subl	%r13d, %eax
	incl	%eax
	cmpl	8(%rbx), %eax
	je	.LBB0_445
# BB#669:                               # %then2995
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_445:                              # %merge2994
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	%r14d, %eax
	subl	%r12d, %eax
	incl	%eax
	cmpl	12(%rbx), %eax
	je	.LBB0_446
# BB#670:                               # %then3004
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_446:                              # %merge3003
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r10d
	movq	(%rbx), %r11
	movl	12(%rbx), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	%r13d, -16(%rbx)
	cmpl	%r15d, (%rdi)
	jle	.LBB0_448
	jmp	.LBB0_452
	.p2align	4, 0x90
.LBB0_451:                              # %merge3043
                                        #   in Loop: Header=BB0_448 Depth=2
	incl	(%rdi)
	cmpl	%r15d, (%rdi)
	jg	.LBB0_452
.LBB0_448:                              # %while_body3022
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_450 Depth 3
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	%r12d, -16(%r8)
	cmpl	%r14d, (%rbx)
	jg	.LBB0_451
	.p2align	4, 0x90
.LBB0_450:                              # %while_body3025
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_448 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	movl	(%rdi), %ecx
	movl	%r10d, %edx
	imull	%ecx, %edx
	addl	%eax, %edx
	movslq	%edx, %rdx
	subl	%r12d, %eax
	subl	%r13d, %ecx
	imull	%esi, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	%r14d, (%rbx)
	jle	.LBB0_450
	jmp	.LBB0_451
	.p2align	4, 0x90
.LBB0_452:                              # %merge3048
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$5, %edi
	movl	$1, %esi
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
	leaq	-16(%rax), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
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
	jle	.LBB0_454
	jmp	.LBB0_458
	.p2align	4, 0x90
.LBB0_457:                              # %merge3081
                                        #   in Loop: Header=BB0_454 Depth=2
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_458
.LBB0_454:                              # %while_body3070
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_456 Depth 3
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_457
	.p2align	4, 0x90
.LBB0_456:                              # %while_body3073
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_454 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_456
	jmp	.LBB0_457
	.p2align	4, 0x90
.LBB0_458:                              # %merge3086
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r10d
	movq	(%r14), %r15
	movl	12(%r14), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r13)
	jle	.LBB0_460
	jmp	.LBB0_464
	.p2align	4, 0x90
.LBB0_463:                              # %merge3126
                                        #   in Loop: Header=BB0_460 Depth=2
	incl	(%r13)
	cmpl	%r8d, (%r13)
	jg	.LBB0_464
.LBB0_460:                              # %while_body3105
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_462 Depth 3
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_463
	.p2align	4, 0x90
.LBB0_462:                              # %while_body3108
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_460 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	jle	.LBB0_462
	jmp	.LBB0_463
	.p2align	4, 0x90
.LBB0_464:                              # %merge3131
                                        #   in Loop: Header=BB0_371 Depth=1
	callq	free
	movq	%r14, %rdi
	callq	free
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movq	-72(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	subsd	%xmm2, %xmm0
	callq	double2int
	movl	(%rax), %r13d
	movq	%rax, %rdi
	callq	free
	testl	%r13d, %r13d
	jns	.LBB0_465
# BB#671:                               # %then3147
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_465:                              # %merge3146
                                        #   in Loop: Header=BB0_371 Depth=1
	decl	%ebx
	cmpl	%r13d, %ebx
	movq	-64(%rbp), %r14         # 8-byte Reload
	jge	.LBB0_466
# BB#672:                               # %then3153
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_466:                              # %merge3152
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	callq	double2int
	movl	(%rax), %r15d
	movq	%rax, %rdi
	callq	free
	testl	%r15d, %r15d
	jns	.LBB0_467
# BB#673:                               # %then3166
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_467:                              # %merge3165
                                        #   in Loop: Header=BB0_371 Depth=1
	cmpl	%r15d, %ebx
	jge	.LBB0_468
# BB#674:                               # %then3172
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_468:                              # %merge3171
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	(%r14), %r12d
	testl	%r12d, %r12d
	movl	-56(%rbp), %ebx         # 4-byte Reload
	jns	.LBB0_469
# BB#675:                               # %then3178
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_469:                              # %merge3177
                                        #   in Loop: Header=BB0_371 Depth=1
	decl	%ebx
	cmpl	%r12d, %ebx
	jge	.LBB0_470
# BB#676:                               # %then3184
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_470:                              # %merge3183
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	(%r14), %r14d
	testl	%r14d, %r14d
	jns	.LBB0_471
# BB#677:                               # %then3190
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_471:                              # %merge3189
                                        #   in Loop: Header=BB0_371 Depth=1
	cmpl	%r14d, %ebx
	jge	.LBB0_472
# BB#678:                               # %then3196
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_472:                              # %merge3195
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	%r15d, %eax
	subl	%r13d, %eax
	incl	%eax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpl	8(%rcx), %eax
	je	.LBB0_473
# BB#679:                               # %then3205
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %rcx         # 8-byte Reload
.LBB0_473:                              # %merge3204
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	%r14d, %eax
	subl	%r12d, %eax
	incl	%eax
	cmpl	12(%rcx), %eax
	je	.LBB0_474
# BB#680:                               # %then3214
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %rcx         # 8-byte Reload
.LBB0_474:                              # %merge3213
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r10d
	movq	(%rcx), %r11
	movl	12(%rcx), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	%r13d, -16(%rbx)
	cmpl	%r15d, (%rdi)
	jle	.LBB0_476
	jmp	.LBB0_480
	.p2align	4, 0x90
.LBB0_479:                              # %merge3253
                                        #   in Loop: Header=BB0_476 Depth=2
	incl	(%rdi)
	cmpl	%r15d, (%rdi)
	jg	.LBB0_480
.LBB0_476:                              # %while_body3232
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_478 Depth 3
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	%r12d, -16(%r8)
	cmpl	%r14d, (%rbx)
	jg	.LBB0_479
	.p2align	4, 0x90
.LBB0_478:                              # %while_body3235
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_476 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	movl	(%rdi), %ecx
	movl	%r10d, %edx
	imull	%ecx, %edx
	addl	%eax, %edx
	movslq	%edx, %rdx
	subl	%r12d, %eax
	subl	%r13d, %ecx
	imull	%esi, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	%r14d, (%rbx)
	jle	.LBB0_478
	jmp	.LBB0_479
	.p2align	4, 0x90
.LBB0_480:                              # %merge3258
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$5, %edi
	movl	$1, %esi
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
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
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
	jle	.LBB0_482
	jmp	.LBB0_486
	.p2align	4, 0x90
.LBB0_485:                              # %merge3291
                                        #   in Loop: Header=BB0_482 Depth=2
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_486
.LBB0_482:                              # %while_body3280
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_484 Depth 3
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_485
	.p2align	4, 0x90
.LBB0_484:                              # %while_body3283
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_482 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_484
	jmp	.LBB0_485
	.p2align	4, 0x90
.LBB0_486:                              # %merge3296
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	(%r15), %r9
	movl	12(%r15), %r10d
	movq	(%r14), %r12
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movl	12(%r14), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	.LBB0_488
	jmp	.LBB0_492
	.p2align	4, 0x90
.LBB0_491:                              # %merge3336
                                        #   in Loop: Header=BB0_488 Depth=2
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	.LBB0_492
.LBB0_488:                              # %while_body3315
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_490 Depth 3
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_491
	.p2align	4, 0x90
.LBB0_490:                              # %while_body3318
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_488 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	jle	.LBB0_490
	jmp	.LBB0_491
	.p2align	4, 0x90
.LBB0_492:                              # %merge3341
                                        #   in Loop: Header=BB0_371 Depth=1
	callq	free
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	free
	movq	(%r15), %r10
	movl	8(%r15), %ecx
	leal	-1(%rcx), %r8d
	movl	12(%r15), %edx
	leal	-1(%rdx), %esi
	movl	%ecx, %edi
	imull	%edx, %edi
	leaq	15(,%rdi,8), %rbx
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rax, %rbx
	movq	%rsp, %rdi
	subq	%rbx, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rdi, -16(%rbx)
	movl	%ecx, -8(%rbx)
	movl	%edx, -4(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rcx)
	movq	-64(%rbp), %r12         # 8-byte Reload
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cmpl	%r8d, (%rbx)
	jle	.LBB0_494
	jmp	.LBB0_498
	.p2align	4, 0x90
.LBB0_497:                              # %merge3373
                                        #   in Loop: Header=BB0_494 Depth=2
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB0_498
.LBB0_494:                              # %while_body3362
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_496 Depth 3
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%esi, (%rcx)
	jg	.LBB0_497
	.p2align	4, 0x90
.LBB0_496:                              # %while_body3365
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_494 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movq	$0, (%rdi,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB0_496
	jmp	.LBB0_497
	.p2align	4, 0x90
.LBB0_498:                              # %merge3378
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r8d, (%rbx)
	jle	.LBB0_500
	jmp	.LBB0_504
	.p2align	4, 0x90
.LBB0_503:                              # %merge3403
                                        #   in Loop: Header=BB0_500 Depth=2
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB0_504
.LBB0_500:                              # %while_body3385
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_502 Depth 3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%esi, (%rcx)
	jg	.LBB0_503
	.p2align	4, 0x90
.LBB0_502:                              # %while_body3388
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_500 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movsd	(%r10,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rdi,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB0_502
	jmp	.LBB0_503
	.p2align	4, 0x90
.LBB0_504:                              # %merge3408
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movq	-88(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-72(%rbp), %rax         # 8-byte Reload
	addsd	(%rax), %xmm0
	subsd	%xmm1, %xmm0
	callq	double2int
	movl	(%rax), %r13d
	movq	%rax, %rdi
	callq	free
	testl	%r13d, %r13d
	jns	.LBB0_505
# BB#681:                               # %then3424
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_505:                              # %merge3423
                                        #   in Loop: Header=BB0_371 Depth=1
	decl	%ebx
	cmpl	%r13d, %ebx
	jge	.LBB0_506
# BB#682:                               # %then3430
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_506:                              # %merge3429
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-72(%rbp), %rax         # 8-byte Reload
	addsd	(%rax), %xmm0
	addsd	%xmm1, %xmm0
	callq	double2int
	movl	(%rax), %r15d
	movq	%rax, %rdi
	callq	free
	testl	%r15d, %r15d
	jns	.LBB0_507
# BB#683:                               # %then3443
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_507:                              # %merge3442
                                        #   in Loop: Header=BB0_371 Depth=1
	cmpl	%r15d, %ebx
	jge	.LBB0_508
# BB#684:                               # %then3449
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_508:                              # %merge3448
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	(%r12), %r12d
	testl	%r12d, %r12d
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jns	.LBB0_509
# BB#685:                               # %then3455
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_509:                              # %merge3454
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	decl	%eax
	cmpl	%r12d, %eax
	jge	.LBB0_510
# BB#686:                               # %then3461
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	movl	%eax, %r14d
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movl	%r14d, %eax
.LBB0_510:                              # %merge3460
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx), %r14d
	testl	%r14d, %r14d
	jns	.LBB0_511
# BB#687:                               # %then3467
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movl	-56(%rbp), %eax         # 4-byte Reload
.LBB0_511:                              # %merge3466
                                        #   in Loop: Header=BB0_371 Depth=1
	cmpl	%r14d, %eax
	jge	.LBB0_512
# BB#688:                               # %then3473
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_512:                              # %merge3472
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	%r15d, %eax
	subl	%r13d, %eax
	incl	%eax
	cmpl	8(%rbx), %eax
	je	.LBB0_513
# BB#689:                               # %then3482
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_513:                              # %merge3481
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	%r14d, %eax
	subl	%r12d, %eax
	incl	%eax
	cmpl	12(%rbx), %eax
	je	.LBB0_514
# BB#690:                               # %then3491
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_514:                              # %merge3490
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r10d
	movq	(%rbx), %r11
	movl	12(%rbx), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	%r13d, -16(%rbx)
	cmpl	%r15d, (%rdi)
	jle	.LBB0_516
	jmp	.LBB0_520
	.p2align	4, 0x90
.LBB0_519:                              # %merge3530
                                        #   in Loop: Header=BB0_516 Depth=2
	incl	(%rdi)
	cmpl	%r15d, (%rdi)
	jg	.LBB0_520
.LBB0_516:                              # %while_body3509
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_518 Depth 3
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	%r12d, -16(%r8)
	cmpl	%r14d, (%rbx)
	jg	.LBB0_519
	.p2align	4, 0x90
.LBB0_518:                              # %while_body3512
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_516 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	movl	(%rdi), %ecx
	movl	%r10d, %edx
	imull	%ecx, %edx
	addl	%eax, %edx
	movslq	%edx, %rdx
	subl	%r12d, %eax
	subl	%r13d, %ecx
	imull	%esi, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	%r14d, (%rbx)
	jle	.LBB0_518
	jmp	.LBB0_519
	.p2align	4, 0x90
.LBB0_520:                              # %merge3535
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$5, %edi
	movl	$1, %esi
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
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
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
	jle	.LBB0_522
	jmp	.LBB0_526
	.p2align	4, 0x90
.LBB0_525:                              # %merge3568
                                        #   in Loop: Header=BB0_522 Depth=2
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_526
.LBB0_522:                              # %while_body3557
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_524 Depth 3
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_525
	.p2align	4, 0x90
.LBB0_524:                              # %while_body3560
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_522 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_524
	jmp	.LBB0_525
	.p2align	4, 0x90
.LBB0_526:                              # %merge3573
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	(%r15), %r9
	movl	12(%r15), %r10d
	movq	(%r14), %r12
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movl	12(%r14), %r13d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	.LBB0_528
	jmp	.LBB0_532
	.p2align	4, 0x90
.LBB0_531:                              # %merge3613
                                        #   in Loop: Header=BB0_528 Depth=2
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	.LBB0_532
.LBB0_528:                              # %while_body3592
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_530 Depth 3
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_531
	.p2align	4, 0x90
.LBB0_530:                              # %while_body3595
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_528 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	jle	.LBB0_530
	jmp	.LBB0_531
	.p2align	4, 0x90
.LBB0_532:                              # %merge3618
                                        #   in Loop: Header=BB0_371 Depth=1
	callq	free
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	free
	movq	(%r15), %r10
	movl	8(%r15), %ecx
	leal	-1(%rcx), %r8d
	movl	12(%r15), %edx
	leal	-1(%rdx), %esi
	movl	%ecx, %edi
	imull	%edx, %edi
	leaq	15(,%rdi,8), %rbx
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rax, %rbx
	movq	%rsp, %rdi
	subq	%rbx, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rdi, -16(%rbx)
	movl	%ecx, -8(%rbx)
	movl	%edx, -4(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rcx)
	movq	-64(%rbp), %r12         # 8-byte Reload
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cmpl	%r8d, (%rbx)
	jle	.LBB0_534
	jmp	.LBB0_538
	.p2align	4, 0x90
.LBB0_537:                              # %merge3650
                                        #   in Loop: Header=BB0_534 Depth=2
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB0_538
.LBB0_534:                              # %while_body3639
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_536 Depth 3
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%esi, (%rcx)
	jg	.LBB0_537
	.p2align	4, 0x90
.LBB0_536:                              # %while_body3642
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_534 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movq	$0, (%rdi,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB0_536
	jmp	.LBB0_537
	.p2align	4, 0x90
.LBB0_538:                              # %merge3655
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r8d, (%rbx)
	jle	.LBB0_540
	jmp	.LBB0_544
	.p2align	4, 0x90
.LBB0_543:                              # %merge3680
                                        #   in Loop: Header=BB0_540 Depth=2
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB0_544
.LBB0_540:                              # %while_body3662
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_542 Depth 3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%esi, (%rcx)
	jg	.LBB0_543
	.p2align	4, 0x90
.LBB0_542:                              # %while_body3665
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_540 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movsd	(%r10,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rdi,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB0_542
	jmp	.LBB0_543
	.p2align	4, 0x90
.LBB0_544:                              # %merge3685
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movq	-88(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-72(%rbp), %rax         # 8-byte Reload
	addsd	(%rax), %xmm0
	subsd	%xmm1, %xmm0
	callq	double2int
	movl	(%rax), %r13d
	movq	%rax, %rdi
	callq	free
	testl	%r13d, %r13d
	jns	.LBB0_545
# BB#691:                               # %then3701
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_545:                              # %merge3700
                                        #   in Loop: Header=BB0_371 Depth=1
	decl	%ebx
	cmpl	%r13d, %ebx
	jge	.LBB0_546
# BB#692:                               # %then3707
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_546:                              # %merge3706
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-72(%rbp), %rax         # 8-byte Reload
	addsd	(%rax), %xmm0
	addsd	%xmm1, %xmm0
	callq	double2int
	movl	(%rax), %r15d
	movq	%rax, %rdi
	callq	free
	testl	%r15d, %r15d
	jns	.LBB0_547
# BB#693:                               # %then3720
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_547:                              # %merge3719
                                        #   in Loop: Header=BB0_371 Depth=1
	cmpl	%r15d, %ebx
	jge	.LBB0_548
# BB#694:                               # %then3726
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_548:                              # %merge3725
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	(%r12), %r12d
	testl	%r12d, %r12d
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jns	.LBB0_549
# BB#695:                               # %then3732
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_549:                              # %merge3731
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	decl	%eax
	cmpl	%r12d, %eax
	jge	.LBB0_550
# BB#696:                               # %then3738
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	movl	%eax, %r14d
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movl	%r14d, %eax
.LBB0_550:                              # %merge3737
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx), %r14d
	testl	%r14d, %r14d
	jns	.LBB0_551
# BB#697:                               # %then3744
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movl	-56(%rbp), %eax         # 4-byte Reload
.LBB0_551:                              # %merge3743
                                        #   in Loop: Header=BB0_371 Depth=1
	cmpl	%r14d, %eax
	jge	.LBB0_552
# BB#698:                               # %then3750
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_552:                              # %merge3749
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	%r15d, %eax
	subl	%r13d, %eax
	incl	%eax
	cmpl	8(%rbx), %eax
	je	.LBB0_553
# BB#699:                               # %then3759
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_553:                              # %merge3758
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	%r14d, %eax
	subl	%r12d, %eax
	incl	%eax
	cmpl	12(%rbx), %eax
	je	.LBB0_554
# BB#700:                               # %then3768
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_554:                              # %merge3767
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r10d
	movq	(%rbx), %r11
	movl	12(%rbx), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	%r13d, -16(%rbx)
	cmpl	%r15d, (%rdi)
	jle	.LBB0_556
	jmp	.LBB0_560
	.p2align	4, 0x90
.LBB0_559:                              # %merge3807
                                        #   in Loop: Header=BB0_556 Depth=2
	incl	(%rdi)
	cmpl	%r15d, (%rdi)
	jg	.LBB0_560
.LBB0_556:                              # %while_body3786
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_558 Depth 3
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	%r12d, -16(%r8)
	cmpl	%r14d, (%rbx)
	jg	.LBB0_559
	.p2align	4, 0x90
.LBB0_558:                              # %while_body3789
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_556 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	movl	(%rdi), %ecx
	movl	%r10d, %edx
	imull	%ecx, %edx
	addl	%eax, %edx
	movslq	%edx, %rdx
	subl	%r12d, %eax
	subl	%r13d, %ecx
	imull	%esi, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	%r14d, (%rbx)
	jle	.LBB0_558
	jmp	.LBB0_559
	.p2align	4, 0x90
.LBB0_560:                              # %merge3812
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$5, %edi
	movl	$1, %esi
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
	leaq	-16(%rax), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
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
	jle	.LBB0_562
	jmp	.LBB0_566
	.p2align	4, 0x90
.LBB0_565:                              # %merge3845
                                        #   in Loop: Header=BB0_562 Depth=2
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_566
.LBB0_562:                              # %while_body3834
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_564 Depth 3
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_565
	.p2align	4, 0x90
.LBB0_564:                              # %while_body3837
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_562 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_564
	jmp	.LBB0_565
	.p2align	4, 0x90
.LBB0_566:                              # %merge3850
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r10d
	movq	(%r14), %r15
	movl	12(%r14), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r13)
	jle	.LBB0_568
	jmp	.LBB0_572
	.p2align	4, 0x90
.LBB0_571:                              # %merge3890
                                        #   in Loop: Header=BB0_568 Depth=2
	incl	(%r13)
	cmpl	%r8d, (%r13)
	jg	.LBB0_572
.LBB0_568:                              # %while_body3869
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_570 Depth 3
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_571
	.p2align	4, 0x90
.LBB0_570:                              # %while_body3872
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_568 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	jle	.LBB0_570
	jmp	.LBB0_571
	.p2align	4, 0x90
.LBB0_572:                              # %merge3895
                                        #   in Loop: Header=BB0_371 Depth=1
	callq	free
	movq	%r14, %rdi
	callq	free
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movq	-88(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-72(%rbp), %rax         # 8-byte Reload
	addsd	(%rax), %xmm0
	subsd	%xmm1, %xmm0
	callq	double2int
	movl	(%rax), %r13d
	movq	%rax, %rdi
	callq	free
	testl	%r13d, %r13d
	jns	.LBB0_573
# BB#701:                               # %then3911
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_573:                              # %merge3910
                                        #   in Loop: Header=BB0_371 Depth=1
	decl	%ebx
	cmpl	%r13d, %ebx
	movq	-64(%rbp), %r14         # 8-byte Reload
	jge	.LBB0_574
# BB#702:                               # %then3917
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_574:                              # %merge3916
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-72(%rbp), %rax         # 8-byte Reload
	addsd	(%rax), %xmm0
	addsd	%xmm1, %xmm0
	callq	double2int
	movl	(%rax), %r15d
	movq	%rax, %rdi
	callq	free
	testl	%r15d, %r15d
	jns	.LBB0_575
# BB#703:                               # %then3930
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_575:                              # %merge3929
                                        #   in Loop: Header=BB0_371 Depth=1
	cmpl	%r15d, %ebx
	jge	.LBB0_576
# BB#704:                               # %then3936
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_576:                              # %merge3935
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	(%r14), %r12d
	testl	%r12d, %r12d
	movl	-56(%rbp), %ebx         # 4-byte Reload
	jns	.LBB0_577
# BB#705:                               # %then3942
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_577:                              # %merge3941
                                        #   in Loop: Header=BB0_371 Depth=1
	decl	%ebx
	cmpl	%r12d, %ebx
	jge	.LBB0_578
# BB#706:                               # %then3948
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_578:                              # %merge3947
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	(%r14), %r14d
	testl	%r14d, %r14d
	jns	.LBB0_579
# BB#707:                               # %then3954
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_579:                              # %merge3953
                                        #   in Loop: Header=BB0_371 Depth=1
	cmpl	%r14d, %ebx
	jge	.LBB0_580
# BB#708:                               # %then3960
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_580:                              # %merge3959
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	%r15d, %eax
	subl	%r13d, %eax
	incl	%eax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpl	8(%rcx), %eax
	je	.LBB0_581
# BB#709:                               # %then3969
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %rcx         # 8-byte Reload
.LBB0_581:                              # %merge3968
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	%r14d, %eax
	subl	%r12d, %eax
	incl	%eax
	cmpl	12(%rcx), %eax
	je	.LBB0_582
# BB#710:                               # %then3978
                                        #   in Loop: Header=BB0_371 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.8, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movq	-48(%rbp), %rcx         # 8-byte Reload
.LBB0_582:                              # %merge3977
                                        #   in Loop: Header=BB0_371 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r10d
	movq	(%rcx), %r11
	movl	12(%rcx), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	%r13d, -16(%rbx)
	cmpl	%r15d, (%rdi)
	jle	.LBB0_584
	jmp	.LBB0_588
	.p2align	4, 0x90
.LBB0_587:                              # %merge4017
                                        #   in Loop: Header=BB0_584 Depth=2
	incl	(%rdi)
	cmpl	%r15d, (%rdi)
	jg	.LBB0_588
.LBB0_584:                              # %while_body3996
                                        #   Parent Loop BB0_371 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_586 Depth 3
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	%r12d, -16(%r8)
	cmpl	%r14d, (%rbx)
	jg	.LBB0_587
	.p2align	4, 0x90
.LBB0_586:                              # %while_body3999
                                        #   Parent Loop BB0_371 Depth=1
                                        #     Parent Loop BB0_584 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %eax
	movl	(%rdi), %ecx
	movl	%r10d, %edx
	imull	%ecx, %edx
	addl	%eax, %edx
	movslq	%edx, %rdx
	subl	%r12d, %eax
	subl	%r13d, %ecx
	imull	%esi, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movsd	(%r11,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rbx)
	cmpl	%r14d, (%rbx)
	jle	.LBB0_586
	jmp	.LBB0_587
.LBB0_589:                              # %merge4028
	movl	$.Lsystem_string.10, %ecx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
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
.LBB0_121:                              # %then726
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	decl	%ebx
	jns	.LBB0_124
.LBB0_123:                              # %then736
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	jmp	.LBB0_124
.LBB0_125:                              # %then746
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	decl	%r14d
	jns	.LBB0_128
.LBB0_127:                              # %then756
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	jmp	.LBB0_128
.LBB0_129:                              # %then775
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	testl	%ebx, %ebx
	jg	.LBB0_132
.LBB0_131:                              # %then785
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	jmp	.LBB0_132
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
	.asciz	"b.jpg"
	.size	.Lsystem_string, 6

	.type	.Lsystem_string.9,@object # @system_string.9
.Lsystem_string.9:
	.asciz	"b.jpg"
	.size	.Lsystem_string.9, 6

	.type	.Lsystem_string.10,@object # @system_string.10
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lsystem_string.10:
	.asciz	"face_2_result.jpg"
	.size	.Lsystem_string.10, 18


	.section	".note.GNU-stack","",@progbits
