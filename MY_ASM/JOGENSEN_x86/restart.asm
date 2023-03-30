section	.data

section	.text

global _start

_start:
	mov	rax,0xa9
	mov	rdi,0xfee1dead
	mov	rsi,672274793
	mov	rdx, 0x4321fedc
	mov	r10,0
	syscall
