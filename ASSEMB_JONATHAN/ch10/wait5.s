.globl _start

.section .data

curtime:
	.quad 0

.section .text

_start:
	movq $0xc9, %rax
	movq $curtime, %rdi
	syscall

	movq curtime, %rdx

	addq $5, %rdx

timeloop:
	movq $0xc9, %rax
	movq $curtime, %rdi
	syscall

	cmpq %rdx, curtime
	jb timeloop

timefinish:
	movq $0x3c, %rax
	movq $0, %rdi
	syscall
