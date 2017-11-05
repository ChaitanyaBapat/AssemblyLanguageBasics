#include <stdio.h>
#include <conio.h>
int n = 5;

void main() {
	int array[5];
	int even[5];
	int odd[5];
	int even_count = 0;
	int odd_count = 0;
	int i;
	int temp;
	clrscr();
	printf("Enter 5 numbers :\n");
	for(i = 0; i< n; i++ ) {
		scanf("%d",&array[i]);
	}
	for(i = 0; i < n; i++ ) {
		temp = array[i];
		asm mov dx,0000h
		asm mov ax,temp
		asm div 02h
		asm cmp dx,00h
		asm je even
		odd[odd_count++] = array[i];
		asm jmp end
		even: {
			even[even_count++] = array[i];
			asm jmp end
		}
		end: {
			continue;
		}
	}
}