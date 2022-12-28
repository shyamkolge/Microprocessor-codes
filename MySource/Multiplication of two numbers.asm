data segment
    a dw 1235H
    b dw 2345H
    c dw ?
    d dw ?
data ends
code segment 
    assume cs:code,ds:data
    
start:
  mov ax,data
  mov ds,ax
  mov ax,a
  mov bx,b
  mul bx
  mov cx,ax
  mov c,dx
  mov d,cx
  int 3
  
code ends
end start