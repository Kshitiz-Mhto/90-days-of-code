# Memoization is Memoization is a technique of recording the intermediate results so that it can be used to avoid repeated calculations and speed up the programs. 
# It can be used to optimize the programs that use recursion. 
# In Python, memoization can be done with the help of function decorators. 

#program for factorial
def fact(num):
	if(num==0):
		return 1
	else:
		return num*fact(num-1)


print(fact(5))

# after Memoization
# A decorator function for function 'f' passed
# as parameter
memory = {}
def memoize_factorial(f):
     
    # This inner function has access to memory
    # and 'f'
    def inner(num):
        if num not in memory:        
            memory[num] = f(num)
        return memory[num]
 
    return inner
     
@memoize_factorial
def facto(num):
    if num == 1:
        return 1
    else:
        return num * facto(num-1)
 
print(facto(5))