	.file	"matrix.c"
	.text
.Ltext0:
	.type	_hardcrash, @function
_hardcrash:
.LFB0:
	.file 1 "matrix.c"
	.loc 1 17 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 21 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_hardcrash, .-_hardcrash
	.type	_add, @function
_add:
.LFB1:
	.loc 1 23 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	.loc 1 24 0
	movss	-4(%rbp), %xmm0
	addss	-8(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movl	-12(%rbp), %eax
	.loc 1 25 0
	movl	%eax, -12(%rbp)
	movss	-12(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_add, .-_add
	.type	_sub, @function
_sub:
.LFB2:
	.loc 1 27 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	.loc 1 28 0
	movss	-4(%rbp), %xmm0
	subss	-8(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movl	-12(%rbp), %eax
	.loc 1 29 0
	movl	%eax, -12(%rbp)
	movss	-12(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	_sub, .-_sub
	.type	_mul, @function
_mul:
.LFB3:
	.loc 1 31 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	.loc 1 32 0
	movss	-4(%rbp), %xmm0
	mulss	-8(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movl	-12(%rbp), %eax
	.loc 1 33 0
	movl	%eax, -12(%rbp)
	movss	-12(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	_mul, .-_mul
	.type	_div, @function
_div:
.LFB4:
	.loc 1 35 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	.loc 1 36 0
	movss	-4(%rbp), %xmm0
	divss	-8(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movl	-12(%rbp), %eax
	.loc 1 37 0
	movl	%eax, -12(%rbp)
	movss	-12(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	_div, .-_div
	.type	_val, @function
_val:
.LFB5:
	.loc 1 39 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	.loc 1 40 0
	movss	-8(%rbp), %xmm1
	xorps	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movl	-12(%rbp), %eax
	.loc 1 41 0
	movl	%eax, -12(%rbp)
	movss	-12(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	_val, .-_val
	.type	_getE, @function
_getE:
.LFB6:
	.loc 1 43 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	.loc 1 44 0
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	imull	-12(%rbp), %eax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	movslq	%edx, %rdx
	movl	8(%rax,%rdx,4), %eax
	.loc 1 45 0
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	_getE, .-_getE
	.type	_setE, @function
_setE:
.LFB7:
	.loc 1 51 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	.loc 1 52 0
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	imull	-12(%rbp), %eax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	movq	-8(%rbp), %rdx
	movslq	%eax, %rcx
	movl	-20(%rbp), %eax
	movl	%eax, 8(%rdx,%rcx,4)
	.loc 1 53 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	_setE, .-_setE
	.type	_addE, @function
_addE:
.LFB8:
	.loc 1 59 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	.loc 1 60 0
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_getE
	addss	-20(%rbp), %xmm0
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_setE
	.loc 1 61 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	_addE, .-_addE
	.type	_manipulate, @function
_manipulate:
.LFB9:
	.loc 1 65 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	movq	%rsi, -40(%rbp)
.LBB2:
	.loc 1 66 0
	movl	$0, -8(%rbp)
	jmp	.L17
.L20:
.LBB3:
	.loc 1 67 0
	movl	$0, -4(%rbp)
	jmp	.L18
.L19:
	.loc 1 68 0 discriminator 2
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_getE
	movss	%xmm0, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	movl	%edx, -32(%rbp)
	movss	-32(%rbp), %xmm1
	movl	%eax, -32(%rbp)
	movss	-32(%rbp), %xmm0
	call	*%rcx
	movss	%xmm0, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %esi
	movq	-24(%rbp), %rcx
	movl	%eax, -32(%rbp)
	movss	-32(%rbp), %xmm0
	movq	%rcx, %rdi
	call	_setE
	.loc 1 67 0 discriminator 2
	addl	$1, -4(%rbp)
.L18:
	.loc 1 67 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L19
.LBE3:
	.loc 1 66 0 is_stmt 1
	addl	$1, -8(%rbp)
.L17:
	.loc 1 66 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-8(%rbp), %eax
	jg	.L20
.LBE2:
	.loc 1 71 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	_manipulate, .-_manipulate
	.section	.rodata
.LC1:
	.string	"val %f\n"
	.text
	.type	_operate, @function
_operate:
.LFB10:
	.loc 1 78 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	.loc 1 80 0
	movl	.LC0(%rip), %eax
	movl	%eax, -16(%rbp)
.LBB4:
	.loc 1 82 0
	movl	-20(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L22
.L25:
.LBB5:
	.loc 1 83 0
	movl	-28(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L23
.L24:
	.loc 1 84 0 discriminator 2
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_getE
	movss	%xmm0, -52(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
	.loc 1 85 0 discriminator 2
	movl	-16(%rbp), %edx
	movl	-4(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%edx, -52(%rbp)
	movss	-52(%rbp), %xmm1
	movl	%eax, -52(%rbp)
	movss	-52(%rbp), %xmm0
	call	*%rcx
	movss	%xmm0, -52(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -16(%rbp)
	.loc 1 86 0 discriminator 2
	movss	-16(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	$.LC1, %edi
	movl	$1, %eax
	call	printf
	.loc 1 83 0 discriminator 2
	addl	$1, -8(%rbp)
.L23:
	.loc 1 83 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jle	.L24
.LBE5:
	.loc 1 82 0 is_stmt 1
	addl	$1, -12(%rbp)
.L22:
	.loc 1 82 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.L25
.LBE4:
	.loc 1 89 0 is_stmt 1
	movl	-16(%rbp), %eax
	.loc 1 90 0
	movl	%eax, -52(%rbp)
	movss	-52(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	_operate, .-_operate
	.section	.rodata
	.align 8
.LC2:
	.string	"ERROR r is less than 1 in newMatrix, a matrix must have rows greater than 0\n"
	.align 8
.LC3:
	.string	"ERROR c is less than 1 in newMatrix, a matrix must have cols greater than 0\n"
	.align 8
.LC4:
	.string	"ERROR mat is NULL in newMatrix\n"
	.text
	.globl	newMatrix
	.type	newMatrix, @function
newMatrix:
.LFB11:
	.loc 1 96 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	.loc 1 99 0
	cmpl	$0, -20(%rbp)
	jg	.L28
	.loc 1 100 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$76, %edx
	movl	$1, %esi
	movl	$.LC2, %edi
	call	fwrite
	.loc 1 102 0
	call	_hardcrash
	.loc 1 103 0
	movl	$0, %eax
	jmp	.L29
.L28:
	.loc 1 105 0
	cmpl	$0, -24(%rbp)
	jg	.L30
	.loc 1 106 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$76, %edx
	movl	$1, %esi
	movl	$.LC3, %edi
	call	fwrite
	.loc 1 108 0
	call	_hardcrash
	.loc 1 109 0
	movl	$0, %eax
	jmp	.L29
.L30:
	.loc 1 112 0
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movl	-24(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	addq	$2, %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -8(%rbp)
	.loc 1 114 0
	cmpq	$0, -8(%rbp)
	jne	.L31
	.loc 1 115 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$31, %edx
	movl	$1, %esi
	movl	$.LC4, %edi
	call	fwrite
	.loc 1 116 0
	call	_hardcrash
	.loc 1 117 0
	movl	$0, %eax
	jmp	.L29
.L31:
	.loc 1 120 0
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 121 0
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 4(%rax)
.LBB6:
	.loc 1 125 0
	movl	$0, -16(%rbp)
	jmp	.L32
.L35:
.LBB7:
	.loc 1 126 0
	movl	$0, -12(%rbp)
	jmp	.L33
.L34:
	.loc 1 127 0 discriminator 2
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	xorps	%xmm0, %xmm0
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_setE
	.loc 1 126 0 discriminator 2
	addl	$1, -12(%rbp)
.L33:
	.loc 1 126 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L34
.LBE7:
	.loc 1 125 0 is_stmt 1
	addl	$1, -16(%rbp)
.L32:
	.loc 1 125 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L35
.LBE6:
	.loc 1 130 0 is_stmt 1
	movq	-8(%rbp), %rax
.L29:
	.loc 1 131 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	newMatrix, .-newMatrix
	.section	.rodata
	.align 8
.LC5:
	.string	"ERROR mat is NULL in deleteMatrix\n"
	.text
	.globl	deleteMatrix
	.type	deleteMatrix, @function
deleteMatrix:
.LFB12:
	.loc 1 134 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 136 0
	cmpq	$0, -8(%rbp)
	jne	.L37
	.loc 1 137 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	movl	$1, %esi
	movl	$.LC5, %edi
	call	fwrite
	.loc 1 138 0
	call	_hardcrash
	.loc 1 139 0
	movl	$-1, %eax
	jmp	.L38
.L37:
	.loc 1 142 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	.loc 1 143 0
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	.loc 1 144 0
	movl	$0, %eax
.L38:
	.loc 1 145 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	deleteMatrix, .-deleteMatrix
	.section	.rodata
	.align 8
.LC6:
	.string	"ERROR mat is NULL in printMatrix\n"
	.align 8
.LC7:
	.string	"\n*****************************************"
.LC8:
	.string	"Cols %d Rows %d\n\n"
.LC9:
	.string	"\t Col %6d\t"
.LC10:
	.string	"Row %d\t"
.LC11:
	.string	"%8f\t"
	.text
	.globl	printMatrix
	.type	printMatrix, @function
printMatrix:
.LFB13:
	.loc 1 148 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 150 0
	cmpq	$0, -24(%rbp)
	jne	.L40
	.loc 1 151 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	movl	$1, %esi
	movl	$.LC6, %edi
	call	fwrite
	.loc 1 152 0
	call	_hardcrash
	.loc 1 153 0
	movl	$-1, %eax
	jmp	.L41
.L40:
	.loc 1 156 0
	movl	$.LC7, %edi
	call	puts
	.loc 1 157 0
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %esi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
.LBB8:
	.loc 1 159 0
	movl	$0, -12(%rbp)
	jmp	.L42
.L43:
	.loc 1 160 0 discriminator 2
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
	.loc 1 159 0 discriminator 2
	addl	$1, -12(%rbp)
.L42:
	.loc 1 159 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	-12(%rbp), %eax
	jg	.L43
.LBE8:
	.loc 1 162 0 is_stmt 1
	movl	$10, %edi
	call	putchar
.LBB9:
	.loc 1 164 0
	movl	$0, -8(%rbp)
	jmp	.L44
.L47:
	.loc 1 165 0
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	printf
.LBB10:
	.loc 1 166 0
	movl	$0, -4(%rbp)
	jmp	.L45
.L46:
	.loc 1 167 0 discriminator 2
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_getE
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	$.LC11, %edi
	movl	$1, %eax
	call	printf
	.loc 1 166 0 discriminator 2
	addl	$1, -4(%rbp)
.L45:
	.loc 1 166 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L46
.LBE10:
	.loc 1 169 0 is_stmt 1
	movl	$10, %edi
	call	putchar
	.loc 1 164 0
	addl	$1, -8(%rbp)
.L44:
	.loc 1 164 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-8(%rbp), %eax
	jg	.L47
.LBE9:
	.loc 1 171 0 is_stmt 1
	movl	$10, %edi
	call	putchar
	.loc 1 173 0
	movl	$0, %eax
.L41:
	.loc 1 174 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	printMatrix, .-printMatrix
	.section	.rodata
	.align 8
.LC12:
	.string	"ERROR mat is NULL in printIntMatrix\n"
.LC13:
	.string	"%3d "
	.text
	.globl	printIntMatrix
	.type	printIntMatrix, @function
printIntMatrix:
.LFB14:
	.loc 1 176 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 178 0
	cmpq	$0, -24(%rbp)
	jne	.L49
	.loc 1 179 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$36, %edx
	movl	$1, %esi
	movl	$.LC12, %edi
	call	fwrite
	.loc 1 180 0
	call	_hardcrash
	.loc 1 181 0
	movl	$-1, %eax
	jmp	.L50
.L49:
	.loc 1 184 0
	movl	$.LC7, %edi
	call	puts
	.loc 1 185 0
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %esi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
.LBB11:
	.loc 1 187 0
	movl	$0, -8(%rbp)
	jmp	.L51
.L54:
.LBB12:
	.loc 1 188 0
	movl	$0, -4(%rbp)
	jmp	.L52
.L53:
	.loc 1 189 0 discriminator 2
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_getE
	cvttss2si	%xmm0, %eax
	movl	%eax, %esi
	movl	$.LC13, %edi
	movl	$0, %eax
	call	printf
	.loc 1 188 0 discriminator 2
	addl	$1, -4(%rbp)
.L52:
	.loc 1 188 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L53
.LBE12:
	.loc 1 191 0 is_stmt 1
	movl	$10, %edi
	call	putchar
	.loc 1 187 0
	addl	$1, -8(%rbp)
.L51:
	.loc 1 187 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-8(%rbp), %eax
	jg	.L54
.LBE11:
	.loc 1 194 0 is_stmt 1
	movl	$0, %eax
.L50:
	.loc 1 195 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	printIntMatrix, .-printIntMatrix
	.section	.rodata
	.align 8
.LC14:
	.string	"ERROR mat is NULL in getRowsMatrix\n"
	.text
	.globl	getRowsMatrix
	.type	getRowsMatrix, @function
getRowsMatrix:
.LFB15:
	.loc 1 198 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 200 0
	cmpq	$0, -8(%rbp)
	jne	.L56
	.loc 1 201 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	movl	$1, %esi
	movl	$.LC14, %edi
	call	fwrite
	.loc 1 202 0
	call	_hardcrash
	.loc 1 203 0
	movl	$-1, %eax
	jmp	.L57
.L56:
	.loc 1 206 0
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
.L57:
	.loc 1 207 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	getRowsMatrix, .-getRowsMatrix
	.section	.rodata
	.align 8
.LC15:
	.string	"ERROR mat is NULL in getColsMatrix\n"
	.text
	.globl	getColsMatrix
	.type	getColsMatrix, @function
getColsMatrix:
.LFB16:
	.loc 1 209 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 211 0
	cmpq	$0, -8(%rbp)
	jne	.L59
	.loc 1 212 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	movl	$1, %esi
	movl	$.LC15, %edi
	call	fwrite
	.loc 1 213 0
	call	_hardcrash
	.loc 1 214 0
	movl	$-1, %eax
	jmp	.L60
.L59:
	.loc 1 217 0
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
.L60:
	.loc 1 218 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	getColsMatrix, .-getColsMatrix
	.section	.rodata
	.align 8
.LC16:
	.string	"ERROR mat is NULL in getTotalElemsMatrix\n"
	.text
	.globl	getTotalElemsMatrix
	.type	getTotalElemsMatrix, @function
getTotalElemsMatrix:
.LFB17:
	.loc 1 220 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 222 0
	cmpq	$0, -8(%rbp)
	jne	.L62
	.loc 1 223 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$41, %edx
	movl	$1, %esi
	movl	$.LC16, %edi
	call	fwrite
	.loc 1 224 0
	call	_hardcrash
	.loc 1 225 0
	movl	$-1, %eax
	jmp	.L63
.L62:
	.loc 1 228 0
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
.L63:
	.loc 1 229 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	getTotalElemsMatrix, .-getTotalElemsMatrix
	.section	.rodata
	.align 8
.LC17:
	.string	"ERROR mat is NULL in sumAllElemsMatrix\n"
	.align 8
.LC18:
	.string	"ERROR sum is NULL in sumAllElemsMatrix\n"
.LC19:
	.string	"sum %f rows %d cols %d\n"
	.text
	.globl	sumAllElemsMatrix
	.type	sumAllElemsMatrix, @function
sumAllElemsMatrix:
.LFB18:
	.loc 1 231 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 234 0
	cmpq	$0, -8(%rbp)
	jne	.L65
	.loc 1 235 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$39, %edx
	movl	$1, %esi
	movl	$.LC17, %edi
	call	fwrite
	.loc 1 236 0
	call	_hardcrash
	.loc 1 237 0
	movl	$-1, %eax
	jmp	.L66
.L65:
	.loc 1 239 0
	cmpq	$0, -16(%rbp)
	jne	.L67
	.loc 1 240 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$39, %edx
	movl	$1, %esi
	movl	$.LC18, %edi
	call	fwrite
	.loc 1 241 0
	call	_hardcrash
	.loc 1 242 0
	movl	$-1, %eax
	jmp	.L66
.L67:
	.loc 1 245 0
	movq	-16(%rbp), %rdx
	movl	.LC0(%rip), %eax
	movl	%eax, (%rdx)
	.loc 1 248 0
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 247 0
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movq	-8(%rbp), %rcx
	movl	$_add, %r9d
	movq	%rcx, %r8
	movl	%edx, %ecx
	movl	$0, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	_operate
	movss	%xmm0, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rdx
	movl	%eax, (%rdx)
	.loc 1 251 0
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movss	(%rcx), %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	%eax, %esi
	movl	$.LC19, %edi
	movl	$1, %eax
	call	printf
	.loc 1 252 0
	movl	$0, %eax
.L66:
	.loc 1 253 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	sumAllElemsMatrix, .-sumAllElemsMatrix
	.section	.rodata
	.align 8
.LC20:
	.string	"ERROR mat is NULL in sumElemsMatrix\n"
	.align 8
.LC21:
	.string	"ERROR sum is NULL in sumElemsMatrix\n"
	.align 8
.LC22:
	.string	"ERROR start_row < 0 in sumElemsMatrix\n"
	.align 8
.LC23:
	.string	"ERROR start_row > end_row in sumElemsMatrix\n"
	.align 8
.LC24:
	.string	"ERROR end_row >= mat->rows in sumElemsMatrix\n"
	.align 8
.LC25:
	.string	"ERROR start_col < 0 in sumElemsMatrix\n"
	.align 8
.LC26:
	.string	"ERROR start_col > end_col in sumElemsMatrix\n"
	.align 8
.LC27:
	.string	"ERROR end_col is >= mat->cols in sumElemsMatrix\n"
	.text
	.globl	sumElemsMatrix
	.type	sumElemsMatrix, @function
sumElemsMatrix:
.LFB19:
	.loc 1 260 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movq	%r8, -24(%rbp)
	movq	%r9, -32(%rbp)
	.loc 1 263 0
	cmpq	$0, -24(%rbp)
	jne	.L69
	.loc 1 264 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$36, %edx
	movl	$1, %esi
	movl	$.LC20, %edi
	call	fwrite
	.loc 1 265 0
	call	_hardcrash
	.loc 1 266 0
	movl	$-1, %eax
	jmp	.L70
.L69:
	.loc 1 268 0
	cmpq	$0, -32(%rbp)
	jne	.L71
	.loc 1 269 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$36, %edx
	movl	$1, %esi
	movl	$.LC21, %edi
	call	fwrite
	.loc 1 270 0
	call	_hardcrash
	.loc 1 271 0
	movl	$-1, %eax
	jmp	.L70
.L71:
	.loc 1 273 0
	cmpl	$0, -4(%rbp)
	jns	.L72
	.loc 1 274 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$38, %edx
	movl	$1, %esi
	movl	$.LC22, %edi
	call	fwrite
	.loc 1 275 0
	call	_hardcrash
	.loc 1 276 0
	movl	$-1, %eax
	jmp	.L70
.L72:
	.loc 1 278 0
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L73
	.loc 1 279 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$44, %edx
	movl	$1, %esi
	movl	$.LC23, %edi
	call	fwrite
	.loc 1 280 0
	call	_hardcrash
	.loc 1 281 0
	movl	$-1, %eax
	jmp	.L70
.L73:
	.loc 1 283 0
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-8(%rbp), %eax
	jg	.L74
	.loc 1 284 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$45, %edx
	movl	$1, %esi
	movl	$.LC24, %edi
	call	fwrite
	.loc 1 285 0
	call	_hardcrash
	.loc 1 286 0
	movl	$-1, %eax
	jmp	.L70
.L74:
	.loc 1 288 0
	cmpl	$0, -12(%rbp)
	jns	.L75
	.loc 1 289 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$38, %edx
	movl	$1, %esi
	movl	$.LC25, %edi
	call	fwrite
	.loc 1 290 0
	call	_hardcrash
	.loc 1 291 0
	movl	$-1, %eax
	jmp	.L70
.L75:
	.loc 1 293 0
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.L76
	.loc 1 294 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$44, %edx
	movl	$1, %esi
	movl	$.LC26, %edi
	call	fwrite
	.loc 1 295 0
	call	_hardcrash
	.loc 1 296 0
	movl	$-1, %eax
	jmp	.L70
.L76:
	.loc 1 298 0
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	-16(%rbp), %eax
	jg	.L77
	.loc 1 299 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$48, %edx
	movl	$1, %esi
	movl	$.LC27, %edi
	call	fwrite
	.loc 1 300 0
	call	_hardcrash
	.loc 1 301 0
	movl	$-1, %eax
	jmp	.L70
.L77:
	.loc 1 304 0
	movq	-32(%rbp), %rdx
	movl	.LC0(%rip), %eax
	movl	%eax, (%rdx)
	.loc 1 306 0
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 305 0
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movq	-24(%rbp), %rcx
	movl	$_add, %r9d
	movq	%rcx, %r8
	movl	%edx, %ecx
	movl	$0, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	_operate
	movss	%xmm0, -36(%rbp)
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rdx
	movl	%eax, (%rdx)
	.loc 1 309 0
	movl	$0, %eax
.L70:
	.loc 1 310 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	sumElemsMatrix, .-sumElemsMatrix
	.section	.rodata
	.align 8
.LC28:
	.string	"ERROR mat is NULL in getElemMatrix\n"
	.align 8
.LC29:
	.string	"ERROR val is NULL in getElemMatrix\n"
	.align 8
.LC30:
	.string	"ERROR r is less than 0 in getElemMatrix\n"
	.align 8
.LC31:
	.string	"ERROR c is less than 0 in getElemMatrix\n"
	.align 8
.LC32:
	.string	"ERROR r greater than rows in matrix getElemMatrix\n"
	.align 8
.LC33:
	.string	"ERROR c greater than cols in matrix getElemMatrix\n"
	.text
	.globl	getElemMatrix
	.type	getElemMatrix, @function
getElemMatrix:
.LFB20:
	.loc 1 312 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	.loc 1 315 0
	cmpq	$0, -8(%rbp)
	jne	.L79
	.loc 1 316 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	movl	$1, %esi
	movl	$.LC28, %edi
	call	fwrite
	.loc 1 317 0
	call	_hardcrash
	.loc 1 318 0
	movl	$-1, %eax
	jmp	.L80
.L79:
	.loc 1 320 0
	cmpq	$0, -24(%rbp)
	jne	.L81
	.loc 1 321 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	movl	$1, %esi
	movl	$.LC29, %edi
	call	fwrite
	.loc 1 322 0
	call	_hardcrash
	.loc 1 323 0
	movl	$-1, %eax
	jmp	.L80
.L81:
	.loc 1 325 0
	cmpl	$0, -12(%rbp)
	jns	.L82
	.loc 1 326 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$40, %edx
	movl	$1, %esi
	movl	$.LC30, %edi
	call	fwrite
	.loc 1 327 0
	call	_hardcrash
	.loc 1 328 0
	movl	$-1, %eax
	jmp	.L80
.L82:
	.loc 1 330 0
	cmpl	$0, -16(%rbp)
	jns	.L83
	.loc 1 331 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$40, %edx
	movl	$1, %esi
	movl	$.LC31, %edi
	call	fwrite
	.loc 1 332 0
	call	_hardcrash
	.loc 1 333 0
	movl	$-1, %eax
	jmp	.L80
.L83:
	.loc 1 335 0
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-12(%rbp), %eax
	jg	.L84
	.loc 1 336 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$50, %edx
	movl	$1, %esi
	movl	$.LC32, %edi
	call	fwrite
	.loc 1 337 0
	call	_hardcrash
	.loc 1 338 0
	movl	$-1, %eax
	jmp	.L80
.L84:
	.loc 1 340 0
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	-16(%rbp), %eax
	jg	.L85
	.loc 1 341 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$50, %edx
	movl	$1, %esi
	movl	$.LC33, %edi
	call	fwrite
	.loc 1 342 0
	call	_hardcrash
	.loc 1 343 0
	movl	$-1, %eax
	jmp	.L80
.L85:
	.loc 1 346 0
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_getE
	movss	%xmm0, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx)
	.loc 1 347 0
	movl	$0, %eax
.L80:
	.loc 1 348 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	getElemMatrix, .-getElemMatrix
	.section	.rodata
	.align 8
.LC34:
	.string	"ERROR mat is NULL in setElemMatrix\n"
	.align 8
.LC35:
	.string	"ERROR row is less than 0 in setElemMatrix\n"
	.align 8
.LC36:
	.string	"ERROR col is less than 0 in setElemMatrix\n"
	.align 8
.LC37:
	.string	"ERROR row greater than rows in matrix setElemMatrix\n"
	.align 8
.LC38:
	.string	"ERROR col greater than cols in matrix setElemMatrix\n"
	.text
	.globl	setElemMatrix
	.type	setElemMatrix, @function
setElemMatrix:
.LFB21:
	.loc 1 351 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	.loc 1 354 0
	cmpq	$0, -8(%rbp)
	jne	.L87
	.loc 1 355 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	movl	$1, %esi
	movl	$.LC34, %edi
	call	fwrite
	.loc 1 356 0
	call	_hardcrash
	.loc 1 357 0
	movl	$-1, %eax
	jmp	.L88
.L87:
	.loc 1 359 0
	cmpl	$0, -12(%rbp)
	jns	.L89
	.loc 1 360 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$42, %edx
	movl	$1, %esi
	movl	$.LC35, %edi
	call	fwrite
	.loc 1 361 0
	call	_hardcrash
	.loc 1 362 0
	movl	$-1, %eax
	jmp	.L88
.L89:
	.loc 1 364 0
	cmpl	$0, -16(%rbp)
	jns	.L90
	.loc 1 365 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$42, %edx
	movl	$1, %esi
	movl	$.LC36, %edi
	call	fwrite
	.loc 1 366 0
	call	_hardcrash
	.loc 1 367 0
	movl	$-1, %eax
	jmp	.L88
.L90:
	.loc 1 369 0
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-12(%rbp), %eax
	jg	.L91
	.loc 1 370 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$52, %edx
	movl	$1, %esi
	movl	$.LC37, %edi
	call	fwrite
	.loc 1 371 0
	call	_hardcrash
	.loc 1 372 0
	movl	$-1, %eax
	jmp	.L88
.L91:
	.loc 1 374 0
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	-16(%rbp), %eax
	jg	.L92
	.loc 1 375 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$52, %edx
	movl	$1, %esi
	movl	$.LC38, %edi
	call	fwrite
	.loc 1 376 0
	call	_hardcrash
	.loc 1 377 0
	movl	$-1, %eax
	jmp	.L88
.L92:
	.loc 1 380 0
	movl	-20(%rbp), %eax
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rcx
	movl	%eax, -24(%rbp)
	movss	-24(%rbp), %xmm0
	movq	%rcx, %rdi
	call	_setE
	.loc 1 382 0
	movl	$0, %eax
.L88:
	.loc 1 383 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	setElemMatrix, .-setElemMatrix
	.section	.rodata
	.align 8
.LC39:
	.string	"ERROR mat is NULL in setAllMatrix\n"
	.text
	.globl	setAllMatrix
	.type	setAllMatrix, @function
setAllMatrix:
.LFB22:
	.loc 1 385 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	.loc 1 388 0
	cmpq	$0, -8(%rbp)
	jne	.L94
	.loc 1 389 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	movl	$1, %esi
	movl	$.LC39, %edi
	call	fwrite
	.loc 1 390 0
	call	_hardcrash
	.loc 1 391 0
	movl	$-1, %eax
	jmp	.L95
.L94:
	.loc 1 394 0
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	$_val, %esi
	movl	%eax, -16(%rbp)
	movss	-16(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_manipulate
	.loc 1 395 0
	movl	$0, %eax
.L95:
	.loc 1 396 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	setAllMatrix, .-setAllMatrix
	.section	.rodata
	.align 8
.LC40:
	.string	"ERROR mat is NULL in addAllMatrix\n"
	.text
	.globl	addAllMatrix
	.type	addAllMatrix, @function
addAllMatrix:
.LFB23:
	.loc 1 398 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	.loc 1 401 0
	cmpq	$0, -8(%rbp)
	jne	.L97
	.loc 1 402 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	movl	$1, %esi
	movl	$.LC40, %edi
	call	fwrite
	.loc 1 403 0
	call	_hardcrash
	.loc 1 404 0
	movl	$-1, %eax
	jmp	.L98
.L97:
	.loc 1 407 0
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	$_add, %esi
	movl	%eax, -16(%rbp)
	movss	-16(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_manipulate
	.loc 1 408 0
	movl	$0, %eax
.L98:
	.loc 1 409 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	addAllMatrix, .-addAllMatrix
	.section	.rodata
	.align 8
.LC41:
	.string	"ERROR mat is NULL in subAllMatrix\n"
	.text
	.globl	subAllMatrix
	.type	subAllMatrix, @function
subAllMatrix:
.LFB24:
	.loc 1 411 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	.loc 1 414 0
	cmpq	$0, -8(%rbp)
	jne	.L100
	.loc 1 415 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	movl	$1, %esi
	movl	$.LC41, %edi
	call	fwrite
	.loc 1 416 0
	call	_hardcrash
	.loc 1 417 0
	movl	$-1, %eax
	jmp	.L101
.L100:
	.loc 1 420 0
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	$_sub, %esi
	movl	%eax, -16(%rbp)
	movss	-16(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_manipulate
	.loc 1 421 0
	movl	$0, %eax
.L101:
	.loc 1 422 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	subAllMatrix, .-subAllMatrix
	.section	.rodata
	.align 8
.LC42:
	.string	"ERROR mat is NULL in mulAllMatrix\n"
	.text
	.globl	mulAllMatrix
	.type	mulAllMatrix, @function
mulAllMatrix:
.LFB25:
	.loc 1 424 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	.loc 1 427 0
	cmpq	$0, -8(%rbp)
	jne	.L103
	.loc 1 428 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	movl	$1, %esi
	movl	$.LC42, %edi
	call	fwrite
	.loc 1 429 0
	call	_hardcrash
	.loc 1 430 0
	movl	$-1, %eax
	jmp	.L104
.L103:
	.loc 1 433 0
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	$_mul, %esi
	movl	%eax, -16(%rbp)
	movss	-16(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_manipulate
	.loc 1 434 0
	movl	$0, %eax
.L104:
	.loc 1 435 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	mulAllMatrix, .-mulAllMatrix
	.section	.rodata
	.align 8
.LC43:
	.string	"ERROR mat is NULL in divAllMatrix\n"
	.text
	.globl	divAllMatrix
	.type	divAllMatrix, @function
divAllMatrix:
.LFB26:
	.loc 1 437 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	.loc 1 440 0
	cmpq	$0, -8(%rbp)
	jne	.L106
	.loc 1 441 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	movl	$1, %esi
	movl	$.LC43, %edi
	call	fwrite
	.loc 1 442 0
	call	_hardcrash
	.loc 1 443 0
	movl	$-1, %eax
	jmp	.L107
.L106:
	.loc 1 446 0
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	$_div, %esi
	movl	%eax, -16(%rbp)
	movss	-16(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_manipulate
	.loc 1 447 0
	movl	$0, %eax
.L107:
	.loc 1 448 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	divAllMatrix, .-divAllMatrix
	.section	.rodata
	.align 8
.LC44:
	.string	"ERROR mat_copy is NULL in copyMatrix\n"
	.align 8
.LC45:
	.string	"ERROR *mat_copy is NULL in copyMatrix\n"
	.align 8
.LC46:
	.string	"ERROR mat_orig is NULL in copyMatrix\n"
	.align 8
.LC47:
	.string	"ERROR start_row_elem is larger than end_row in copyMatrix\n"
	.align 8
.LC48:
	.string	"ERROR start_col_elem  larger than end_col in copyMatrix\n"
	.align 8
.LC49:
	.string	"ERROR start_row_elem  is less than 0 in copyMatrix\n"
	.align 8
.LC50:
	.string	"ERROR start_col_elem  is less than 0 in copyMatrix\n"
	.align 8
.LC51:
	.string	"ERROR end_row_elem  extends past the row length of the original matrix in copyMatrix\n"
	.align 8
.LC52:
	.string	"ERROR end_col_elem  is larger than the column length of theoriginal matrix in copyMatrix\n"
	.align 8
.LC53:
	.string	"ERROR rows to be copied extend past the row length of mat_copy in copyMatrix\n"
	.align 8
.LC54:
	.string	"ERROR columns extend past the column length of mat_copy in copyMatrix\n"
	.text
	.globl	copyMatrix
	.type	copyMatrix, @function
copyMatrix:
.LFB27:
	.loc 1 460 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	.loc 1 462 0
	movl	-44(%rbp), %eax
	movl	-48(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%rbp)
	.loc 1 463 0
	movl	-36(%rbp), %eax
	movl	-40(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -8(%rbp)
	.loc 1 465 0
	cmpq	$0, -64(%rbp)
	jne	.L109
	.loc 1 466 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$37, %edx
	movl	$1, %esi
	movl	$.LC44, %edi
	call	fwrite
	.loc 1 467 0
	call	_hardcrash
	.loc 1 468 0
	movl	$-1, %eax
	jmp	.L110
.L109:
	.loc 1 470 0
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L111
	.loc 1 471 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$38, %edx
	movl	$1, %esi
	movl	$.LC45, %edi
	call	fwrite
	.loc 1 472 0
	call	_hardcrash
	.loc 1 473 0
	movl	$-1, %eax
	jmp	.L110
.L111:
	.loc 1 475 0
	cmpq	$0, -56(%rbp)
	jne	.L112
	.loc 1 476 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$37, %edx
	movl	$1, %esi
	movl	$.LC46, %edi
	call	fwrite
	.loc 1 477 0
	call	_hardcrash
	.loc 1 478 0
	movl	$-1, %eax
	jmp	.L110
.L112:
	.loc 1 480 0
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L113
	.loc 1 481 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$58, %edx
	movl	$1, %esi
	movl	$.LC47, %edi
	call	fwrite
	.loc 1 483 0
	call	_hardcrash
	.loc 1 484 0
	movl	$-1, %eax
	jmp	.L110
.L113:
	.loc 1 486 0
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L114
	.loc 1 487 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$56, %edx
	movl	$1, %esi
	movl	$.LC48, %edi
	call	fwrite
	.loc 1 489 0
	call	_hardcrash
	.loc 1 490 0
	movl	$-1, %eax
	jmp	.L110
.L114:
	.loc 1 492 0
	cmpl	$0, -36(%rbp)
	jns	.L115
	.loc 1 493 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$51, %edx
	movl	$1, %esi
	movl	$.LC49, %edi
	call	fwrite
	.loc 1 495 0
	call	_hardcrash
	.loc 1 496 0
	movl	$-1, %eax
	jmp	.L110
.L115:
	.loc 1 498 0
	cmpl	$0, -44(%rbp)
	jns	.L116
	.loc 1 499 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$51, %edx
	movl	$1, %esi
	movl	$.LC50, %edi
	call	fwrite
	.loc 1 501 0
	call	_hardcrash
	.loc 1 502 0
	movl	$-1, %eax
	jmp	.L110
.L116:
	.loc 1 504 0
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-40(%rbp), %eax
	jge	.L117
	.loc 1 505 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$85, %edx
	movl	$1, %esi
	movl	$.LC51, %edi
	call	fwrite
	.loc 1 507 0
	call	_hardcrash
	.loc 1 508 0
	movl	$-1, %eax
	jmp	.L110
.L117:
	.loc 1 510 0
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	-48(%rbp), %eax
	jge	.L118
	.loc 1 511 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$89, %edx
	movl	$1, %esi
	movl	$.LC52, %edi
	call	fwrite
	.loc 1 513 0
	call	_hardcrash
	.loc 1 514 0
	movl	$-1, %eax
	jmp	.L110
.L118:
	.loc 1 516 0
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	-8(%rbp), %eax
	jge	.L119
	.loc 1 517 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$77, %edx
	movl	$1, %esi
	movl	$.LC53, %edi
	call	fwrite
	.loc 1 519 0
	call	_hardcrash
	.loc 1 520 0
	movl	$-1, %eax
	jmp	.L110
.L119:
	.loc 1 522 0
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	cmpl	-12(%rbp), %eax
	jge	.L120
	.loc 1 523 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$70, %edx
	movl	$1, %esi
	movl	$.LC54, %edi
	call	fwrite
	.loc 1 525 0
	call	_hardcrash
	.loc 1 526 0
	movl	$-1, %eax
	jmp	.L110
.L120:
.LBB13:
	.loc 1 529 0
	movl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L121
.L124:
.LBB14:
	.loc 1 530 0
	movl	-44(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.L122
.L123:
.LBB15:
	.loc 1 531 0 discriminator 2
	movl	-44(%rbp), %eax
	movl	-16(%rbp), %edx
	addl	%eax, %edx
	movl	-36(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_getE
	movss	%xmm0, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -4(%rbp)
	.loc 1 532 0 discriminator 2
	movq	-64(%rbp), %rax
	movq	(%rax), %rcx
	movl	-4(%rbp), %eax
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %esi
	movl	%eax, -68(%rbp)
	movss	-68(%rbp), %xmm0
	movq	%rcx, %rdi
	call	_setE
.LBE15:
	.loc 1 530 0 discriminator 2
	addl	$1, -16(%rbp)
.L122:
	.loc 1 530 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L123
.LBE14:
	.loc 1 529 0 is_stmt 1
	addl	$1, -20(%rbp)
.L121:
	.loc 1 529 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L124
.LBE13:
	.loc 1 536 0 is_stmt 1
	movl	$0, %eax
.L110:
	.loc 1 537 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	copyMatrix, .-copyMatrix
	.section	.rodata
	.align 8
.LC55:
	.string	"ERROR a matrix does not have the number of columns as b has rows in multiplyAddMatrix\n"
	.align 8
.LC56:
	.string	"ERROR c matrix does not have the number of rows as a in multiplyAddMatrix\n"
	.align 8
.LC57:
	.string	"ERROR c matrix does not have the number of cols as b in multiplyAddMatrix\n"
	.text
	.globl	multiplyAddMatrix
	.type	multiplyAddMatrix, @function
multiplyAddMatrix:
.LFB28:
	.loc 1 543 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 545 0
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L126
	.loc 1 546 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$86, %edx
	movl	$1, %esi
	movl	$.LC55, %edi
	call	fwrite
	.loc 1 548 0
	call	_hardcrash
	.loc 1 549 0
	movl	$-1, %eax
	jmp	.L127
.L126:
	.loc 1 551 0
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L128
	.loc 1 552 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$74, %edx
	movl	$1, %esi
	movl	$.LC56, %edi
	call	fwrite
	.loc 1 554 0
	call	_hardcrash
	.loc 1 555 0
	movl	$-1, %eax
	jmp	.L127
.L128:
	.loc 1 557 0
	movq	-40(%rbp), %rax
	movl	4(%rax), %edx
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	je	.L129
	.loc 1 558 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$74, %edx
	movl	$1, %esi
	movl	$.LC57, %edi
	call	fwrite
	.loc 1 560 0
	call	_hardcrash
	.loc 1 561 0
	movl	$-1, %eax
	jmp	.L127
.L129:
.LBB16:
	.loc 1 564 0
	movl	$0, -16(%rbp)
	jmp	.L130
.L135:
.LBB17:
	.loc 1 565 0
	movl	$0, -12(%rbp)
	jmp	.L131
.L134:
.LBB18:
	.loc 1 566 0
	movl	.LC0(%rip), %eax
	movl	%eax, -8(%rbp)
.LBB19:
	.loc 1 567 0
	movl	$0, -4(%rbp)
	jmp	.L132
.L133:
	.loc 1 568 0 discriminator 2
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_getE
	movss	%xmm0, -44(%rbp)
	movl	-16(%rbp), %edx
	movl	-4(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_getE
	mulss	-44(%rbp), %xmm0
	movss	-8(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	.loc 1 567 0 discriminator 2
	addl	$1, -4(%rbp)
.L132:
	.loc 1 567 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L133
.LBE19:
	.loc 1 570 0 is_stmt 1
	movl	-8(%rbp), %eax
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rcx
	movl	%eax, -44(%rbp)
	movss	-44(%rbp), %xmm0
	movq	%rcx, %rdi
	call	_addE
.LBE18:
	.loc 1 565 0
	addl	$1, -12(%rbp)
.L131:
	.loc 1 565 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-12(%rbp), %eax
	jg	.L134
.LBE17:
	.loc 1 564 0 is_stmt 1
	addl	$1, -16(%rbp)
.L130:
	.loc 1 564 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	-16(%rbp), %eax
	jg	.L135
.LBE16:
	.loc 1 574 0 is_stmt 1
	movl	$0, %eax
.L127:
	.loc 1 575 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	multiplyAddMatrix, .-multiplyAddMatrix
	.section	.rodata
	.align 8
.LC58:
	.string	"ERROR a matrix does not have the number of columns as b has rows in multiplyMatrix\n"
	.align 8
.LC59:
	.string	"ERROR c matrix does not have the number of rows as a in multiplyMatrix\n"
	.align 8
.LC60:
	.string	"ERROR c matrix does not have the number of cols as b in multiplyMatrix\n"
	.text
	.globl	multiplyMatrix
	.type	multiplyMatrix, @function
multiplyMatrix:
.LFB29:
	.loc 1 581 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 584 0
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L137
	.loc 1 585 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$83, %edx
	movl	$1, %esi
	movl	$.LC58, %edi
	call	fwrite
	.loc 1 587 0
	call	_hardcrash
	.loc 1 588 0
	movl	$-1, %eax
	jmp	.L138
.L137:
	.loc 1 590 0
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L139
	.loc 1 591 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$71, %edx
	movl	$1, %esi
	movl	$.LC59, %edi
	call	fwrite
	.loc 1 593 0
	call	_hardcrash
	.loc 1 594 0
	movl	$-1, %eax
	jmp	.L138
.L139:
	.loc 1 596 0
	movq	-40(%rbp), %rax
	movl	4(%rax), %edx
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	je	.L140
	.loc 1 597 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$71, %edx
	movl	$1, %esi
	movl	$.LC60, %edi
	call	fwrite
	.loc 1 599 0
	call	_hardcrash
	.loc 1 600 0
	movl	$-1, %eax
	jmp	.L138
.L140:
.LBB20:
	.loc 1 604 0
	movl	$0, -16(%rbp)
	jmp	.L141
.L146:
.LBB21:
	.loc 1 605 0
	movl	$0, -12(%rbp)
	jmp	.L142
.L145:
.LBB22:
	.loc 1 606 0
	movl	.LC0(%rip), %eax
	movl	%eax, -8(%rbp)
.LBB23:
	.loc 1 607 0
	movl	$0, -4(%rbp)
	jmp	.L143
.L144:
	.loc 1 608 0 discriminator 2
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_getE
	movss	%xmm0, -44(%rbp)
	movl	-16(%rbp), %edx
	movl	-4(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_getE
	mulss	-44(%rbp), %xmm0
	movss	-8(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	.loc 1 607 0 discriminator 2
	addl	$1, -4(%rbp)
.L143:
	.loc 1 607 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L144
.LBE23:
	.loc 1 610 0 is_stmt 1
	movl	-8(%rbp), %eax
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rcx
	movl	%eax, -44(%rbp)
	movss	-44(%rbp), %xmm0
	movq	%rcx, %rdi
	call	_addE
.LBE22:
	.loc 1 605 0
	addl	$1, -12(%rbp)
.L142:
	.loc 1 605 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-12(%rbp), %eax
	jg	.L145
.LBE21:
	.loc 1 604 0 is_stmt 1
	addl	$1, -16(%rbp)
.L141:
	.loc 1 604 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	-16(%rbp), %eax
	jg	.L146
.LBE20:
	.loc 1 614 0 is_stmt 1
	movl	$0, %eax
.L138:
	.loc 1 615 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	multiplyMatrix, .-multiplyMatrix
	.section	.rodata
	.align 8
.LC61:
	.string	"ERROR mat is NULL in generateFileMatrix\n"
.LC62:
	.string	"w"
.LC63:
	.string	"%6d "
	.text
	.globl	generateFileMatrix
	.type	generateFileMatrix, @function
generateFileMatrix:
.LFB30:
	.loc 1 617 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 620 0
	cmpq	$0, -32(%rbp)
	jne	.L148
	.loc 1 621 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$40, %edx
	movl	$1, %esi
	movl	$.LC61, %edi
	call	fwrite
	.loc 1 622 0
	call	_hardcrash
	.loc 1 623 0
	movl	$-1, %eax
	jmp	.L149
.L148:
	.loc 1 627 0
	movq	-24(%rbp), %rax
	movl	$.LC62, %esi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -8(%rbp)
.LBB24:
	.loc 1 629 0
	movl	$0, -16(%rbp)
	jmp	.L150
.L153:
.LBB25:
	.loc 1 630 0
	movl	$0, -12(%rbp)
	jmp	.L151
.L152:
	.loc 1 631 0 discriminator 2
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_getE
	cvttss2si	%xmm0, %edx
	movq	-8(%rbp), %rax
	movl	$.LC63, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 630 0 discriminator 2
	addl	$1, -12(%rbp)
.L151:
	.loc 1 630 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-12(%rbp), %eax
	jg	.L152
.LBE25:
	.loc 1 633 0 is_stmt 1
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc
	.loc 1 629 0
	addl	$1, -16(%rbp)
.L150:
	.loc 1 629 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	-16(%rbp), %eax
	jg	.L153
.LBE24:
	.loc 1 635 0 is_stmt 1
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	.loc 1 636 0
	movl	$0, %eax
.L149:
	.loc 1 637 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	generateFileMatrix, .-generateFileMatrix
	.section	.rodata
	.align 4
.LC0:
	.long	0
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "matrix.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xed9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF101
	.byte	0x1
	.long	.LASF102
	.long	.LASF103
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd4
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x83
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x84
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x30
	.long	0xa7
	.uleb128 0x7
	.long	.LASF42
	.byte	0xd8
	.byte	0x5
	.byte	0xf5
	.long	0x227
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.byte	0xf6
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0xfb
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xfc
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xfd
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xfe
	.long	0x8f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.byte	0xff
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.value	0x100
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x101
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x102
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x104
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x105
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x106
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x108
	.long	0x25f
	.byte	0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x10a
	.long	0x265
	.byte	0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x10c
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x110
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x112
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x116
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x117
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x118
	.long	0x26b
	.byte	0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x11c
	.long	0x27b
	.byte	0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x125
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x12e
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x12f
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x130
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x131
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x132
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x134
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x136
	.long	0x281
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF104
	.byte	0x5
	.byte	0x9a
	.uleb128 0x7
	.long	.LASF43
	.byte	0x18
	.byte	0x5
	.byte	0xa0
	.long	0x25f
	.uleb128 0x8
	.long	.LASF44
	.byte	0x5
	.byte	0xa1
	.long	0x25f
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x5
	.byte	0xa2
	.long	0x265
	.byte	0x8
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0xa6
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22e
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0xb
	.long	0x95
	.long	0x27b
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x227
	.uleb128 0xb
	.long	0x95
	.long	0x291
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF48
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF49
	.uleb128 0x7
	.long	.LASF50
	.byte	0x8
	.byte	0x6
	.byte	0x11
	.long	0x2d7
	.uleb128 0x8
	.long	.LASF51
	.byte	0x6
	.byte	0x12
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF52
	.byte	0x6
	.byte	0x13
	.long	0x62
	.byte	0x4
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0x14
	.long	0x2d7
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x298
	.long	0x2e6
	.uleb128 0xd
	.long	0x86
	.byte	0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x6
	.byte	0x17
	.long	0x2a6
	.uleb128 0xe
	.long	.LASF105
	.byte	0x1
	.byte	0x11
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.long	.LASF57
	.byte	0x1
	.byte	0x17
	.long	0x298
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x348
	.uleb128 0x10
	.long	.LASF55
	.byte	0x1
	.byte	0x17
	.long	0x348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF56
	.byte	0x1
	.byte	0x17
	.long	0x348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	0x298
	.uleb128 0xf
	.long	.LASF58
	.byte	0x1
	.byte	0x1b
	.long	0x298
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x38b
	.uleb128 0x10
	.long	.LASF55
	.byte	0x1
	.byte	0x1b
	.long	0x348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF56
	.byte	0x1
	.byte	0x1b
	.long	0x348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF59
	.byte	0x1
	.byte	0x1f
	.long	0x298
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c9
	.uleb128 0x10
	.long	.LASF55
	.byte	0x1
	.byte	0x1f
	.long	0x348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF56
	.byte	0x1
	.byte	0x1f
	.long	0x348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF60
	.byte	0x1
	.byte	0x23
	.long	0x298
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x407
	.uleb128 0x10
	.long	.LASF55
	.byte	0x1
	.byte	0x23
	.long	0x348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF56
	.byte	0x1
	.byte	0x23
	.long	0x348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF61
	.byte	0x1
	.byte	0x27
	.long	0x298
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x445
	.uleb128 0x10
	.long	.LASF55
	.byte	0x1
	.byte	0x27
	.long	0x348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF56
	.byte	0x1
	.byte	0x27
	.long	0x348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF62
	.byte	0x1
	.byte	0x2b
	.long	0x298
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x48d
	.uleb128 0x12
	.string	"mat"
	.byte	0x1
	.byte	0x2b
	.long	0x48d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"r"
	.byte	0x1
	.byte	0x2b
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x2b
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x493
	.uleb128 0x11
	.long	0x2e6
	.uleb128 0x11
	.long	0x62
	.uleb128 0x13
	.long	.LASF63
	.byte	0x1
	.byte	0x2f
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ef
	.uleb128 0x12
	.string	"mat"
	.byte	0x1
	.byte	0x2f
	.long	0x4ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"r"
	.byte	0x1
	.byte	0x30
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x31
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.string	"val"
	.byte	0x1
	.byte	0x32
	.long	0x348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e6
	.uleb128 0x14
	.long	.LASF64
	.byte	0x1
	.byte	0x37
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x547
	.uleb128 0x12
	.string	"mat"
	.byte	0x1
	.byte	0x37
	.long	0x4ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"r"
	.byte	0x1
	.byte	0x38
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x39
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.string	"val"
	.byte	0x1
	.byte	0x3a
	.long	0x348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x14
	.long	.LASF65
	.byte	0x1
	.byte	0x3f
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x5cb
	.uleb128 0x12
	.string	"mat"
	.byte	0x1
	.byte	0x3f
	.long	0x4ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"val"
	.byte	0x1
	.byte	0x40
	.long	0x348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.long	.LASF66
	.byte	0x1
	.byte	0x41
	.long	0x5df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x16
	.string	"r"
	.byte	0x1
	.byte	0x42
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x16
	.string	"c"
	.byte	0x1
	.byte	0x43
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	0x298
	.long	0x5df
	.uleb128 0x18
	.long	0x298
	.uleb128 0x18
	.long	0x298
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5cb
	.uleb128 0x19
	.long	.LASF67
	.byte	0x1
	.byte	0x49
	.long	0x298
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b3
	.uleb128 0x10
	.long	.LASF68
	.byte	0x1
	.byte	0x49
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.long	.LASF69
	.byte	0x1
	.byte	0x4a
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF70
	.byte	0x1
	.byte	0x4b
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.long	.LASF71
	.byte	0x1
	.byte	0x4c
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.string	"mat"
	.byte	0x1
	.byte	0x4d
	.long	0x48d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.long	.LASF66
	.byte	0x1
	.byte	0x4e
	.long	0x5df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.string	"val"
	.byte	0x1
	.byte	0x50
	.long	0x298
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.long	.LASF56
	.byte	0x1
	.byte	0x51
	.long	0x298
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x16
	.string	"r"
	.byte	0x1
	.byte	0x52
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x16
	.string	"c"
	.byte	0x1
	.byte	0x53
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF72
	.byte	0x1
	.byte	0x60
	.long	0x4ef
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x737
	.uleb128 0x12
	.string	"r"
	.byte	0x1
	.byte	0x60
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x60
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"mat"
	.byte	0x1
	.byte	0x70
	.long	0x4ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x7d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.byte	0x7e
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF73
	.byte	0x1
	.byte	0x86
	.long	0x62
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x767
	.uleb128 0x12
	.string	"mat"
	.byte	0x1
	.byte	0x86
	.long	0x767
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4ef
	.uleb128 0x1b
	.long	.LASF74
	.byte	0x1
	.byte	0x94
	.long	0x62
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x7fb
	.uleb128 0x12
	.string	"mat"
	.byte	0x1
	.byte	0x94
	.long	0x48d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x7be
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.byte	0x9f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x15
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0xa4
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.byte	0xa6
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF75
	.byte	0x1
	.byte	0xb0
	.long	0x62
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x867
	.uleb128 0x12
	.string	"mat"
	.byte	0x1
	.byte	0xb0
	.long	0x48d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0xbb
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.byte	0xbc
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF76
	.byte	0x1
	.byte	0xc6
	.long	0x62
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x897
	.uleb128 0x12
	.string	"mat"
	.byte	0x1
	.byte	0xc6
	.long	0x48d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF77
	.byte	0x1
	.byte	0xd1
	.long	0x62
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c7
	.uleb128 0x12
	.string	"mat"
	.byte	0x1
	.byte	0xd1
	.long	0x48d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF78
	.byte	0x1
	.byte	0xdc
	.long	0x62
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x8f7
	.uleb128 0x12
	.string	"mat"
	.byte	0x1
	.byte	0xdc
	.long	0x48d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF79
	.byte	0x1
	.byte	0xe7
	.long	0x62
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x935
	.uleb128 0x12
	.string	"mat"
	.byte	0x1
	.byte	0xe7
	.long	0x48d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"sum"
	.byte	0x1
	.byte	0xe7
	.long	0x935
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x298
	.uleb128 0x1b
	.long	.LASF80
	.byte	0x1
	.byte	0xff
	.long	0x62
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x9b6
	.uleb128 0x10
	.long	.LASF68
	.byte	0x1
	.byte	0xff
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.long	.LASF69
	.byte	0x1
	.value	0x100
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.long	.LASF70
	.byte	0x1
	.value	0x101
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.long	.LASF71
	.byte	0x1
	.value	0x102
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.string	"mat"
	.byte	0x1
	.value	0x103
	.long	0x48d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.string	"sum"
	.byte	0x1
	.value	0x104
	.long	0x935
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.long	.LASF81
	.byte	0x1
	.value	0x138
	.long	0x62
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xa11
	.uleb128 0x1e
	.string	"mat"
	.byte	0x1
	.value	0x138
	.long	0x48d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"r"
	.byte	0x1
	.value	0x138
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.string	"c"
	.byte	0x1
	.value	0x138
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.string	"val"
	.byte	0x1
	.value	0x138
	.long	0x935
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1f
	.long	.LASF82
	.byte	0x1
	.value	0x15f
	.long	0x62
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0xa6c
	.uleb128 0x1e
	.string	"mat"
	.byte	0x1
	.value	0x15f
	.long	0x4ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"r"
	.byte	0x1
	.value	0x15f
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.string	"c"
	.byte	0x1
	.value	0x15f
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.string	"val"
	.byte	0x1
	.value	0x15f
	.long	0x348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1f
	.long	.LASF83
	.byte	0x1
	.value	0x181
	.long	0x62
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0xaad
	.uleb128 0x1e
	.string	"mat"
	.byte	0x1
	.value	0x181
	.long	0x4ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"val"
	.byte	0x1
	.value	0x181
	.long	0x348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1f
	.long	.LASF84
	.byte	0x1
	.value	0x18e
	.long	0x62
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xaee
	.uleb128 0x1e
	.string	"mat"
	.byte	0x1
	.value	0x18e
	.long	0x4ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"val"
	.byte	0x1
	.value	0x18e
	.long	0x348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1f
	.long	.LASF85
	.byte	0x1
	.value	0x19b
	.long	0x62
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0xb2f
	.uleb128 0x1e
	.string	"mat"
	.byte	0x1
	.value	0x19b
	.long	0x4ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"val"
	.byte	0x1
	.value	0x19b
	.long	0x348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1f
	.long	.LASF86
	.byte	0x1
	.value	0x1a8
	.long	0x62
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0xb70
	.uleb128 0x1e
	.string	"mat"
	.byte	0x1
	.value	0x1a8
	.long	0x4ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"val"
	.byte	0x1
	.value	0x1a8
	.long	0x348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1f
	.long	.LASF87
	.byte	0x1
	.value	0x1b5
	.long	0x62
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0xbb1
	.uleb128 0x1e
	.string	"mat"
	.byte	0x1
	.value	0x1b5
	.long	0x4ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"val"
	.byte	0x1
	.value	0x1b5
	.long	0x348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1f
	.long	.LASF88
	.byte	0x1
	.value	0x1c7
	.long	0x62
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0xcad
	.uleb128 0x1d
	.long	.LASF89
	.byte	0x1
	.value	0x1c7
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1d
	.long	.LASF90
	.byte	0x1
	.value	0x1c8
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF91
	.byte	0x1
	.value	0x1c9
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1d
	.long	.LASF92
	.byte	0x1
	.value	0x1ca
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.long	.LASF93
	.byte	0x1
	.value	0x1cb
	.long	0x48d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.long	.LASF94
	.byte	0x1
	.value	0x1cc
	.long	0x767
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.long	.LASF95
	.byte	0x1
	.value	0x1ce
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.long	.LASF96
	.byte	0x1
	.value	0x1cf
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x211
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x21
	.string	"j"
	.byte	0x1
	.value	0x212
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x21
	.string	"val"
	.byte	0x1
	.value	0x213
	.long	0x348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF97
	.byte	0x1
	.value	0x21f
	.long	0x62
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0xd75
	.uleb128 0x1e
	.string	"c"
	.byte	0x1
	.value	0x21f
	.long	0x4ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.string	"a"
	.byte	0x1
	.value	0x21f
	.long	0x48d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.string	"b"
	.byte	0x1
	.value	0x21f
	.long	0x48d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x21
	.string	"k"
	.byte	0x1
	.value	0x234
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x235
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x21
	.string	"val"
	.byte	0x1
	.value	0x236
	.long	0x298
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x21
	.string	"j"
	.byte	0x1
	.value	0x237
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF98
	.byte	0x1
	.value	0x245
	.long	0x62
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0xe3d
	.uleb128 0x1e
	.string	"c"
	.byte	0x1
	.value	0x245
	.long	0x4ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.string	"a"
	.byte	0x1
	.value	0x245
	.long	0x48d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.string	"b"
	.byte	0x1
	.value	0x245
	.long	0x48d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x21
	.string	"k"
	.byte	0x1
	.value	0x25c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x25d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x21
	.string	"val"
	.byte	0x1
	.value	0x25e
	.long	0x298
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x21
	.string	"j"
	.byte	0x1
	.value	0x25f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF99
	.byte	0x1
	.value	0x269
	.long	0x62
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0xecb
	.uleb128 0x1d
	.long	.LASF100
	.byte	0x1
	.value	0x269
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.string	"mat"
	.byte	0x1
	.value	0x269
	.long	0x48d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.string	"fid"
	.byte	0x1
	.value	0x272
	.long	0xecb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x21
	.string	"j"
	.byte	0x1
	.value	0x275
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x276
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x22
	.long	.LASF106
	.byte	0x4
	.byte	0xaa
	.long	0x265
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF7:
	.string	"size_t"
.LASF32:
	.string	"_shortbuf"
.LASF103:
	.string	"/mnt/d/jbrown/Documents/Code/C_Code/C_Matrix/C_MATRIX"
.LASF88:
	.string	"copyMatrix"
.LASF73:
	.string	"deleteMatrix"
.LASF86:
	.string	"mulAllMatrix"
.LASF105:
	.string	"_hardcrash"
.LASF101:
	.string	"GNU C 4.8.4 -mtune=generic -march=x86-64 -g -std=c99 -fstack-protector"
.LASF20:
	.string	"_IO_buf_base"
.LASF70:
	.string	"start_col"
.LASF81:
	.string	"getElemMatrix"
.LASF97:
	.string	"multiplyAddMatrix"
.LASF47:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF92:
	.string	"end_col_elem"
.LASF83:
	.string	"setAllMatrix"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF74:
	.string	"printMatrix"
.LASF6:
	.string	"long int"
.LASF13:
	.string	"_flags"
.LASF55:
	.string	"val1"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF69:
	.string	"end_row"
.LASF49:
	.string	"double"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF65:
	.string	"_manipulate"
.LASF91:
	.string	"start_col_elem"
.LASF82:
	.string	"setElemMatrix"
.LASF54:
	.string	"matrix"
.LASF75:
	.string	"printIntMatrix"
.LASF43:
	.string	"_IO_marker"
.LASF3:
	.string	"unsigned int"
.LASF72:
	.string	"newMatrix"
.LASF95:
	.string	"col_length"
.LASF0:
	.string	"long unsigned int"
.LASF51:
	.string	"rows"
.LASF18:
	.string	"_IO_write_ptr"
.LASF45:
	.string	"_sbuf"
.LASF53:
	.string	"data"
.LASF71:
	.string	"end_col"
.LASF2:
	.string	"short unsigned int"
.LASF68:
	.string	"start_row"
.LASF22:
	.string	"_IO_save_base"
.LASF84:
	.string	"addAllMatrix"
.LASF102:
	.string	"matrix.c"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF98:
	.string	"multiplyMatrix"
.LASF90:
	.string	"end_row_elem"
.LASF89:
	.string	"start_row_elem"
.LASF10:
	.string	"sizetype"
.LASF94:
	.string	"mat_copy"
.LASF100:
	.string	"filename"
.LASF87:
	.string	"divAllMatrix"
.LASF19:
	.string	"_IO_write_end"
.LASF104:
	.string	"_IO_lock_t"
.LASF56:
	.string	"val2"
.LASF42:
	.string	"_IO_FILE"
.LASF48:
	.string	"float"
.LASF46:
	.string	"_pos"
.LASF25:
	.string	"_markers"
.LASF96:
	.string	"row_length"
.LASF63:
	.string	"_setE"
.LASF1:
	.string	"unsigned char"
.LASF61:
	.string	"_val"
.LASF5:
	.string	"short int"
.LASF80:
	.string	"sumElemsMatrix"
.LASF93:
	.string	"mat_orig"
.LASF31:
	.string	"_vtable_offset"
.LASF12:
	.string	"FILE"
.LASF79:
	.string	"sumAllElemsMatrix"
.LASF64:
	.string	"_addE"
.LASF50:
	.string	"_matrix"
.LASF11:
	.string	"char"
.LASF66:
	.string	"func"
.LASF99:
	.string	"generateFileMatrix"
.LASF44:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF58:
	.string	"_sub"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF77:
	.string	"getColsMatrix"
.LASF57:
	.string	"_add"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF41:
	.string	"_unused2"
.LASF106:
	.string	"stderr"
.LASF78:
	.string	"getTotalElemsMatrix"
.LASF23:
	.string	"_IO_backup_base"
.LASF85:
	.string	"subAllMatrix"
.LASF59:
	.string	"_mul"
.LASF52:
	.string	"cols"
.LASF62:
	.string	"_getE"
.LASF17:
	.string	"_IO_write_base"
.LASF60:
	.string	"_div"
.LASF76:
	.string	"getRowsMatrix"
.LASF67:
	.string	"_operate"
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
