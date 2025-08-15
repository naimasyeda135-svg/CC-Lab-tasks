	.file	"pos.c"
	.intel_syntax noprefix
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "%d\0"
.LC1:
	.ascii "n is Positive number!\0"
.LC2:
	.ascii "n is aNegative number!\0"
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
	lea	rax, -4[rbp]
	lea	rcx, .LC0[rip]
	mov	rdx, rax
	call	scanf
	mov	eax, DWORD PTR -4[rbp]
	test	eax, eax
	jle	.L2
	lea	rax, .LC1[rip]
	mov	rcx, rax
	call	puts
	jmp	.L3
.L2:
	lea	rax, .LC2[rip]
	mov	rcx, rax
	call	puts
.L3:
	mov	eax, 0
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (GNU) 15.1.0"
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
