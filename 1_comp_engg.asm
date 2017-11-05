.model small
.data
string db "I am a Computer Engineer$"
.stack
.code
main:	
	mov ax,@data
	mov ds,ax
	lea dx,string
	mov ah,09h
	int 21h
	mov ah,4ch
	int 21h
end main
code ends	
	