data segment
    
    a dw 1H
    b dw 2H
    c dw 3H
    d dw 4H
    R dw ?
    
data ends 

code segment 
    
   assume cs:code , ds:data
   
   start:
   
   mov ax,data 
   mov ds,ax
   mov ax,a
   mov bx,b
   mov cx,c
   mov dx,d
   add ax,bx
   adc ax,cx
   adc ax,dx
   mov R,ax
  
  int 3
  
  code ends

end start