extern print_array
section .data
    array dq 10, 15, 22, 22, 36, 23, 1, -9, 67
    count_array dq 9
section .bss
section .text
    global main
main:
push rbp
mov rbp, rsp
    xor rdi, rdi
    mov rdi, [count_array]
    mov rsi, array
    call print_array
leave
ret


