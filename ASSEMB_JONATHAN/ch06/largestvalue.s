.globl _start 
.section .data

numberofnumbers:
	.quad 7

mynumbers:
	.quad 5, 20, 33, 80, 52, 10, 1

.section .text

_start:
	movq numberofnumbers, %rcx

	movq $mynumbers, %rbx

	movq $0, %rdi

	cmpq $0, %rcx
	je   endloop

myloop:
	movq (%rbx), %rax

	cmpq %rdi, %rax
	jbe loopcontrol

	movq %rax, %rdi

loopcontrol:
	addq $8, %rbx

	loopq myloop

endloop:
	movq $60, %rax
	syscall
