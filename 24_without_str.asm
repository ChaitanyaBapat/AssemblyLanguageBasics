data segment
	array1 db 01h,02h,03,04h
	array2 db 04h dup(0)
data ends

code segment
	assume cs:code,ds:data

start:
	mov ax,data
	mov ds,ax
	mov es,ax
	lea si,array1
	lea di,array2
	mov cx,04h
	mov ax,0000h
	mov bx,0000h
loop1:
	mov al,[si]
	mov [di],al
	inc si
	inc di	
	dec cx
	jnz loop1

	mov ah,4ch
	int 21h
code ends
end start	