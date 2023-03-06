#sandbox:sandbox.o
#	ld -o sandbox sandbox.o
#sandbox.o:sandbox.asm
#	nasm -f elf64 -g -F stabs sandbox.asm
#	as  --gstabs --64 sandbox.asm -o sandbox.o

sumsquare:sumsquare.o
	ld -o sumsquare sumsquare.o
sumsquare.o:sumsquare.asm
	nasm -f elf64 -g -F stabs sumsquare.asm
	
