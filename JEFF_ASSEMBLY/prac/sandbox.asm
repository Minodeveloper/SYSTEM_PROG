;my practise programs

SECTION .data

;roll	db 0b10101111
;name	dq 0b11111111000011110011001101010101
;sent	dq "abcd",10
name 	db "madhuresh",0

number	dq 0xf6fabcd45734ad6a

multi	db 0x4

SECTION .bss

SECTION .text


global _start

_start:
	nop
	
	mov al, 0x4
	mul byte  [multi]



	nop

