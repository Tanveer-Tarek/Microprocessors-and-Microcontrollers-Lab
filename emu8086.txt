
.model small
.stack 100h
.code


 main proc
    ;input nilam sir
    MOV ah, 1
    INT 21h
    MOV bl,al 
     
    
    ;new line delam(-_-)
    mov ah,2
     mov dl,010 
     int 21h 
     mov dl,013
     int 21h
    
    MOV ah,2
      ;aij output tuki....
    MOV dl,bl
    INT 21h  
    
    
     ;new line delam(-_-)
    mov ah,2
     mov dl,010 
     int 21h 
     mov dl,013
     int 21h
    
         
      MOV ah, 1   
     INT 21h
    MOV bh,al
     
     mov ah,2
     mov dl,010 
     int 21h 
     mov dl,013
     int 21h
     
     mov ah,2
    MOV dl,bh
    INT 21h 
    
     dim:
     mov ah,4ch
         
    main endp
    end main
