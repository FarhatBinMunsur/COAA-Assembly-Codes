.model small
.stack 100h
.data

.code 
main proc
    
    mov ax,@data
    mov ds,ax

    mov al,33h
    mov bl,31h

    mov ah,2
    cmp al,bl
    jbe display
    jmp else

    
    display:
    mov dl,al
    int 21h
    jmp exit
    
    else:
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    
    main endp
end main

