.model small
.stack 100h
.data  

.code 
main proc
    
    mov ax,@data
    mov ds,ax

    mov al,1
 
    
    cmp al,1
    je odd
    
    cmp al,3
    je odd
    
    cmp al,2
    je even
 
    cmp al,4
    je even 
    
    jne exit   ;1324 konotai na hle exit
    
    odd:
    mov dl,'O'
    jmp display
    
    even:
    mov dl,'E'
    jmp display
    
    display:
    mov ah,2
    int 21h    
   
    exit:
    mov ah,4ch
    int 21h
    
    main endp
end main

