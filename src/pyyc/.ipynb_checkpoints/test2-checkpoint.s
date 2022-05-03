.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
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
    movl %ebx, %eax
    pushl %eax
    call print_any
    addl $4, %esp
    addl $0, %esp
    movl $0, %eax
    leave
    ret
