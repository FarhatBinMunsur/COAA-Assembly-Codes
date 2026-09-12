.MODEL small
.STACK 100h
.DATA    
.CODE
    MAIN PROC
    
    MOV AL,80H
    
    ShL AL,1
    SHL AL,1
    SHL AL,1


    MAIN ENDP
END MAIN
