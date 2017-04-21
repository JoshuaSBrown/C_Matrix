	.file	"test_matrix.c"
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"Testing: newMatrix"
.LC1:
	.string	"test_matrix.c"
.LC2:
	.string	"mat==((void *)0)"
.LC3:
	.string	"mat!=((void *)0)"
.LC4:
	.string	"Testing: deleteMatrix"
.LC5:
	.string	"rv==-1"
.LC6:
	.string	"rv==0"
.LC7:
	.string	"Testing: printMatrix"
.LC8:
	.string	"Testing: printIntMatrix"
.LC9:
	.string	"Testing: getRowsMatrix"
.LC10:
	.string	"rv==2"
.LC11:
	.string	"Testing: getColsMatrix"
.LC12:
	.string	"rv==3"
.LC13:
	.string	"Testing: sumAllElemsMatrix"
	.align 8
.LC16:
	.string	"sum in test %f temp %f sum==temp %d\n"
.LC17:
	.string	"sum==temp"
.LC18:
	.string	"Testing: getTotalElemsMatrix"
.LC19:
	.string	"rv==(2*3)"
.LC20:
	.string	"Testing: getElemMatrix"
.LC21:
	.string	"val==1.0"
.LC22:
	.string	"val==0.0"
.LC23:
	.string	"Testing: setElemMatrix"
.LC24:
	.string	"Testing: setAllMatrix"
.LC26:
	.string	"sum==10.0"
.LC27:
	.string	"Testing: addAllMatrix"
.LC29:
	.string	"sum==20.0"
.LC30:
	.string	"Testing: subAllMatrix"
.LC31:
	.string	"Testing: mulAllMatrix"
.LC34:
	.string	"sum==30.0"
.LC35:
	.string	"Testing: divAllMatrix"
.LC36:
	.string	"Testing: copyMatrix"
.LC37:
	.string	"rv==-0"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "test_matrix.c"
	.loc 1 33 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 36 0
	movl	$.LC0, %edi
	call	puts
	.loc 1 37 0
	movl	$1, %esi
	movl	$0, %edi
	call	newMatrix
	movq	%rax, -16(%rbp)
	.loc 1 38 0
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L2
	.loc 1 38 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$38, %edx
	movl	$.LC1, %esi
	movl	$.LC2, %edi
	call	__assert_fail
.L2:
	.loc 1 39 0 is_stmt 1
	movl	$0, %esi
	movl	$1, %edi
	call	newMatrix
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L3
	.loc 1 39 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$39, %edx
	movl	$.LC1, %esi
	movl	$.LC2, %edi
	call	__assert_fail
.L3:
	.loc 1 40 0 is_stmt 1
	movl	$1, %esi
	movl	$1, %edi
	call	newMatrix
	movq	%rax, -16(%rbp)
	.loc 1 41 0
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L4
	.loc 1 41 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$41, %edx
	movl	$.LC1, %esi
	movl	$.LC3, %edi
	call	__assert_fail
.L4:
	.loc 1 43 0 is_stmt 1
	movl	$.LC4, %edi
	call	puts
	.loc 1 44 0
	movl	$0, %edi
	call	deleteMatrix
	movl	%eax, -24(%rbp)
	.loc 1 45 0
	cmpl	$-1, -24(%rbp)
	je	.L5
	.loc 1 45 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$45, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L5:
	.loc 1 46 0 is_stmt 1
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	deleteMatrix
	movl	%eax, -24(%rbp)
	.loc 1 47 0
	cmpl	$0, -24(%rbp)
	je	.L6
	.loc 1 47 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$47, %edx
	movl	$.LC1, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L6:
	.loc 1 48 0 is_stmt 1
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L7
	.loc 1 48 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$48, %edx
	movl	$.LC1, %esi
	movl	$.LC2, %edi
	call	__assert_fail
.L7:
	.loc 1 50 0 is_stmt 1
	movl	$.LC7, %edi
	call	puts
	.loc 1 51 0
	movl	$3, %esi
	movl	$2, %edi
	call	newMatrix
	movq	%rax, -16(%rbp)
	.loc 1 52 0
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L8
	.loc 1 52 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$52, %edx
	movl	$.LC1, %esi
	movl	$.LC3, %edi
	call	__assert_fail
.L8:
	.loc 1 53 0 is_stmt 1
	movl	$0, %edi
	call	printMatrix
	movl	%eax, -24(%rbp)
	.loc 1 54 0
	cmpl	$-1, -24(%rbp)
	je	.L9
	.loc 1 54 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$54, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L9:
	.loc 1 55 0 is_stmt 1
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	printMatrix
	movl	%eax, -24(%rbp)
	.loc 1 56 0
	cmpl	$0, -24(%rbp)
	je	.L10
	.loc 1 56 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$56, %edx
	movl	$.LC1, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L10:
	.loc 1 58 0 is_stmt 1
	movl	$.LC8, %edi
	call	puts
	.loc 1 59 0
	movl	$0, %edi
	call	printIntMatrix
	movl	%eax, -24(%rbp)
	.loc 1 60 0
	cmpl	$-1, -24(%rbp)
	je	.L11
	.loc 1 60 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$60, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L11:
	.loc 1 61 0 is_stmt 1
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	printIntMatrix
	movl	%eax, -24(%rbp)
	.loc 1 62 0
	cmpl	$0, -24(%rbp)
	je	.L12
	.loc 1 62 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$62, %edx
	movl	$.LC1, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L12:
	.loc 1 64 0 is_stmt 1
	movl	$.LC9, %edi
	call	puts
	.loc 1 65 0
	movl	$0, %edi
	call	getRowsMatrix
	movl	%eax, -24(%rbp)
	.loc 1 66 0
	cmpl	$-1, -24(%rbp)
	je	.L13
	.loc 1 66 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$66, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L13:
	.loc 1 67 0 is_stmt 1
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	getRowsMatrix
	movl	%eax, -24(%rbp)
	.loc 1 68 0
	cmpl	$2, -24(%rbp)
	je	.L14
	.loc 1 68 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$68, %edx
	movl	$.LC1, %esi
	movl	$.LC10, %edi
	call	__assert_fail
.L14:
	.loc 1 70 0 is_stmt 1
	movl	$.LC11, %edi
	call	puts
	.loc 1 71 0
	movl	$0, %edi
	call	getColsMatrix
	movl	%eax, -24(%rbp)
	.loc 1 72 0
	cmpl	$-1, -24(%rbp)
	je	.L15
	.loc 1 72 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$72, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L15:
	.loc 1 73 0 is_stmt 1
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	getColsMatrix
	movl	%eax, -24(%rbp)
	.loc 1 74 0
	cmpl	$3, -24(%rbp)
	je	.L16
	.loc 1 74 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$74, %edx
	movl	$.LC1, %esi
	movl	$.LC12, %edi
	call	__assert_fail
.L16:
	.loc 1 76 0 is_stmt 1
	movl	$.LC13, %edi
	call	puts
	.loc 1 77 0
	movl	.LC14(%rip), %eax
	movl	%eax, -32(%rbp)
	.loc 1 78 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	sumAllElemsMatrix
	movl	%eax, -24(%rbp)
	.loc 1 79 0
	cmpl	$-1, -24(%rbp)
	je	.L17
	.loc 1 79 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$79, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L17:
	.loc 1 80 0 is_stmt 1
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sumAllElemsMatrix
	movl	%eax, -24(%rbp)
	.loc 1 81 0
	cmpl	$-1, -24(%rbp)
	je	.L18
	.loc 1 81 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$81, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L18:
	.loc 1 82 0 is_stmt 1
	movq	-16(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sumAllElemsMatrix
	movl	%eax, -24(%rbp)
	.loc 1 83 0
	cmpl	$0, -24(%rbp)
	je	.L19
	.loc 1 83 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$83, %edx
	movl	$.LC1, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L19:
	.loc 1 84 0 is_stmt 1
	movl	.LC15(%rip), %eax
	movl	%eax, -20(%rbp)
	.loc 1 85 0
	movss	-32(%rbp), %xmm0
	ucomiss	-20(%rbp), %xmm0
	setnp	%dl
	movl	$0, %eax
	ucomiss	-20(%rbp), %xmm0
	cmove	%edx, %eax
	movzbl	%al, %eax
	movss	-20(%rbp), %xmm1
	cvtps2pd	%xmm1, %xmm1
	movss	-32(%rbp), %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	%eax, %esi
	movl	$.LC16, %edi
	movl	$2, %eax
	call	printf
	.loc 1 86 0
	movss	-32(%rbp), %xmm0
	ucomiss	-20(%rbp), %xmm0
	jp	.L102
	ucomiss	-20(%rbp), %xmm0
	je	.L118
.L102:
	.loc 1 86 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$86, %edx
	movl	$.LC1, %esi
	movl	$.LC17, %edi
	call	__assert_fail
.L118:
	.loc 1 88 0 is_stmt 1
	movl	$.LC18, %edi
	call	puts
	.loc 1 89 0
	movl	$0, %edi
	call	getTotalElemsMatrix
	movl	%eax, -24(%rbp)
	.loc 1 90 0
	cmpl	$-1, -24(%rbp)
	je	.L22
	.loc 1 90 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$90, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L22:
	.loc 1 91 0 is_stmt 1
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	getTotalElemsMatrix
	movl	%eax, -24(%rbp)
	.loc 1 92 0
	cmpl	$6, -24(%rbp)
	je	.L23
	.loc 1 92 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$92, %edx
	movl	$.LC1, %esi
	movl	$.LC19, %edi
	call	__assert_fail
.L23:
	.loc 1 93 0 is_stmt 1
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	deleteMatrix
	.loc 1 94 0
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L24
	.loc 1 94 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$94, %edx
	movl	$.LC1, %esi
	movl	$.LC2, %edi
	call	__assert_fail
.L24:
	.loc 1 96 0 is_stmt 1
	movl	$.LC20, %edi
	call	puts
	.loc 1 97 0
	movl	$4, %esi
	movl	$3, %edi
	call	newMatrix
	movq	%rax, -16(%rbp)
	.loc 1 98 0
	movl	.LC14(%rip), %eax
	movl	%eax, -28(%rbp)
	.loc 1 99 0
	leaq	-28(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	getElemMatrix
	movl	%eax, -24(%rbp)
	.loc 1 100 0
	cmpl	$-1, -24(%rbp)
	je	.L25
	.loc 1 100 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$100, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L25:
	.loc 1 101 0 is_stmt 1
	movss	-28(%rbp), %xmm0
	movss	.LC14(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L103
	movss	.LC14(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L119
.L103:
	.loc 1 101 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$101, %edx
	movl	$.LC1, %esi
	movl	$.LC21, %edi
	call	__assert_fail
.L119:
	.loc 1 102 0 is_stmt 1
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	getElemMatrix
	movl	%eax, -24(%rbp)
	.loc 1 103 0
	cmpl	$-1, -24(%rbp)
	je	.L28
	.loc 1 103 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$103, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L28:
	.loc 1 104 0 is_stmt 1
	movq	-16(%rbp), %rax
	leaq	-28(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	getElemMatrix
	movl	%eax, -24(%rbp)
	.loc 1 105 0
	cmpl	$-1, -24(%rbp)
	je	.L29
	.loc 1 105 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$105, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L29:
	.loc 1 106 0 is_stmt 1
	movss	-28(%rbp), %xmm0
	movss	.LC14(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L104
	movss	.LC14(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L120
.L104:
	.loc 1 106 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$106, %edx
	movl	$.LC1, %esi
	movl	$.LC21, %edi
	call	__assert_fail
.L120:
	.loc 1 107 0 is_stmt 1
	movq	-16(%rbp), %rax
	leaq	-28(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$-1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	getElemMatrix
	movl	%eax, -24(%rbp)
	.loc 1 108 0
	cmpl	$-1, -24(%rbp)
	je	.L32
	.loc 1 108 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$108, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L32:
	.loc 1 109 0 is_stmt 1
	movss	-28(%rbp), %xmm0
	movss	.LC14(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L105
	movss	.LC14(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L121
.L105:
	.loc 1 109 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$109, %edx
	movl	$.LC1, %esi
	movl	$.LC21, %edi
	call	__assert_fail
.L121:
	.loc 1 110 0 is_stmt 1
	movq	-16(%rbp), %rax
	leaq	-28(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	getElemMatrix
	movl	%eax, -24(%rbp)
	.loc 1 111 0
	cmpl	$-1, -24(%rbp)
	je	.L35
	.loc 1 111 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$111, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L35:
	.loc 1 112 0 is_stmt 1
	movss	-28(%rbp), %xmm0
	movss	.LC14(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L106
	movss	.LC14(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L122
.L106:
	.loc 1 112 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$112, %edx
	movl	$.LC1, %esi
	movl	$.LC21, %edi
	call	__assert_fail
.L122:
	.loc 1 113 0 is_stmt 1
	movq	-16(%rbp), %rax
	leaq	-28(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	getElemMatrix
	movl	%eax, -24(%rbp)
	.loc 1 114 0
	cmpl	$-1, -24(%rbp)
	je	.L38
	.loc 1 114 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$114, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L38:
	.loc 1 115 0 is_stmt 1
	movss	-28(%rbp), %xmm0
	movss	.LC14(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L107
	movss	.LC14(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L123
.L107:
	.loc 1 115 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$115, %edx
	movl	$.LC1, %esi
	movl	$.LC21, %edi
	call	__assert_fail
.L123:
	.loc 1 116 0 is_stmt 1
	movq	-16(%rbp), %rax
	leaq	-28(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	getElemMatrix
	movl	%eax, -24(%rbp)
	.loc 1 117 0
	cmpl	$0, -24(%rbp)
	je	.L41
	.loc 1 117 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$117, %edx
	movl	$.LC1, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L41:
	.loc 1 118 0 is_stmt 1
	movss	-28(%rbp), %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L108
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L124
.L108:
	.loc 1 118 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$118, %edx
	movl	$.LC1, %esi
	movl	$.LC22, %edi
	call	__assert_fail
.L124:
	.loc 1 119 0 is_stmt 1
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	deleteMatrix
	.loc 1 120 0
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L44
	.loc 1 120 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$120, %edx
	movl	$.LC1, %esi
	movl	$.LC2, %edi
	call	__assert_fail
.L44:
	.loc 1 122 0 is_stmt 1
	movl	$.LC23, %edi
	call	puts
	.loc 1 123 0
	movl	$4, %esi
	movl	$3, %edi
	call	newMatrix
	movq	%rax, -16(%rbp)
	.loc 1 124 0
	movq	-16(%rbp), %rax
	movss	.LC14(%rip), %xmm0
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setElemMatrix
	movl	%eax, -24(%rbp)
	.loc 1 125 0
	cmpl	$-1, -24(%rbp)
	je	.L45
	.loc 1 125 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$125, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L45:
	.loc 1 126 0 is_stmt 1
	movq	-16(%rbp), %rax
	movss	.LC14(%rip), %xmm0
	movl	$-1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setElemMatrix
	movl	%eax, -24(%rbp)
	.loc 1 127 0
	cmpl	$-1, -24(%rbp)
	je	.L46
	.loc 1 127 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$127, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L46:
	.loc 1 128 0 is_stmt 1
	movss	.LC14(%rip), %xmm0
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	setElemMatrix
	movl	%eax, -24(%rbp)
	.loc 1 129 0
	cmpl	$-1, -24(%rbp)
	je	.L47
	.loc 1 129 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$129, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L47:
	.loc 1 130 0 is_stmt 1
	movq	-16(%rbp), %rax
	movss	.LC14(%rip), %xmm0
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	setElemMatrix
	movl	%eax, -24(%rbp)
	.loc 1 131 0
	cmpl	$-1, -24(%rbp)
	je	.L48
	.loc 1 131 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$131, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L48:
	.loc 1 132 0 is_stmt 1
	movq	-16(%rbp), %rax
	movss	.LC14(%rip), %xmm0
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setElemMatrix
	movl	%eax, -24(%rbp)
	.loc 1 133 0
	cmpl	$-1, -24(%rbp)
	je	.L49
	.loc 1 133 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$133, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L49:
	.loc 1 134 0 is_stmt 1
	movq	-16(%rbp), %rax
	movss	.LC14(%rip), %xmm0
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setElemMatrix
	movl	%eax, -24(%rbp)
	.loc 1 135 0
	cmpl	$0, -24(%rbp)
	je	.L50
	.loc 1 135 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$135, %edx
	movl	$.LC1, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L50:
	.loc 1 136 0 is_stmt 1
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	deleteMatrix
	.loc 1 137 0
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L51
	.loc 1 137 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$137, %edx
	movl	$.LC1, %esi
	movl	$.LC2, %edi
	call	__assert_fail
.L51:
	.loc 1 139 0 is_stmt 1
	movl	$.LC24, %edi
	call	puts
	.loc 1 140 0
	movl	$2, %esi
	movl	$5, %edi
	call	newMatrix
	movq	%rax, -16(%rbp)
	.loc 1 141 0
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L52
	.loc 1 141 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$141, %edx
	movl	$.LC1, %esi
	movl	$.LC3, %edi
	call	__assert_fail
.L52:
	.loc 1 142 0 is_stmt 1
	movss	.LC14(%rip), %xmm0
	movl	$0, %edi
	call	setAllMatrix
	movl	%eax, -24(%rbp)
	.loc 1 143 0
	cmpl	$-1, -24(%rbp)
	je	.L53
	.loc 1 143 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$143, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L53:
	.loc 1 144 0 is_stmt 1
	movq	-16(%rbp), %rax
	movss	.LC14(%rip), %xmm0
	movq	%rax, %rdi
	call	setAllMatrix
	movl	%eax, -24(%rbp)
	.loc 1 145 0
	cmpl	$0, -24(%rbp)
	je	.L54
	.loc 1 145 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$145, %edx
	movl	$.LC1, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L54:
	.loc 1 146 0 is_stmt 1
	movq	-16(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sumAllElemsMatrix
	movl	%eax, -24(%rbp)
	.loc 1 147 0
	cmpl	$0, -24(%rbp)
	je	.L55
	.loc 1 147 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$147, %edx
	movl	$.LC1, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L55:
	.loc 1 148 0 is_stmt 1
	movss	-32(%rbp), %xmm0
	ucomiss	.LC25(%rip), %xmm0
	jp	.L109
	ucomiss	.LC25(%rip), %xmm0
	je	.L125
.L109:
	.loc 1 148 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$148, %edx
	movl	$.LC1, %esi
	movl	$.LC26, %edi
	call	__assert_fail
.L125:
	.loc 1 150 0 is_stmt 1
	movl	$.LC27, %edi
	call	puts
	.loc 1 151 0
	movss	.LC14(%rip), %xmm0
	movl	$0, %edi
	call	addAllMatrix
	movl	%eax, -24(%rbp)
	.loc 1 152 0
	cmpl	$-1, -24(%rbp)
	je	.L58
	.loc 1 152 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$152, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L58:
	.loc 1 153 0 is_stmt 1
	movq	-16(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sumAllElemsMatrix
	movl	%eax, -24(%rbp)
	.loc 1 154 0
	cmpl	$0, -24(%rbp)
	je	.L59
	.loc 1 154 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$154, %edx
	movl	$.LC1, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L59:
	.loc 1 155 0 is_stmt 1
	movss	-32(%rbp), %xmm0
	ucomiss	.LC25(%rip), %xmm0
	jp	.L110
	ucomiss	.LC25(%rip), %xmm0
	je	.L126
.L110:
	.loc 1 155 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$155, %edx
	movl	$.LC1, %esi
	movl	$.LC26, %edi
	call	__assert_fail
.L126:
	.loc 1 156 0 is_stmt 1
	movq	-16(%rbp), %rax
	movss	.LC14(%rip), %xmm0
	movq	%rax, %rdi
	call	addAllMatrix
	movl	%eax, -24(%rbp)
	.loc 1 157 0
	cmpl	$0, -24(%rbp)
	je	.L62
	.loc 1 157 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$157, %edx
	movl	$.LC1, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L62:
	.loc 1 158 0 is_stmt 1
	movq	-16(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sumAllElemsMatrix
	movl	%eax, -24(%rbp)
	.loc 1 159 0
	cmpl	$0, -24(%rbp)
	je	.L63
	.loc 1 159 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$159, %edx
	movl	$.LC1, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L63:
	.loc 1 160 0 is_stmt 1
	movss	-32(%rbp), %xmm0
	ucomiss	.LC28(%rip), %xmm0
	jp	.L111
	ucomiss	.LC28(%rip), %xmm0
	je	.L127
.L111:
	.loc 1 160 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$160, %edx
	movl	$.LC1, %esi
	movl	$.LC29, %edi
	call	__assert_fail
.L127:
	.loc 1 162 0 is_stmt 1
	movl	$.LC30, %edi
	call	puts
	.loc 1 163 0
	movss	.LC14(%rip), %xmm0
	movl	$0, %edi
	call	subAllMatrix
	movl	%eax, -24(%rbp)
	.loc 1 164 0
	cmpl	$-1, -24(%rbp)
	je	.L66
	.loc 1 164 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$164, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L66:
	.loc 1 165 0 is_stmt 1
	movq	-16(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sumAllElemsMatrix
	movl	%eax, -24(%rbp)
	.loc 1 166 0
	cmpl	$0, -24(%rbp)
	je	.L67
	.loc 1 166 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$166, %edx
	movl	$.LC1, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L67:
	.loc 1 167 0 is_stmt 1
	movss	-32(%rbp), %xmm0
	ucomiss	.LC28(%rip), %xmm0
	jp	.L112
	ucomiss	.LC28(%rip), %xmm0
	je	.L128
.L112:
	.loc 1 167 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$167, %edx
	movl	$.LC1, %esi
	movl	$.LC29, %edi
	call	__assert_fail
.L128:
	.loc 1 168 0 is_stmt 1
	movq	-16(%rbp), %rax
	movss	.LC14(%rip), %xmm0
	movq	%rax, %rdi
	call	subAllMatrix
	movl	%eax, -24(%rbp)
	.loc 1 169 0
	cmpl	$0, -24(%rbp)
	je	.L70
	.loc 1 169 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$169, %edx
	movl	$.LC1, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L70:
	.loc 1 170 0 is_stmt 1
	movq	-16(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sumAllElemsMatrix
	movl	%eax, -24(%rbp)
	.loc 1 171 0
	cmpl	$0, -24(%rbp)
	je	.L71
	.loc 1 171 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$171, %edx
	movl	$.LC1, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L71:
	.loc 1 172 0 is_stmt 1
	movss	-32(%rbp), %xmm0
	ucomiss	.LC25(%rip), %xmm0
	jp	.L113
	ucomiss	.LC25(%rip), %xmm0
	je	.L129
.L113:
	.loc 1 172 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$172, %edx
	movl	$.LC1, %esi
	movl	$.LC26, %edi
	call	__assert_fail
.L129:
	.loc 1 174 0 is_stmt 1
	movl	$.LC31, %edi
	call	puts
	.loc 1 175 0
	movss	.LC32(%rip), %xmm0
	movl	$0, %edi
	call	mulAllMatrix
	movl	%eax, -24(%rbp)
	.loc 1 176 0
	cmpl	$-1, -24(%rbp)
	je	.L74
	.loc 1 176 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$176, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L74:
	.loc 1 177 0 is_stmt 1
	movq	-16(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sumAllElemsMatrix
	movl	%eax, -24(%rbp)
	.loc 1 178 0
	cmpl	$0, -24(%rbp)
	je	.L75
	.loc 1 178 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$178, %edx
	movl	$.LC1, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L75:
	.loc 1 179 0 is_stmt 1
	movss	-32(%rbp), %xmm0
	ucomiss	.LC25(%rip), %xmm0
	jp	.L114
	ucomiss	.LC25(%rip), %xmm0
	je	.L130
.L114:
	.loc 1 179 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$179, %edx
	movl	$.LC1, %esi
	movl	$.LC26, %edi
	call	__assert_fail
.L130:
	.loc 1 180 0 is_stmt 1
	movq	-16(%rbp), %rax
	movss	.LC32(%rip), %xmm0
	movq	%rax, %rdi
	call	mulAllMatrix
	movl	%eax, -24(%rbp)
	.loc 1 181 0
	cmpl	$0, -24(%rbp)
	je	.L78
	.loc 1 181 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$181, %edx
	movl	$.LC1, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L78:
	.loc 1 182 0 is_stmt 1
	movq	-16(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sumAllElemsMatrix
	movl	%eax, -24(%rbp)
	.loc 1 183 0
	cmpl	$0, -24(%rbp)
	je	.L79
	.loc 1 183 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$183, %edx
	movl	$.LC1, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L79:
	.loc 1 184 0 is_stmt 1
	movss	-32(%rbp), %xmm0
	ucomiss	.LC33(%rip), %xmm0
	jp	.L115
	ucomiss	.LC33(%rip), %xmm0
	je	.L131
.L115:
	.loc 1 184 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$184, %edx
	movl	$.LC1, %esi
	movl	$.LC34, %edi
	call	__assert_fail
.L131:
	.loc 1 186 0 is_stmt 1
	movl	$.LC35, %edi
	call	puts
	.loc 1 187 0
	movss	.LC32(%rip), %xmm0
	movl	$0, %edi
	call	divAllMatrix
	movl	%eax, -24(%rbp)
	.loc 1 188 0
	cmpl	$-1, -24(%rbp)
	je	.L82
	.loc 1 188 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$188, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L82:
	.loc 1 189 0 is_stmt 1
	movq	-16(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sumAllElemsMatrix
	movl	%eax, -24(%rbp)
	.loc 1 190 0
	cmpl	$0, -24(%rbp)
	je	.L83
	.loc 1 190 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$190, %edx
	movl	$.LC1, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L83:
	.loc 1 191 0 is_stmt 1
	movss	-32(%rbp), %xmm0
	ucomiss	.LC33(%rip), %xmm0
	jp	.L116
	ucomiss	.LC33(%rip), %xmm0
	je	.L132
.L116:
	.loc 1 191 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$191, %edx
	movl	$.LC1, %esi
	movl	$.LC34, %edi
	call	__assert_fail
.L132:
	.loc 1 192 0 is_stmt 1
	movq	-16(%rbp), %rax
	movss	.LC32(%rip), %xmm0
	movq	%rax, %rdi
	call	divAllMatrix
	movl	%eax, -24(%rbp)
	.loc 1 193 0
	cmpl	$0, -24(%rbp)
	je	.L86
	.loc 1 193 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$193, %edx
	movl	$.LC1, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L86:
	.loc 1 194 0 is_stmt 1
	movq	-16(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sumAllElemsMatrix
	movl	%eax, -24(%rbp)
	.loc 1 195 0
	cmpl	$0, -24(%rbp)
	je	.L87
	.loc 1 195 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$195, %edx
	movl	$.LC1, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L87:
	.loc 1 196 0 is_stmt 1
	movss	-32(%rbp), %xmm0
	ucomiss	.LC25(%rip), %xmm0
	jp	.L117
	ucomiss	.LC25(%rip), %xmm0
	je	.L133
.L117:
	.loc 1 196 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$196, %edx
	movl	$.LC1, %esi
	movl	$.LC26, %edi
	call	__assert_fail
.L133:
	.loc 1 197 0 is_stmt 1
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	deleteMatrix
	.loc 1 199 0
	movl	$.LC36, %edi
	call	puts
	.loc 1 200 0
	movl	$1, %esi
	movl	$1, %edi
	call	newMatrix
	movq	%rax, -16(%rbp)
	.loc 1 201 0
	movq	$0, -8(%rbp)
	.loc 1 202 0
	movq	-16(%rbp), %rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rax, %r8
	movl	$1, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movl	$1, %edi
	call	copyMatrix
	movl	%eax, -24(%rbp)
	.loc 1 203 0
	cmpl	$-1, -24(%rbp)
	je	.L90
	.loc 1 203 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$203, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L90:
	.loc 1 204 0 is_stmt 1
	movq	-16(%rbp), %rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rax, %r8
	movl	$1, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	$0, %edi
	call	copyMatrix
	movl	%eax, -24(%rbp)
	.loc 1 205 0
	cmpl	$-1, -24(%rbp)
	je	.L91
	.loc 1 205 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$205, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L91:
	.loc 1 206 0 is_stmt 1
	movq	-16(%rbp), %rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rax, %r8
	movl	$1, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movl	$-1, %edi
	call	copyMatrix
	movl	%eax, -24(%rbp)
	.loc 1 207 0
	cmpl	$-1, -24(%rbp)
	je	.L92
	.loc 1 207 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$207, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L92:
	.loc 1 208 0 is_stmt 1
	movq	-16(%rbp), %rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rax, %r8
	movl	$1, %ecx
	movl	$-1, %edx
	movl	$1, %esi
	movl	$0, %edi
	call	copyMatrix
	movl	%eax, -24(%rbp)
	.loc 1 209 0
	cmpl	$-1, -24(%rbp)
	je	.L93
	.loc 1 209 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$209, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L93:
	.loc 1 210 0 is_stmt 1
	movq	-16(%rbp), %rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rax, %r8
	movl	$1, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movl	$0, %edi
	call	copyMatrix
	movl	%eax, -24(%rbp)
	.loc 1 211 0
	cmpl	$-1, -24(%rbp)
	je	.L94
	.loc 1 211 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$211, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L94:
	.loc 1 212 0 is_stmt 1
	movq	-16(%rbp), %rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rax, %r8
	movl	$2, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movl	$0, %edi
	call	copyMatrix
	movl	%eax, -24(%rbp)
	.loc 1 213 0
	cmpl	$-1, -24(%rbp)
	je	.L95
	.loc 1 213 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$213, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L95:
	.loc 1 214 0 is_stmt 1
	leaq	-8(%rbp), %rax
	movq	%rax, %r9
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movl	$0, %edi
	call	copyMatrix
	movl	%eax, -24(%rbp)
	.loc 1 215 0
	cmpl	$-1, -24(%rbp)
	je	.L96
	.loc 1 215 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$215, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L96:
	.loc 1 216 0 is_stmt 1
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movq	%rax, %r8
	movl	$1, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movl	$0, %edi
	call	copyMatrix
	movl	%eax, -24(%rbp)
	.loc 1 217 0
	cmpl	$-1, -24(%rbp)
	je	.L97
	.loc 1 217 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$217, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L97:
	.loc 1 218 0 is_stmt 1
	movq	-16(%rbp), %rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rax, %r8
	movl	$1, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movl	$0, %edi
	call	copyMatrix
	movl	%eax, -24(%rbp)
	.loc 1 219 0
	cmpl	$-1, -24(%rbp)
	je	.L98
	.loc 1 219 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$219, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L98:
	.loc 1 220 0 is_stmt 1
	movl	$1, %esi
	movl	$2, %edi
	call	newMatrix
	movq	%rax, -8(%rbp)
	.loc 1 221 0
	movq	-16(%rbp), %rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rax, %r8
	movl	$1, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movl	$0, %edi
	call	copyMatrix
	movl	%eax, -24(%rbp)
	.loc 1 222 0
	cmpl	$0, -24(%rbp)
	je	.L99
	.loc 1 222 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$222, %edx
	movl	$.LC1, %esi
	movl	$.LC37, %edi
	call	__assert_fail
.L99:
	.loc 1 223 0 is_stmt 1
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	deleteMatrix
	.loc 1 224 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	deleteMatrix
	.loc 1 225 0
	movl	$2, %esi
	movl	$2, %edi
	call	newMatrix
	movq	%rax, -16(%rbp)
	.loc 1 226 0
	movl	$1, %esi
	movl	$1, %edi
	call	newMatrix
	movq	%rax, -8(%rbp)
	.loc 1 227 0
	movq	-16(%rbp), %rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rax, %r8
	movl	$2, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movl	$0, %edi
	call	copyMatrix
	movl	%eax, -24(%rbp)
	.loc 1 228 0
	cmpl	$-1, -24(%rbp)
	je	.L100
	.loc 1 228 0 is_stmt 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.2149, %ecx
	movl	$228, %edx
	movl	$.LC1, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L100:
	.loc 1 229 0 is_stmt 1
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	deleteMatrix
	.loc 1 230 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	deleteMatrix
	.loc 1 232 0
	movl	$0, %eax
	.loc 1 233 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.2149, @object
	.size	__PRETTY_FUNCTION__.2149, 5
__PRETTY_FUNCTION__.2149:
	.string	"main"
	.align 4
.LC14:
	.long	1065353216
	.align 4
.LC15:
	.long	0
	.align 4
.LC25:
	.long	1092616192
	.align 4
.LC28:
	.long	1101004800
	.align 4
.LC32:
	.long	1077936128
	.align 4
.LC33:
	.long	1106247680
	.text
.Letext0:
	.file 2 "matrix.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x16c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF16
	.byte	0x1
	.long	.LASF17
	.long	.LASF18
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x4
	.long	.LASF19
	.byte	0x8
	.byte	0x2
	.byte	0x11
	.long	0xab
	.uleb128 0x5
	.long	.LASF10
	.byte	0x2
	.byte	0x12
	.long	0x34
	.byte	0
	.uleb128 0x5
	.long	.LASF11
	.byte	0x2
	.byte	0x13
	.long	0x34
	.byte	0x4
	.uleb128 0x5
	.long	.LASF12
	.byte	0x2
	.byte	0x14
	.long	0xab
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	0xba
	.long	0xba
	.uleb128 0x7
	.long	0x6c
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF13
	.uleb128 0x8
	.long	.LASF20
	.byte	0x2
	.byte	0x17
	.long	0x7a
	.uleb128 0x9
	.long	.LASF21
	.byte	0x1
	.byte	0x21
	.long	0x34
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x154
	.uleb128 0xa
	.string	"mat"
	.byte	0x1
	.byte	0x25
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.long	.LASF22
	.long	0x16a
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.2149
	.uleb128 0xa
	.string	"rv"
	.byte	0x1
	.byte	0x2c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"sum"
	.byte	0x1
	.byte	0x4d
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.long	.LASF14
	.byte	0x1
	.byte	0x54
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"val"
	.byte	0x1
	.byte	0x62
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.long	.LASF15
	.byte	0x1
	.byte	0xc9
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0xc1
	.uleb128 0x6
	.long	0x73
	.long	0x16a
	.uleb128 0xe
	.long	0x6c
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.long	0x15a
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
.LASF2:
	.string	"long long int"
.LASF22:
	.string	"__PRETTY_FUNCTION__"
.LASF18:
	.string	"/mnt/d/jbrown/Documents/Code/C_Code/C_Matrix/C_MATRIX"
.LASF14:
	.string	"temp"
.LASF0:
	.string	"long unsigned int"
.LASF12:
	.string	"data"
.LASF19:
	.string	"_matrix"
.LASF9:
	.string	"char"
.LASF3:
	.string	"unsigned char"
.LASF21:
	.string	"main"
.LASF1:
	.string	"long int"
.LASF17:
	.string	"test_matrix.c"
.LASF20:
	.string	"matrix"
.LASF15:
	.string	"mat2"
.LASF4:
	.string	"short unsigned int"
.LASF6:
	.string	"signed char"
.LASF16:
	.string	"GNU C 4.8.4 -mtune=generic -march=x86-64 -g -std=c99 -fstack-protector"
.LASF13:
	.string	"float"
.LASF11:
	.string	"cols"
.LASF7:
	.string	"short int"
.LASF5:
	.string	"unsigned int"
.LASF8:
	.string	"sizetype"
.LASF10:
	.string	"rows"
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
