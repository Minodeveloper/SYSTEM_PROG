eatsyscall: eatsyscall.o
	ld -o eatsyscall eatsyscall.o -melf_i386
eatsyscall.o: eatsyscall.asm
	nasm -f elf -g -F stabs eatsyscall.asm  
