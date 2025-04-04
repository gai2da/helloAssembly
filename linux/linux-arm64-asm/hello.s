.section .data
msg:
    .asciz "Hello world from Linux \n"
len = . - msg

.section .text
.global _start

_start:
    mov x0, 1         
    ldr x1, =msg      
    mov x2, len        
    mov x8, 64      
    svc #0

    mov x0, 0         
    mov x8, 93         
    svc #0
