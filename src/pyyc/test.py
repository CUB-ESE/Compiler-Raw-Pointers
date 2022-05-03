x = "hello world!" # x is a ptr()
print(deref(x))    # 'h'
print(deref(x, 1)) # 'e'
print(x)           # "hello world!"
memset(x, 65, 5)   # x[0:5] $\leftarrow$ 'A'
print(x)           # "AAAAA world!"
y = "hello"
memcpy(x, y, 5)    # no null term
print(x)           # "hello world!"
memcpy(x, y, 6)    # null term
print(x)           # "hello"
freep(x)
freep(y)