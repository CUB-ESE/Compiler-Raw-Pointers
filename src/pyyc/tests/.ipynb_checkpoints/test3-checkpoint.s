.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    call make_dict
    addl $0, %esp
    movl %eax, %ecx
    movl %ecx, %ebx
    pushl %ebx
    pushl $1
    pushl $2
    call set_subscript
    addl $12, %esp
    pushl %ebx
    pushl %ebx
    pushl $3
    call set_subscript
    addl $12, %esp
    movl %ebx, %edi
    pushl %edi
    pushl $1
    pushl $5
    call set_subscritpion
    addl $12, %esp
    pushl %edi
    pushl $1
    call get_subscript
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %ebx
    pushl %ebx
    call print_int_nl
    addl $4, %esp
    addl $0, %esp
    movl $0, %eax
    leave
    ret
