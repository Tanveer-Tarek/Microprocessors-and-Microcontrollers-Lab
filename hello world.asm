include 'emu8086.inc'
.stack 100h
.model small

.data

.code

 main proc 
     
         
         
        
         mov ah, 02h
         mov cx, 26
         mov dl, 65
         
         
         start:
         int 21h
         add dl,1
         
         
         
      loop start
      mov ax,4c00h
      int 21h
      
       
        
        main endp
 end main