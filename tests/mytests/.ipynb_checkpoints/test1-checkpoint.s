.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $76, %esp
    call input
    movl %eax, -8(%ebp)
    movl $1, %eax
    addl -8(%ebp), %eax
    movl %eax, -12(%ebp)
    movl -12(%ebp), %eax
    movl %eax, -4(%ebp)
    movl -4(%ebp), %eax
    addl -4(%ebp), %eax
    movl %eax, -12(%ebp)
    movl -12(%ebp), %eax
    movl %eax, -8(%ebp)
    movl -8(%ebp), %eax
    addl -8(%ebp), %eax
    movl %eax, -16(%ebp)
    movl -16(%ebp), %eax
    movl %eax, -12(%ebp)
    movl -12(%ebp), %eax
    addl -12(%ebp), %eax
    movl %eax, -20(%ebp)
    movl -20(%ebp), %eax
    movl %eax, -16(%ebp)
    movl -16(%ebp), %eax
    addl -16(%ebp), %eax
    movl %eax, -24(%ebp)
    movl -24(%ebp), %eax
    movl %eax, -20(%ebp)
    movl -20(%ebp), %eax
    addl -20(%ebp), %eax
    movl %eax, -28(%ebp)
    movl -28(%ebp), %eax
    movl %eax, -24(%ebp)
    movl -24(%ebp), %eax
    addl -24(%ebp), %eax
    movl %eax, -32(%ebp)
    movl -32(%ebp), %eax
    movl %eax, -28(%ebp)
    movl -28(%ebp), %eax
    addl -28(%ebp), %eax
    movl %eax, -36(%ebp)
    movl -36(%ebp), %eax
    movl %eax, -32(%ebp)
    movl -32(%ebp), %eax
    addl -32(%ebp), %eax
    movl %eax, -40(%ebp)
    movl -40(%ebp), %eax
    movl %eax, -36(%ebp)
    movl -4(%ebp), %eax
    addl -8(%ebp), %eax
    movl %eax, -44(%ebp)
    movl -44(%ebp), %eax
    addl -12(%ebp), %eax
    movl %eax, -48(%ebp)
    movl -48(%ebp), %eax
    addl -16(%ebp), %eax
    movl %eax, -52(%ebp)
    movl -52(%ebp), %eax
    addl -20(%ebp), %eax
    movl %eax, -56(%ebp)
    movl -56(%ebp), %eax
    addl -24(%ebp), %eax
    movl %eax, -60(%ebp)
    movl -60(%ebp), %eax
    addl -28(%ebp), %eax
    movl %eax, -64(%ebp)
    movl -64(%ebp), %eax
    addl -32(%ebp), %eax
    movl %eax, -68(%ebp)
    movl -68(%ebp), %eax
    addl -36(%ebp), %eax
    movl %eax, -72(%ebp)
    movl -72(%ebp), %eax
    movl %eax, -40(%ebp)
    pushl -40(%ebp)
    call print_int_nl
    subl $4, %esp
    movl $3, -44(%ebp)
    pushl -44(%ebp)
    call print_int_nl
    subl $4, %esp
    call input
    movl %eax, -48(%ebp)
    negl -48(%ebp)
    movl -48(%ebp), %eax
    movl %eax, -52(%ebp)
    call input
    movl %eax, -56(%ebp)
    movl -52(%ebp), %eax
    addl -56(%ebp), %eax
    movl %eax, -60(%ebp)
    pushl -60(%ebp)
    call print_int_nl
    subl $4, %esp
    call input
    movl %eax, -64(%ebp)
    negl -64(%ebp)
    movl -64(%ebp), %eax
    movl %eax, -68(%ebp)
    movl -68(%ebp), %eax
    addl $2, %eax
    movl %eax, -72(%ebp)
    pushl -72(%ebp)
    call print_int_nl
    subl $4, %esp
    addl $76, %esp
    movl $0, %eax
    leave
    ret
