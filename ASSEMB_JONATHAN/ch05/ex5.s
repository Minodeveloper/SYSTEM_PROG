.globl _start
.section .text
#program return 1 if EVEN and 0 if ODD
_start:
	movq $35, %rax  #move the number to check  in %rax
        movq $2, %rbx	
	divq %rbx	
	
	cmpq $0, %rdx
	jne   odd
	movq  $1, %rdi
	movq  $60, %rax
	syscall
odd:
	movq $0, %rdi
	movq $60, %rax
	syscall
	
