
.model small
.stack 100h
.data           
hello db "Hello",10,13,24h


.code
main proc
    mov ax,@data
    mov ds,ax   
    
    mov cx,5
    mov ah,9
    lea dx,hello
    
    repeat:
    int 21h
    dec cx
    cmp cx,0    
    jne repeat 
    
    
    exit:
    mov ah,4ch
    int 21h
    
    
    
    
    main endp
end main




