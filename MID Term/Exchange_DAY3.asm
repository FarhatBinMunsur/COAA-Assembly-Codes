 .MODEL SMALL
.STACK 100H
.DATA 
 
C DB ?
D DB ?

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    mov ax,8000h
    sub ax,0001h
    int 21h

    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN