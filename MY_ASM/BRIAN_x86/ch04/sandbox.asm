;sandbox program

SECTION	.data

numbers:	db	1,2,3,4
numbersq:	dq	10,11,12,13,14,15

SECTION	.bss


SECTION	.text

global	_start

_start:
	nop
	mov	bl,0xff
	mov	rax,0xf0a6b756ffddee00
	movsx	rax,bl	
;	mov	rax,numbersq
;	mov	rbx,[numbersq + 8]
;	mov 	ax,0
;	mov 	al,-5			;sign extension
;	cbw

	nop

	mov eax,60
	xor rdi,rdi
	syscall
