data segment 
    a dw 5H
    resultL dw ?
    resultH dw ?
data ends 
code segment 
    assume cs:code,ds:data
    
 start:
 mov ax,data
 mov ds,ax
 
 mov ax,a
 mov bx,a
 
 mul bx
 mul bx
 
 mov resultL,bx
 mov resultH,ax
 
 int 3
 
 code ends
end start