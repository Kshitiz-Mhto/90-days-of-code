        # SELF
#self represents the instance of the class.By using the “self”  we can access the attributes and methods of the class in python.
#It binds the attributes with the given arguments.
#it is clearly seen that self and obj is referring to the same object
#self is a convention not a keyword so it can be anything 
# in short, self is just referencing to the current object

#imp

#  myobject.method(arg1, arg2) get converted to --> MyClass.method(myobject, arg1, arg2) by PVM


class check:
    def __init__(self):
        print("Address of self = ",id(self))
        print(self)
 
obj = check()
print("Address of class object = ",id(obj))

obj1 = check()
print("Address of class object = ",id(obj1))

print()
print()

# A Sample class with init method
class Person:
 
    # init method or constructor
    def __init__(self, name):
        self.name = name
 
    # Sample Method
    def say_hi(self):
        print('Hello, my name is', self.name)
 
 
p = Person('Nikhil')
p.say_hi()