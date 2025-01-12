extern printf
section .data
    msg     db      "%lld "
    length_str  dq  3
    NL      db  10
section .text
    global print_array
;rdi counter array
;rsi point array
print_array:

push r12
push r13
push r14
push rbp
mov rbp, rsp
mov r12, rsi   ; array
mov r13, rdi   ;counter
mov r14, [length_str]
jmp loop_print

print_new_str:
    mov r14, [length_str]
    mov rdi, NL
    mov rax, 0
    call printf

loop_print:
    cmp r13, 0
    je exit
    cmp r14, 0
    je print_new_str   
    ;print num
    mov rdi, msg
    mov rsi, [r12]
    xor rax, rax
    call printf

    dec r13
    add r12, 0x8

    dec r14


    jmp loop_print

exit:
    
mov rsp, rbp
pop rbp
pop r14
pop r13
pop r12
;leave
ret