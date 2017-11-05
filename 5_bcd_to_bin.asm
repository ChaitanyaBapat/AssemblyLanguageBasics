data segment
	num dw 2345h
data ends

code segment	
	assume ds:data,cs:code
start:
	mov ax,data
	mov ds,ax
	mov ax,num
	mov bx,ax
	mov dx,00h
	mov cx,00h
	int 3
	and ah,00f0h
	int 3
	ror ah,04h
	int 3
	cmp ah,00h
	jz hundred

loop1:
	add dx,3e8h
	dec ah
	jnz loop1
	int 3
hundred:
	and bh,0fh
	int 3
	cmp bh,00h
	jz ten

loop2:
	add dx,64h
	dec bh
	jnz loop2
	int 3
ten:
	and al,00f0h
	ror al,04h
	int 3
	cmp al,00h
	jz unit

loop3:
	add dx,0ah
	dec al
	jnz loop3
	int 3
unit:
	and bl,0fh
	int 3
	add dx,bx
	int 3
	mov ah,4ch
	int 21h
code ends
end start	



