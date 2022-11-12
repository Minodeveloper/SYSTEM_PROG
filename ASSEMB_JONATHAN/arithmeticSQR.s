.global _start
.section .text
_start:
	
	movq $10, %rax
	mulq %rax

	movq %rax, %rdi
	divq %rax
	movq %rax, %rdi
	movq $60, %rax
	syscall	
