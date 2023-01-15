.globl main

.section .data

filename:
	.ascii "myfile.txt\0"

openmode:
	.ascii "w\0"

formatstring1:
	.ascii "The age of %s is %d.\n\0"

sallyname:
	.ascii "Sally\0"

sallyage:
	.quad 53

formatstring2:
	.ascii "%d and %d are %s's favourite numbers.\n\0"

joshname:
	.ascii "Josh\0"
joshfavouritefirst:
	.quad 7
joshfavouritesecond:
	.quad 13

.section .text

main:
	enter $16, $0
	movq $filename, %rdi
	movq $openmode, %rsi
	call fopen

	movq %rax, -8(%rbp)

	movq -8(%rbp), %rdi
	movq $formatstring1, %rsi
	movq $sallyname, %rdx
	movq sallyage, %rcx
	movq $0, %rax
	call fprintf

	movq -8(%rbp), %rdi
	call fclose

	movq $0, %rax
	leave
	ret
	
