.model small
.stack 100h
.data
    
    
       msg1 db "Enter the first numbwr: $"  
        msg2 db 10,13, "Enter the second numbwr: $"
        msg4 db 10,13, "Enter the 4th numbwr: $"  
         msg3 db 10,13, "Sum is : $"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    ;msg1
    mov ah,9
    mov dx,offset msg1
    int 21h
    
    ;take fiest input
    mov ah,1
    int 21h
    mov bl,al  
    
    ;msg2
    mov ah,9
    mov dx,offset msg2 
    int 21h
    ;take second input
       mov ah,1
    int 21h
    mov bh,al 
                                                                                                                    
    ;msg 3                                                                                                             
    mov ah,9
    mov dx,offset msg3
    int 21h  
          ;code of addition
    sub bl,bh
    add bl,48
    ;result print
     mov ah,2 
     mov dl,bl
    int 21h
    
    
    main endp
    end main
