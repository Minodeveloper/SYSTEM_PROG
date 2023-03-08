SECTION	.data

sum:	dq	0
val:	dq	25

SECTION	.text

global	_main

_main:
	mov	rax,0
	inc	rax
	add	rax,200
	sub	rax,[val]
	mov	[sum],rax
	dec	dword[sum]
	neg	dword[sum]


exitcall:
	mov	rax,1
	mov	rbx,16
	int	80h
