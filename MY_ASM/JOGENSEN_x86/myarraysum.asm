;my array summation program
;store sum in register r8
;store
SECTION .data

numbers:	dq	200,200,300,400,500
len:		equ	($-numbers)	
dataSize:	equ	0x8

SECTION	.text

global	_start

_start:
		mov	rcx,0
		mov	r8,0			;stores sum
		mov	rdi,numbers		;base address of array
summing:	add	r8,qword[rdi + (rcx * 8)]
		inc	rcx
		cmp	rcx,5
		jne	summing

		mov	rax,60
		mov	rdi,0
		syscall	
	
