.model small
.stack 100h
      

.code
main proc  
  mov cx,26
  mov ah,2
  
  mov dl,'A'
 
   
    
  
  my_loop: 
 
  cmp dl,'S'    
  je incm
  int 21h
    
    incm:
    INC dl 
    loop my_loop  
     
     exit :
     mov ah,4ch
     int 21h 
  
 
main endp
end main
