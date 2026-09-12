.MODEL SMALL
.STACK 100

.DATA

OUTPUT DB 0AH,0DH, 'BINARY OUTPUT: $'

.CODE

MAIN PROC

    MOV AX,@DATA
    MOV DS,AX


    MOV AH,1
    INT 21H

    MOV BL,AL


    MOV AH,9
    LEA DX,OUTPUT
    INT 21H

    MOV CX,8
    mov bh,0

IF:

    SHL BL,1
    JNC THEN
   

    ; CF = 1
    ; Print 1

    MOV AH,2
    MOV DL,31H
    INT 21H 
    inc bh

    JMP DISPLAY


THEN:

    ; CF = 0
    ; Print 0

    MOV AH,2
    MOV DL,30H
    INT 21H


DISPLAY:

    LOOP IF

        
        
    mov dl,0AH
    int 21h
    mov dl,0DH
    int 21h
    
    mov ah,2
    add bh,30h
    mov dl,bh
    int 21h
    
    MOV AH,4CH
    INT 21H

MAIN ENDP

END MAIN