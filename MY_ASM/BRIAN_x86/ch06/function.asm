section	.data
num1:	dd	2
num2:	dd	4

section	.text

global _start,_sum

_start:
	mov	rax,10
	dec	rax
	mov	rbx,5

	push	qword[num2]
	push	qword[num1]
	call	_sum
	add 	rsp,8

	add	rax,rbx
	dec	rax

	mov	rax,1
	mov	rbx,0
	int	0x80

_sum:	
	push	rbp
	mov	rbp,rsp
	push	rbx
	mov	rbx, [rbp + 8]
	mov	rax, [rbp + 12]
	add	rax,rbx
	pop	rbx
	pop	rbp
	ret
