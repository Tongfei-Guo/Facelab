	.text
	.file	"Facelab"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4621819117588971520     # double 10
.LCPI0_1:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI0_2:
	.quad	4641240890982006784     # double 200
.LCPI0_3:
	.quad	4643140847074803712     # double 254
.LCPI0_4:
	.quad	-4601552919265804288    # double -10
.LCPI0_5:
	.quad	-4609434218613702656    # double -3
.LCPI0_6:
	.quad	-4606056518893174784    # double -5
.LCPI0_7:
	.quad	0                       # double 0
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
	movl	$1, %edi
	movl	$201, %esi
	callq	zeros
	movq	(%rax), %r14
	movq	%rax, %rdi
	callq	free
	movq	(%r14), %rdi
	movl	8(%r14), %r8d
	movl	12(%r14), %edx
	movl	%r8d, %eax
	imull	%edx, %eax
	leaq	15(,%rax,8), %rcx
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rax, %rcx
	movq	%rsp, %rax
	subq	%rcx, %rax
	movq	%rax, %rsp
	movq	%rax, -104(%rbp)
	movl	%r8d, -96(%rbp)
	movl	%edx, -92(%rbp)
	decl	%r8d
	leal	-1(%rdx), %ecx
	movl	$0, -88(%rbp)
	cmpl	%r8d, -88(%rbp)
	jle	.LBB0_2
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_5:                                # %merge
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	-88(%rbp)
	cmpl	%r8d, -88(%rbp)
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
	movl	-88(%rbp), %ebx
	imull	%edx, %ebx
	addl	(%rsi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rax,%rbx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB0_4
	jmp	.LBB0_5
.LBB0_6:                                # %merge13
	movq	-104(%rbp), %r9
	movl	-92(%rbp), %r10d
	movq	(%r14), %r15
	movl	12(%r14), %r12d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r13)
	jle	.LBB0_8
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_11:                               # %merge49
                                        #   in Loop: Header=BB0_8 Depth=1
	incl	(%r13)
	cmpl	%r8d, (%r13)
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
	jle	.LBB0_10
	jmp	.LBB0_11
.LBB0_12:                               # %merge54
	callq	free
	movq	%r14, %rdi
	callq	free
	movl	-96(%rbp), %r8d
	movl	-92(%rbp), %edx
	movl	%r8d, %eax
	imull	%edx, %eax
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
	movl	%edx, -4(%rax)
	decl	%r8d
	leal	-1(%rdx), %ecx
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdi)
	cmpl	%r8d, (%rax)
	jle	.LBB0_14
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_17:                               # %merge82
                                        #   in Loop: Header=BB0_14 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_18
.LBB0_14:                               # %while_body71
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB0_17
	.p2align	4, 0x90
.LBB0_16:                               # %while_body74
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB0_16
	jmp	.LBB0_17
.LBB0_18:                               # %merge87
	movq	(%r14), %r9
	movl	12(%r14), %r11d
	movq	-104(%rbp), %r15
	movl	-92(%rbp), %r12d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_20
	jmp	.LBB0_24
	.p2align	4, 0x90
.LBB0_23:                               # %merge127
                                        #   in Loop: Header=BB0_20 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_24
.LBB0_20:                               # %while_body106
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB0_23
	.p2align	4, 0x90
.LBB0_22:                               # %while_body109
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %esi
	movl	(%rax), %edi
	movl	%r11d, %ebx
	imull	%edi, %ebx
	addl	%esi, %ebx
	movslq	%ebx, %rbx
	imull	%r12d, %edi
	addl	%esi, %edi
	movslq	%edi, %rsi
	movsd	(%r15,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rbx,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	.LBB0_22
	jmp	.LBB0_23
.LBB0_24:                               # %merge132
	movl	$1, %edi
	movl	$201, %esi
	callq	zeros
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
	jle	.LBB0_26
	jmp	.LBB0_30
	.p2align	4, 0x90
.LBB0_29:                               # %merge165
                                        #   in Loop: Header=BB0_26 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_30
.LBB0_26:                               # %while_body154
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_28 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_29
	.p2align	4, 0x90
.LBB0_28:                               # %while_body157
                                        #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_28
	jmp	.LBB0_29
.LBB0_30:                               # %merge170
	movq	(%r11), %r9
	movq	%r11, -48(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r15), %r13
	movq	%r15, -56(%rbp)         # 8-byte Spill
	movl	12(%r15), %r15d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r12)
	jle	.LBB0_32
	jmp	.LBB0_36
	.p2align	4, 0x90
.LBB0_35:                               # %merge210
                                        #   in Loop: Header=BB0_32 Depth=1
	incl	(%r12)
	cmpl	%r8d, (%r12)
	jg	.LBB0_36
.LBB0_32:                               # %while_body189
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_34 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_35
	.p2align	4, 0x90
.LBB0_34:                               # %while_body192
                                        #   Parent Loop BB0_32 Depth=1
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
	movsd	(%r13,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB0_34
	jmp	.LBB0_35
.LBB0_36:                               # %merge215
	callq	free
	movq	-56(%rbp), %rdi         # 8-byte Reload
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
	jle	.LBB0_38
	jmp	.LBB0_42
	.p2align	4, 0x90
.LBB0_41:                               # %merge243
                                        #   in Loop: Header=BB0_38 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_42
.LBB0_38:                               # %while_body232
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_40 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movl	$0, -16(%rbx)
	cmpl	%ecx, (%rdi)
	jg	.LBB0_41
	.p2align	4, 0x90
.LBB0_40:                               # %while_body235
                                        #   Parent Loop BB0_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%edx, %ebx
	addl	(%rdi), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rsi,%rbx,8)
	incl	(%rdi)
	cmpl	%ecx, (%rdi)
	jle	.LBB0_40
	jmp	.LBB0_41
.LBB0_42:                               # %merge248
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r9
	movl	12(%rax), %r11d
	movq	(%r10), %r15
	movl	12(%r10), %r12d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_44
	jmp	.LBB0_48
	.p2align	4, 0x90
.LBB0_47:                               # %merge288
                                        #   in Loop: Header=BB0_44 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_48
.LBB0_44:                               # %while_body267
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_46 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%ecx, (%rdx)
	jg	.LBB0_47
	.p2align	4, 0x90
.LBB0_46:                               # %while_body270
                                        #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %esi
	movl	(%rax), %edi
	movl	%r11d, %ebx
	imull	%edi, %ebx
	addl	%esi, %ebx
	movslq	%ebx, %rbx
	imull	%r12d, %edi
	addl	%esi, %edi
	movslq	%edi, %rsi
	movsd	(%r15,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rbx,8)
	incl	(%rdx)
	cmpl	%ecx, (%rdx)
	jle	.LBB0_46
	jmp	.LBB0_47
.LBB0_48:                               # %merge293
	movq	%rsp, %rax
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
	movl	$0, -16(%rax)
	cmpl	$201, (%r13)
	jne	.LBB0_50
	jmp	.LBB0_75
	.p2align	4, 0x90
.LBB0_73:                               # %merge454
                                        #   in Loop: Header=BB0_50 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movslq	%r15d, %rcx
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax,%rcx,8)
	incl	(%r13)
	cmpl	$201, (%r13)
	je	.LBB0_75
.LBB0_50:                               # %merge311
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	(%r13), %xmm0
	movl	8(%r14), %ebx
	movl	12(%r14), %r12d
	movl	%ebx, %eax
	decl	%eax
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	js	.LBB0_51
# BB#52:                                # %merge318
                                        #   in Loop: Header=BB0_50 Depth=1
	decl	%ebx
	js	.LBB0_327
.LBB0_53:                               # %merge323
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	(%r13), %r15d
	testl	%r15d, %r15d
	jns	.LBB0_54
# BB#328:                               # %then330
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB0_54:                               # %merge329
                                        #   in Loop: Header=BB0_50 Depth=1
	decl	%r12d
	cmpl	%r15d, %r12d
	jge	.LBB0_55
# BB#329:                               # %then336
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB0_55:                               # %merge335
                                        #   in Loop: Header=BB0_50 Depth=1
	mulsd	.LCPI0_1(%rip), %xmm0
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_56
# BB#330:                               # %then342
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	printf
	callq	abort
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB0_56:                               # %merge341
                                        #   in Loop: Header=BB0_50 Depth=1
	addsd	.LCPI0_4(%rip), %xmm0
	cmpl	%ebx, %r12d
	jge	.LBB0_58
# BB#57:                                # %then348
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	printf
	callq	abort
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB0_58:                               # %merge360
                                        #   in Loop: Header=BB0_50 Depth=1
	movq	(%r14), %rax
	movslq	%r15d, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movl	8(%r14), %ebx
	movl	12(%r14), %r12d
	movl	%ebx, %eax
	decl	%eax
	js	.LBB0_59
# BB#60:                                # %merge370
                                        #   in Loop: Header=BB0_50 Depth=1
	decl	%ebx
	js	.LBB0_331
.LBB0_61:                               # %merge375
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	(%r13), %r15d
	testl	%r15d, %r15d
	jns	.LBB0_62
# BB#332:                               # %then382
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_62:                               # %merge381
                                        #   in Loop: Header=BB0_50 Depth=1
	decl	%r12d
	cmpl	%r15d, %r12d
	jge	.LBB0_63
# BB#333:                               # %then388
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_63:                               # %merge387
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_64
# BB#334:                               # %then394
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_64:                               # %merge393
                                        #   in Loop: Header=BB0_50 Depth=1
	cmpl	%ebx, %r12d
	jge	.LBB0_66
# BB#65:                                # %then400
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_66:                               # %merge415
                                        #   in Loop: Header=BB0_50 Depth=1
	movq	(%r14), %rax
	movslq	%r15d, %rcx
	movsd	(%rax,%rcx,8), %xmm4    # xmm4 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_5(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_6(%rip), %xmm3   # xmm3 = mem[0],zero
	callq	cubic
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	free
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %r12d
	movl	%ebx, %eax
	decl	%eax
	js	.LBB0_67
# BB#68:                                # %merge425
                                        #   in Loop: Header=BB0_50 Depth=1
	decl	%ebx
	js	.LBB0_335
.LBB0_69:                               # %merge430
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	(%r13), %r15d
	testl	%r15d, %r15d
	jns	.LBB0_70
# BB#336:                               # %then437
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_70:                               # %merge436
                                        #   in Loop: Header=BB0_50 Depth=1
	decl	%r12d
	cmpl	%r15d, %r12d
	jge	.LBB0_71
# BB#337:                               # %then443
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_71:                               # %merge442
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_72
# BB#338:                               # %then449
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_72:                               # %merge448
                                        #   in Loop: Header=BB0_50 Depth=1
	cmpl	%ebx, %r12d
	jge	.LBB0_73
# BB#74:                                # %then455
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	jmp	.LBB0_73
	.p2align	4, 0x90
.LBB0_51:                               # %then314
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	decl	%ebx
	jns	.LBB0_53
.LBB0_327:                              # %then324
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_53
	.p2align	4, 0x90
.LBB0_59:                               # %then366
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	decl	%ebx
	jns	.LBB0_61
.LBB0_331:                              # %then376
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	jmp	.LBB0_61
	.p2align	4, 0x90
.LBB0_67:                               # %then421
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	decl	%ebx
	jns	.LBB0_69
.LBB0_335:                              # %then431
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	jmp	.LBB0_69
.LBB0_75:                               # %merge467
	movl	$201, %edi
	movl	$201, %esi
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
	jle	.LBB0_77
	jmp	.LBB0_81
	.p2align	4, 0x90
.LBB0_80:                               # %merge500
                                        #   in Loop: Header=BB0_77 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_81
.LBB0_77:                               # %while_body489
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_79 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_80
	.p2align	4, 0x90
.LBB0_79:                               # %while_body492
                                        #   Parent Loop BB0_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_79
	jmp	.LBB0_80
.LBB0_81:                               # %merge505
	movq	(%r11), %r9
	movq	%r11, -72(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r14), %r12
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movl	12(%r14), %r14d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r15
	movq	%r15, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r15)
	jle	.LBB0_83
	jmp	.LBB0_87
	.p2align	4, 0x90
.LBB0_86:                               # %merge545
                                        #   in Loop: Header=BB0_83 Depth=1
	incl	(%r15)
	cmpl	%r8d, (%r15)
	jg	.LBB0_87
.LBB0_83:                               # %while_body524
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_85 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_86
	.p2align	4, 0x90
.LBB0_85:                               # %while_body527
                                        #   Parent Loop BB0_83 Depth=1
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
	movsd	(%r12,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB0_85
	jmp	.LBB0_86
.LBB0_87:                               # %merge550
	callq	free
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	free
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %r11
	movl	8(%rcx), %eax
	leal	-1(%rax), %r8d
	movl	12(%rcx), %esi
	leal	-1(%rsi), %edi
	movl	%eax, %edx
	imull	%esi, %edx
	leaq	15(,%rdx,8), %rdx
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
	andq	%rcx, %rdx
	movq	%rsp, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rdx
	leaq	-16(%rdx), %r9
	movq	%r9, %rsp
	movq	%rbx, -16(%rdx)
	movl	%eax, -8(%rdx)
	movl	%esi, -4(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_89
	jmp	.LBB0_93
	.p2align	4, 0x90
.LBB0_92:                               # %merge582
                                        #   in Loop: Header=BB0_89 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_93
.LBB0_89:                               # %while_body571
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_91 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edi, (%rdx)
	jg	.LBB0_92
	.p2align	4, 0x90
.LBB0_91:                               # %while_body574
                                        #   Parent Loop BB0_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	imull	%esi, %ecx
	addl	(%rdx), %ecx
	movslq	%ecx, %rcx
	movq	$0, (%rbx,%rcx,8)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	.LBB0_91
	jmp	.LBB0_92
.LBB0_93:                               # %merge587
	movq	(%r9), %rbx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_95
	jmp	.LBB0_99
	.p2align	4, 0x90
.LBB0_98:                               # %merge612
                                        #   in Loop: Header=BB0_95 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_99
.LBB0_95:                               # %while_body594
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_97 Depth 2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%edi, (%rdx)
	jg	.LBB0_98
	.p2align	4, 0x90
.LBB0_97:                               # %while_body597
                                        #   Parent Loop BB0_95 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	imull	%esi, %ecx
	addl	(%rdx), %ecx
	movslq	%ecx, %rcx
	movsd	(%r11,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	addsd	.LCPI0_3(%rip), %xmm0
	movsd	%xmm0, (%rbx,%rcx,8)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	.LBB0_97
	jmp	.LBB0_98
.LBB0_99:                               # %merge617
	movl	8(%r9), %r8d
	movl	12(%r9), %esi
	movl	%r8d, %eax
	imull	%esi, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
	andq	%rcx, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rdi, -16(%rax)
	movl	%r8d, -8(%rax)
	movl	%esi, -4(%rax)
	decl	%r8d
	leal	-1(%rsi), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_101
	jmp	.LBB0_105
	.p2align	4, 0x90
.LBB0_104:                              # %merge645
                                        #   in Loop: Header=BB0_101 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_105
.LBB0_101:                              # %while_body634
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_103 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%edx, (%rcx)
	jg	.LBB0_104
	.p2align	4, 0x90
.LBB0_103:                              # %while_body637
                                        #   Parent Loop BB0_101 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%esi, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rdi,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	.LBB0_103
	jmp	.LBB0_104
.LBB0_105:                              # %merge650
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r10
	movl	12(%rax), %r11d
	movq	(%r9), %r14
	movl	12(%r9), %r15d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%rcx)
	jle	.LBB0_107
	jmp	.LBB0_111
	.p2align	4, 0x90
.LBB0_110:                              # %merge690
                                        #   in Loop: Header=BB0_107 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_111
.LBB0_107:                              # %while_body669
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_109 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r9)
	cmpl	%edx, (%rsi)
	jg	.LBB0_110
	.p2align	4, 0x90
.LBB0_109:                              # %while_body672
                                        #   Parent Loop BB0_107 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rcx), %ebx
	movl	%r11d, %eax
	imull	%ebx, %eax
	addl	%edi, %eax
	cltq
	imull	%r15d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r14,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rax,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	.LBB0_109
	jmp	.LBB0_110
.LBB0_111:                              # %merge695
	movl	$201, %edi
	movl	$201, %esi
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
	jle	.LBB0_113
	jmp	.LBB0_117
	.p2align	4, 0x90
.LBB0_116:                              # %merge728
                                        #   in Loop: Header=BB0_113 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_117
.LBB0_113:                              # %while_body717
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_115 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_116
	.p2align	4, 0x90
.LBB0_115:                              # %while_body720
                                        #   Parent Loop BB0_113 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_115
	jmp	.LBB0_116
.LBB0_117:                              # %merge733
	movq	(%r11), %r9
	movq	%r11, -64(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r14), %r12
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movl	12(%r14), %r15d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	.LBB0_119
	jmp	.LBB0_123
	.p2align	4, 0x90
.LBB0_122:                              # %merge773
                                        #   in Loop: Header=BB0_119 Depth=1
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	.LBB0_123
.LBB0_119:                              # %while_body752
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_121 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_122
	.p2align	4, 0x90
.LBB0_121:                              # %while_body755
                                        #   Parent Loop BB0_119 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %ebx
	movl	(%r14), %eax
	movl	%r10d, %edx
	imull	%eax, %edx
	addl	%ebx, %edx
	movslq	%edx, %rdx
	imull	%r15d, %eax
	addl	%ebx, %eax
	cltq
	movsd	(%r12,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB0_121
	jmp	.LBB0_122
.LBB0_123:                              # %merge778
	callq	free
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	free
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %r11
	movl	8(%rcx), %eax
	leal	-1(%rax), %r8d
	movl	12(%rcx), %esi
	leal	-1(%rsi), %edi
	movl	%eax, %edx
	imull	%esi, %edx
	leaq	15(,%rdx,8), %rdx
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
	andq	%rcx, %rdx
	movq	%rsp, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rdx
	leaq	-16(%rdx), %r9
	movq	%r9, %rsp
	movq	%rbx, -16(%rdx)
	movl	%eax, -8(%rdx)
	movl	%esi, -4(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	cmpl	%r8d, (%rax)
	jle	.LBB0_125
	jmp	.LBB0_129
	.p2align	4, 0x90
.LBB0_128:                              # %merge810
                                        #   in Loop: Header=BB0_125 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_129
.LBB0_125:                              # %while_body799
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_127 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edi, (%rdx)
	jg	.LBB0_128
	.p2align	4, 0x90
.LBB0_127:                              # %while_body802
                                        #   Parent Loop BB0_125 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	imull	%esi, %ecx
	addl	(%rdx), %ecx
	movslq	%ecx, %rcx
	movq	$0, (%rbx,%rcx,8)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	.LBB0_127
	jmp	.LBB0_128
.LBB0_129:                              # %merge815
	movq	(%r9), %rbx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_131
	jmp	.LBB0_135
	.p2align	4, 0x90
.LBB0_134:                              # %merge840
                                        #   in Loop: Header=BB0_131 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_135
.LBB0_131:                              # %while_body822
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_133 Depth 2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%edi, (%rdx)
	jg	.LBB0_134
	.p2align	4, 0x90
.LBB0_133:                              # %while_body825
                                        #   Parent Loop BB0_131 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	imull	%esi, %ecx
	addl	(%rdx), %ecx
	movslq	%ecx, %rcx
	movsd	(%r11,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rbx,%rcx,8)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	.LBB0_133
	jmp	.LBB0_134
.LBB0_135:                              # %merge845
	movl	8(%r9), %r8d
	movl	12(%r9), %esi
	movl	%r8d, %eax
	imull	%esi, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
	andq	%rcx, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rdi, -16(%rax)
	movl	%r8d, -8(%rax)
	movl	%esi, -4(%rax)
	decl	%r8d
	leal	-1(%rsi), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_137
	jmp	.LBB0_141
	.p2align	4, 0x90
.LBB0_140:                              # %merge873
                                        #   in Loop: Header=BB0_137 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_141
.LBB0_137:                              # %while_body862
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_139 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%edx, (%rcx)
	jg	.LBB0_140
	.p2align	4, 0x90
.LBB0_139:                              # %while_body865
                                        #   Parent Loop BB0_137 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%esi, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rdi,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	.LBB0_139
	jmp	.LBB0_140
.LBB0_141:                              # %merge878
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r10
	movl	12(%rax), %r11d
	movq	(%r9), %r14
	movl	12(%r9), %r15d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%rcx)
	jle	.LBB0_143
	jmp	.LBB0_147
	.p2align	4, 0x90
.LBB0_146:                              # %merge918
                                        #   in Loop: Header=BB0_143 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_147
.LBB0_143:                              # %while_body897
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_145 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r9)
	cmpl	%edx, (%rsi)
	jg	.LBB0_146
	.p2align	4, 0x90
.LBB0_145:                              # %while_body900
                                        #   Parent Loop BB0_143 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rcx), %ebx
	movl	%r11d, %eax
	imull	%ebx, %eax
	addl	%edi, %eax
	cltq
	imull	%r15d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r14,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rax,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	.LBB0_145
	jmp	.LBB0_146
.LBB0_147:                              # %merge923
	movl	$201, %edi
	movl	$201, %esi
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
	jle	.LBB0_149
	jmp	.LBB0_153
	.p2align	4, 0x90
.LBB0_152:                              # %merge956
                                        #   in Loop: Header=BB0_149 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_153
.LBB0_149:                              # %while_body945
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_151 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%r9)
	cmpl	%ecx, (%rbx)
	jg	.LBB0_152
	.p2align	4, 0x90
.LBB0_151:                              # %while_body948
                                        #   Parent Loop BB0_149 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	imull	%r10d, %edx
	addl	(%rbx), %edx
	movslq	%edx, %rdx
	movq	$0, (%rsi,%rdx,8)
	incl	(%rbx)
	cmpl	%ecx, (%rbx)
	jle	.LBB0_151
	jmp	.LBB0_152
.LBB0_153:                              # %merge961
	movq	(%r11), %r9
	movq	%r11, -80(%rbp)         # 8-byte Spill
	movl	12(%r11), %r10d
	movq	(%r14), %r12
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movl	12(%r14), %r15d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%r14)
	jle	.LBB0_155
	jmp	.LBB0_159
	.p2align	4, 0x90
.LBB0_158:                              # %merge1001
                                        #   in Loop: Header=BB0_155 Depth=1
	incl	(%r14)
	cmpl	%r8d, (%r14)
	jg	.LBB0_159
.LBB0_155:                              # %while_body980
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_157 Depth 2
	movq	%rsp, %r11
	leaq	-16(%r11), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r11)
	cmpl	%ecx, (%rsi)
	jg	.LBB0_158
	.p2align	4, 0x90
.LBB0_157:                              # %while_body983
                                        #   Parent Loop BB0_155 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %ebx
	movl	(%r14), %eax
	movl	%r10d, %edx
	imull	%eax, %edx
	addl	%ebx, %edx
	movslq	%edx, %rdx
	imull	%r15d, %eax
	addl	%ebx, %eax
	cltq
	movsd	(%r12,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rdx,8)
	incl	(%rsi)
	cmpl	%ecx, (%rsi)
	jle	.LBB0_157
	jmp	.LBB0_158
.LBB0_159:                              # %merge1006
	callq	free
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	free
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %r11
	movl	8(%rcx), %eax
	leal	-1(%rax), %r8d
	movl	12(%rcx), %esi
	leal	-1(%rsi), %edi
	movl	%eax, %edx
	imull	%esi, %edx
	leaq	15(,%rdx,8), %rdx
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
	andq	%rcx, %rdx
	movq	%rsp, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rdx
	leaq	-16(%rdx), %r9
	movq	%r9, %rsp
	movq	%rbx, -16(%rdx)
	movl	%eax, -8(%rdx)
	movl	%esi, -4(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rdx)
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	cmpl	%r8d, (%rax)
	jle	.LBB0_161
	jmp	.LBB0_165
	.p2align	4, 0x90
.LBB0_164:                              # %merge1038
                                        #   in Loop: Header=BB0_161 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_165
.LBB0_161:                              # %while_body1027
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_163 Depth 2
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r10)
	cmpl	%edi, (%rdx)
	jg	.LBB0_164
	.p2align	4, 0x90
.LBB0_163:                              # %while_body1030
                                        #   Parent Loop BB0_161 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	imull	%esi, %ecx
	addl	(%rdx), %ecx
	movslq	%ecx, %rcx
	movq	$0, (%rbx,%rcx,8)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	.LBB0_163
	jmp	.LBB0_164
.LBB0_165:                              # %merge1043
	movq	(%r9), %rbx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_167
	jmp	.LBB0_171
	.p2align	4, 0x90
.LBB0_170:                              # %merge1068
                                        #   in Loop: Header=BB0_167 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_171
.LBB0_167:                              # %while_body1050
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_169 Depth 2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rcx)
	cmpl	%edi, (%rdx)
	jg	.LBB0_170
	.p2align	4, 0x90
.LBB0_169:                              # %while_body1053
                                        #   Parent Loop BB0_167 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	imull	%esi, %ecx
	addl	(%rdx), %ecx
	movslq	%ecx, %rcx
	movsd	(%r11,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rbx,%rcx,8)
	incl	(%rdx)
	cmpl	%edi, (%rdx)
	jle	.LBB0_169
	jmp	.LBB0_170
.LBB0_171:                              # %merge1073
	movl	8(%r9), %r8d
	movl	12(%r9), %esi
	movl	%r8d, %eax
	imull	%esi, %eax
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
	andq	%rcx, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rdi, -16(%rax)
	movl	%r8d, -8(%rax)
	movl	%esi, -4(%rax)
	decl	%r8d
	leal	-1(%rsi), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	cmpl	%r8d, (%rax)
	jle	.LBB0_173
	jmp	.LBB0_177
	.p2align	4, 0x90
.LBB0_176:                              # %merge1101
                                        #   in Loop: Header=BB0_173 Depth=1
	incl	(%rax)
	cmpl	%r8d, (%rax)
	jg	.LBB0_177
.LBB0_173:                              # %while_body1090
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_175 Depth 2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rbx)
	cmpl	%edx, (%rcx)
	jg	.LBB0_176
	.p2align	4, 0x90
.LBB0_175:                              # %while_body1093
                                        #   Parent Loop BB0_173 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ebx
	imull	%esi, %ebx
	addl	(%rcx), %ebx
	movslq	%ebx, %rbx
	movq	$0, (%rdi,%rbx,8)
	incl	(%rcx)
	cmpl	%edx, (%rcx)
	jle	.LBB0_175
	jmp	.LBB0_176
.LBB0_177:                              # %merge1106
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r10
	movl	12(%rax), %r11d
	movq	(%r9), %r14
	movl	12(%r9), %r15d
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rsi)
	cmpl	%r8d, (%rcx)
	jle	.LBB0_179
	jmp	.LBB0_183
	.p2align	4, 0x90
.LBB0_182:                              # %merge1146
                                        #   in Loop: Header=BB0_179 Depth=1
	incl	(%rcx)
	cmpl	%r8d, (%rcx)
	jg	.LBB0_183
.LBB0_179:                              # %while_body1125
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_181 Depth 2
	movq	%rsp, %r9
	leaq	-16(%r9), %rsi
	movq	%rsi, %rsp
	movl	$0, -16(%r9)
	cmpl	%edx, (%rsi)
	jg	.LBB0_182
	.p2align	4, 0x90
.LBB0_181:                              # %while_body1128
                                        #   Parent Loop BB0_179 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %edi
	movl	(%rcx), %ebx
	movl	%r11d, %eax
	imull	%ebx, %eax
	addl	%edi, %eax
	cltq
	imull	%r15d, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rdi
	movsd	(%r14,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, (%r10,%rax,8)
	incl	(%rsi)
	cmpl	%edx, (%rsi)
	jle	.LBB0_181
	jmp	.LBB0_182
.LBB0_183:                              # %merge1151
	movl	$0, (%r13)
	cmpl	$201, (%r13)
	jne	.LBB0_185
	jmp	.LBB0_326
	.p2align	4, 0x90
.LBB0_315:                              # %merge1592
                                        #   in Loop: Header=BB0_185 Depth=1
	incl	(%r13)
	cmpl	$201, (%r13)
	je	.LBB0_326
.LBB0_185:                              # %while_body1158
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %r12d
	movl	12(%rax), %r15d
	movl	(%r13), %r14d
	testl	%r14d, %r14d
	jns	.LBB0_186
# BB#339:                               # %then1165
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_186:                              # %merge1164
                                        #   in Loop: Header=BB0_185 Depth=1
	decl	%r12d
	cmpl	%r14d, %r12d
	jge	.LBB0_187
# BB#340:                               # %then1171
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_187:                              # %merge1170
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_188
# BB#341:                               # %then1177
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_188:                              # %merge1176
                                        #   in Loop: Header=BB0_185 Depth=1
	cmpl	%ebx, %r12d
	jge	.LBB0_190
# BB#189:                               # %then1183
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_190:                              # %merge1187
                                        #   in Loop: Header=BB0_185 Depth=1
	leal	-1(%r15), %ebx
	cmpl	$100, %ebx
	jg	.LBB0_192
# BB#191:                               # %then1193
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_192:                              # %merge1197
                                        #   in Loop: Header=BB0_185 Depth=1
	cmpl	$100, %ebx
	jg	.LBB0_194
# BB#193:                               # %then1203
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_194:                              # %merge1216
                                        #   in Loop: Header=BB0_185 Depth=1
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	imull	%r14d, %r15d
	addl	$101, %r15d
	movslq	%r15d, %rcx
	movq	$0, (%rax,%rcx,8)
	movl	8(%rdx), %ebx
	movl	12(%rdx), %r14d
	decl	%ebx
	cmpl	$100, %ebx
	jg	.LBB0_196
# BB#195:                               # %then1222
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_196:                              # %merge1226
                                        #   in Loop: Header=BB0_185 Depth=1
	cmpl	$101, %ebx
	jge	.LBB0_197
# BB#342:                               # %then1232
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_197:                              # %merge1231
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %r12d
	testl	%r12d, %r12d
	jns	.LBB0_198
# BB#343:                               # %then1238
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_198:                              # %merge1237
                                        #   in Loop: Header=BB0_185 Depth=1
	leal	-1(%r14), %r15d
	cmpl	%r12d, %r15d
	jge	.LBB0_199
# BB#344:                               # %then1244
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_199:                              # %merge1243
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_200
# BB#345:                               # %then1250
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_200:                              # %merge1249
                                        #   in Loop: Header=BB0_185 Depth=1
	cmpl	%ebx, %r15d
	jge	.LBB0_201
# BB#346:                               # %then1256
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_201:                              # %merge1255
                                        #   in Loop: Header=BB0_185 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	imull	$101, %r14d, %ecx
	addl	%ecx, %r12d
	movslq	%r12d, %rcx
	movq	$0, (%rax,%rcx,8)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %r12d
	movl	12(%rax), %r15d
	movl	(%r13), %r14d
	testl	%r14d, %r14d
	jns	.LBB0_202
# BB#347:                               # %then1271
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_202:                              # %merge1270
                                        #   in Loop: Header=BB0_185 Depth=1
	decl	%r12d
	cmpl	%r14d, %r12d
	jge	.LBB0_203
# BB#348:                               # %then1277
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_203:                              # %merge1276
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_204
# BB#349:                               # %then1283
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_204:                              # %merge1282
                                        #   in Loop: Header=BB0_185 Depth=1
	cmpl	%ebx, %r12d
	jge	.LBB0_206
# BB#205:                               # %then1289
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_206:                              # %merge1293
                                        #   in Loop: Header=BB0_185 Depth=1
	leal	-1(%r15), %ebx
	cmpl	$100, %ebx
	jg	.LBB0_208
# BB#207:                               # %then1299
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_208:                              # %merge1303
                                        #   in Loop: Header=BB0_185 Depth=1
	cmpl	$100, %ebx
	jg	.LBB0_210
# BB#209:                               # %then1309
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_210:                              # %merge1322
                                        #   in Loop: Header=BB0_185 Depth=1
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	imull	%r14d, %r15d
	addl	$101, %r15d
	movslq	%r15d, %rcx
	movq	$0, (%rax,%rcx,8)
	movl	8(%rdx), %ebx
	movl	12(%rdx), %r14d
	decl	%ebx
	cmpl	$100, %ebx
	jg	.LBB0_212
# BB#211:                               # %then1328
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_212:                              # %merge1332
                                        #   in Loop: Header=BB0_185 Depth=1
	cmpl	$101, %ebx
	jge	.LBB0_213
# BB#350:                               # %then1338
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_213:                              # %merge1337
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %r12d
	testl	%r12d, %r12d
	jns	.LBB0_214
# BB#351:                               # %then1344
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_214:                              # %merge1343
                                        #   in Loop: Header=BB0_185 Depth=1
	leal	-1(%r14), %r15d
	cmpl	%r12d, %r15d
	jge	.LBB0_215
# BB#352:                               # %then1350
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_215:                              # %merge1349
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_216
# BB#353:                               # %then1356
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_216:                              # %merge1355
                                        #   in Loop: Header=BB0_185 Depth=1
	cmpl	%ebx, %r15d
	jge	.LBB0_217
# BB#354:                               # %then1362
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_217:                              # %merge1361
                                        #   in Loop: Header=BB0_185 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	imull	$101, %r14d, %ecx
	addl	%ecx, %r12d
	movslq	%r12d, %rcx
	movq	$0, (%rax,%rcx,8)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %r12d
	movl	12(%rax), %r15d
	movl	(%r13), %r14d
	testl	%r14d, %r14d
	jns	.LBB0_218
# BB#355:                               # %then1377
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_218:                              # %merge1376
                                        #   in Loop: Header=BB0_185 Depth=1
	decl	%r12d
	cmpl	%r14d, %r12d
	jge	.LBB0_219
# BB#356:                               # %then1383
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_219:                              # %merge1382
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_220
# BB#357:                               # %then1389
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_220:                              # %merge1388
                                        #   in Loop: Header=BB0_185 Depth=1
	cmpl	%ebx, %r12d
	jge	.LBB0_222
# BB#221:                               # %then1395
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_222:                              # %merge1399
                                        #   in Loop: Header=BB0_185 Depth=1
	leal	-1(%r15), %ebx
	cmpl	$100, %ebx
	jg	.LBB0_224
# BB#223:                               # %then1405
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_224:                              # %merge1409
                                        #   in Loop: Header=BB0_185 Depth=1
	cmpl	$100, %ebx
	jg	.LBB0_226
# BB#225:                               # %then1415
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_226:                              # %merge1428
                                        #   in Loop: Header=BB0_185 Depth=1
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	imull	%r14d, %r15d
	addl	$101, %r15d
	movslq	%r15d, %rcx
	movq	$0, (%rax,%rcx,8)
	movl	8(%rdx), %ebx
	movl	12(%rdx), %r14d
	decl	%ebx
	cmpl	$100, %ebx
	jg	.LBB0_228
# BB#227:                               # %then1434
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_228:                              # %merge1438
                                        #   in Loop: Header=BB0_185 Depth=1
	cmpl	$101, %ebx
	jge	.LBB0_229
# BB#358:                               # %then1444
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_229:                              # %merge1443
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %r12d
	testl	%r12d, %r12d
	jns	.LBB0_230
# BB#359:                               # %then1450
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_230:                              # %merge1449
                                        #   in Loop: Header=BB0_185 Depth=1
	leal	-1(%r14), %r15d
	cmpl	%r12d, %r15d
	jge	.LBB0_231
# BB#360:                               # %then1456
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_231:                              # %merge1455
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_232
# BB#361:                               # %then1462
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_232:                              # %merge1461
                                        #   in Loop: Header=BB0_185 Depth=1
	cmpl	%ebx, %r15d
	jge	.LBB0_234
# BB#233:                               # %then1468
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_234:                              # %merge1481
                                        #   in Loop: Header=BB0_185 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	imull	$101, %r14d, %ecx
	addl	%ecx, %r12d
	movslq	%r12d, %rcx
	movq	$0, (%rax,%rcx,8)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %r14d
	movl	%ebx, %eax
	decl	%eax
	js	.LBB0_235
# BB#236:                               # %merge1491
                                        #   in Loop: Header=BB0_185 Depth=1
	decl	%ebx
	js	.LBB0_362
.LBB0_237:                              # %merge1496
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_238
# BB#363:                               # %then1503
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_238:                              # %merge1502
                                        #   in Loop: Header=BB0_185 Depth=1
	decl	%r14d
	cmpl	%ebx, %r14d
	jge	.LBB0_239
# BB#364:                               # %then1509
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_239:                              # %merge1508
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_240
# BB#365:                               # %then1515
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_240:                              # %merge1514
                                        #   in Loop: Header=BB0_185 Depth=1
	cmpl	%ebx, %r14d
	jge	.LBB0_242
# BB#241:                               # %then1521
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_242:                              # %merge1538
                                        #   in Loop: Header=BB0_185 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %r14d
	movl	%ebx, %eax
	decl	%eax
	js	.LBB0_243
# BB#244:                               # %merge1548
                                        #   in Loop: Header=BB0_185 Depth=1
	decl	%ebx
	js	.LBB0_366
.LBB0_245:                              # %merge1553
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_246
# BB#367:                               # %then1560
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_246:                              # %merge1559
                                        #   in Loop: Header=BB0_185 Depth=1
	decl	%r14d
	cmpl	%ebx, %r14d
	jge	.LBB0_247
# BB#368:                               # %then1566
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_247:                              # %merge1565
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_248
# BB#369:                               # %then1572
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_248:                              # %merge1571
                                        #   in Loop: Header=BB0_185 Depth=1
	cmpl	%ebx, %r14d
	jge	.LBB0_250
# BB#249:                               # %then1578
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_250:                              # %merge1944
                                        #   in Loop: Header=BB0_185 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %r15d
	movl	%ebx, %eax
	decl	%eax
	js	.LBB0_251
# BB#252:                               # %merge1954
                                        #   in Loop: Header=BB0_185 Depth=1
	decl	%ebx
	js	.LBB0_317
.LBB0_253:                              # %merge1959
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %r14d
	testl	%r14d, %r14d
	jns	.LBB0_254
# BB#318:                               # %then1966
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_254:                              # %merge1965
                                        #   in Loop: Header=BB0_185 Depth=1
	decl	%r15d
	cmpl	%r14d, %r15d
	jge	.LBB0_255
# BB#319:                               # %then1972
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_255:                              # %merge1971
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_256
# BB#320:                               # %then1978
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_256:                              # %merge1977
                                        #   in Loop: Header=BB0_185 Depth=1
	cmpl	%ebx, %r15d
	jge	.LBB0_258
# BB#257:                               # %then1984
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_258:                              # %merge2001
                                        #   in Loop: Header=BB0_185 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	movslq	%r14d, %rcx
	movsd	(%rax,%rcx,8), %xmm1    # xmm1 = mem[0],zero
	movl	8(%rdx), %ebx
	movl	12(%rdx), %r15d
	movl	%ebx, %eax
	decl	%eax
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	js	.LBB0_259
# BB#260:                               # %merge2011
                                        #   in Loop: Header=BB0_185 Depth=1
	decl	%ebx
	js	.LBB0_321
.LBB0_261:                              # %merge2016
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %r14d
	testl	%r14d, %r14d
	jns	.LBB0_262
# BB#322:                               # %then2023
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
.LBB0_262:                              # %merge2022
                                        #   in Loop: Header=BB0_185 Depth=1
	decl	%r15d
	cmpl	%r14d, %r15d
	jge	.LBB0_263
# BB#323:                               # %then2029
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
.LBB0_263:                              # %merge2028
                                        #   in Loop: Header=BB0_185 Depth=1
	addsd	.LCPI0_0(%rip), %xmm1
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_264
# BB#324:                               # %then2035
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	callq	printf
	callq	abort
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
.LBB0_264:                              # %merge2034
                                        #   in Loop: Header=BB0_185 Depth=1
	divsd	.LCPI0_1(%rip), %xmm1
	cmpl	%ebx, %r15d
	jge	.LBB0_265
# BB#325:                               # %then2041
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	callq	printf
	callq	abort
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
.LBB0_265:                              # %merge2040
                                        #   in Loop: Header=BB0_185 Depth=1
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB0_315
# BB#266:                               # %merge2040
                                        #   in Loop: Header=BB0_185 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movslq	%r14d, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	addsd	.LCPI0_0(%rip), %xmm0
	divsd	.LCPI0_1(%rip), %xmm0
	ucomisd	.LCPI0_7, %xmm0
	jb	.LBB0_315
# BB#267:                               # %merge1602
                                        #   in Loop: Header=BB0_185 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %r15d
	movl	12(%rax), %r12d
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %r14d
	movl	%ebx, %eax
	decl	%eax
	jns	.LBB0_269
# BB#268:                               # %then1608
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_269:                              # %merge1612
                                        #   in Loop: Header=BB0_185 Depth=1
	movq	%r12, -48(%rbp)         # 8-byte Spill
	decl	%ebx
	jns	.LBB0_270
# BB#370:                               # %then1618
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_270:                              # %merge1617
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %r12d
	testl	%r12d, %r12d
	jns	.LBB0_271
# BB#371:                               # %then1624
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_271:                              # %merge1623
                                        #   in Loop: Header=BB0_185 Depth=1
	decl	%r14d
	cmpl	%r12d, %r14d
	jge	.LBB0_272
# BB#372:                               # %then1630
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_272:                              # %merge1629
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_273
# BB#373:                               # %then1636
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_273:                              # %merge1635
                                        #   in Loop: Header=BB0_185 Depth=1
	cmpl	%ebx, %r14d
	jge	.LBB0_274
# BB#374:                               # %then1642
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_274:                              # %merge1641
                                        #   in Loop: Header=BB0_185 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movslq	%r12d, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	addsd	.LCPI0_0(%rip), %xmm0
	divsd	.LCPI0_1(%rip), %xmm0
	callq	double2int
	movl	(%rax), %ebx
	movq	%rax, %rdi
	callq	free
	testl	%ebx, %ebx
	jns	.LBB0_275
# BB#375:                               # %then1657
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_275:                              # %merge1656
                                        #   in Loop: Header=BB0_185 Depth=1
	decl	%r15d
	movl	%ebx, -84(%rbp)         # 4-byte Spill
	cmpl	%ebx, %r15d
	jge	.LBB0_277
# BB#276:                               # %then1663
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_277:                              # %merge1671
                                        #   in Loop: Header=BB0_185 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %r12d
	movl	%ebx, %eax
	decl	%eax
	js	.LBB0_278
# BB#279:                               # %merge1681
                                        #   in Loop: Header=BB0_185 Depth=1
	decl	%ebx
	js	.LBB0_376
.LBB0_280:                              # %merge1686
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %r14d
	testl	%r14d, %r14d
	jns	.LBB0_281
# BB#377:                               # %then1693
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_281:                              # %merge1692
                                        #   in Loop: Header=BB0_185 Depth=1
	decl	%r12d
	cmpl	%r14d, %r12d
	jge	.LBB0_282
# BB#378:                               # %then1699
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_282:                              # %merge1698
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_283
# BB#379:                               # %then1705
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_283:                              # %merge1704
                                        #   in Loop: Header=BB0_185 Depth=1
	cmpl	%ebx, %r12d
	jge	.LBB0_284
# BB#380:                               # %then1711
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_284:                              # %merge1710
                                        #   in Loop: Header=BB0_185 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movslq	%r14d, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	addsd	.LCPI0_0(%rip), %xmm0
	divsd	.LCPI0_1(%rip), %xmm0
	callq	double2int
	movl	(%rax), %ebx
	movq	%rax, %rdi
	callq	free
	testl	%ebx, %ebx
	movq	-48(%rbp), %r12         # 8-byte Reload
	jns	.LBB0_285
# BB#381:                               # %then1727
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_285:                              # %merge1726
                                        #   in Loop: Header=BB0_185 Depth=1
	cmpl	%ebx, %r15d
	jge	.LBB0_286
# BB#382:                               # %then1733
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_286:                              # %merge1732
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %r15d
	testl	%r15d, %r15d
	jns	.LBB0_287
# BB#383:                               # %then1739
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_287:                              # %merge1738
                                        #   in Loop: Header=BB0_185 Depth=1
	leal	-1(%r12), %r14d
	cmpl	%r15d, %r14d
	jge	.LBB0_288
# BB#384:                               # %then1745
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_288:                              # %merge1744
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_289
# BB#385:                               # %then1751
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_289:                              # %merge1750
                                        #   in Loop: Header=BB0_185 Depth=1
	cmpl	%ebx, %r14d
	jge	.LBB0_291
# BB#290:                               # %then1757
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_291:                              # %merge1774
                                        #   in Loop: Header=BB0_185 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	imull	-84(%rbp), %r12d        # 4-byte Folded Reload
	addl	%r12d, %r15d
	movslq	%r15d, %rcx
	movq	$0, (%rax,%rcx,8)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %r15d
	movl	12(%rax), %r12d
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %r14d
	movl	%ebx, %eax
	decl	%eax
	jns	.LBB0_293
# BB#292:                               # %then1780
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_293:                              # %merge1784
                                        #   in Loop: Header=BB0_185 Depth=1
	movq	%r12, -48(%rbp)         # 8-byte Spill
	decl	%ebx
	jns	.LBB0_294
# BB#386:                               # %then1790
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_294:                              # %merge1789
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %r12d
	testl	%r12d, %r12d
	jns	.LBB0_295
# BB#387:                               # %then1796
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_295:                              # %merge1795
                                        #   in Loop: Header=BB0_185 Depth=1
	decl	%r14d
	cmpl	%r12d, %r14d
	jge	.LBB0_296
# BB#388:                               # %then1802
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_296:                              # %merge1801
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_297
# BB#389:                               # %then1808
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_297:                              # %merge1807
                                        #   in Loop: Header=BB0_185 Depth=1
	cmpl	%ebx, %r14d
	jge	.LBB0_298
# BB#390:                               # %then1814
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_298:                              # %merge1813
                                        #   in Loop: Header=BB0_185 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movslq	%r12d, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	addsd	.LCPI0_0(%rip), %xmm0
	divsd	.LCPI0_1(%rip), %xmm0
	callq	double2int
	movl	(%rax), %ebx
	movq	%rax, %rdi
	callq	free
	testl	%ebx, %ebx
	jns	.LBB0_299
# BB#391:                               # %then1830
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_299:                              # %merge1829
                                        #   in Loop: Header=BB0_185 Depth=1
	decl	%r15d
	movl	%ebx, -84(%rbp)         # 4-byte Spill
	cmpl	%ebx, %r15d
	jge	.LBB0_301
# BB#300:                               # %then1836
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_301:                              # %merge1844
                                        #   in Loop: Header=BB0_185 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %ebx
	movl	12(%rax), %r12d
	movl	%ebx, %eax
	decl	%eax
	js	.LBB0_302
# BB#303:                               # %merge1854
                                        #   in Loop: Header=BB0_185 Depth=1
	decl	%ebx
	js	.LBB0_392
.LBB0_304:                              # %merge1859
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %r14d
	testl	%r14d, %r14d
	jns	.LBB0_305
# BB#393:                               # %then1866
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_305:                              # %merge1865
                                        #   in Loop: Header=BB0_185 Depth=1
	decl	%r12d
	cmpl	%r14d, %r12d
	jge	.LBB0_306
# BB#394:                               # %then1872
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_306:                              # %merge1871
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_307
# BB#395:                               # %then1878
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_307:                              # %merge1877
                                        #   in Loop: Header=BB0_185 Depth=1
	cmpl	%ebx, %r12d
	jge	.LBB0_308
# BB#396:                               # %then1884
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_308:                              # %merge1883
                                        #   in Loop: Header=BB0_185 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movslq	%r14d, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	addsd	.LCPI0_0(%rip), %xmm0
	divsd	.LCPI0_1(%rip), %xmm0
	callq	double2int
	movl	(%rax), %ebx
	movq	%rax, %rdi
	callq	free
	testl	%ebx, %ebx
	movq	-48(%rbp), %r12         # 8-byte Reload
	jns	.LBB0_309
# BB#397:                               # %then1900
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_309:                              # %merge1899
                                        #   in Loop: Header=BB0_185 Depth=1
	cmpl	%ebx, %r15d
	jge	.LBB0_310
# BB#398:                               # %then1906
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_310:                              # %merge1905
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %r15d
	testl	%r15d, %r15d
	jns	.LBB0_311
# BB#399:                               # %then1912
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_311:                              # %merge1911
                                        #   in Loop: Header=BB0_185 Depth=1
	leal	-1(%r12), %r14d
	cmpl	%r15d, %r14d
	jge	.LBB0_312
# BB#400:                               # %then1918
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_312:                              # %merge1917
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	jns	.LBB0_313
# BB#401:                               # %then1924
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_313:                              # %merge1923
                                        #   in Loop: Header=BB0_185 Depth=1
	cmpl	%ebx, %r14d
	jge	.LBB0_314
# BB#316:                               # %then1930
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
.LBB0_314:                              # %merge1929
                                        #   in Loop: Header=BB0_185 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	imull	-84(%rbp), %r12d        # 4-byte Folded Reload
	addl	%r12d, %r15d
	movslq	%r15d, %rcx
	movq	$0, (%rax,%rcx,8)
	jmp	.LBB0_315
	.p2align	4, 0x90
.LBB0_235:                              # %then1487
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	decl	%ebx
	jns	.LBB0_237
.LBB0_362:                              # %then1497
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	jmp	.LBB0_237
	.p2align	4, 0x90
.LBB0_243:                              # %then1544
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	decl	%ebx
	jns	.LBB0_245
.LBB0_366:                              # %then1554
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	jmp	.LBB0_245
	.p2align	4, 0x90
.LBB0_251:                              # %then1950
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	decl	%ebx
	jns	.LBB0_253
.LBB0_317:                              # %then1960
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	jmp	.LBB0_253
	.p2align	4, 0x90
.LBB0_259:                              # %then2007
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	decl	%ebx
	jns	.LBB0_261
.LBB0_321:                              # %then2017
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jmp	.LBB0_261
.LBB0_278:                              # %then1677
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	decl	%ebx
	jns	.LBB0_280
.LBB0_376:                              # %then1687
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	jmp	.LBB0_280
.LBB0_302:                              # %then1850
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	decl	%ebx
	jns	.LBB0_304
.LBB0_392:                              # %then1860
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_str.7, %esi
	xorl	%eax, %eax
	callq	printf
	callq	abort
	jmp	.LBB0_304
.LBB0_326:                              # %merge2058
	movl	$.Lsystem_string, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
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
	.globl	factorial               # -- Begin function factorial
	.p2align	4, 0x90
	.type	factorial,@function
factorial:                              # @factorial
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Lcfi60:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Lcfi61:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Lcfi62:
	.cfi_def_cfa_offset 32
.Lcfi63:
	.cfi_offset %rbx, -24
.Lcfi64:
	.cfi_offset %r14, -16
	movl	%edi, 4(%rsp)
	cmpl	$1, %edi
	jne	.LBB10_3
# BB#1:                                 # %then
	movl	$4, %edi
	callq	malloc
	movl	$1, (%rax)
	jmp	.LBB10_2
.LBB10_3:                               # %else
	movl	$4, %edi
	callq	malloc
	movq	%rax, %r14
	movl	4(%rsp), %ebx
	leal	-1(%rbx), %edi
	callq	factorial
	imull	(%rax), %ebx
	movq	%rax, %rdi
	callq	free
	movl	%ebx, (%r14)
	movq	%r14, %rax
.LBB10_2:                               # %then
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end10:
	.size	factorial, .Lfunc_end10-factorial
	.cfi_endproc
                                        # -- End function
	.globl	pow                     # -- Begin function pow
	.p2align	4, 0x90
	.type	pow,@function
pow:                                    # @pow
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Lcfi65:
	.cfi_def_cfa_offset 48
	movsd	%xmm0, 32(%rsp)
	movl	%edi, 28(%rsp)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, 16(%rsp)
	movl	$0, 12(%rsp)
	jmp	.LBB11_1
	.p2align	4, 0x90
.LBB11_2:                               # %while_body
                                        #   in Loop: Header=BB11_1 Depth=1
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	mulsd	16(%rsp), %xmm0
	movsd	%xmm0, 16(%rsp)
	incl	12(%rsp)
.LBB11_1:                               # %while
                                        # =>This Inner Loop Header: Depth=1
	movl	12(%rsp), %eax
	cmpl	28(%rsp), %eax
	jne	.LBB11_2
# BB#3:                                 # %merge
	movl	$8, %edi
	callq	malloc
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end11:
	.size	pow, .Lfunc_end11-pow
	.cfi_endproc
                                        # -- End function
	.globl	quad                    # -- Begin function quad
	.p2align	4, 0x90
	.type	quad,@function
quad:                                   # @quad
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Lcfi66:
	.cfi_def_cfa_offset 48
	movsd	%xmm0, 32(%rsp)
	movsd	%xmm1, 24(%rsp)
	movsd	%xmm2, 16(%rsp)
	movsd	%xmm3, 8(%rsp)
	movl	$8, %edi
	callq	malloc
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movsd	32(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	mulsd	24(%rsp), %xmm0
	addsd	%xmm1, %xmm0
	addsd	16(%rsp), %xmm0
	movsd	%xmm0, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end12:
	.size	quad, .Lfunc_end12-quad
	.cfi_endproc
                                        # -- End function
	.globl	cubic                   # -- Begin function cubic
	.p2align	4, 0x90
	.type	cubic,@function
cubic:                                  # @cubic
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Lcfi67:
	.cfi_def_cfa_offset 48
	movsd	%xmm0, 32(%rsp)
	movsd	%xmm1, 24(%rsp)
	movsd	%xmm2, 16(%rsp)
	movsd	%xmm3, 8(%rsp)
	movsd	%xmm4, (%rsp)
	movl	$8, %edi
	callq	malloc
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movsd	32(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	24(%rsp), %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	mulsd	16(%rsp), %xmm0
	addsd	%xmm2, %xmm0
	addsd	8(%rsp), %xmm0
	movsd	%xmm0, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end13:
	.size	cubic, .Lfunc_end13-cubic
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function sin_approx
.LCPI14_0:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	sin_approx
	.p2align	4, 0x90
	.type	sin_approx,@function
sin_approx:                             # @sin_approx
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$56, %rsp
.Lcfi68:
	.cfi_def_cfa_offset 64
	movsd	%xmm0, 48(%rsp)
	movsd	%xmm1, 40(%rsp)
	movq	$0, 24(%rsp)
	movl	$0, 12(%rsp)
	cmpl	$15, 12(%rsp)
	je	.LBB14_3
	.p2align	4, 0x90
.LBB14_2:                               # %while_body
                                        # =>This Inner Loop Header: Depth=1
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movl	12(%rsp), %eax
	leal	1(%rax,%rax), %edi
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	pow
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	free
	movl	12(%rsp), %edi
	movsd	.LCPI14_0(%rip), %xmm0  # xmm0 = mem[0],zero
	callq	pow
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	(%rax), %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	free
	movl	12(%rsp), %eax
	leal	1(%rax,%rax), %edi
	callq	factorial
	xorps	%xmm0, %xmm0
	cvtsi2sdl	(%rax), %xmm0
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	addsd	32(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 16(%rsp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	free
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 24(%rsp)
	incl	12(%rsp)
	cmpl	$15, 12(%rsp)
	jne	.LBB14_2
.LBB14_3:                               # %merge
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	mulsd	48(%rsp), %xmm0
	movsd	%xmm0, 24(%rsp)
	movl	$8, %edi
	callq	malloc
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	addq	$56, %rsp
	retq
.Lfunc_end14:
	.size	sin_approx, .Lfunc_end14-sin_approx
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
	.asciz	"plot.jpg"
	.size	.Lsystem_string, 9


	.section	".note.GNU-stack","",@progbits
