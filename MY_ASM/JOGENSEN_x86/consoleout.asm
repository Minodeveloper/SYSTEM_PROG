section	.data

LF		equ	0xA
NULL		equ	0x0
TRUE		equ	0x1
FALSE		equ	0x0

EXIT_SUCCESS	equ	0x0

STDIN		equ	0x0
STDOUT		equ	0x1
STDERR		equ	0x2

SYS_read	equ	0x0
SYS_write	equ	0x1
SYS_open	equ	0x2
SYS_close	equ	0x3
SYS_fork	equ	0x39	;57
SYS_exit	equ	0x3C	;60
SYS_creat	equ	0x55	;85
SYS_time	equ	0xC9	;201

message1:	db	"Hello World.",LF,NULL
message2:	db	"Enter answer: ",NULL
newline:	db	LF,NULL


section	.text
global	_start

_start:
	mov	rdi,message1
	call	printString

	mov	rdi,message2
	call	printString

	mov	rdi,newline
	call	printString


exampleDone:
	mov	rax,SYS_exit
	mov	rdi,EXIT_SUCCESS
	syscall


global	printString

printString:
	push	rbx

	mov	rbx,rdi
	mov	rdx,0

strCountLoop:
	cmp	byte[rbx],NULL
	je	strCountDone
	inc	rdx
	inc	rbx
	jmp	strCountLoop

strCountDone:
	cmp	rdx,0
	je	prtDone


	mov	rax,SYS_write
	mov	rsi,rdi
	mov	rdi,STDOUT

	syscall

prtDone:
	pop	rbx
	ret


