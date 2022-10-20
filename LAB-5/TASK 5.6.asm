.MODEL SMALL
.STACK 100H 

.DATA 

.CODE
  
 MAIN PROC
       MOV AX,5
       MOV BX,7
       MOV CX,9
       
          
       CMP AX,BX
       JL A
       JG B
       
       A:
       MOV AX,0
       
       B:
       CMP BX,CX
       JL C
       JG D
       
       C:
       MOV BX,0 
       MOV DX,'B' 
       
       D:
       MOV CX,0
       MOV DX, 'C'
       
      
       MOV AH,2   ;FOR OUTPUT
       INT 21H      ;call INTERRUPT
       

       EXIT:
       MOV AH,4CH
       INT 21H             
   
   MAIN ENDP
  
END MAIN