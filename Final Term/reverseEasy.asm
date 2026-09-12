 .MODEL small
.STACK 100h
.DATA    
.CODE
    MAIN PROC
        
        mov al,0DCH
        mov cx,8 
        
                
        reverse:
        shl al,1
        rcr bl,1
        loop reverse
        mov al,bl
        
        mov ah,4Ch
        int 21h
                
    MAIN ENDP
END MAIN
