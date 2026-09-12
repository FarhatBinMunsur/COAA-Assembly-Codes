.MODEL SMALL
.STACK 100H
.DATA  
NEWLINE DB 10,13,24H


.CODE 
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX

               
    MOV CX,26
    MOV BL,'A'
               
COMPARE:
    CMP CX,0
    JNE DISPLAY         
    JE EXIT
        
    
DISPLAY:
    MOV AH,2
    MOV DL,BL
    INT 21H           
    MOV AH,9
    LEA DX,NEWLINE
    INT 21H
    INC BL 
    DEC CX
    JMP COMPARE
    
EXIT:
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
END MAIN