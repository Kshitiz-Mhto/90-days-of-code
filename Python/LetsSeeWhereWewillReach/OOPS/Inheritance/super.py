class Person:
    def __init__(self, name, age):
        self.name= name
        self.age = age
    def display(self):
        print(f"{self.name} is the person of age {self.age}")
    
class Stud(Person):
    def __init__(self, name, age, roll, marks):
        super().__init__(name, age) #returns a temporary object of the superclass 
        self.roll = roll
        self.marks=marks
    def display(self):
        super().display() # returns a temporary object of the superclass that allows access to all of its methods, fields except instance variables to its child class
        print(f"{self.roll} is the roll with marks {self.marks}")   
class Doc(Person):
    def __init__(self, name, age, salary):
        super().__init__(name, age)
        self.salary=salary
    def display(self):
        super().display()
        print(f"{self.salary} is the salary of doc")
        
person1 = Stud("hari",19,44,88)
person2 = Doc("curry",44,909090)
person1.display()
person2.display()
print("----------------------------------------")


# Calling parent classes

#using super()
#using class name


#using class name
# className.methodName(self)

class A:
    def fun(self):
        print(f"A is here {id(self)}")
class B(A):
    def fun(self):
        self.b = 99
        print(f"B is here {id(self)}")
class C(B):
    def fun(self):
        print("C is here")
class D(C):
    def fun(self):
        print(f"D is here {id(self)}")
        # obj1 = B()
        # obj1.fun()
        B.fun(self) # self refering to D class object
        super(C,self).fun() # super() refering the object ie parent of C class object, while still self refering to D class object
        # print(f"{super(C,self).b} is herr babdyyyyyyyyyyyyyyyyyyyyyyyyyyyyy") # error
obj = D()
obj.fun()
print(id(obj)) 
# without creation of kkk object, we have every self refering to D class object and D clas object become useless.

# here, fun begins!!!!!!!!!!!!!!! OOP.
kkk= A()
kkk.fun()
print(id(kkk))
# After this, every self is refering to the A class object

c = C()
c.fun() # Now, self refering to C class object.


# IMP
# we cannot user super() to access the instance variables.

#Further confusion hi confusion haee.
print("--------------------")
class Parent:
    def __init__(self):
        print("parent constructor")
    def m1(self):
        print("parent instance method")
    @classmethod
    def m2(hello):
        print("class method")
    @staticmethod
    def m3():
        print("static method")

class child(Parent):
    def __init__(self):
        super().__init__()
        super().m1()
        super().m2()
        super().m3()
    def koko(self):
        super().__init__()
        super().m1()
        super().m2()
        super().m3()
    @classmethod
    def classMethod(kok): # dont work either here
        super().__init__()
        super().m1()
        super().m2()
        super().m3()
    @staticmethod
    def staticMethod(): # has zero argument so could not execute 
        super().__init__()
        super().m1()
        super().m2()
        super().m3()
        
obj = child()
print("---------------")
obj.koko()
print("---------------")
# obj.classMethod(self)
print("---------------")
# child.staticMethod()
print("---------------")
