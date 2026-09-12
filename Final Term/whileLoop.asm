;While Loop

.model small
.stack 100h
.data   


.code
main proc
          
    mov bl,0
    
    mov ah,1
    int 21h
    
    while:
    cmp al,0DH 
    je exit
    inc bl
             
    int 21h
    jmp while
    
    exit: 
    mov ah,4ch
    int 21h
    
    
    
    
    main endp
end main




