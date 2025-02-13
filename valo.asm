    .model small
.stack 100h
.data                           
    digit db 8
valo db 'digit tumi khoob valo $'
   valo_na db 'digit tumi valo na$'
  

 
   .code
   
   main proc 
    
    
    mov ax,@data
    mov ds,ax
    
    
    mov al,digit
    mov bh,3  
    mov ah,0
    div bh ;al=al/bh
    
    cmp ah,0
    
    je valo_a
    jne valo_naa
           
           
     
   valo_a:
    mov al,digit
    mov bh,6  
    div bh ;al=al/bh
    cmp ah,0
    je valo_msg
    jne valo_naa
              
              
    valo_msg:
    mov ah,9
    lea dx, valo
    int 21h
   jmp exit
        
     
    
    valo_naa:
     mov ah,9
    lea dx, valo_na
    int 21h
     
     
     exit:
     mov ah,4ch
     int 21h
     
   
    main endp
    end main