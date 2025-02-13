.model small
.stack 100h
.data
   E db 'Enter the value: $'
    newline db 13, 10, '$' 
    input_char db ?        

.code
main proc  
    mov ax, @data
    mov ds, ax
    
  
    mov ah, 9
    lea dx, E
    int 21h     

  
    mov ah, 1 
    int 21h
    mov input_char, al 
  
    mov ah, 9
    lea dx, newline
    int 21h 
       
       
      
    cmp al,97        
    jl  is_upper       
          
    jge  is_lower 
    
    

is_upper:
   
       add al, 32
     mov dl, al
    mov ah, 2
    int 21h 
     jmp exit
    
is_lower:
   
      sub al, 32
    mov dl, al
    mov ah, 2
    int 21h 
     jmp exit
    
       
     
     exit :
     mov ah,4ch
     int 21h 
     
     
main endp
end main
