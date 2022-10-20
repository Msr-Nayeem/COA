.MODEL SMALL
.STACK 100H 

.DATA 

.CODE
  
 MAIN PROC
       MOV AX,5
       MOV BX,7
       MOV CX,9
       
          
       CMP AX,BX
       JL N
       
       
       N:
       CMP BX,CX
       JL ASN
       JG ASNN
       
       ASN:
       MOV AX,0
       MOV DX,'A'
       
       ASNN:
       MOV BX,0
       MOV DX,'B'
       
      
       MOV AH,2   ;FOR OUTPUT
       INT 21H      ;call INTERRUPT
       

       EXIT:
       MOV AH,4CH
       INT 21H             
   
   MAIN ENDP
  
END MAIN