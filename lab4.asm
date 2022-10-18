include Irvine32.inc
.data 
	MYID1 BYTE "110502558"
	MYID2 BYTE "110502549"
.code
Convert1 PROC USES esi ecx eax
	L1:
	mov al,[esi]
	add al, 11h
	mov [esi], al
	inc esi

	loop L1
	ret
Convert1 ENDP

Convert2 PROC
	L1:
	mov al,[esi]
	add al, 11h
	mov [esi], al
	inc esi

	loop L1
	ret
Convert2 ENDP

main PROC
	mov eax, 9999h
	mov ebx, 9999h
	mov edx, 9999h
	mov esi, OFFSET MYID1
	mov ecx, LENGTHOF MYID1
	call Convert1
	mov esi, OFFSET MYID2
	mov ecx, LENGTHOF MYID2
	call Convert2
exit
main ENDP
END main