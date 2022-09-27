# A programming language is said to support first-class functions
 # if it treats functions as first-class objects

 # Properties of first class functions:

 #    A function is an instance of the Object type.
 #    You can store the function in a variable.
 #    You can pass the function as a parameter to another function.
 #    You can return the function from a function.
 #    You can store them in data structures such as hash tables, lists, …
 # 


 # 1. Functions are objects:
 

def pop(text):
 	return text.upper()
print(pop('helo'))
yell = pop # assigning function to a variable not calling
print(yell('hello'))

# 2. Functions can be passed as arguments

def speak(text):
	return text.upper()
def speak1(text):
	return text.lower()
def student(func):
	pop = func('''hello there ''')
	print(pop)
student(speak)
student(speak1)

# Functions can return another function: 
# Because functions are objects we can return a function from another function. 

def create_adder(x):
	def adder(y):
		return x+y
	return adder
pop = create_adder(99) #pop ---> storing adder obj.
print(pop(1))




