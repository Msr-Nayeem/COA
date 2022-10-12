.MODEL SMALL
.STACK 100h

.DATA
inm DB 255 DUP('$')
nm DB 0AH,0DH,'NAME: NAYEEM$'
id DB 0AH,0DH,'ID: 18-38037-2 $'
dob DB 0AH,0DH,'DATE OF BIRTH: 30-10-2000 $' 

.code
main proc
    mov ax,@data
    mov ds,ax
    
 
    
    lea dx,nm
    mov ah,9
    int 21h 
    

    
    lea dx,dob
    mov ah,9
    int 21h
    
    lea dx,id
    mov ah,9
    int 21h   
       
    
 
    mov ah,4Ch
    int 21h

Exit:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN     

