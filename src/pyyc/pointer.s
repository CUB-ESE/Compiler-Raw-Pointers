.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $8, %esp
    call ptr
    movl %eax, -8(%ebp)
    movl -8(%ebp), %eax
    movl %eax, -4(%ebp)
    addl $8, %esp
    movl $0, %eax
    leave
    ret
