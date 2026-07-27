.MODEL SMALL
.STACK 100H
.DATA  

NEWLINE DB 0AH,0DH,'$'
MSG1 db "ENTER THREE INITIALS: $",10,13


.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    INPUT1:
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    
    
    INPUT2:
    
    mov AH,1
    int 21h
    mov CL,AL
    
    

    INPUT3:
    
    mov AH,1
    int 21h
    mov BH,AL
    
    mov AH,9
    lea DX,newline
    int 21h 
    
      
    OUTPUT:
    
    INC BL
    INC CL
    INC BH
    
    MOV AH,2
    MOV DL,BL
    INT 21H 
    
    
    MOV AH,9
    LEA DX,NEWLINE
    INT 21H
    
   
     
    
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    
    MOV AH,9
    LEA DX,NEWLINE
    INT 21H
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    
       
    EXIT:
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN