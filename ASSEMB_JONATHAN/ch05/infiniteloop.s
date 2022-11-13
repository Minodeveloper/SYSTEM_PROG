.globl _start
.section .text
_start:
	movq $60, %rdi
another_location:
	movq $8, %rdi
	jmp another_location
	syscall
