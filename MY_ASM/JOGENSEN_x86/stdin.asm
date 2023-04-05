section	.data

STDIN:		equ	0
SYS_read	equ	0
inChar:		db	0x0




section	.text

global _start

_start:
	nop
	nop
	nop
	jmp	read

read:	
	mov	eax,0
	mov	rdi,0
	mov	rsi,inChar
	mov	rdx,1
	syscall

write:
	mov	rax,1
	mov	rdi,1
	mov	rsi,inChar
	mov	rdx,1
	syscall

exit:
	mov	rax,60
	xor	rdi,rdi
	syscall
