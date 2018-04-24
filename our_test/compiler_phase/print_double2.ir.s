	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	4618666597849812173     ## double 6.2000000000000002
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %entry
	subq	$24, %rsp
Lcfi0:
	.cfi_def_cfa_offset 32
	movabsq	$4614162998222441677, %rax ## imm = 0x4008CCCCCCCCCCCD
	movq	%rax, 16(%rsp)
	movl	$2, 4(%rsp)
	movabsq	$4618666597849812173, %rax ## imm = 0x4018CCCCCCCCCCCD
	movq	%rax, 8(%rsp)
	leaq	L_fmt_double.14(%rip), %rdi
	movsd	LCPI0_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movb	$1, %al
	callq	_printf
	xorl	%eax, %eax
	addq	$24, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_fmt_str:                              ## @fmt_str
	.asciz	"%s"

L_fmt_double:                           ## @fmt_double
	.asciz	"%f"

L_fmt_int:                              ## @fmt_int
	.asciz	"%d"

L_fmt_str.1:                            ## @fmt_str.1
	.asciz	"%s"

L_fmt_double.2:                         ## @fmt_double.2
	.asciz	"%f"

L_fmt_int.3:                            ## @fmt_int.3
	.asciz	"%d"

L_fmt_str.4:                            ## @fmt_str.4
	.asciz	"%s"

L_fmt_double.5:                         ## @fmt_double.5
	.asciz	"%f"

L_fmt_int.6:                            ## @fmt_int.6
	.asciz	"%d"

L_fmt_str.7:                            ## @fmt_str.7
	.asciz	"%s"

L_fmt_double.8:                         ## @fmt_double.8
	.asciz	"%f"

L_fmt_int.9:                            ## @fmt_int.9
	.asciz	"%d"

L_fmt_str.10:                           ## @fmt_str.10
	.asciz	"%s"

L_fmt_double.11:                        ## @fmt_double.11
	.asciz	"%f"

L_fmt_int.12:                           ## @fmt_int.12
	.asciz	"%d"

L_fmt_str.13:                           ## @fmt_str.13
	.asciz	"%s"

L_fmt_double.14:                        ## @fmt_double.14
	.asciz	"%f"

L_fmt_int.15:                           ## @fmt_int.15
	.asciz	"%d"


.subsections_via_symbols
