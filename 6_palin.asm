data segment
	str1 db "microprocessor"
	len equ $-str1
	yes db "yes$"
	no db "no$"
data ends

extra segment
	str2 db len dup(0)
extra ends

code segment
	assume cs:code,ds:data,es:extra

start:
	mov ax,data
	mov ds,ax
	mov ax,extra
	mov es,ax
	lea si,str1
	lea di,str2
	mov cx,len
	mov ax,0000h

loop1:
	mov al,[si]
	mov [di],al
	inc si
	inc di
	dec cx
	jnz loop1

	mov cx,len
	lea si,str1
	lea di,str2
	add di,len
	dec di

loop2:
	mov ax,0000h
	mov bx,0000h
	mov al,[si]
	mov bl,[di]
	cmp al,bl
	jne wrong
	inc si
	inc di
	dec cx
	jnz loop2

correct:
	lea dx,yes
	mov ah,09h
	int 21h
	jmp done

wrong:
	lea dx,no
	mov ah,09h
	int 21h

done:
	mov ah,4ch
	int 21h
code ends
end start	