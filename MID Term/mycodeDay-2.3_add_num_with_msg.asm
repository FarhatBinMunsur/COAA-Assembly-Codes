.Model small
.stack 100h
.data      
newline db 0ah,0dh,24h
summsg db "The sum of $"
andm db " and $"
ism db " is $"

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,2
    mov dl,'?'
    int 21h
    
    mov ah,1
    int 21h  
    sub al,30h
    mov bl,al
    
    mov ah,1
    int 21h   
    sub al,30h
    mov cl,al
    
           
    mov ah,9
    lea dx,newline
    int 21h
    
    
    mov ah,9
    lea dx,summsg
    int 21h
    
    mov ah,2
    mov dl,bl
    add dl,30h
    int 21h
    
    mov ah,9
    lea dx,andm
    int 21h 
    
    mov ah,2
    mov dl,cl
    add dl,30h
    int 21h
        
    mov ah,9
    lea dx,ism
    int 21h
    
    add bl,cl
    
    
    mov ah,2 
    add bl,30h
    mov dl,bl
    
    int 21h
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main
    
    