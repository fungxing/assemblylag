INCLUDE Irvine32.inc
.data 
	MYID1 BYTE "110502558"
	MYID2 BYTE "110502549"
	size_ID = LENGTHOF MYID1
	result BYTE 9 DUP(?)
.code
Main PROC
xor esi,esi ;esi=0
mov edi, OFFSET result
mov ecx, size_ID
L1:
	movzx eax,MYID1[esi]
	movzx ebx,MYID2[esi]
	cmp eax,ebx	; CFwill be set if eax<ebx
	JC L2
	JZ L3
	mov dl, 42h
	mov [edi],dl
	jmp L4
L2:
	mov dl, 43h
	mov [edi],dl
	jmp L4
L3:
	mov dl, 41h
	mov [edi],dl
L4:
	inc esi
	inc edi
	loop L1
	exit
Main ENDP
END  Main
