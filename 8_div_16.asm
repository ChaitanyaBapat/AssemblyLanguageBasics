.model small
.data
op1 dw 1000H
op2 dw 0020H
.stack
.code
main:
	mov ax,@data
	mov ds,ax
	mov ax,0H
	mov ax,op1
	mov bx,op2
	clc
	div bx
	int 3
	mov ah,4ch
	int 21h
end main
code ends	