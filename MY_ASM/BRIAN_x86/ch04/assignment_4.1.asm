;watts = volts * amperage
;given watts = 1200
;volts = 120
;amperage = watts / volts

SECTION	.data

wallOutlet:	dq	120
powerSupply:	dq	1200	

SECTION	.text

global _start

_start:
	
	mov	rdx,0
	mov	rax,qword[powerSupply]
	div	qword[wallOutlet]
	mov	rcx,rax

	mov	rax,60
	mov	rdi,rcx
	syscall
		

