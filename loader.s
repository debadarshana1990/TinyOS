global loader ; Entry symbol for ELF

MAGIC_NUMBER 	equ 0x1BADB002
FLAGS 		equ 0x0
CHECKSUM	equ -MAGIC_NUMBER
KERNEL_STACK_SIZE equ 4096



section .text:
align 4
	dd MAGIC_NUMBER
	dd FLAGS
	dd CHECKSUM

loader:
	mov eax,0xCAFEBABE
	mov ebx,0x4128
        mov [0x000B8000],ebx


.loop:
	jmp .loop ; loop forever
