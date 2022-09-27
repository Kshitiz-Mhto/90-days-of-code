def power(n):
	return lambda a : a ** n

# base = lambda a : a**2 get
# returned to base
base = power(2)
# when calling base it gets
# executed with already set with 2
print("power of eight is ", base(8))


# We can also replace list comprehension with Lambda by using a map() method,
 # not only it is a fast but efficient too

 	#list comprehension
 # newList = [ expression(element) for element in oldList if condition ]
new = [ i **2 for i in range(1,10) if i % 2==0]
 
a = [100, 2, 8, 60, 5, 4, 3, 31, 10, 11]
 
# in filter either we use assignment or
# conditional operator, the pass actual
# parameter will get return
filtered = filter (lambda x: x % 2 == 0, new)
print(list(filtered))

