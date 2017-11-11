	.file	"main_4.ir"
	.text
	.globl	f1
	.align	16, 0x90
	.type	f1,@function
f1:                                     # @f1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp1:
	.cfi_def_cfa_offset 16
	movl	$.Lfmt_int2, %edi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$5, %eax
	popq	%rdx
	ret
.Ltmp2:
	.size	f1, .Ltmp2-f1
	.cfi_endproc

	.globl	f2
	.align	16, 0x90
	.type	f2,@function
f2:                                     # @f2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 16
	callq	f1
	movl	%eax, %ecx
	movl	$.Lfmt_int8, %edi
	xorl	%eax, %eax
	movl	%ecx, %esi
	callq	printf
	movq	$.Lsystem_string, (%rsp)
	movl	$.Lsystem_string, %eax
	popq	%rdx
	ret
.Ltmp5:
	.size	f2, .Ltmp5-f2
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp7:
	.cfi_def_cfa_offset 32
	movl	$0, 20(%rsp)
	movl	$.Lfmt_int18, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf
	callq	f1
	movl	%eax, 16(%rsp)
	movl	$.Lfmt_str21, %edi
	movl	$.Lsystem_string23, %esi
	xorl	%eax, %eax
	callq	printf
	movl	16(%rsp), %esi
	movl	$.Lfmt_int25, %edi
	xorl	%eax, %eax
	callq	printf
	movq	$.Lsystem_string28, 8(%rsp)
	movl	$.Lfmt_str29, %edi
	movl	$.Lsystem_string28, %esi
	xorl	%eax, %eax
	callq	printf
	callq	f2
	movq	%rax, (%rsp)
	movl	$.Lfmt_str33, %edi
	movl	$.Lsystem_string35, %esi
	xorl	%eax, %eax
	callq	printf
	movq	(%rsp), %rsi
	movl	$.Lfmt_str36, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	addq	$24, %rsp
	ret
.Ltmp8:
	.size	main, .Ltmp8-main
	.cfi_endproc

	.type	.Lfmt_str,@object       # @fmt_str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lfmt_str:
	.asciz	"%s\n"
	.size	.Lfmt_str, 4

	.type	.Lfmt_int,@object       # @fmt_int
.Lfmt_int:
	.asciz	"%d\n"
	.size	.Lfmt_int, 4

	.type	.Lfmt_str1,@object      # @fmt_str1
.Lfmt_str1:
	.asciz	"%s\n"
	.size	.Lfmt_str1, 4

	.type	.Lfmt_int2,@object      # @fmt_int2
.Lfmt_int2:
	.asciz	"%d\n"
	.size	.Lfmt_int2, 4

	.type	.Lfmt_str3,@object      # @fmt_str3
.Lfmt_str3:
	.asciz	"%s\n"
	.size	.Lfmt_str3, 4

	.type	.Lfmt_int4,@object      # @fmt_int4
.Lfmt_int4:
	.asciz	"%d\n"
	.size	.Lfmt_int4, 4

	.type	.Lfmt_str5,@object      # @fmt_str5
.Lfmt_str5:
	.asciz	"%s\n"
	.size	.Lfmt_str5, 4

	.type	.Lfmt_int6,@object      # @fmt_int6
.Lfmt_int6:
	.asciz	"%d\n"
	.size	.Lfmt_int6, 4

	.type	.Lfmt_str7,@object      # @fmt_str7
.Lfmt_str7:
	.asciz	"%s\n"
	.size	.Lfmt_str7, 4

	.type	.Lfmt_int8,@object      # @fmt_int8
.Lfmt_int8:
	.asciz	"%d\n"
	.size	.Lfmt_int8, 4

	.type	.Lfmt_str9,@object      # @fmt_str9
.Lfmt_str9:
	.asciz	"%s\n"
	.size	.Lfmt_str9, 4

	.type	.Lfmt_int10,@object     # @fmt_int10
.Lfmt_int10:
	.asciz	"%d\n"
	.size	.Lfmt_int10, 4

	.type	.Lsystem_string,@object # @system_string
.Lsystem_string:
	.asciz	"abc"
	.size	.Lsystem_string, 4

	.type	.Lfmt_str11,@object     # @fmt_str11
.Lfmt_str11:
	.asciz	"%s\n"
	.size	.Lfmt_str11, 4

	.type	.Lfmt_int12,@object     # @fmt_int12
.Lfmt_int12:
	.asciz	"%d\n"
	.size	.Lfmt_int12, 4

	.type	.Lfmt_str13,@object     # @fmt_str13
.Lfmt_str13:
	.asciz	"%s\n"
	.size	.Lfmt_str13, 4

	.type	.Lfmt_int14,@object     # @fmt_int14
.Lfmt_int14:
	.asciz	"%d\n"
	.size	.Lfmt_int14, 4

	.type	.Lfmt_str15,@object     # @fmt_str15
.Lfmt_str15:
	.asciz	"%s\n"
	.size	.Lfmt_str15, 4

	.type	.Lfmt_int16,@object     # @fmt_int16
.Lfmt_int16:
	.asciz	"%d\n"
	.size	.Lfmt_int16, 4

	.type	.Lfmt_str17,@object     # @fmt_str17
.Lfmt_str17:
	.asciz	"%s\n"
	.size	.Lfmt_str17, 4

	.type	.Lfmt_int18,@object     # @fmt_int18
.Lfmt_int18:
	.asciz	"%d\n"
	.size	.Lfmt_int18, 4

	.type	.Lfmt_str19,@object     # @fmt_str19
.Lfmt_str19:
	.asciz	"%s\n"
	.size	.Lfmt_str19, 4

	.type	.Lfmt_int20,@object     # @fmt_int20
.Lfmt_int20:
	.asciz	"%d\n"
	.size	.Lfmt_int20, 4

	.type	.Lfmt_str21,@object     # @fmt_str21
.Lfmt_str21:
	.asciz	"%s\n"
	.size	.Lfmt_str21, 4

	.type	.Lfmt_int22,@object     # @fmt_int22
.Lfmt_int22:
	.asciz	"%d\n"
	.size	.Lfmt_int22, 4

	.type	.Lsystem_string23,@object # @system_string23
.Lsystem_string23:
	.asciz	"now j is :"
	.size	.Lsystem_string23, 11

	.type	.Lfmt_str24,@object     # @fmt_str24
.Lfmt_str24:
	.asciz	"%s\n"
	.size	.Lfmt_str24, 4

	.type	.Lfmt_int25,@object     # @fmt_int25
.Lfmt_int25:
	.asciz	"%d\n"
	.size	.Lfmt_int25, 4

	.type	.Lfmt_str26,@object     # @fmt_str26
.Lfmt_str26:
	.asciz	"%s\n"
	.size	.Lfmt_str26, 4

	.type	.Lfmt_int27,@object     # @fmt_int27
.Lfmt_int27:
	.asciz	"%d\n"
	.size	.Lfmt_int27, 4

	.type	.Lsystem_string28,@object # @system_string28
.Lsystem_string28:
	.asciz	"hahaha"
	.size	.Lsystem_string28, 7

	.type	.Lfmt_str29,@object     # @fmt_str29
.Lfmt_str29:
	.asciz	"%s\n"
	.size	.Lfmt_str29, 4

	.type	.Lfmt_int30,@object     # @fmt_int30
.Lfmt_int30:
	.asciz	"%d\n"
	.size	.Lfmt_int30, 4

	.type	.Lfmt_str31,@object     # @fmt_str31
.Lfmt_str31:
	.asciz	"%s\n"
	.size	.Lfmt_str31, 4

	.type	.Lfmt_int32,@object     # @fmt_int32
.Lfmt_int32:
	.asciz	"%d\n"
	.size	.Lfmt_int32, 4

	.type	.Lfmt_str33,@object     # @fmt_str33
.Lfmt_str33:
	.asciz	"%s\n"
	.size	.Lfmt_str33, 4

	.type	.Lfmt_int34,@object     # @fmt_int34
.Lfmt_int34:
	.asciz	"%d\n"
	.size	.Lfmt_int34, 4

	.type	.Lsystem_string35,@object # @system_string35
.Lsystem_string35:
	.asciz	"now s is :"
	.size	.Lsystem_string35, 11

	.type	.Lfmt_str36,@object     # @fmt_str36
.Lfmt_str36:
	.asciz	"%s\n"
	.size	.Lfmt_str36, 4

	.type	.Lfmt_int37,@object     # @fmt_int37
.Lfmt_int37:
	.asciz	"%d\n"
	.size	.Lfmt_int37, 4


	.section	".note.GNU-stack","",@progbits
