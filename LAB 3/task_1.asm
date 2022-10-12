.MODEL SMALL
.STACK 100h

.DATA
Q DB '?'
A DB ?
B DB ?
M DB 0AH,0DH,'THE SUM OF $'
an DB ' AND $'
is DB ' IS $' 



.CODE

MAIN PROC

MOV AX,@DATA
MOV DS,AX  

Mov dl,q
Mov ah, 2
INT 21h  

MOV ah,1
int 21h
MOV A,AL

MOV ah,1
int 21h
MOV B,AL

    
LEA DX,M
MOV AH,9
INT 21H  

Mov dl,A
Mov ah, 2
INT 21h


LEA DX,an
MOV AH,9
INT 21H 

Mov dl,B
Mov ah, 2
INT 21h

    
LEA DX,is
MOV AH,9
INT 21H

MOV AL,A
MOV BL,B 
ADD AL,BL 

MOV dl,AL
Mov ah, 2
INT 21h


Exit:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN