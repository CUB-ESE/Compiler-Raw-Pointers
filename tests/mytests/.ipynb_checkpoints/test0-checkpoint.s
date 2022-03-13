.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $8, %esp
    movl $2, %eax
    addl $1, %eax
    movl %eax, -4(%ebp)
    pushl -4(%ebp)
    call print_int_nl
    subl $4, %esp
    addl $8, %esp
    movl $0, %eax
    leave
    ret
