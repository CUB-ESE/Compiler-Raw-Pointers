.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    movl $123, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %eax
    call create_ptr
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %edi
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %eax
    call create_ptr
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %ebx
    pushl %ebx
    call get_ptr_value
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    pushl %eax
    call print_any
    addl $4, %esp
    movl $4, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %eax
    pushl %edi
    pushl %ebx
    call p1_memcpy
    addl $12, %esp
    movl %eax, %eax
    pushl %ebx
    call get_ptr_value
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    pushl %eax
    call print_any
    addl $4, %esp
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %ecx
    movl %ecx, %eax
    or $0, %eax
    movl %eax, %ecx
    movl $4, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %eax
    pushl %ecx
    pushl %ebx
    call p1_memset
    addl $12, %esp
    movl %eax, %eax
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
    pushl %edi
    call free_ptr
    addl $4, %esp
    movl %eax, %eax
    addl $0, %esp
    movl $0, %eax
    leave
    ret