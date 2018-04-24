	.text
	.file	"MicroC"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi0:
	.cfi_def_cfa_offset 16
	movl	$.Lfmt_str.1, %edi
	movl	$.Lsystem_string, %esi
	xorl	%eax, %eax
	callq	printf
	movl	i(%rip), %esi
	movl	$.Lfmt_int.4, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$3, i(%rip)
	movl	$.Lfmt_int.10, %edi
	movl	$3, %esi
	xorl	%eax, %eax
	callq	printf
	movl	i(%rip), %esi
	addl	$5, %esi
	movl	%esi, j(%rip)
	movl	$.Lfmt_int.14, %edi
	xorl	%eax, %eax
	callq	printf
	movb	$1, b(%rip)
	cmpb	$1, b(%rip)
	je	.LBB0_2
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_3:                                # %merge
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$3, j(%rip)
	setne	b(%rip)
	cmpb	$1, b(%rip)
	jne	.LBB0_5
.LBB0_2:                                # %while_body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, j(%rip)
	jle	.LBB0_3
# BB#4:                                 # %then
                                        #   in Loop: Header=BB0_2 Depth=1
	decl	j(%rip)
	jmp	.LBB0_3
.LBB0_5:                                # %merge13
	movl	j(%rip), %esi
	movl	$.Lfmt_int.32, %edi
	xorl	%eax, %eax
	callq	printf
	movl	j(%rip), %esi
	addl	$5, %esi
	movl	$.Lfmt_int.34, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	popq	%rcx
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	i,@object               # @i
	.bss
	.globl	i
	.p2align	2
i:
	.long	0                       # 0x0
	.size	i, 4

	.type	j,@object               # @j
	.globl	j
	.p2align	2
j:
	.long	0                       # 0x0
	.size	j, 4

	.type	b,@object               # @b
	.globl	b
b:
	.byte	0                       # 0x0
	.size	b, 1

	.type	.Lfmt_str,@object       # @fmt_str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lfmt_str:
	.asciz	"%s\n"
	.size	.Lfmt_str, 4

	.type	.Lfmt_int,@object       # @fmt_int
.Lfmt_int:
	.asciz	"%d\n"
	.size	.Lfmt_int, 4

	.type	.Lfmt_str.1,@object     # @fmt_str.1
.Lfmt_str.1:
	.asciz	"%s\n"
	.size	.Lfmt_str.1, 4

	.type	.Lfmt_int.2,@object     # @fmt_int.2
.Lfmt_int.2:
	.asciz	"%d\n"
	.size	.Lfmt_int.2, 4

	.type	.Lsystem_string,@object # @system_string
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lsystem_string:
	.asciz	"hello, this is the 2nd test program for remove int main restriction.\\n"
	.size	.Lsystem_string, 71

	.type	.Lfmt_str.3,@object     # @fmt_str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lfmt_str.3:
	.asciz	"%s\n"
	.size	.Lfmt_str.3, 4

	.type	.Lfmt_int.4,@object     # @fmt_int.4
.Lfmt_int.4:
	.asciz	"%d\n"
	.size	.Lfmt_int.4, 4

	.type	.Lfmt_str.5,@object     # @fmt_str.5
.Lfmt_str.5:
	.asciz	"%s\n"
	.size	.Lfmt_str.5, 4

	.type	.Lfmt_int.6,@object     # @fmt_int.6
.Lfmt_int.6:
	.asciz	"%d\n"
	.size	.Lfmt_int.6, 4

	.type	.Lfmt_str.7,@object     # @fmt_str.7
.Lfmt_str.7:
	.asciz	"%s\n"
	.size	.Lfmt_str.7, 4

	.type	.Lfmt_int.8,@object     # @fmt_int.8
.Lfmt_int.8:
	.asciz	"%d\n"
	.size	.Lfmt_int.8, 4

	.type	.Lfmt_str.9,@object     # @fmt_str.9
.Lfmt_str.9:
	.asciz	"%s\n"
	.size	.Lfmt_str.9, 4

	.type	.Lfmt_int.10,@object    # @fmt_int.10
.Lfmt_int.10:
	.asciz	"%d\n"
	.size	.Lfmt_int.10, 4

	.type	.Lfmt_str.11,@object    # @fmt_str.11
.Lfmt_str.11:
	.asciz	"%s\n"
	.size	.Lfmt_str.11, 4

	.type	.Lfmt_int.12,@object    # @fmt_int.12
.Lfmt_int.12:
	.asciz	"%d\n"
	.size	.Lfmt_int.12, 4

	.type	.Lfmt_str.13,@object    # @fmt_str.13
.Lfmt_str.13:
	.asciz	"%s\n"
	.size	.Lfmt_str.13, 4

	.type	.Lfmt_int.14,@object    # @fmt_int.14
.Lfmt_int.14:
	.asciz	"%d\n"
	.size	.Lfmt_int.14, 4

	.type	.Lfmt_str.15,@object    # @fmt_str.15
.Lfmt_str.15:
	.asciz	"%s\n"
	.size	.Lfmt_str.15, 4

	.type	.Lfmt_int.16,@object    # @fmt_int.16
.Lfmt_int.16:
	.asciz	"%d\n"
	.size	.Lfmt_int.16, 4

	.type	.Lfmt_str.17,@object    # @fmt_str.17
.Lfmt_str.17:
	.asciz	"%s\n"
	.size	.Lfmt_str.17, 4

	.type	.Lfmt_int.18,@object    # @fmt_int.18
.Lfmt_int.18:
	.asciz	"%d\n"
	.size	.Lfmt_int.18, 4

	.type	.Lfmt_str.19,@object    # @fmt_str.19
.Lfmt_str.19:
	.asciz	"%s\n"
	.size	.Lfmt_str.19, 4

	.type	.Lfmt_int.20,@object    # @fmt_int.20
.Lfmt_int.20:
	.asciz	"%d\n"
	.size	.Lfmt_int.20, 4

	.type	.Lfmt_str.21,@object    # @fmt_str.21
.Lfmt_str.21:
	.asciz	"%s\n"
	.size	.Lfmt_str.21, 4

	.type	.Lfmt_int.22,@object    # @fmt_int.22
.Lfmt_int.22:
	.asciz	"%d\n"
	.size	.Lfmt_int.22, 4

	.type	.Lfmt_str.23,@object    # @fmt_str.23
.Lfmt_str.23:
	.asciz	"%s\n"
	.size	.Lfmt_str.23, 4

	.type	.Lfmt_int.24,@object    # @fmt_int.24
.Lfmt_int.24:
	.asciz	"%d\n"
	.size	.Lfmt_int.24, 4

	.type	.Lfmt_str.25,@object    # @fmt_str.25
.Lfmt_str.25:
	.asciz	"%s\n"
	.size	.Lfmt_str.25, 4

	.type	.Lfmt_int.26,@object    # @fmt_int.26
.Lfmt_int.26:
	.asciz	"%d\n"
	.size	.Lfmt_int.26, 4

	.type	.Lfmt_str.27,@object    # @fmt_str.27
.Lfmt_str.27:
	.asciz	"%s\n"
	.size	.Lfmt_str.27, 4

	.type	.Lfmt_int.28,@object    # @fmt_int.28
.Lfmt_int.28:
	.asciz	"%d\n"
	.size	.Lfmt_int.28, 4

	.type	.Lfmt_str.29,@object    # @fmt_str.29
.Lfmt_str.29:
	.asciz	"%s\n"
	.size	.Lfmt_str.29, 4

	.type	.Lfmt_int.30,@object    # @fmt_int.30
.Lfmt_int.30:
	.asciz	"%d\n"
	.size	.Lfmt_int.30, 4

	.type	.Lfmt_str.31,@object    # @fmt_str.31
.Lfmt_str.31:
	.asciz	"%s\n"
	.size	.Lfmt_str.31, 4

	.type	.Lfmt_int.32,@object    # @fmt_int.32
.Lfmt_int.32:
	.asciz	"%d\n"
	.size	.Lfmt_int.32, 4

	.type	.Lfmt_str.33,@object    # @fmt_str.33
.Lfmt_str.33:
	.asciz	"%s\n"
	.size	.Lfmt_str.33, 4

	.type	.Lfmt_int.34,@object    # @fmt_int.34
.Lfmt_int.34:
	.asciz	"%d\n"
	.size	.Lfmt_int.34, 4


	.section	".note.GNU-stack","",@progbits
