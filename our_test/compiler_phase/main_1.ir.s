	.text
	.file	"main.ir"
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	movl	$.Lsmt, %edi
	movl	$.Lsystem_string, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$2, i(%rip)
	xorl	%eax, %eax
	popq	%rcx
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.type	i,@object               # @i
	.bss
	.globl	i
	.align	4
i:
	.long	0                       # 0x0
	.size	i, 4

	.type	.Lsmt,@object           # @smt
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lsmt:
	.asciz	"%s\n"
	.size	.Lsmt, 4

	.type	.Lsystem_string,@object # @system_string
.Lsystem_string:
	.asciz	"Hello world!"
	.size	.Lsystem_string, 13


	.section	".note.GNU-stack","",@progbits
