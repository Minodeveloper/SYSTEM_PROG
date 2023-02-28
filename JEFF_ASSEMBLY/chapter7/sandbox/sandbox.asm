section .data

	TestValue db 17h
	
section .text
	global	_start
_start:
	nop
; Put your experiments between the two nops...
	
	mov ax, 0x67fe
	mov ax, 0x0100
	xchg ah, al 
	mov bx,ax
	mov cl,bh
	mov ch,bl
	mov eax,42h
	add eax,[TestValue]

; Put your experiments between the two nops...
	nop
