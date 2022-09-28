# Decorators allows programmers to modify the behaviour of function or class. 
# Decorators allow us to wrap another function in order to extend the behaviour of the wrapped function,
#  without permanently modifying it. 

# (IMP)In Decorators, functions are taken as the argument into another function 
# then called inside the wrapper function.

# Syntax for Decorator: 

# @gfg_decorator
# def hello_decorator():
#     print("Gfg")

'''Above code is equivalent to -

def hello_decorator():
    print("Gfg")
    
hello_decorator = gfg_decorator(hello_decorator)'''

# In the above code, gfg_decorator is a callable function, will add some code on the top of some another callable function,
#  hello_decorator function and return the wrapper function.

