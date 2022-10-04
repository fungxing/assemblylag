include Irvine32.inc

.data
Digit0 BYTE 2
Digit1 BYTE 5
Digit2 BYTE 5
Digit3 BYTE 7
MyID DWORD ?
.code 
Main PROC
	
	mov ah, Digit0
	mov al, Digit1
	sh1 eax, 16
	mov ah, Digit2
	mov al, Digit3
	mov MyID, eax

	exit

main ENDP
END main

