
.model small
.stack 100h
.data   


.code
main proc
    
    ;PRINT * 80 times        
    mov cx,80  
    ;jcxz exit
    
    mov ah,2
    mov dl,'*'
    
    TOP:
    int 21h
 
    LOOP TOP   
    
    
    
    
        
    ;PRINT 1 TO 9
    mov cx,9
    mov bl,'1'
    
    mov ah,2
    ;mov dl,bl
    
    TOP2: 
    mov dl,bl ;inc bl  
    INT 21H            
    
    dec cx

    INC BL 
    
    
    jnz TOP2
    
    
    exit:
    mov ah,4ch
    int 21h

    
    main endp
end main




