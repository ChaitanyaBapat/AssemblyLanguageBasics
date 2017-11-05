data segment
	num1 dw 0fh
	num2 dw 06h
	temp dw ?
data ends

code segment
	assume ds:data, cs:code
start:
	mov ax,data
	mov ds,ax
	int 3
	mov ax,num1
	mov bx,num2
	int 3

while_loop:
	nop
	mov cx,bx
	mov dx,00h
	int 3
	div bx
	int 3
	mov bx,dx
	mov ax,cx
	cmp bx,00h
	int 3
	jne while_loop
	mov bx,ax
	int 3
	mov ah,4ch
	int 21h
code ends
end start	