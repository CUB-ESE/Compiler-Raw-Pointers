.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $36, %esp
    call input
    movl %eax, -4(%ebp)
    negl -4(%ebp)
    movl -4(%ebp), %eax
    movl %eax, -8(%ebp)
    call input
    movl %eax, -12(%ebp)
    movl -8(%ebp), %eax
    addl -12(%ebp), %eax
    movl %eax, -16(%ebp)
    pushl -16(%ebp)
    call print_int_nl
    subl $4, %esp
    movl $47, -20(%ebp)
    call input
    movl %eax, -28(%ebp)
    movl -20(%ebp), %eax
    addl -28(%ebp), %eax
    movl %eax, -32(%ebp)
    movl -32(%ebp), %eax
    movl %eax, -24(%ebp)
    pushl -24(%ebp)
    call print_int_nl
    subl $4, %esp
    negl -24(%ebp)
    movl -24(%ebp), %eax
    movl %eax, -32(%ebp)
    movl -32(%ebp), %eax
    movl %eax, -28(%ebp)
    pushl -28(%ebp)
    call print_int_nl
    subl $4, %esp
    addl $36, %esp
    movl $0, %eax
    leave
    ret
