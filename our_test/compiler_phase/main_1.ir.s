	.text
	.file	"main_1.ir"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi0:
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
                                        # -- End function
	.type	i,@object               # @i
	.bss
	.globl	i
	.p2align	2
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
