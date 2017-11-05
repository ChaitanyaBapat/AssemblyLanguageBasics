data segment
	array dw 01h,02h,03h,04h,05h,06h,07h,08h,09h,0ah
data ends

code segment
	assume cs:code,ds:data

start:
	mov ax,data
	mov ds,ax
	mov di,0000h
	mov cx,000ah
	mov dx,0000h
loop1:
	add dx,array[di]
	inc di
	inc di
	dec cx
	jnz loop1
	int 3
	mov ah,4ch
	int 21h
code ends
end start	