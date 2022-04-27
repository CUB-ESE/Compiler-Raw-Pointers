.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    fmov $5.7, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    pushl %eax
    call create_ptr
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %ebx
    movl $10, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %eax
    pushl %ebx
    call set_ptr_value
    addl $8, %esp
    pushl %ebx
    call get_ptr_value
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    pushl %eax
    call print_any
    addl $4, %esp
    pushl %ebx
    call free_ptr
    addl $4, %esp
    movl %eax, %eax
    addl $0, %esp
    movl $0, %eax
    leave
    ret
