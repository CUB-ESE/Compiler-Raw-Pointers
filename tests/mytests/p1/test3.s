.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    call create_dict
    addl $0, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl %ebx, %eax
    or $3, %eax
    movl %eax, %ebx
    movl $2, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %ecx
    movl %ecx, %eax
    or $0, %eax
    movl %eax, %ecx
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %ecx
    pushl %eax
    pushl %ebx
    call set_subscript
    addl $12, %esp
    movl $3, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %ecx
    movl %ecx, %eax
    or $0, %eax
    movl %eax, %ecx
    movl $2, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %ecx
    pushl %eax
    pushl %ebx
    call set_subscript
    addl $12, %esp
    movl %ebx, %ebx
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %ecx
    movl %ecx, %eax
    or $0, %eax
    movl %eax, %ecx
    movl $5, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %eax
    pushl %ecx
    pushl %ebx
    call set_subscript
    addl $12, %esp
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %eax
    pushl %ebx
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
