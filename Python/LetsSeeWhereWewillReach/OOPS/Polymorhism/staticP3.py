# Trick the PVM for method overloading with different number of args. in the method defination

# Default-arguments
# varaibale length arguments

# desmonstration of Default-arguments
class Laptop:
    def light(self, a =None, b = None, c = None): # providing Default arguments
        if (a!=None and b!=None and c!=None):
            return a+b+c
        elif(a!=None and b!=None):
            return a+b
        elif(a!=None):
            return a
        else:
            print("provide atleast one argument")
            
t = Laptop()
print(t.light(94,2,2))

print(t.light(94,2))

print(t.light(9))

t.light()
print("-------------------")

# demonstration of variable length arguments

class Laptop:
    def sum(self, *a):
        sum =0
        for x in a:
            sum += x
        print("the sum is ", sum)
        
t = Laptop()
t.sum(999,32,32,3,2,32)
t.sum(9,2,3)

#Further, we know constructor itself a special type of method so these trick can be applied for variable lenght args. in the method defination

class Laptop:
    def __init__(self, *var):
        pass
l = Laptop()
l2 = Laptop(33)
l1 =Laptop(343,34,2,3,23) 
# work fine 