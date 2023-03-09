     1                                  ; answer = (A + B) - (C + D)
     2                                  
     3                                  SECTION .data
     4 00000000 0000000000000000        answer:		dq	0x0
     5 00000008 54686520616E737765-     disptext:	db	"The answer is",0,10
     5 00000011 72206973000A       
     6                                  
     7                                  SECTION	.bss
     8 00000000 ????????????????        answer2:	resq	1		;uninitialized in memory
     9                                  
    10                                  SECTION	.text
    11                                  
    12                                  global _start
    13                                  
    14                                  _start:
    15 00000000 B804000000              	mov	rax,4			;moved 4 to rax  A
    16 00000005 BB03000000              	mov	rbx,3			;moved 3 to rbx  B
    17 0000000A B902000000              	mov	rcx,2			;moved 2 to rcx  C
    18 0000000F BA01000000              	mov	rdx,1			;moved 1 to rdx  D
    19 00000014 4801D8                  	add	rax,rbx			;rax = rax + rbx  (A+B)
    20 00000017 4801D1                  	add	rcx,rdx			;rcx = rcx + rdx  (C+D)
    21 0000001A 48890425[00000000]      	mov	qword[answer],rax	;answer = (A+B)
    22 00000022 48290C25[00000000]      	sub	qword[answer],rcx	;answer = answer - (C+D)
    23                                  
    24                                  ;	mov	qword[answer2],0b001001	;allocated but uninitialized
    25 0000002A B83C000000              	mov	rax,60
    26 0000002F 488B3C25[00000000]      	mov	rdi,qword[answer]
    27 00000037 0F05                    	syscall
