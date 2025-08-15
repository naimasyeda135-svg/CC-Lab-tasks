	.file	"if.c"
	.intel_syntax noprefix
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "Enter your marks (0 - 100): \0"
.LC1:
	.ascii "%d\0"
	.align 8
.LC2:
	.ascii "Invalid marks. Please enter a value between 0 and 100.\0"
.LC3:
	.ascii "Grade: A+\0"
.LC4:
	.ascii "Grade: A\0"
.LC5:
	.ascii "Grade: A-\0"
.LC6:
	.ascii "Grade: B+\0"
.LC7:
	.ascii "Grade: B\0"
.LC8:
	.ascii "Grade: B-\0"
.LC9:
	.ascii "Grade: C+\0"
.LC10:
	.ascii "Grade: C\0"
.LC11:
	.ascii "Grade: D\0"
.LC12:
	.ascii "Grade: F\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	lea	rax, .LC0[rip]
	mov	rcx, rax
	call	printf
	lea	rax, -4[rbp]
	lea	rcx, .LC1[rip]
	mov	rdx, rax
	call	scanf
	mov	eax, DWORD PTR -4[rbp]
	test	eax, eax
	js	.L2
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 100
	jle	.L3
.L2:
	lea	rax, .LC2[rip]
	mov	rcx, rax
	call	puts
	jmp	.L4
.L3:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 79
	jle	.L5
	lea	rax, .LC3[rip]
	mov	rcx, rax
	call	puts
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 74
	jle	.L6
	lea	rax, .LC4[rip]
	mov	rcx, rax
	call	puts
	jmp	.L4
.L6:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 69
	jle	.L7
	lea	rax, .LC5[rip]
	mov	rcx, rax
	call	puts
	jmp	.L4
.L7:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 64
	jle	.L8
	lea	rax, .LC6[rip]
	mov	rcx, rax
	call	puts
	jmp	.L4
.L8:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 59
	jle	.L9
	lea	rax, .LC7[rip]
	mov	rcx, rax
	call	puts
	jmp	.L4
.L9:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 54
	jle	.L10
	lea	rax, .LC8[rip]
	mov	rcx, rax
	call	puts
	jmp	.L4
.L10:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 49
	jle	.L11
	lea	rax, .LC9[rip]
	mov	rcx, rax
	call	puts
	jmp	.L4
.L11:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 44
	jle	.L12
	lea	rax, .LC10[rip]
	mov	rcx, rax
	call	puts
	jmp	.L4
.L12:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 39
	jle	.L13
	lea	rax, .LC11[rip]
	mov	rcx, rax
	call	puts
	jmp	.L4
.L13:
	lea	rax, .LC12[rip]
	mov	rcx, rax
	call	puts
.L4:
	mov	eax, 0
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (GNU) 15.1.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
