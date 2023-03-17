;x86-64 program to calculate sum of squares


SECTION	.data
sum:	dq	0x0

SECTION	.text

global _start

_start:
	mov	rcx,10
	
_add_:	mov	rax,rcx
	mul	rax
	add	qword[sum],rax
	dec	rcx
	cmp	rcx,0
	jne	_add_
	

	mov	rax,60
	mov	rdi,qword[sum]
	syscall
