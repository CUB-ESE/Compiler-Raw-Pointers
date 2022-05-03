
## POINTER SAMPLE EXAMPLE 1

# x = 5
# x_ptr = ptr(x)
# deref(x_ptr) = 100
# print(deref(x_ptr))
# freep(x_ptr)


# ## EXAMPLE FOR MEMCPY

# x_ptr = ptr (123)
# y_ptr = ptr (0)
# print (deref(y_ptr,0))
# memcpy (y_ptr, x_ptr, 4)
# print deref(y_ptr,0)


## CHAR/STRING
# x = 'A'
# x_ptr = ptr(x)
# deref(x_ptr) = 100
# print(deref(x_ptr))
# freep(x_ptr)

# a =[0x41,2]
# print a



x = "hello"
y = "aaaaa"

print deref (y)
memcpy(y, "hi", 3)
print (y)
# print deref (y,0)
# memcpy(y, "AA", 2)
# print deref (y,0)
# print deref (y,1)
print deref (y,2)
memset(y, 66, 5)
# print deref (y)

print(y)
print(x)
freep(x)
freep(y)


# x = "hello"
# print(deref(x))
# print(x)
# freep(x)