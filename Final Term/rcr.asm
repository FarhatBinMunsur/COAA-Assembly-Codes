.MODEL small
.STACK 100h
.DATA    
.CODE
MAIN PROC
    
    MOV DH,8AH
    MOV CX,0003H
    
    STC
    
    TOP:
    RCR DH,1
    
    LOOP TOP  
        
    
    MAIN ENDP
END MAIN