;arrays tryals and undertanding

SECTION	.data

marks:		db	0xA,0xB,0xC,0xD
lenMarks:	equ	($-marks)
price:		dd	101,103,105,107
lenPrice:	equ	($-price)
SECTION .text

global _start

_start:
	mov	rcx,0
	mov	rdx,price
looper:	mov	eax,dword[rdx + rcx]
	add	rcx,4
	cmp	rcx,lenPrice
	jne	looper
	
	
