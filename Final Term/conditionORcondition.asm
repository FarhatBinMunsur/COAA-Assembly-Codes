.model small
.stack 100h
.data   


.code
main proc
    
    mov ah,1
    int 21h
    mov bl,al
    
    
    cmp bl,'Y'  
    Je print
    
    cmp bl,'y'
    je print
    jmp exit
            
    print: 
    mov ah,2
    mov dl,bl
    int 21h
    
    
    
    exit:
    mov ah,4ch
    int 21h
    
    
    
    
    main endp
end main