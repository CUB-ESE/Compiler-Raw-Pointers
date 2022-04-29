x = 5
x_ptr = ptr(x)
deref(x_ptr) = 100
print(deref(x_ptr))
freep(x_ptr)