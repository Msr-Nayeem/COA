.MODEL SMALL
.STACK 100H 

.DATA 

.CODE
  
   MAIN PROC
       MOV AH,1   ;FOR INPUT
       INT 21H    ;call INTERRUPT
      
          
       CMP AL,0
       JL ASSNA
       
       JG ASNZ
       
       ASSNA:
       MOV AH,FFh
       
       ASNZ:
       MOV AH,0
       
       MOV DL,AH
       MOV AH,2   ;FOR OUTPUT
       INT 21H      ;call INTERRUPT
        
       EXIT:
       MOV AH,4CH
       INT 21H             
   
   MAIN ENDP
  
END MAIN