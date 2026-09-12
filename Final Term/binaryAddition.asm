.DATA
 INPUT DB 'ENTER BINAR INPUT: $'
 
 .CODE 
  
    main proc
    MOV AX,@DATA
    MOV DS,AX   
              
    xor bx,bx
    xor dx,dx
    
    mov cx,8
    
    input1:          
    mov ah,1
    int 21h  
    
    cmp al,0dh
    je input2InitializeCX
    
    and al,0fh
    
    shl bx,1
    or bl,al
    
    loop input1
    
    
    
    input2InitializeCX:
    mov cx,8
 
    input2:
    mov ah,1
    int 21h  
    
    cmp al,0dh
    je addition
    
    and al,0fh
    
    shl dx,1
    or dl,al
 
    loop input2
    
    
    addition:
    add bx,dx
     
    mov cx,9
    
    display:
    
    shl bx,1
    jnc zero
    
    mov ah,2
    mov dl,31h
    int 21h
    
    jmp next
    
    zero:
    mov ah,2
    mov dl,30h
    int 21h
    
    next:
    loop display
    
    mov ah,4ch
    int 21h
    
    main endp
 
end main