.MODEL small
.STACK 100h
.DATA    

.CODE
    MAIN PROC
        XOR AX,AX
        MOV BX,8831H
        MOV CX,16
        
        TOP:
        ROL BX,1
        JC NEXT
        INC AX
        
        NEXT:
        LOOP TOP
        
        MOV AH,2
        ADD AL,30H
        MOV DL,AL
        INT 21H
        
        MOV AH,4CH
        INT 21H
        
        MAIN ENDP
    END MAIN
 
        