.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $20, %esp
    call input
    movl %eax, -4(%ebp)
    call input
    movl %eax, -8(%ebp)
    negl -8(%ebp)
    movl -8(%ebp), %eax
    movl %eax, -12(%ebp)
    movl -4(%ebp), %eax
    addl -12(%ebp), %eax
    movl %eax, -16(%ebp)
    pushl -16(%ebp)
    call print_int_nl
    subl $4, %esp
    addl $20, %esp
    movl $0, %eax
    leave
    ret
