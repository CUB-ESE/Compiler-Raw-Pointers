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
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %eax
    pushl %ebx
    call get_ptr_value
    addl $8, %esp
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
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %eax
    pushl %ebx
    call get_ptr_value
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    pushl %eax
    call print_any
    addl $4, %esp
    pushl $2
    pushl $6
    call create_str_ptr
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %ebx
    pushl $104
    pushl $0
    pushl %ebx
    call set_str_ptr
    addl $12, %esp
    pushl $101
    pushl $1
    pushl %ebx
    call set_str_ptr
    addl $12, %esp
    pushl $108
    pushl $2
    pushl %ebx
    call set_str_ptr
    addl $12, %esp
    pushl $108
    pushl $3
    pushl %ebx
    call set_str_ptr
    addl $12, %esp
    pushl $111
    pushl $4
    pushl %ebx
    call set_str_ptr
    addl $12, %esp
    pushl $0
    pushl $5
    pushl %ebx
    call set_str_ptr
    addl $12, %esp
    movl %ebx, %edi
    pushl $2
    pushl $6
    call create_str_ptr
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %ebx
    pushl $97
    pushl $0
    pushl %ebx
    call set_str_ptr
    addl $12, %esp
    pushl $97
    pushl $1
    pushl %ebx
    call set_str_ptr
    addl $12, %esp
    pushl $97
    pushl $2
    pushl %ebx
    call set_str_ptr
    addl $12, %esp
    pushl $97
    pushl $3
    pushl %ebx
    call set_str_ptr
    addl $12, %esp
    pushl $97
    pushl $4
    pushl %ebx
    call set_str_ptr
    addl $12, %esp
    pushl $0
    pushl $5
    pushl %ebx
    call set_str_ptr
    addl $12, %esp
    movl %ebx, %esi
    movl $3, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %eax
    pushl %edi
    pushl %esi
    call p1_memcpy
    addl $12, %esp
    movl %eax, %eax
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %eax
    pushl %esi
    call get_ptr_value
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    pushl %eax
    call print_any
    addl $4, %esp
    pushl $2
    pushl $3
    call create_str_ptr
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %ebx
    pushl $65
    pushl $0
    pushl %ebx
    call set_str_ptr
    addl $12, %esp
    pushl $65
    pushl $1
    pushl %ebx
    call set_str_ptr
    addl $12, %esp
    pushl $0
    pushl $2
    pushl %ebx
    call set_str_ptr
    addl $12, %esp
    movl $2, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %eax
    pushl %ebx
    pushl %esi
    call p1_memcpy
    addl $12, %esp
    movl %eax, %eax
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %eax
    pushl %esi
    call get_ptr_value
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    pushl %eax
    call print_any
    addl $4, %esp
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %eax
    pushl %esi
    call get_ptr_value
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    pushl %eax
    call print_any
    addl $4, %esp
    movl $2, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %eax
    pushl %esi
    call get_ptr_value
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    pushl %eax
    call print_any
    addl $4, %esp
    pushl %edi
    call free
    addl $4, %esp
    movl %eax, %eax
    pushl %esi
    call free
    addl $4, %esp
    movl %eax, %eax
    addl $0, %esp
    movl $0, %eax
    leave
    ret
