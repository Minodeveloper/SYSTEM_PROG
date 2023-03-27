;a program to understand function calling convention

section	.data

numbers:	dq	50,20,30,100

section	.text

global	_start

_start:
	nop
	call	myfunc
	mov	r9,199
	mov	r8,200
	mov	r10,0xa
	jmp	exit
myfunc:
	mov	rax,0xff00ff00
	add	rax,0x00ff00ff
	ret

exit:
	mov	rax,60
	xor	rdi,rdi
	syscall
	ret
	
