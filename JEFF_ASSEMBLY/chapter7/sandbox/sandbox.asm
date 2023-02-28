section .data

	TestValue db 17h
	
section .text
	global	_start
_start:
	nop
; Put your experiments between the two nops...
	mov eax,0x1
	neg eax
	add eax,0x1

;	mov eax, 0x5
;DoMore: dec eax
;	jnz DoMore


;	mov eax, 0x0001
;	dec eax
;	mov ax, 0x0100
;	xchg ah, al 
;	mov bx,ax
;	mov cl,bh
;	mov ch,bl
;	mov eax,42h
;	add eax,[TestValue]

; Put your experiments between the two nops...
	nop
