.globl _start
.section .text

_start:
	movq $100, %rax
	jmp  square	

add5:
	addq $200, %rax
	jmp  finish
square:	
	mulq %rax
	jmp add5

finish:
	movq %rax, %rdi #return value in %rdi
	movq $60, %rax
	syscall
