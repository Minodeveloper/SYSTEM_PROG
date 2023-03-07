
	global	main
	extern	puts

SECTION	.text

main:
	mov	rdi, message
	call	puts
	ret

message:	
	db	"Hola, mundo",10
