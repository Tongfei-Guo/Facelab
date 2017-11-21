	.text
	.file	"MicroC"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$200, %rsp
.Lcfi0:
	.cfi_def_cfa_offset 208
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, 8(%rsp)
	movabsq	$4611686018427387904, %rax # imm = 0x4000000000000000
	movq	%rax, 16(%rsp)
	movabsq	$4613937818241073152, %rax # imm = 0x4008000000000000
	movq	%rax, 24(%rsp)
	movabsq	$4616189618054758400, %rax # imm = 0x4010000000000000
	movq	%rax, 32(%rsp)
	movabsq	$4617315517961601024, %rax # imm = 0x4014000000000000
	movq	%rax, 40(%rsp)
	movabsq	$4618441417868443648, %rax # imm = 0x4018000000000000
	movq	%rax, 48(%rsp)
	movabsq	$4619567317775286272, %rax # imm = 0x401C000000000000
	movq	%rax, 56(%rsp)
	movabsq	$4620693217682128896, %rax # imm = 0x4020000000000000
	movq	%rax, 64(%rsp)
	movabsq	$4621256167635550208, %rax # imm = 0x4022000000000000
	movq	%rax, 72(%rsp)
	movabsq	$4621819117588971520, %rax # imm = 0x4024000000000000
	movq	%rax, 80(%rsp)
	movabsq	$4622382067542392832, %rax # imm = 0x4026000000000000
	movq	%rax, 88(%rsp)
	movabsq	$4622945017495814144, %rax # imm = 0x4028000000000000
	movq	%rax, 96(%rsp)
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.1, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.1, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.1, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	80(%rsp), %xmm0         # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	88(%rsp), %xmm0         # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.1, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.3, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movsd	16(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, 104(%rsp)
	movsd	%xmm1, 112(%rsp)
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 120(%rsp)
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 128(%rsp)
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 136(%rsp)
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 144(%rsp)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 152(%rsp)
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 160(%rsp)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 168(%rsp)
	movsd	80(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	88(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, 176(%rsp)
	movsd	%xmm1, 184(%rsp)
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 192(%rsp)
	movsd	104(%rsp), %xmm0        # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	112(%rsp), %xmm0        # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	120(%rsp), %xmm0        # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.1, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	128(%rsp), %xmm0        # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	136(%rsp), %xmm0        # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	144(%rsp), %xmm0        # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.1, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	152(%rsp), %xmm0        # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	160(%rsp), %xmm0        # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	168(%rsp), %xmm0        # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.1, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	176(%rsp), %xmm0        # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	184(%rsp), %xmm0        # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movsd	192(%rsp), %xmm0        # xmm0 = mem[0],zero
	movl	$.Lfmt_double, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.2, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.1, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lfmt_str, %edi
	movl	$.Lfmt_int.3, %esi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	addq	$200, %rsp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
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


	.section	".note.GNU-stack","",@progbits
