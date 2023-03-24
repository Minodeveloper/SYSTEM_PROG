section	.text

global _start

_start:
	xor	rbx,rbx
	mov	rcx,5

myLOOP:
	inc	rbx
	loop	myLOOP

	mov	rax,60
	mov	rdi,rbx
	syscall
