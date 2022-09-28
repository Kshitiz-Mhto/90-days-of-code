# Python Functions is a block of related statements designed to perform a computational, logical, or evaluative task
# we can do the function calls to reuse code contained in it over and over again. 
# helps the program to be concise, non-repetitive, and organized.

# Syntax: 

# def function_name(parameters):
#     """docstring"""
#     statement(s)
#     return expression
#fucntin_name(parameters) --> calling the function

		#Arguments
def myFunc(x,y=99):#default arguments
	return x+y
(myFunc(x=1))#keyword arguments(caller dont need to remember the order of parameters)

		#Variable-length arguments
    # *args (Non-Keyword Arguments)
    # **kwargs (Keyword Arguments)
def name(*args):
	for i in args:
		print(i, end = " ")
	print()
name('nkcm', 'anish','johny')

def Students(**kwargs):
	''' accept multiple key:value arguments'''
	for key, value in kwargs.items():
		print(('{} : {}').format(key,value), end = " ")
	print()
Students(rol1= 'pop', rol2 = "hello")
print(Students.__doc__) #document about the function

		#Return Statements
# Syntax: return [expression_list]

		#Nested Function

def nest():
	s = 99
	def add():
		nonlocal s
		return s + x
	add(1)
print(nest())




