.model small
.stack 100h
      

.code
main proc  
  mov cx,9
  
  
  mov dl,'1'
      
      My_loop:
      sub dl,'0'
      mov ah,0
     
     mov al,dl
    mov bh,5  
    div bh ;al=al/bh 
    
    cmp ah,0
    
    je not_print
    jne print
           
  
  print:  
  add dl,'0'
  mov ah,2  
  int 21h 
  sub dl,'0'
    
    not_print: 
    
    INC dl
    add dl,'0' 
     loop My_loop
     
     exit :
     mov ah,4ch
     int 21h 
  
 
main endp
end main
