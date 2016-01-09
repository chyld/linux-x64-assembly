	.file	"string.c"
	.globl	s1
	.section	.rodata
.LC0:
	.string	"Hello"
	.data
	.align 8
	.type	s1, @object
	.size	s1, 8
s1:
	.quad	.LC0
	.section	.rodata
.LC1:
	.string	"Goodbye"
.LC2:
	.string	"literal"
.LC3:
	.string	"--%s--"
.LC4:
	.string	"++%s++"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$.LC1, -8(%rbp)
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movq	s1(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.2.1-22ubuntu2) 5.2.1 20151010"
	.section	.note.GNU-stack,"",@progbits
