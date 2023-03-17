;sum of numbers in array

SECTION	.data

EXIT_SUCCESS	equ	0
SYS_EXIT	equ	60

lst:	dd	1002,1004,1006,1008,10010
len:	dd	5
sum:	dd	0

SECTION	.text

global _start

_start:
	mov	ecx, dword[len]
	mov	rsi,0

sumLoop:
	mov	eax,dword[lst + (rsi*4)]
	add	dword[sum],eax
	inc	rsi
	loop	sumLoop

last:	
	mov	rax,SYS_EXIT
	mov	rdi,EXIT_SUCCESS
	syscall
