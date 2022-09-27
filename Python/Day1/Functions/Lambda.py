# In Python, anonymous function means that a function is without a name
# we use lambda to define anonymous fucntion
		# Syntax:

# lambda arguments : expression 

	#features
# 	This function can have any number of arguments but only one expression,
# 	 				which is evaluated and returned.
# One is free to use lambda functions wherever function objects are required.

string = 'geekforgeeks'
print(lambda string : string)
 # the lambda is not being called by the print function
 #  but simply returning the function object and the memory location where it is stored. 

string1 = 'geekforgeeks'
# g = lambda string1: print(string1)
# (g(string1))
(lambda string1: print(string1))(string1)