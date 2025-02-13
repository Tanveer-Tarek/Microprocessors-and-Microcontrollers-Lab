  .model small
   .stack 100h
   
   
   .data
   
   var db 10, 13, '**** $'
    .code
    
   main proc
    
    
    mov ax, @data
    mov ds, ax
              
    mov cx, 7
    
    l1:
    mov ah, 9
    lea dx, var
    int 21h
    
    loop l1
    
     
    main endp
  end main