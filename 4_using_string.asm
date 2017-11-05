data segment
	source dw 02h,03h,04h,06h,0ah
	dest dw 5 dup(?)
data ends

code segment
	assume cs:code,ds:data

start:
	mov ax,data
	mov ds,ax
	mov es,ax
	lea si,source
	lea di,dest
	mov cx,0005h
	cld
	rep movsw
	int 3
	mov ah,4ch
	int 21h
code ends
end start			