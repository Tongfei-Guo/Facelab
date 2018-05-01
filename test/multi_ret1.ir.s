	.text
	.file	"Facelab"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4621819117588971520     # double 10
.LCPI0_1:
	.quad	4607182418800017408     # double 1
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
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, -208(%rbp)
	movabsq	$4611686018427387904, %rax # imm = 0x4000000000000000
	movq	%rax, -200(%rbp)
	movabsq	$4613937818241073152, %rax # imm = 0x4008000000000000
	movq	%rax, -192(%rbp)
	movabsq	$4616189618054758400, %rax # imm = 0x4010000000000000
	movq	%rax, -184(%rbp)
	movabsq	$4617315517961601024, %rax # imm = 0x4014000000000000
	movq	%rax, -176(%rbp)
	movabsq	$4618441417868443648, %rax # imm = 0x4018000000000000
	movq	%rax, -168(%rbp)
	movabsq	$4619567317775286272, %rax # imm = 0x401C000000000000
	movq	%rax, -160(%rbp)
	movabsq	$4620693217682128896, %rax # imm = 0x4020000000000000
	movq	%rax, -152(%rbp)
	movabsq	$4621256167635550208, %rax # imm = 0x4022000000000000
	movq	%rax, -144(%rbp)
	movabsq	$4621819117588971520, %rax # imm = 0x4024000000000000
	movq	%rax, -136(%rbp)
	movabsq	$4622382067542392832, %rax # imm = 0x4026000000000000
	movq	%rax, -128(%rbp)
	movabsq	$4622945017495814144, %rax # imm = 0x4028000000000000
	movq	%rax, -120(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -112(%rbp)
	movabsq	$12884901892, %rdx      # imm = 0x300000004
	movq	%rdx, -104(%rbp)
	movl	$4, %r8d
	movl	$3, %ecx
	movq	%rsp, %rax
	addq	$-96, %rax
	movq	%rax, %rsp
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movl	$2, %edx
	movl	$0, -68(%rbp)
	cmpl	%ecx, -68(%rbp)
	jle	.LBB0_2
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_5:                                # %merge
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	-68(%rbp)
	cmpl	%ecx, -68(%rbp)
	jg	.LBB0_6
.LBB0_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%edx, (%rsi)
	jg	.LBB0_5
	.p2align	4, 0x90
.LBB0_4:                                # %while_body21
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %edi
	imull	%ecx, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rax,%rdi,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	.LBB0_4
	jmp	.LBB0_5
.LBB0_6:                                # %merge29
	decl	%ecx
	decl	%r8d
	movq	-96(%rbp), %r9
	movl	-84(%rbp), %r11d
	movq	-112(%rbp), %r14
	movl	-100(%rbp), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_8
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_11:                               # %merge64
                                        #   in Loop: Header=BB0_8 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_12
.LBB0_8:                                # %while_body44
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB0_11
	.p2align	4, 0x90
.LBB0_10:                               # %while_body47
                                        #   Parent Loop BB0_8 Depth=1
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
	jle	.LBB0_10
	jmp	.LBB0_11
.LBB0_12:                               # %merge69
	movl	$.Lfmt_str, %edi
	movl	$.Lsystem_string, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movq	%rsp, %rax
	leaq	-48(%rax), %rcx
	movq	%rcx, %rsp
	movabsq	$4612136378390124954, %rdx # imm = 0x400199999999999A
	movq	%rdx, -48(%rax)
	movabsq	$4616639978017495450, %rdx # imm = 0x401199999999999A
	movq	%rdx, -40(%rax)
	movabsq	$4619116957812549222, %rdx # imm = 0x401A666666666666
	movq	%rdx, -32(%rax)
	movabsq	$4609434218613702656, %rdx # imm = 0x3FF8000000000000
	movq	%rdx, -24(%rax)
	movabsq	$4621312462630892339, %rdx # imm = 0x4022333333333333
	movq	%rdx, -16(%rax)
	movabsq	$4615063718147915776, %rdx # imm = 0x400C000000000000
	movq	%rdx, -8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movq	%rcx, -16(%rax)
	movabsq	$8589934595, %rcx       # imm = 0x200000003
	movq	%rcx, -8(%rax)
	cmpl	$3, -84(%rbp)
	je	.LBB0_13
# BB#117:                               # %then
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.6, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_13:                               # %merge88
	movq	-96(%rbp), %r11
	movq	(%rbx), %r8
	movl	-88(%rbp), %r14d
	leal	-1(%r14), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	12(%rbx), %esi
	leal	-1(%rsi), %r9d
	movl	-84(%rbp), %edx
	leal	-1(%rdx), %ebx
	movl	%r14d, %edi
	imull	%esi, %edi
	leaq	15(,%rdi,8), %rdi
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rax, %rdi
	movq	%rsp, %r10
	subq	%rdi, %r10
	movq	%r10, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movq	%r10, -16(%rax)
	movl	%r14d, -8(%rax)
	movl	%esi, -4(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB0_14
	.p2align	4, 0x90
.LBB0_18:                               # %merge123
                                        #   in Loop: Header=BB0_14 Depth=1
	incl	(%r14)
.LBB0_14:                               # %while111
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
	movl	-56(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%r14)
	jg	.LBB0_19
# BB#15:                                # %while_body112
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	%rsp, %r15
	leaq	-16(%r15), %r12
	movq	%r12, %rsp
	movl	$0, -16(%r15)
	cmpl	%r9d, (%r12)
	jg	.LBB0_18
	.p2align	4, 0x90
.LBB0_17:                               # %while_body115
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r14), %eax
	imull	%esi, %eax
	addl	(%r12), %eax
	cltq
	movq	$0, (%r10,%rax,8)
	incl	(%r12)
	cmpl	%r9d, (%r12)
	jle	.LBB0_17
	jmp	.LBB0_18
.LBB0_19:                               # %merge128
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	(%rcx), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsp, %r14
	leaq	-16(%r14), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r14)
	jmp	.LBB0_20
	.p2align	4, 0x90
.LBB0_27:                               # %merge169
                                        #   in Loop: Header=BB0_20 Depth=1
	incl	(%rax)
.LBB0_20:                               # %while134
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
                                        #       Child Loop BB0_25 Depth 3
	movl	-56(%rbp), %ecx         # 4-byte Reload
	cmpl	%ecx, (%rax)
	jg	.LBB0_28
# BB#21:                                # %while_body135
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	%rsp, %r14
	leaq	-16(%r14), %r12
	movq	%r12, %rsp
	movl	$0, -16(%r14)
	cmpl	%r9d, (%r12)
	jle	.LBB0_23
	jmp	.LBB0_27
	.p2align	4, 0x90
.LBB0_26:                               # %merge163
                                        #   in Loop: Header=BB0_23 Depth=2
	movsd	(%r15), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, (%r14)
	incl	(%r12)
	cmpl	%r9d, (%r12)
	jg	.LBB0_27
.LBB0_23:                               # %while_body138
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
	movl	(%rax), %ecx
	imull	%esi, %ecx
	addl	(%r12), %ecx
	movslq	%ecx, %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	leaq	(%rdi,%rcx,8), %r14
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r15
	movq	%r15, %rsp
	movq	$0, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rcx)
	cmpl	%ebx, (%r13)
	jg	.LBB0_26
	.p2align	4, 0x90
.LBB0_25:                               # %while_body146
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%r13), %ecx
	movl	(%rax), %r10d
	imull	%edx, %r10d
	addl	%ecx, %r10d
	movslq	%r10d, %rdi
	movsd	(%r11,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	imull	%esi, %ecx
	addl	(%r12), %ecx
	movslq	%ecx, %rcx
	mulsd	(%r8,%rcx,8), %xmm0
	addsd	(%r15), %xmm0
	movsd	%xmm0, (%r15)
	incl	(%r13)
	cmpl	%ebx, (%r13)
	jle	.LBB0_25
	jmp	.LBB0_26
.LBB0_28:                               # %merge174
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	f
	movq	%rsp, %rax
	leaq	-48(%rax), %rcx
	movq	%rcx, %rsp
	movabsq	$4612136378390124954, %rdx # imm = 0x400199999999999A
	movq	%rdx, -48(%rax)
	movabsq	$4616639978017495450, %rdx # imm = 0x401199999999999A
	movq	%rdx, -40(%rax)
	movabsq	$4619116957812549222, %rdx # imm = 0x401A666666666666
	movq	%rdx, -32(%rax)
	movabsq	$4609434218613702656, %rdx # imm = 0x3FF8000000000000
	movq	%rdx, -24(%rax)
	movabsq	$4621312462630892339, %rdx # imm = 0x4022333333333333
	movq	%rdx, -16(%rax)
	movabsq	$4615063718147915776, %rdx # imm = 0x400C000000000000
	movq	%rdx, -8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r8
	movq	%r8, %rsp
	movq	%rcx, -16(%rax)
	movabsq	$8589934595, %rcx       # imm = 0x200000003
	movq	%rcx, -8(%rax)
	movl	$3, %r9d
	movl	$2, %r12d
	movq	%rsp, %rdi
	addq	$-48, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movq	%rdi, -16(%rax)
	movq	%rcx, -8(%rax)
	movl	$1, %r11d
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r12d, (%rdx)
	jle	.LBB0_30
	jmp	.LBB0_34
	.p2align	4, 0x90
.LBB0_33:                               # %merge213
                                        #   in Loop: Header=BB0_30 Depth=1
	incl	(%rdx)
	cmpl	%r12d, (%rdx)
	jg	.LBB0_34
.LBB0_30:                               # %while_body202
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_32 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r10)
	cmpl	%r11d, (%rbx)
	jg	.LBB0_33
	.p2align	4, 0x90
.LBB0_32:                               # %while_body205
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %eax
	imull	%r12d, %eax
	addl	(%rbx), %eax
	cltq
	movq	$0, (%rdi,%rax,8)
	incl	(%rbx)
	cmpl	%r11d, (%rbx)
	jle	.LBB0_32
	jmp	.LBB0_33
.LBB0_34:                               # %merge218
	decl	%r12d
	decl	%r9d
	movq	(%rsi), %r10
	movl	12(%rsi), %r11d
	movq	(%r8), %r14
	movl	12(%r8), %r15d
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r9d, (%rdi)
	jle	.LBB0_36
	jmp	.LBB0_40
	.p2align	4, 0x90
.LBB0_39:                               # %merge258
                                        #   in Loop: Header=BB0_36 Depth=1
	incl	(%rdi)
	cmpl	%r9d, (%rdi)
	jg	.LBB0_40
.LBB0_36:                               # %while_body237
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_38 Depth 2
	movq	%rsp, %r8
	leaq	-16(%r8), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r8)
	cmpl	%r12d, (%rbx)
	jg	.LBB0_39
	.p2align	4, 0x90
.LBB0_38:                               # %while_body240
                                        #   Parent Loop BB0_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %edx
	movl	(%rdi), %eax
	movl	%r11d, %ecx
	imull	%eax, %ecx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	imull	%r15d, %eax
	addl	%edx, %eax
	cltq
	movsd	(%r14,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rcx,8)
	incl	(%rbx)
	cmpl	%r12d, (%rbx)
	jle	.LBB0_38
	jmp	.LBB0_39
.LBB0_40:                               # %merge263
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
	js	.LBB0_42
	jmp	.LBB0_46
	.p2align	4, 0x90
.LBB0_45:                               # %merge284
                                        #   in Loop: Header=BB0_42 Depth=1
	incl	(%rcx)
	cmpl	$0, (%rcx)
	jns	.LBB0_46
.LBB0_42:                               # %while_body273
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_44 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rdi)
	cmpl	$0, (%rdx)
	jns	.LBB0_45
	.p2align	4, 0x90
.LBB0_44:                               # %while_body276
                                        #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdx), %rdi
	movq	$0, (%rax,%rdi,8)
	incl	(%rdx)
	cmpl	$0, (%rdx)
	js	.LBB0_44
	jmp	.LBB0_45
.LBB0_46:                               # %merge289
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
	js	.LBB0_48
	jmp	.LBB0_52
	.p2align	4, 0x90
.LBB0_51:                               # %merge310
                                        #   in Loop: Header=BB0_48 Depth=1
	incl	(%rcx)
	cmpl	$0, (%rcx)
	jns	.LBB0_52
.LBB0_48:                               # %while_body299
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_50 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rdi)
	cmpl	$0, (%rdx)
	jns	.LBB0_51
	.p2align	4, 0x90
.LBB0_50:                               # %while_body302
                                        #   Parent Loop BB0_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdx), %rdi
	movq	$0, (%rax,%rdi,8)
	incl	(%rdx)
	cmpl	$0, (%rdx)
	js	.LBB0_50
	jmp	.LBB0_51
.LBB0_52:                               # %merge315
	leaq	-96(%rbp), %rdi
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	f2
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
	jle	.LBB0_54
	jmp	.LBB0_58
	.p2align	4, 0x90
.LBB0_57:                               # %merge345
                                        #   in Loop: Header=BB0_54 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_58
.LBB0_54:                               # %while_body334
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_56 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_57
	.p2align	4, 0x90
.LBB0_56:                               # %while_body337
                                        #   Parent Loop BB0_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_56
	jmp	.LBB0_57
.LBB0_58:                               # %merge350
	movq	(%r11), %r9
	movq	%r11, -48(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r15), %r13
	movl	12(%r15), %r14d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r12)
	jle	.LBB0_60
	jmp	.LBB0_64
	.p2align	4, 0x90
.LBB0_63:                               # %merge390
                                        #   in Loop: Header=BB0_60 Depth=1
	incl	(%r12)
	cmpl	%r8d, (%r12)
	jg	.LBB0_64
.LBB0_60:                               # %while_body369
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_62 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_63
	.p2align	4, 0x90
.LBB0_62:                               # %while_body372
                                        #   Parent Loop BB0_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %ebx
	movl	(%r12), %eax
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
	jle	.LBB0_62
	jmp	.LBB0_63
.LBB0_64:                               # %merge395
	callq	free
	movq	%r15, %rdi
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
	movq	%rcx, -56(%rbp)         # 8-byte Spill
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
	jle	.LBB0_66
	jmp	.LBB0_70
	.p2align	4, 0x90
.LBB0_69:                               # %merge423
                                        #   in Loop: Header=BB0_66 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_70
.LBB0_66:                               # %while_body412
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_68 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB0_69
	.p2align	4, 0x90
.LBB0_68:                               # %while_body415
                                        #   Parent Loop BB0_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB0_68
	jmp	.LBB0_69
.LBB0_70:                               # %merge428
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r11d
	movq	(%r10), %r14
	movl	12(%r10), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_72
	jmp	.LBB0_76
	.p2align	4, 0x90
.LBB0_75:                               # %merge468
                                        #   in Loop: Header=BB0_72 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_76
.LBB0_72:                               # %while_body447
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_74 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB0_75
	.p2align	4, 0x90
.LBB0_74:                               # %while_body450
                                        #   Parent Loop BB0_72 Depth=1
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
	jle	.LBB0_74
	jmp	.LBB0_75
.LBB0_76:                               # %merge473
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %r13
	movq	(%r13), %rdi
	movl	8(%r13), %r8d
	movl	12(%r13), %r10d
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
	jle	.LBB0_78
	jmp	.LBB0_82
	.p2align	4, 0x90
.LBB0_81:                               # %merge505
                                        #   in Loop: Header=BB0_78 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_82
.LBB0_78:                               # %while_body494
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_80 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_81
	.p2align	4, 0x90
.LBB0_80:                               # %while_body497
                                        #   Parent Loop BB0_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_80
	jmp	.LBB0_81
.LBB0_82:                               # %merge510
	movq	(%r11), %r9
	movq	%r11, -80(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r13), %r14
	movl	12(%r13), %r15d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r12)
	jle	.LBB0_84
	jmp	.LBB0_88
	.p2align	4, 0x90
.LBB0_87:                               # %merge550
                                        #   in Loop: Header=BB0_84 Depth=1
	incl	(%r12)
	cmpl	%r8d, (%r12)
	jg	.LBB0_88
.LBB0_84:                               # %while_body529
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_86 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_87
	.p2align	4, 0x90
.LBB0_86:                               # %while_body532
                                        #   Parent Loop BB0_84 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %ebx
	movl	(%r12), %eax
	movl	%r10d, %edx
	imull	%eax, %edx
	addl	%ebx, %edx
	movslq	%edx, %rdx
	imull	%r15d, %eax
	addl	%ebx, %eax
	cltq
	movsd	(%r14,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB0_86
	jmp	.LBB0_87
.LBB0_88:                               # %merge555
	callq	free
	movq	%r13, %rdi
	callq	free
	movq	-80(%rbp), %r10         # 8-byte Reload
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
	movq	%rcx, -48(%rbp)         # 8-byte Spill
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
	jle	.LBB0_90
	jmp	.LBB0_94
	.p2align	4, 0x90
.LBB0_93:                               # %merge583
                                        #   in Loop: Header=BB0_90 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_94
.LBB0_90:                               # %while_body572
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_92 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB0_93
	.p2align	4, 0x90
.LBB0_92:                               # %while_body575
                                        #   Parent Loop BB0_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB0_92
	jmp	.LBB0_93
.LBB0_94:                               # %merge588
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r11d
	movq	(%r10), %r14
	movl	12(%r10), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_96
	jmp	.LBB0_100
	.p2align	4, 0x90
.LBB0_99:                               # %merge628
                                        #   in Loop: Header=BB0_96 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_100
.LBB0_96:                               # %while_body607
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_98 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB0_99
	.p2align	4, 0x90
.LBB0_98:                               # %while_body610
                                        #   Parent Loop BB0_96 Depth=1
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
	jle	.LBB0_98
	jmp	.LBB0_99
.LBB0_100:                              # %merge633
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	free
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	12(%rax), %eax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpl	8(%rcx), %eax
	je	.LBB0_101
# BB#118:                               # %then642
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.6, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_101:                              # %merge641
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %r11
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %r14
	movl	8(%rcx), %eax
	leal	-1(%rax), %esi
	movl	%esi, -64(%rbp)         # 4-byte Spill
	movl	12(%rdx), %esi
	leal	-1(%rsi), %r9d
	movl	12(%rcx), %r8d
	leal	-1(%r8), %ebx
	movl	%eax, %ecx
	imull	%esi, %ecx
	leaq	15(,%rcx,8), %rcx
	movabsq	$68719476720, %rdx      # imm = 0xFFFFFFFF0
	andq	%rdx, %rcx
	movq	%rsp, %r10
	subq	%rcx, %r10
	movq	%r10, %rsp
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rsp
	movq	%r10, -16(%rcx)
	movl	%eax, -8(%rcx)
	movl	%esi, -4(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB0_102
	.p2align	4, 0x90
.LBB0_106:                              # %merge680
                                        #   in Loop: Header=BB0_102 Depth=1
	incl	(%r12)
.LBB0_102:                              # %while668
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_105 Depth 2
	movl	-64(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%r12)
	jg	.LBB0_107
# BB#103:                               # %while_body669
                                        #   in Loop: Header=BB0_102 Depth=1
	movq	%rsp, %r15
	leaq	-16(%r15), %rax
	movq	%rax, %rsp
	movl	$0, -16(%r15)
	cmpl	%r9d, (%rax)
	jg	.LBB0_106
	.p2align	4, 0x90
.LBB0_105:                              # %while_body672
                                        #   Parent Loop BB0_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r12), %ecx
	imull	%esi, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	movq	$0, (%r10,%rcx,8)
	incl	(%rax)
	cmpl	%r9d, (%rax)
	jle	.LBB0_105
	jmp	.LBB0_106
.LBB0_107:                              # %merge685
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r10
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	jmp	.LBB0_108
	.p2align	4, 0x90
.LBB0_115:                              # %merge728
                                        #   in Loop: Header=BB0_108 Depth=1
	incl	(%rax)
.LBB0_108:                              # %while691
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_111 Depth 2
                                        #       Child Loop BB0_113 Depth 3
	movl	-64(%rbp), %ecx         # 4-byte Reload
	cmpl	%ecx, (%rax)
	jg	.LBB0_116
# BB#109:                               # %while_body692
                                        #   in Loop: Header=BB0_108 Depth=1
	movq	%rsp, %r15
	leaq	-16(%r15), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r15)
	cmpl	%r9d, (%rcx)
	jle	.LBB0_111
	jmp	.LBB0_115
	.p2align	4, 0x90
.LBB0_114:                              # %merge722
                                        #   in Loop: Header=BB0_111 Depth=2
	movsd	(%r15), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, (%r12)
	incl	(%rcx)
	cmpl	%r9d, (%rcx)
	jg	.LBB0_115
.LBB0_111:                              # %while_body695
                                        #   Parent Loop BB0_108 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_113 Depth 3
	movl	(%rax), %edx
	imull	%esi, %edx
	addl	(%rcx), %edx
	movslq	%edx, %rdx
	leaq	(%r10,%rdx,8), %r12
	movq	%rsp, %rdx
	leaq	-16(%rdx), %r15
	movq	%r15, %rsp
	movq	$0, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rdx)
	cmpl	%ebx, (%r13)
	jg	.LBB0_114
	.p2align	4, 0x90
.LBB0_113:                              # %while_body704
                                        #   Parent Loop BB0_108 Depth=1
                                        #     Parent Loop BB0_111 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%r13), %edx
	movl	(%rax), %edi
	imull	%r8d, %edi
	addl	%edx, %edi
	movslq	%edi, %rdi
	movsd	(%r11,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	imull	%esi, %edx
	addl	(%rcx), %edx
	movslq	%edx, %rdx
	mulsd	(%r14,%rdx,8), %xmm0
	addsd	(%r15), %xmm0
	movsd	%xmm0, (%r15)
	incl	(%r13)
	cmpl	%ebx, (%r13)
	jle	.LBB0_113
	jmp	.LBB0_114
.LBB0_116:                              # %merge733
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	f
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	f2
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
	.globl	f                       # -- Begin function f
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
	subq	$40, %rsp
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
	movl	8(%rdi), %r8d
	movl	12(%rdi), %edx
	movl	%r8d, %eax
	imull	%edx, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
	andq	%rax, %rcx
	movq	%rsp, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rsp
	movq	%rsi, -64(%rbp)
	movl	%r8d, -56(%rbp)
	movl	%edx, -52(%rbp)
	decl	%r8d
	leal	-1(%rdx), %ecx
	movl	$0, -44(%rbp)
	cmpl	%r8d, -44(%rbp)
	jle	.LBB8_2
	jmp	.LBB8_6
	.p2align	4, 0x90
.LBB8_5:                                # %merge
                                        #   in Loop: Header=BB8_2 Depth=1
	incl	-44(%rbp)
	cmpl	%r8d, -44(%rbp)
	jg	.LBB8_6
.LBB8_2:                                # %while_body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_4 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rax)
	jg	.LBB8_5
	.p2align	4, 0x90
.LBB8_4:                                # %while_body5
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %ebx
	imull	%edx, %ebx
	addl	(%rax), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rax)
	cmpl	%ecx, (%rax)
	jle	.LBB8_4
	jmp	.LBB8_5
.LBB8_6:                                # %merge12
	movq	-64(%rbp), %r9
	movl	-52(%rbp), %r11d
	movq	(%rdi), %r14
	movl	12(%rdi), %r15d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB8_8
	jmp	.LBB8_12
	.p2align	4, 0x90
.LBB8_11:                               # %merge47
                                        #   in Loop: Header=BB8_8 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB8_12
.LBB8_8:                                # %while_body27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_10 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB8_11
	.p2align	4, 0x90
.LBB8_10:                               # %while_body30
                                        #   Parent Loop BB8_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %esi
	movl	(%rax), %ebx
	movl	%r11d, %edi
	imull	%ebx, %edi
	addl	%esi, %edi
	movslq	%edi, %rdi
	imull	%r15d, %ebx
	addl	%esi, %ebx
	movslq	%ebx, %rsi
	movsd	(%r14,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdi,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	.LBB8_10
	jmp	.LBB8_11
.LBB8_12:                               # %merge52
	movq	-64(%rbp), %r15
	movl	-56(%rbp), %eax
	movl	-52(%rbp), %r12d
	decl	%eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	leal	-1(%r12), %r13d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB8_13
	.p2align	4, 0x90
.LBB8_17:                               # %merge78
                                        #   in Loop: Header=BB8_13 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%rbx)
.LBB8_13:                               # %while64
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_16 Depth 2
	movl	-68(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rbx)
	jg	.LBB8_18
# BB#14:                                # %while_body65
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	cmpl	%r13d, (%r14)
	jg	.LBB8_17
	.p2align	4, 0x90
.LBB8_16:                               # %while_body68
                                        #   Parent Loop BB8_13 Depth=1
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
	jle	.LBB8_16
	jmp	.LBB8_17
.LBB8_18:                               # %merge84
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
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
	subq	$72, %rsp
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
	movq	%rax, -64(%rbp)
	movl	%r8d, -56(%rbp)
	movl	%r10d, -52(%rbp)
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
	movq	-64(%rbp), %r9
	movl	-52(%rbp), %r10d
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
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
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
	movq	(%r13), %r9
	movl	12(%r13), %r11d
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
	movsd	(%r14,%rdi,8), %xmm1    # xmm1 = mem[0],zero
	movsd	%xmm1, (%r9,%rsi,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	.LBB9_22
	jmp	.LBB9_23
.LBB9_24:                               # %merge130
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	movsd	%xmm0, -16(%rax)
	movl	-52(%rbp), %eax
	cmpl	8(%r13), %eax
	je	.LBB9_25
# BB#95:                                # %then
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.6, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB9_25:                               # %merge137
	movq	-64(%rbp), %r14
	movq	(%r13), %r12
	movl	-56(%rbp), %ecx
	leal	-1(%rcx), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movq	%r13, -104(%rbp)        # 8-byte Spill
	movl	12(%r13), %r8d
	leal	-1(%r8), %r11d
	movl	-52(%rbp), %r13d
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
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rsp
	movq	%rax, -16(%rdi)
	movl	%ecx, -8(%rdi)
	movl	%r8d, -4(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rdi)
	jmp	.LBB9_26
	.p2align	4, 0x90
.LBB9_30:                               # %merge171
                                        #   in Loop: Header=BB9_26 Depth=1
	incl	(%rcx)
.LBB9_26:                               # %while159
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_29 Depth 2
	movl	-68(%rbp), %edx         # 4-byte Reload
	cmpl	%edx, (%rcx)
	jg	.LBB9_31
# BB#27:                                # %while_body160
                                        #   in Loop: Header=BB9_26 Depth=1
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%r11d, (%rdi)
	jg	.LBB9_30
	.p2align	4, 0x90
.LBB9_29:                               # %while_body163
                                        #   Parent Loop BB9_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %ebx
	imull	%r8d, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rax,%rbx,8)
	incl	(%rdi)
	cmpl	%r11d, (%rdi)
	jle	.LBB9_29
	jmp	.LBB9_30
.LBB9_31:                               # %merge176
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB9_32
	.p2align	4, 0x90
.LBB9_39:                               # %merge217
                                        #   in Loop: Header=BB9_32 Depth=1
	incl	(%rdi)
.LBB9_32:                               # %while182
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_35 Depth 2
                                        #       Child Loop BB9_37 Depth 3
	movl	-68(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rdi)
	jg	.LBB9_40
# BB#33:                                # %while_body183
                                        #   in Loop: Header=BB9_32 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r11d, (%rax)
	jle	.LBB9_35
	jmp	.LBB9_39
	.p2align	4, 0x90
.LBB9_38:                               # %merge211
                                        #   in Loop: Header=BB9_35 Depth=2
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, (%r15)
	incl	(%rax)
	cmpl	%r11d, (%rax)
	jg	.LBB9_39
.LBB9_35:                               # %while_body186
                                        #   Parent Loop BB9_32 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_37 Depth 3
	movl	(%rdi), %ecx
	imull	%r8d, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	movq	-80(%rbp), %rdx         # 8-byte Reload
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
	jg	.LBB9_38
	.p2align	4, 0x90
.LBB9_37:                               # %while_body194
                                        #   Parent Loop BB9_32 Depth=1
                                        #     Parent Loop BB9_35 Depth=2
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
	jle	.LBB9_37
	jmp	.LBB9_38
.LBB9_40:                               # %merge222
	movq	-96(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax         # 8-byte Reload
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
	jle	.LBB9_42
	jmp	.LBB9_46
	.p2align	4, 0x90
.LBB9_45:                               # %merge255
                                        #   in Loop: Header=BB9_42 Depth=1
	incl	(%rdi)
	cmpl	%r10d, (%rdi)
	jg	.LBB9_46
.LBB9_42:                               # %while_body244
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_44 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%esi, (%rcx)
	jg	.LBB9_45
	.p2align	4, 0x90
.LBB9_44:                               # %while_body247
                                        #   Parent Loop BB9_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movq	$0, (%rbx,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB9_44
	jmp	.LBB9_45
.LBB9_46:                               # %merge260
	movq	(%r8), %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rax)
	cmpl	%r10d, (%rdi)
	jle	.LBB9_48
	jmp	.LBB9_52
	.p2align	4, 0x90
.LBB9_51:                               # %merge285
                                        #   in Loop: Header=BB9_48 Depth=1
	incl	(%rdi)
	cmpl	%r10d, (%rdi)
	jg	.LBB9_52
.LBB9_48:                               # %while_body267
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_50 Depth 2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%esi, (%rcx)
	jg	.LBB9_51
	.p2align	4, 0x90
.LBB9_50:                               # %while_body270
                                        #   Parent Loop BB9_48 Depth=1
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
	jle	.LBB9_50
	jmp	.LBB9_51
.LBB9_52:                               # %merge290
	movq	(%r8), %rbx
	movl	8(%r8), %eax
	movl	12(%r8), %r12d
	decl	%eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	leal	-1(%r12), %r13d
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB9_53
	.p2align	4, 0x90
.LBB9_57:                               # %merge317
                                        #   in Loop: Header=BB9_53 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.1, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%r15)
.LBB9_53:                               # %while302
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_56 Depth 2
	movl	-80(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%r15)
	jg	.LBB9_58
# BB#54:                                # %while_body303
                                        #   in Loop: Header=BB9_53 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	cmpl	%r13d, (%r14)
	jg	.LBB9_57
	.p2align	4, 0x90
.LBB9_56:                               # %while_body306
                                        #   Parent Loop BB9_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r15), %eax
	imull	%r12d, %eax
	addl	(%r14), %eax
	cltq
	movsd	(%rbx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.2, %esi
	xorl	%eax, %eax
	callq	printf
	incl	(%r14)
	cmpl	%r13d, (%r14)
	jle	.LBB9_56
	jmp	.LBB9_57
.LBB9_58:                               # %merge323
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.3, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$16, %edi
	callq	malloc
	movq	%rax, %r14
	movq	-96(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-64(%rbp), %r10
	movl	-56(%rbp), %ecx
	leal	-1(%rcx), %r8d
	movl	-52(%rbp), %edx
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
	leaq	-16(%rbx), %r12
	movq	%r12, %rsp
	movq	%rdi, -16(%rbx)
	movl	%ecx, -8(%rbx)
	movl	%edx, -4(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r8d, (%rbx)
	jle	.LBB9_60
	jmp	.LBB9_64
	.p2align	4, 0x90
.LBB9_63:                               # %merge357
                                        #   in Loop: Header=BB9_60 Depth=1
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB9_64
.LBB9_60:                               # %while_body346
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_62 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%r9)
	cmpl	%esi, (%rcx)
	jg	.LBB9_63
	.p2align	4, 0x90
.LBB9_62:                               # %while_body349
                                        #   Parent Loop BB9_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movq	$0, (%rdi,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB9_62
	jmp	.LBB9_63
.LBB9_64:                               # %merge362
	movq	(%r12), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	cmpl	%r8d, (%rbx)
	jle	.LBB9_66
	jmp	.LBB9_70
	.p2align	4, 0x90
.LBB9_69:                               # %merge387
                                        #   in Loop: Header=BB9_66 Depth=1
	incl	(%rbx)
	cmpl	%r8d, (%rbx)
	jg	.LBB9_70
.LBB9_66:                               # %while_body369
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_68 Depth 2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	cmpl	%esi, (%rcx)
	jg	.LBB9_69
	.p2align	4, 0x90
.LBB9_68:                               # %while_body372
                                        #   Parent Loop BB9_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	imull	%edx, %eax
	addl	(%rcx), %eax
	cltq
	movsd	(%r10,%rax,8), %xmm1    # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rdi,%rax,8)
	incl	(%rcx)
	cmpl	%esi, (%rcx)
	jle	.LBB9_68
	jmp	.LBB9_69
.LBB9_70:                               # %merge392
	movl	8(%r12), %r13d
	movl	12(%r12), %r15d
	movl	%r13d, %edi
	imull	%r15d, %edi
	shll	$3, %edi
	callq	malloc
	movq	%rax, %rbx
	movl	$16, %edi
	callq	malloc
	movq	%rbx, (%rax)
	movl	%r13d, 8(%rax)
	movl	%r15d, 12(%rax)
	decl	%r13d
	leal	-1(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r13d, (%rdx)
	jle	.LBB9_72
	jmp	.LBB9_76
	.p2align	4, 0x90
.LBB9_75:                               # %merge422
                                        #   in Loop: Header=BB9_72 Depth=1
	incl	(%rdx)
	cmpl	%r13d, (%rdx)
	jg	.LBB9_76
.LBB9_72:                               # %while_body411
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_74 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%ecx, (%rsi)
	jg	.LBB9_75
	.p2align	4, 0x90
.LBB9_74:                               # %while_body414
                                        #   Parent Loop BB9_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	imull	%r15d, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rbx,%rdi,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB9_74
	jmp	.LBB9_75
.LBB9_76:                               # %merge427
	movq	(%rax), %r8
	movl	12(%rax), %r9d
	movq	(%r12), %r11
	movl	12(%r12), %r15d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r13d, (%r12)
	jle	.LBB9_78
	jmp	.LBB9_82
	.p2align	4, 0x90
.LBB9_81:                               # %merge467
                                        #   in Loop: Header=BB9_78 Depth=1
	incl	(%r12)
	cmpl	%r13d, (%r12)
	jg	.LBB9_82
.LBB9_78:                               # %while_body446
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_80 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rsi)
	jg	.LBB9_81
	.p2align	4, 0x90
.LBB9_80:                               # %while_body449
                                        #   Parent Loop BB9_78 Depth=1
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
	jle	.LBB9_80
	jmp	.LBB9_81
.LBB9_82:                               # %merge472
	movq	%rax, (%r14)
	movq	-104(%rbp), %r13        # 8-byte Reload
	movl	8(%r13), %r12d
	movl	12(%r13), %r15d
	movl	%r12d, %edi
	imull	%r15d, %edi
	shll	$3, %edi
	callq	malloc
	movq	%rax, %rbx
	movl	$16, %edi
	callq	malloc
	movq	%rbx, (%rax)
	movl	%r12d, 8(%rax)
	movl	%r15d, 12(%rax)
	decl	%r12d
	leal	-1(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r12d, (%rdx)
	jle	.LBB9_84
	jmp	.LBB9_88
	.p2align	4, 0x90
.LBB9_87:                               # %merge503
                                        #   in Loop: Header=BB9_84 Depth=1
	incl	(%rdx)
	cmpl	%r12d, (%rdx)
	jg	.LBB9_88
.LBB9_84:                               # %while_body492
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_86 Depth 2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%rdi)
	cmpl	%ecx, (%rsi)
	jg	.LBB9_87
	.p2align	4, 0x90
.LBB9_86:                               # %while_body495
                                        #   Parent Loop BB9_84 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	imull	%r15d, %edi
	addl	(%rsi), %edi
	movslq	%edi, %rdi
	movq	$0, (%rbx,%rdi,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB9_86
	jmp	.LBB9_87
.LBB9_88:                               # %merge508
	movq	(%rax), %r8
	movl	12(%rax), %r9d
	movq	(%r13), %r11
	movl	12(%r13), %r15d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r12d, (%r13)
	jle	.LBB9_90
	jmp	.LBB9_94
	.p2align	4, 0x90
.LBB9_93:                               # %merge548
                                        #   in Loop: Header=BB9_90 Depth=1
	incl	(%r13)
	cmpl	%r12d, (%r13)
	jg	.LBB9_94
.LBB9_90:                               # %while_body527
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_92 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rsi)
	jg	.LBB9_93
	.p2align	4, 0x90
.LBB9_92:                               # %while_body530
                                        #   Parent Loop BB9_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%r13), %ebx
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
	jle	.LBB9_92
	jmp	.LBB9_93
.LBB9_94:                               # %merge553
	movq	%rax, 8(%r14)
	movq	%r14, %rax
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
	.asciz	"fun1"
	.size	.Lsystem_string, 5


	.section	".note.GNU-stack","",@progbits
