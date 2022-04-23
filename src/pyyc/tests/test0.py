# # check_negate
# # output: -42
# number = input()
# x = -number
# y = number + -number + -number
# z = (not number)  + -number
# print x and y and z



# tests for is

# print(True is 5)
# print(False is 6)
# print(True is 1)
# print(False is 0)
# print(1 is True)
# print(0 is False)

# print(True is [1,2])
# print(False is {2:3})
# print([1,2] is False)
# print({1:2} is True)

# print(True is True)
# print(False is False)
# print(True is False)
# print(False is True)


# print(3 is {1:2})
# print([1,2] is 3)

# print(1 is 2)
# print(5 is 5)

# print([1,2] is {1:2})


# tests for eq

# -15
# x = 10
# -x
# -x + --15
# print x

# x + 100
# # x - x
# # x - 123

# print -x

# -input()

# print input()


# print [1,2][1]

# x =[1,2]
# print x[1]

# print {1:2}[1]

# print 2 if 0 else [1, 2, 3]

# a = 1
# b = a
# print b is a
# a = a + 1
# print a
# print b
# print b is  a

# print {input():input()}
# print {1:3,2:4}[1]






# test for ==

# print(1 == True)
# print(0 == False)
# print(5 == 4)
# print({1:2,3:4} == {1:2,3:4})
# print({5:6,3:4} == {1:2,3:4})
# print({1:2,3:4} == [1,2,4,5])
# print([4,5,6,7] == {1:2,3:4})
# print([0,1,5,7] == [0,1,5,7])
# print([0,1,5,7] == [1,2,3])
# print(True == True)
# print(True == False)\

# print ({} == [])
# print([])


# test for dict

# print({1:2, 3:4}[1])
# print({1:input(), input():4}[1])
# print({1:input(), input():4}[3])S
# print({input():input()})



# test for list

# print([1,2,3]+[4,5,6])
# print([1,2,4][2])
# print([1,[1,2,3],3,4][1])

# print([]+[1,2])

# print([]or 1)
# print(1 or [])
# print(0 or [])
# print(True or [])
# print(False or [])
# print([] or False)


# print(1 and 2)
# print(1 and 0)
# print(0 and 1)
# print(0 and 0)
# print(1 and 1)

# print(1 and False)
# print(1 and True)
# print(False and 0)
# print(True and 0)
# print(False and 1)

# print(True and True)
# print(True and False)
# print(False and True)
# print(False and False)


# print([] and 5)
# print(5 and [])
# print([] and 1)
# print(1 and [])
# print(0 and [])
# print(True and [])
# print(False and [])
# print([] and False)


# print(not [])
# print(not {})

# print(not [1,2,3])
# print(not {1:2})

# print(not [1])
# print(not {1:2,3:6})

# print([1,2] and 5)
# print(5 and [1,2])
# print([0] and 1)
# print(1 and [5])
# print(0 and [1,2])
# print(True and [1,1,1,1])
# print(False and [0,0])
# print([1,4,5,7] and False)



# print([] and [1,2])
# print(5 and [1,2])
# print([1,2,4] and 1)
# print(1 and [1,2,[]])
# print(0 and [1,2])
# print(True and [1,5])
# print(False and [[]])
# print([[],1] and False)


# print([1,2] or 5)
# print(5 or [1,2])
# print([0] or 1)
# print(1 or [5])
# print(0 or [1,2])
# print(True or [1,1,1,1])
# print(False or [0,0])
# print([1,4,5,7] or False)

# print (not [1,2])

# print (not [])
# print (not [1,2]) and [1,2]
# print (not([1,2] and []))

# print([] and [] and [1,2,4] or [1,5])
# print([] or [1,2,4] and [1] or [])


# print([] == 1)
# print([] == 0)

# print([] == True)
# print([] == False)


# print([] != 1)
# print([] != 0)

# print([] != True)
# print([] != False)


# print([] is 1)
# print([] is 0)



# print([]+[1,2] and [])
# print([1,2] and not[])
# print([] and 1)
# print ([] or 1)
# print([] and [[]])

# print(not 1)
# print(not [])


# print([]+[])
# print([]+[1,2]+[]+[1,3,4,6])

# print([] is [])
# print([] is [1,2])
# print([1,2] is [1,2])


# print([] and {})
# print([1,2] and {1:2})
# print({1:2} and {3:4})
# print({} and {})

# print([] and True)
# print([] or True)
# print([] and False)
# print([] or False)
# print(True and [])
# print(True or [])
# print(False and [])
# print(False and [])

# print ([1,2,3,True])

print 0 if [] else 1
print 0 if [[]] else 1
print 0 if [1,2] else 1
print 0 if {1:2} else 1
print 0 if {} else 1
print 0 if {1:[12]} else 1