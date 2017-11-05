.model small
.data
op1 dw 1111H
op2 dw 2222H
.stack
.code
main:
	mov ax,@data
	mov ds,ax
	mov ax,0H
	mov ax,op1
	mov bx,op2
	clc
	sub ax,bx
	int 3
	mov ah,4ch
	int 21h
end main
code ends	