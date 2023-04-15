%include	"functions.asm"

section	.data

msg1		db	"Hello, brave new world!",0xa
msg2		db	"This is how we recycle NASM.",0xa

section	.text

global	_start

_start:
	mov	eax,msg1
	call	sprint

	mov	eax,msg2
	call	sprint

	call 	quit
