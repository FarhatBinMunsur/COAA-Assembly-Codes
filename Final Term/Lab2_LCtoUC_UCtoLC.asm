.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
 
    MOV AH,1
    INT 21H
    MOV BL,AL
     
    ;convert Lower to upper
    AND BL,11011111B
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
    ;again convert to Lower
    
    or bl,00100000b
    
    MOV AH,2
    MOV DL,BL
    INT 21H
               
    MOV AH,4CH
    MAIN ENDP
END MAIN