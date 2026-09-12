.model small
.stack 100h
.data   


.code
main proc
    
    mov ah,1
    int 21h
    mov bl,al
    
    ;less than A
    cmp bl,'A'  
    JL exit
    
    cmp bl,'Z'
    JG exit
             
    mov ah,2
    mov dl,bl
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h
    
    
    
    
    main endp
end main