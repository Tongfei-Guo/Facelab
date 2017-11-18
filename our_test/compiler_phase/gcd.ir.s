	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_gcd                    ## -- Begin function gcd
	.p2align	4, 0x90
_gcd:                                   ## @gcd
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jle	LBB0_3
	.p2align	4, 0x90
LBB0_2:                                 ## %while_body
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movl	$0, -16(%rcx)
	movl	-8(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	movl	%edx, -16(%rcx)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-16(%rcx), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	LBB0_2
LBB0_3:                                 ## %merge
	movl	-8(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rax
Lcfi3:
	.cfi_def_cfa_offset 16
	movl	$0, 4(%rsp)
	movl	$81, %edi
	movl	$18, %esi
	callq	_gcd
	movl	%eax, %ecx
	movl	%ecx, 4(%rsp)
	leaq	L_fmt_int.33(%rip), %rdi
	xorl	%eax, %eax
	movl	%ecx, %esi
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

L_fmt_str.16:                           ## @fmt_str.16
	.asciz	"%s"

L_fmt_double.17:                        ## @fmt_double.17
	.asciz	"%f"

L_fmt_int.18:                           ## @fmt_int.18
	.asciz	"%d"

L_fmt_str.19:                           ## @fmt_str.19
	.asciz	"%s"

L_fmt_double.20:                        ## @fmt_double.20
	.asciz	"%f"

L_fmt_int.21:                           ## @fmt_int.21
	.asciz	"%d"

L_fmt_str.22:                           ## @fmt_str.22
	.asciz	"%s"

L_fmt_double.23:                        ## @fmt_double.23
	.asciz	"%f"

L_fmt_int.24:                           ## @fmt_int.24
	.asciz	"%d"

L_fmt_str.25:                           ## @fmt_str.25
	.asciz	"%s"

L_fmt_double.26:                        ## @fmt_double.26
	.asciz	"%f"

L_fmt_int.27:                           ## @fmt_int.27
	.asciz	"%d"

L_fmt_str.28:                           ## @fmt_str.28
	.asciz	"%s"

L_fmt_double.29:                        ## @fmt_double.29
	.asciz	"%f"

L_fmt_int.30:                           ## @fmt_int.30
	.asciz	"%d"

L_fmt_str.31:                           ## @fmt_str.31
	.asciz	"%s"

L_fmt_double.32:                        ## @fmt_double.32
	.asciz	"%f"

L_fmt_int.33:                           ## @fmt_int.33
	.asciz	"%d"


.subsections_via_symbols
