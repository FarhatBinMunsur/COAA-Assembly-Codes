.model small
.stack 100h
.data  
vow db "vowel$"
cons db "consonant$"


.code 
main proc
    
    mov ax,@data
    mov ds,ax
        
   
    mov ah,1
    int 21h
    mov bl,al 
           
    MOV AH,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
            
    cmp bl,'a'
    je vowel
    
    
    cmp bl,'e'
    je vowel
      
    
    cmp bl,'i'
    je vowel
      
    
    cmp bl,'o'
    je vowel
    
    
    cmp bl,'u'
    je vowel
    jmp consonant    ;uporer 5 ta phase paar kre aschi,and not vowel 
               
 
vowel:
    mov ah,9
    lea dx,vow
    int 21h
    jmp exit
 
    
consonant:
    mov ah,9
    lea dx,cons
    int 21h
    
exit:
    mov ah,4ch
    int 21h
    
main endp
end main