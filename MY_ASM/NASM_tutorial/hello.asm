global _start

SECTION .data	

message:	db	"Hello, World",10


SECTION .text

_start:
	mov	rax, 1
	mov	rdi, 1
	mov	rsi, message
	mov	rdx, 13
	syscall
	mov	rax, 60
	xor 	rdi, rdi
	syscall
