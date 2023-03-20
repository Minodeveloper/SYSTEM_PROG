;stack practise

SECTION	.data

SECTION	.text


global _start

_start:
		mov	rax,0xA
		push	rax
		mov	rax,0xB
		push	rax
		pop	rdx
		pop	rdx
		

exit:		mov	rax,60
		xor	rdi,rdi
		syscall
