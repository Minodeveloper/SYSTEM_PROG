.section .text
.global _start
_start:
	movq $0b1101, %rdi
	movq $60, %rax
	syscall
