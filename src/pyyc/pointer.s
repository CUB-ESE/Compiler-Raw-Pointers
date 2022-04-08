.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $8, %esp
    movl $5, -4(%ebp)
    push -4(%ebp)
    call create_ptr
    movl %eax, -8(%ebp)
    push $10
    push -8(%ebp)
    call set_ptr_value
    push -8(%ebp)
    call get_ptr_value
    pushl %eax
    call print_int_nl
    push -8(%ebp)
    call free_ptr
    addl $8, %esp
    movl $0, %eax
    leave
    ret
