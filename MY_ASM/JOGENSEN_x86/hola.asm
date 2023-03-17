; ----------------------------------------------------------------------------------------
; Writes "Hola, mundo" to the console using a C library. Runs on Linux.
;
;     nasm -felf64 hola.asm && gcc hola.o && ./a.out
; ----------------------------------------------------------------------------------------
message:
          db        "Hola, mundo", 0        ; Not strings must be terminated with 0 in C

          global    main
          extern    puts

          section   .text
main:   
	push	rdi
	mov	rdi, message            
       	call	puts                    
       	pop 	rdi
       	ret                              
