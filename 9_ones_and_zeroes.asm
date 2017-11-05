data segment
	number dw 2345h
data ends

code segment
	assume cs:code,ds:data

start:
	mov ax,data
	mov ds,ax
	mov ax,number	; move number
	mov cx,0010h	; set counter
	mov bx,0000h	; store zeroes
	mov dx,0000h	; store ones
loop1:	
	rol ax,01h
	jc incr_ones

incr_zeroes:
	inc bx
	jmp end_of_loop

incr_ones:	
	inc dx

end_of_loop:
	dec cx
	jnz loop1
	int 3
	mov ah,4ch
	int 21h
code ends
end start	