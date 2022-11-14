.globl _start
.section .text

_start:
	movq $9, %rbx #number2
	movq $5, %rcx  #number1
	movq $0, %rdx
loop:
	addq %rcx, %rdx
	
	decq %rbx
	cmpq $0, %rbx
	jne loop

	movq %rdx, %rdi
	movq $60, %rax
	syscall
	
