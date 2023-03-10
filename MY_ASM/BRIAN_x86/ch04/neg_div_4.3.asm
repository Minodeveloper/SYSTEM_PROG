; negative divisiob

SECTION	.data
SECTION	.bss


SECTION	.text

global _start

_start:
	nop
	mov	eax,-534
	cdq
	mov	ebx,15
	idiv	ebx

	mov	rax,60
	xor	rdi,rdi
	syscall

