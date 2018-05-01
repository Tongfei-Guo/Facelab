	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	4613937818241073152     ## double 3
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rax
Lcfi0:
	.cfi_def_cfa_offset 16
	movabsq	$4613937818241073152, %rax ## imm = 0x4008000000000000
	movq	%rax, (%rsp)
	leaq	L_fmt_double.5(%rip), %rdi
	movsd	LCPI0_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movb	$1, %al
	callq	_printf
	xorl	%eax, %eax
	popq	%rcx
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


.subsections_via_symbols
