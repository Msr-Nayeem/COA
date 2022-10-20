.MODEL SMALL
.STACK 100H 

.DATA 

.CODE
  
 MAIN PROC
       MOV AH,1   ;FOR INPUT
       INT 21H    ;call INTERRUPT
      
          
       CMP AL,64
       JG NXT
       
       JL ED
       
       NXT:
       CMP AL,90
       JL PRINTT
       
       PRINTT:
       MOV DL,AL
       MOV AH,2   ;FOR OUTPUT
       INT 21H      ;call INTERRUPT
       
       ED:
       
        
       EXIT:
       MOV AH,4CH
       INT 21H             
   
   MAIN ENDP
  
END MAIN