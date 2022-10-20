.MODEL SMALL
.STACK 100H 

.DATA 

.CODE
  
 MAIN PROC
       MOV AL,1     
          
       CMP AL,1
       JE A
       
       CMP AL,3
       JE B
 
       
       CMP AL,2
       JE C
       
       CMP AL,4
       JE D 
       
             
       
       A:
       MOV DL,'O'
       JMP P  
       
       B:
       MOV DL,'O'
       JMP P
 
       C:
       MOV DL,'E'
       JMP P
       
       D:
       MOV DL,'E' 
       JMP P
        
       P:   
       MOV AH,2   ;FOR OUTPUT
       INT 21H      ;call INTERRUPT
       

       EXIT:
       MOV AH,4CH
       INT 21H             
   
   MAIN ENDP
  
END MAIN