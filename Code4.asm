 .model small
 .stack 100h
 .data
 
 
 a db  'Input first digit $'
 b db 10, 13, 'Input second digit $' 
 c db 10, 13, 'Input third digit $'
 x db 10, 13, 'Result $'
 
 .code
 
 main proc
    
    mov ax, @data
    mov ds, ax
    
    
    mov ah, 9
    lea dx, a
    int 21h
    
    
    mov ah, 1
    int 21h 
    
    mov bl, al
              
              
   
    mov ah, 9
    lea dx, b
    int 21h
    
    
    mov ah, 1
    int 21h 
    
    mov bh, al
    
    
    add bl,bh
    sub bl, 48
    
    mov ah,9
    lea dx, c
    int 21h   
    
    mov ah, 1
    int 21h
    
    
    mov ch, al 
    add bl, ch
    
    
   
    
    mov ah,9
    lea dx, x
    int 21h  
    
    sub bl,48
    mov x,bl
    mov ah,2
    
    mov dl,x
    int 21h
    
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
 end main