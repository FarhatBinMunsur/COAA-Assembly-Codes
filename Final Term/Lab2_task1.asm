.model small
.stack 100h
.data      
ty db "Thank you$"
.code
main proc
    mov ax,@data
    mov ds,ax
             
    MOV AH,2
    MOV DL,'?'
    INT 21H
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
         
    MOV AH,1
    INT 21H
    MOV BL,AL
 
    INT 21H
    MOV BH,AL
              
    CMP BL,BH
    JG L1
    JLE L2
    
    L1:
    XCHG BL,BH
    
    L2:
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
     
    MOV AH,2
    MOV DL,BL
    INT 21H
    MOV DL,BH
    INT 21H 
    
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV AH,9
    LEA DX,TY
    INT 21H
    
    EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN