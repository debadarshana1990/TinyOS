global outb	; for sending byte to I/O port

;esp+8 :data
;esp+4 :IO Port
;esp   :Return Address

section .text

outb:
	mov al,[esp+8] ; move data to al register
	mov dx,[esp+4] ; move IO to dx
	out dx,al
	ret
