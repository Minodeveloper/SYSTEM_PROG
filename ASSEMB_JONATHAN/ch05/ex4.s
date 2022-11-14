.globl _start
.section .text

_start:
#	movq $0b01111111111111111111111111111111, %rbx
	movq $0x12A05F200, %rbx
loop:
	decq %rbx
	cmpq $0, %rbx
	jne loop

	movq $8, %rdi
	movq $60, %rax
	syscall
	
