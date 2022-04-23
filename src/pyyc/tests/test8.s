.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    movl $1, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %eax
    call print_any
    addl $4, %esp
    addl $0, %esp
    movl $0, %eax
    leave
    ret
