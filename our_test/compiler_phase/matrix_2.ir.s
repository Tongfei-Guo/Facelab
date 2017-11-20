	.text
	.file	"MicroC"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$1408, %rsp             # imm = 0x580
.Lcfi0:
	.cfi_def_cfa_offset 1416
	movabsq	$4622945017495814144, %rax # imm = 0x4028000000000000
	movq	%rax, -40(%rsp)
	movabsq	$4622382067542392832, %rax # imm = 0x4026000000000000
	movq	%rax, -48(%rsp)
	movabsq	$4621819117588971520, %rax # imm = 0x4024000000000000
	movq	%rax, -56(%rsp)
	movabsq	$4621256167635550208, %rax # imm = 0x4022000000000000
	movq	%rax, -64(%rsp)
	movabsq	$4620693217682128896, %rax # imm = 0x4020000000000000
	movq	%rax, -72(%rsp)
	movabsq	$4619567317775286272, %rax # imm = 0x401C000000000000
	movq	%rax, -80(%rsp)
	movabsq	$4618441417868443648, %rax # imm = 0x4018000000000000
	movq	%rax, -88(%rsp)
	movabsq	$4617315517961601024, %rax # imm = 0x4014000000000000
	movq	%rax, -96(%rsp)
	movabsq	$4616189618054758400, %rax # imm = 0x4010000000000000
	movq	%rax, -104(%rsp)
	movabsq	$4613937818241073152, %rax # imm = 0x4008000000000000
	movq	%rax, -112(%rsp)
	movabsq	$4611686018427387904, %rax # imm = 0x4000000000000000
	movq	%rax, -120(%rsp)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, -128(%rsp)
	xorl	%eax, %eax
	addq	$1408, %rsp             # imm = 0x580
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

	.type	.Lfmt_str.3,@object     # @fmt_str.3
.Lfmt_str.3:
	.asciz	"%s"
	.size	.Lfmt_str.3, 3

	.type	.Lfmt_double.4,@object  # @fmt_double.4
.Lfmt_double.4:
	.asciz	"%f"
	.size	.Lfmt_double.4, 3

	.type	.Lfmt_int.5,@object     # @fmt_int.5
.Lfmt_int.5:
	.asciz	"%d"
	.size	.Lfmt_int.5, 3

	.type	.Lfmt_int.6,@object     # @fmt_int.6
.Lfmt_int.6:
	.asciz	"\n"
	.size	.Lfmt_int.6, 2

	.type	.Lfmt_int.7,@object     # @fmt_int.7
.Lfmt_int.7:
	.asciz	"  "
	.size	.Lfmt_int.7, 3


	.section	".note.GNU-stack","",@progbits
