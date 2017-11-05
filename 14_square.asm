data segment
	number dw 0020h
data ends
code segment
	assume cs:code,ds:data

start:
	mov ax,data
	mov ds,ax
	mov ax,number
	mov cx,number
	mul cx
	int 3
	mov ah,4ch
	int 21h
code ends
end start			