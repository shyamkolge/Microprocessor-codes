data segment 
    a dw 1234H
    b dw 1238H
    c dw ?
data ends

code segment 
    
    assume cs:code,ds:data
    
 start:
 
 mov ax,data
 mov ds,ax
 mov ax,a
 mov bx,b
 add ax,bx
 mov cx,ax
 mov c,cx
 int 3
 
 code ends

end start 