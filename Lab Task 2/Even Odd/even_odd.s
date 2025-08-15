	.file	"even_odd.c"
	.intel_syntax noprefix
	.text
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "Enter the start of the range: \0"
.LC1:
	.ascii "%d\0"
.LC2:
	.ascii "Enter the end of the range: \0"
.LC3:
	.ascii "Total even numbers: %d\12\0"
.LC4:
	.ascii "Total odd numbers: %d\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	call	__main
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	lea	rax, .LC0[rip]
	mov	rcx, rax
	call	printf
	lea	rax, -16[rbp]
	lea	rcx, .LC1[rip]
	mov	rdx, rax
	call	scanf
	lea	rax, .LC2[rip]
	mov	rcx, rax
	call	printf
	lea	rax, -20[rbp]
	lea	rcx, .LC1[rip]
	mov	rdx, rax
	call	scanf
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L2
.L5:
	mov	eax, DWORD PTR -12[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L3
	add	DWORD PTR -4[rbp], 1
	jmp	.L4
.L3:
	add	DWORD PTR -8[rbp], 1
.L4:
	add	DWORD PTR -12[rbp], 1
.L2:
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L5
	mov	eax, DWORD PTR -4[rbp]
	lea	rcx, .LC3[rip]
	mov	edx, eax
	call	printf
	mov	eax, DWORD PTR -8[rbp]
	lea	rcx, .LC4[rip]
	mov	edx, eax
	call	printf
	mov	eax, 0
	add	rsp, 64
	pop	rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (GNU) 15.1.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
