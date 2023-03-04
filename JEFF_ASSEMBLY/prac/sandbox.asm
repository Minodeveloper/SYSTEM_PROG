;my practise programs

SECTION .data

roll	dq 0x64
name	db "M"
	
SECTION .bss

SECTION .text


global _start

_start:
	nop

	mov rax, roll
	mov rbx, [rax]
	
	nop

