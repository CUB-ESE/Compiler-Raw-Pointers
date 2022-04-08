.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $24, %esp
    movl $5, -4(%ebp)
    call ptr
    movl %eax, -12(%ebp)
    movl -12(%ebp), %eax
    movl %eax, -8(%ebp)
    call get_ptr_value
    movl %eax, -16(%ebp)
    pushl -16(%ebp)
    call print_int_nl
    subl $4, %esp
    addl $24, %esp
    movl $0, %eax
    leave
    ret
