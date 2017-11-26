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
	movabsq	$12884901892, %rcx      # imm = 0x300000004
	movq	%rcx, -80(%rbp)
	movq	%rsp, %r10
	addq	$-96, %r10
	movq	%r10, %rsp
	movq	%r10, -64(%rbp)
	movq	%rcx, -56(%rbp)
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
	movq	%rsp, %rax
	leaq	-48(%rax), %r14
	movq	%r14, %rsp
	movabsq	$4612136378390124954, %rcx # imm = 0x400199999999999A
	movq	%rcx, -48(%rax)
	movabsq	$4616639978017495450, %rcx # imm = 0x401199999999999A
	movq	%rcx, -40(%rax)
	movabsq	$4619116957812549222, %rcx # imm = 0x401A666666666666
	movq	%rcx, -32(%rax)
	movabsq	$4609434218613702656, %rcx # imm = 0x3FF8000000000000
	movq	%rcx, -24(%rax)
	movabsq	$4621312462630892339, %rcx # imm = 0x4022333333333333
	movq	%rcx, -16(%rax)
	movabsq	$4615063718147915776, %rcx # imm = 0x400C000000000000
	movq	%rcx, -8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r14, -16(%rax)
	movabsq	$8589934595, %rcx       # imm = 0x200000003
	movq	%rcx, -8(%rax)
	movq	-64(%rbp), %r12
	movl	-56(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movl	$2, %r10d
	movl	-52(%rbp), %r13d
	leal	-1(%r13), %r9d
	leal	(%rax,%rax), %ecx
	shlq	$3, %rcx
	movabsq	$34359738352, %rdx      # imm = 0x7FFFFFFF0
	andq	%rcx, %rdx
	movq	%rsp, %r11
	subq	%rdx, %r11
	movq	%r11, %rsp
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rsp
	movq	%r11, -16(%rcx)
	movl	%eax, -8(%rcx)
	movl	$2, -4(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_14:                               # %merge117
                                        #   in Loop: Header=BB0_7 Depth=1
	incl	(%rbx)
.LBB0_7:                                # %while82
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_12 Depth 3
	movl	-48(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, (%rbx)
	jg	.LBB0_15
# BB#8:                                 # %while_body83
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movl	$0, -16(%rcx)
	jmp	.LBB0_9
	.p2align	4, 0x90
.LBB0_13:                               # %merge111
                                        #   in Loop: Header=BB0_9 Depth=2
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, (%r15)
	incl	(%rax)
.LBB0_9:                                # %while85
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_12 Depth 3
	movl	$1, %ecx
	cmpl	%ecx, (%rax)
	jg	.LBB0_14
# BB#10:                                # %while_body86
                                        #   in Loop: Header=BB0_9 Depth=2
	movl	(%rbx), %ecx
	imull	%r10d, %ecx
	addl	(%rax), %ecx
	movslq	%ecx, %rcx
	leaq	(%r11,%rcx,8), %r15
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %r8
	leaq	-16(%r8), %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%r8)
	cmpl	%r9d, (%rdx)
	jg	.LBB0_13
	.p2align	4, 0x90
.LBB0_12:                               # %while_body94
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rdx), %edi
	movl	(%rbx), %esi
	imull	%r13d, %esi
	addl	%edi, %esi
	movslq	%esi, %rsi
	movsd	(%r12,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	imull	%r10d, %edi
	addl	(%rax), %edi
	movslq	%edi, %rsi
	mulsd	(%r14,%rsi,8), %xmm0
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	incl	(%rdx)
	cmpl	%r9d, (%rdx)
	jle	.LBB0_12
	jmp	.LBB0_13
.LBB0_15:                               # %merge122
	movq	-72(%rbp), %rdi         # 8-byte Reload
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


	.section	".note.GNU-stack","",@progbits
