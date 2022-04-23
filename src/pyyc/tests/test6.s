.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    call create_dict
    addl $0, %esp
    movl %eax, %eax
    movl %eax, %edi
    movl %edi, %eax
    or $3, %eax
    movl %eax, %edi
    movl $1, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %eax
    pushl %ebx
    pushl %edi
    call set_subscript
    addl $12, %esp
    movl $2, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %eax
    pushl %ebx
    pushl %edi
    call set_subscript
    addl $12, %esp
    movl %edi, %eax
    or $3, %eax
    movl %eax, %eax
    movl %eax, %eax
    pushl %ebx
    pushl %eax
    call get_subscript
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    pushl %eax
    call print_any
    addl $4, %esp
    addl $0, %esp
    movl $0, %eax
    leave
    ret
