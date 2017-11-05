data segment
	num dw 04h
data ends
code segment
	assume ds:data,cs:code
start:
	mov ax,data
	mov ds,ax
	mov ax,00h
	mov cx,00h
	mov ax,num
	mov cx,ax
	int 3
	dec cx
	int 3
	cmp cx,00h
	je exit
while_loop:
	mul cx
	int 3
	dec cx
	int 3
	cmp cx,00h
	jne while_loop
exit:
	mov ah,4ch
	int 21h
code ends
end start			