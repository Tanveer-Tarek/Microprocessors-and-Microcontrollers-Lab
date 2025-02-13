  .model small
.stack 100h
.data                           
    digit db 7
even_msg db 'the digit is even $'  
    odd_msg db 'the digit is odd $'

 
   .code
   
   main proc 
    
    
    mov ax,@data
    mov ds,ax
    
    
    mov al,digit
    mov bh,2  
    mov ah,0
    div bh ;al=al/bh
    
    cmp ah,0
    
    je even_print
    jne odd_print
    
    even_print:
    mov ah,9
    lea dx, even_msg
    int 21h
   jmp exit
        
     
    
    odd_print:
     mov ah,9
    lea dx, odd_msg
    int 21h
     
     
     exit:
     mov ah,4ch
     int 21h
     
   
    main endp
    end main