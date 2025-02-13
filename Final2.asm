.model small
.stack 100h
.data

var db 10,13, '***** $'
var2 db 10,13, 'aterisk $'

.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov cx,5
    
    l1:
    mov ah,9
    lea dx,var
    int 21h
    
    loop l1
    
    mov cx,5
     
     l2:
     mov ah,9
     lea dx,var2
     int 21h
     loop l2
     

    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    