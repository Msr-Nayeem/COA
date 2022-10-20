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
       JG C
       
       A:
       MOV DX,0 
       
       CMP BX,CX
       JL B
       JG C
       
       B:
       MOV DX,0
        
       C: 
       MOV DX,1
 
           
       MOV AH,2   ;FOR OUTPUT
       INT 21H      ;call INTERRUPT
       

       EXIT:
       MOV AH,4CH
       INT 21H             
   
   MAIN ENDP
  
END MAIN