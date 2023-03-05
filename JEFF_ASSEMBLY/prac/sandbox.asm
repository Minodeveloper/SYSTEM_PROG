;my practise programs

SECTION .data

;roll	db 0b10101111
;name	dq 0b11111111000011110011001101010101
;sent	dq "abcd",10
name 	db "madhuresh",0

SECTION .bss

SECTION .text


global _start

_start:
	nop
	mov r8, name

	mov rax, name
	inc byte [name]
	;mov rbx, [roll]
	;mov rcx, [name]
	;mov rdx, [sent]
	nop

