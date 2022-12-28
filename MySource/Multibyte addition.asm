data segment
    a dw 12H
    b dw 23H
    c dw 11H
    d dw 45H
    r dw ?
data ends
code segment 
    assume cs:code,ds:data
    
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
  mov r,ax
  int 3
code ends
end start