; Hello world ! in assembly

section .data
    hello_string db "Hello world !", 0xa ; put "Hello world !" into hello_string 
    hello_len equ $ -hello_string ; calculate hello_string length
section .text
global _start
_start:
    mov rax, 1 ; syscall write
    mov rdi, 0 ; unsigned int fd
    mov rsi, hello_string ; put hello_string into rsi register
    mov rdx, hello_len ; put hello_len into rdx register
    syscall ; call kernel
    mov rax, 60 ; syscall exit
    mov rdi, 0 ; error code
    syscall ; call kernel
