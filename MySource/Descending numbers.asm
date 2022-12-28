data segment 
    String dw 1H,2H,3H,4H,5H
data ends
code segment 
    assume cs:code,ds:data

start:
   
   mov ax,data
   mov ds,ax
   
   mov bx,5
   
 UP1: 
 lea si,String
 mov cx,4
 
 UP:
 mov ax,[si]
 cmp ax,[si+2]
 
 jnc down
 
 xchg ax,[si+2]
 xchg ax,[si]
 
 down: add si,2
 loop up 
 dec bx
 jnz up1
 int 3
 
 code ends
 end start
 