; answer = (A + B) - (C + D)

SECTION .data
answer:		dq	0x0
disptext:	db	"The answer is",0,10

SECTION	.bss
answer2:	resq	1		;uninitialized in memory

SECTION	.text

global _start

_start:
	mov	rax,4			;moved 4 to rax  A
	mov	rbx,3			;moved 3 to rbx  B
	mov	rcx,2			;moved 2 to rcx  C
	mov	rdx,1			;moved 1 to rdx  D
	add	rax,rbx			;rax = rax + rbx  (A+B)
	add	rcx,rdx			;rcx = rcx + rdx  (C+D)
	mov	qword[answer],rax	;answer = (A+B)
	sub	qword[answer],rcx	;answer = answer - (C+D)

;	mov	qword[answer2],0b001001	;allocated but uninitialized
	mov	rax,60
	mov	rdi,qword[answer]
	syscall
