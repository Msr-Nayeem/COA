.MODEL SMALL
.STACK 100h
.DATA

n DB 'N'
a DB 'A'
y DB 'Y'
e DB 'E'
ee DB 'E'
m DB 'M'

.CODE

MAIN PROC

MOV AX,@DATA
MOV DS,AX

Mov Dl, n
Mov ah, 2
INT 21h

Mov Dl, a
Mov ah, 2
INT 21h

Mov Dl, y
Mov ah, 2
INT 21h

Mov Dl, e
Mov ah, 2
INT 21h

Mov Dl, ee
Mov ah, 2
INT 21h

Mov Dl, m
Mov ah, 2
INT 21h

Exit:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN