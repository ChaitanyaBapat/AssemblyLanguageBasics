data segment
	str1 db "program"
	len equ $-str1
	char db "g"
	yes db "Found$"
	no db "Not Found$"
data ends

code segment
	assume cs:code,ds:data

start:
	mov ax,data
	mov ds,ax
	mov cx,len
	lea si,str1
	lea di,char
	mov ax,0000h
	mov bx,0000h
	mov bl,[di]

loop1:
	mov al,[si]
	cmp al,bl
	je correct
	inc si
	dec cx
	jnz loop1

	lea dx,no
	mov ah,09h
	int 21h
	jmp last

correct:
	lea dx,yes
	mov ah,09h
	int 21h

last:
	mov ah,4ch
	int 21h
code ends
end start		
