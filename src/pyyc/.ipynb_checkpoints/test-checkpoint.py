
## POINTER SAMPLE EXAMPLE 1

# x = 5
# x_ptr = ptr(x)
# deref(x_ptr) = 100
# print(deref(x_ptr))
# freep(x_ptr)


## EXAMPLE FOR MEMCPY

x_ptr = ptr (123)
y_ptr = ptr (0)
print (deref(y_ptr))
memcpy (y_ptr, x_ptr, 4)
print deref(y_ptr)