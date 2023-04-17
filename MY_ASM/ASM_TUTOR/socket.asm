section	.text

section	.data
message:	db	"write sys call stdout",0,0xa
len:		equ	($-message)
section	.text

global	_start

_start:

socket:
	mov	rdi,2		;

stdout:
	mov	rax,1
	mov	rdi,1
	mov	rsi,message
	mov	rdx,len
	syscall

exit:
	mov	rax,60
	mov	rdi,0
	syscall
