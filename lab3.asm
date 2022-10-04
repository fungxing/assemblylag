Include Irvine32.inc

.data
	Result btye 9 DUP(?)
.code
Main PROC
	mov ecx, LENGTHOF Result
	mov esi, OFFSET Result
	mov al, 0
L1:
	add al, 9
	mov [esi], al
L2: 
	inc esi
	LOOP　L1

	exit
main ENDP
END main

