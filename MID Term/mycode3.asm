;2ND & 3RD WAY FOR NEW LINE

.MODEL SMALL
.STACK 100H
.DATA 
A DB 'HELLO World!$',
B DB 'HELLO$' 
NEWLINE DB 0AH,0DH,"$"
NEW DB 10,13,"$"


.CODE
 MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
      
    MOV AH,9
    LEA DX,A
    INT 21H 
            
 ;NEWLINE
    ;MOV AH,2
    ;MOV DL,0AH ;LF
    ;MOV DL,10
    ;INT 21H
    ;MOV DL,0DH ;CR
    ;MOV DL,13
    ;INT 21H
    
    MOV AH,9
    LEA DX,NEWLINE    
    INT 21H
    
    LEA DX,B
    INT 21H           
    
    LEA DX,NEW
    INT 21H
 
    LEA DX,B
    INT 21H
    
    ;EXIT
    MOV AH,4CH
    INT 21H
    MAIN ENDP
 END MAIN

