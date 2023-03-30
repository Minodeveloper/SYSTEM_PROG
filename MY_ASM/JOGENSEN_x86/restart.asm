;syscall number 0xa9
;link https://chromium.googlesource.com/chromiumos/docs/+/HEAD/constants/syscalls.md#x86-32_bit
;https://man7.org/linux/man-pages/man2/reboot.2.html

section	.data

section	.text

global _start

_start:
	mov	rax,0xa9
	mov	rdi,0xfee1dead	;magic number 
	mov	rsi,672274793	;magic number2
	mov	rdx, 0x4321fedc	;command
	mov	r10,0		;don't know
	syscall
