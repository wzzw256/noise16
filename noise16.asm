	org 0x0100
	mov al, 0x13
	int 0x10
	les bp, [bx]
	mov cx, 0xFA00
mainloop:
	div cx
	stosb
	out 0x61, al

	jnz mainloop