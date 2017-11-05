data segment
	array dw 05h,03h,01h,04h,02h
data ends

code segment
	assume cs:code,ds:data

start:
	mov ax,data
	mov ds,ax
	mov di,0000h
	
	mov cx,0004h
	mov ax,array[di]	;contains smallest number
	int 3
	inc di
	inc di
loop:
	mov dx,array[di]
	int 3
	cmp ax,dx
	jle continue
	int 3
	mov ax,dx
continue:
	inc di
	inc di	 
	dec cx
	int 3
	jnz loop
	int 3
	mov ah,4ch
	int 21h
code ends	
end start