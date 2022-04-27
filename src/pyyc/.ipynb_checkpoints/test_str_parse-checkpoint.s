.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    pushl $hello
    call create_ptr
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    pushl %eax
    call get_ptr_value
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    pushl %eax
    call print_any
    addl $4, %esp
    addl $0, %esp
    movl $0, %eax
    leave
    ret
