.MODEL SMALL
.STACK 100H
.DATA 
 
NEWLINE DB 0AH,0DH,24H 
Q DB "?$"
MSG DB 'HELLO WORLD!',0AH,0DH,24H   ;4TH WAY FOR NEW LINE


.CODE
 MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
      
    MOV AH,9
    LEA DX,MSG
    INT 21H           
    
    ;ekhane MOV AH,9 use na korleo cholbe
    LEA DX,Q
    INT 21H 

    LEA DX,NEWLINE
    INT 21H   
    
    Mov ah,9
    lea dx,msg
    int 21h 
    
    mov ah,2
    mov dl,'?'
    int 21h
    
    ;EXIT
    MOV AH,4CH
    INT 21H
    MAIN ENDP
 END MAIN

