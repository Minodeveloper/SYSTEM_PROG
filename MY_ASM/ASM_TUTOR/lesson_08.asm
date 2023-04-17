%include	"functions.asm"

section	.text
global	_start

_start:
	pop	eax

nextArg:
	cmp	ecx,0x0
	jz	noMoreArgs
	pop	eax
	call	sprintLF
	dec	ecx
	jmp	nextArg

noMoreArgs:
	call 	quit
