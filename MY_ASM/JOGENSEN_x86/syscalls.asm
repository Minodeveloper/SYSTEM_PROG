section	.data
myName:		db	"my name is minoshi",0xa
len:		equ	($ - myName)
section	.text

global _start

_start:
	mov	rax,1
	mov	rdi,1
	mov	rsi,myName
	mov	rdx,len
	syscall

exit:	mov	rax,60
	xor	rsi,rsi
	syscall
