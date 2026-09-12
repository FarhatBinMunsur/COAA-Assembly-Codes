.model small
.stack 100h
.data  
negmsg db "Negative$"
posmsg db "Positive$"
zeromsg db "Zero$"

.code 
main proc
    
    mov ax,@data
    mov ds,ax

    mov bl,31h
    ;neg al
     
    mov ah,9
    
    cmp bl,0
    jl negt
    jg pos
    je zero

    
    negt:
    lea dx,negmsg
    int 21h
    jmp exit
    
    pos:
    lea dx,posmsg 
    int 21h
    jmp exit
    
    zero:
    lea dx,zeromsg
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    
    main endp
end main

