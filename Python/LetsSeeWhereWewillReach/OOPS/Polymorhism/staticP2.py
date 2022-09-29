# printing the reference of the object in python --> actually call the magic method called __str__(self):
# if we dont overload the __str__(self) method then default implementation will be the result and prints it.
class Hero:
    def __init__(self) -> None:
        pass
    
b1 = Hero() 
print (b1) # here default __str__(self) is called internally by PVM

# proof
# Overloading the __str(self) method
class Hero:
    def __init__(self) -> None:
        pass
    def __str__(self):
        return str(id(self))+""
        
b1 = Hero()
print(b1)

class Hero:
    def __init__(self, koko) -> None:
        self.koko = koko
    def __str__(self):
        return "the number of heroes is "+ str(self.koko)
b1 = Hero(88)
print(b1)


# for three arguments operator overloading with little trick

class Hero:
    def __init__(self, koko):
        self.koko = koko
    def __str__(self):
        return "the number of heroes is "+ str(self.koko)
    def __add__(self, other):
        b = self.koko + other.koko
        her = Hero(b)
        return her
    def __mul__(self, other):
        b = self.koko * other.koko
        her = Hero(b)
        return her
h1 = Hero(9)
h2 = Hero(2)
h3 = Hero(99)

print(h1,h2) # __str(self) is called twice
print(h1+h2+h3)
print(h1 * h2*h3)
print("----------------------")
h1+h2 # no printing so __str__(self) isnot calling

# you can play with other magic method also :):
class C1:
    def __init__(self, sal):
        self.sal = sal
    def __mul__(self, other): # here other is -----> t ref var --------> Time obj. so other ref can access the days value.
        return self.sal * other.days
    
# class C1:
#     def __init__(self, sal):
#         self.sal = sal
#     def __mul__(self, other):
#         return self.sal * other.sal
        
class Koko:
    def __init__(self, days):
        self.days = days
    def __mul__(self, other):
        return self.days * other.sal
        
c = C1(88)
t = Koko(1)
t2 = Koko(2)
print ("the sal is %d times" % (c*t))
# print ("the sal is %d times" % (c*c))
print ("the sal is %d times" % (t2*c))
        
# Method Overloading 
# In python, there is no any declearation using data types, there is no way of method overloading using diffrent datatypes in fucntion defination
# another way of method overloading is using different number of argument in fucntion definatio but here, even we do that PVM only allows the last or latest defination in actio like below example:
# but we can achieve variable number of args for method defination using 
# default arguments 
# variable length arguments
class Kaka:
    def __init__(self):
        pass
    def ko():
        print("no arg")
    def ko(name):
        print("name is the arg")
    # def ko(name, hero):
    #     print("two arg")
        
t = Kaka()
t.ko() # error here, 0 arg. is passed but PVM always pass the 1 arg. refering to the current obj.
# t.ko("pop")
