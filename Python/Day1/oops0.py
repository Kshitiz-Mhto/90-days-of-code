# Object Oriented Programming

# class--> logical constructor
# object-->physical instance of class 

#class Student:
 #   ''' Hello OOP, i am here for fun!!'''



#Variable in python OOP

#instance ----> object level variables --->var. differ as per object [no. of copies as number of features in each object]
#static--------> class level variables ---->  var / property is same for all object of that class like population [single copy]
#local-----> method level variables ---> created at the time of method execution and destroyed once method is executed. cannot accessed outside the method


#types of method

#instance methods ---> object level method --> always deals with objects realted features amd properties[instance variables] contans atleast one instance variables, always starts with [self]
#class method ---> class level method ---> deals with static variables or class level variables withoout [self] as 1st arg.
#static method ---> object independent method, local variables dealing here 


class Employee:
    def __init__(self): #default constructor
        print("constructor execution!!")
        self.name = ""
        self.roll = 55
        self.marks = 88
     #Note : The destructor was called after the program ended or when all the references to object are deleted 
     #i.e when the reference count becomes zero, not when object went out of scope.
    # def __del__(self):
    #     print("{} is deleted".format(self))
    pop = 0   
    def __init__(self, naame="lala", rolle=99, marksy=99):
        self.naam = naame
        self.roll = rolle
        self.marks = marksy
        Employee.pop += 1

    def talk(self): 
        print("talk method is bounded to the Employee object")
        print("hello ",self.name)
        print("my roll no. is ",self.roll)
        print("i got %d marks" % self.marks)
    def talkbysecond(self): 
        print("talk method is bounded to the Employee object")
        print("hello ",self.naam)
        print("my roll no. is ",self.roll)
        print("i got %d marks" % self.marks)
    @staticmethod
    def doit(): #static method
        print("lala is here without object")
    @classmethod
    def common(popu): #class level method here, popu ----> refering to class object not current object due to use of @classmethod decorator
        print("totoal population is %d" % popu.pop);
        
   

# employ1 = Employee() # when object is created, constructor is called automatically and Employee initialized to employ1 ref. variable
#print(id(employ1))
#print(Employee()) # same as print(Employee) --> address of Employee class and call the default constructor
#print()

# employ1.name = "hari"
# employ1.talk()
# Employee.doit()
# print()

# employ2 = Employee("harilal", 88, 80)
# print(employ2.naam)
# employ2.talkbysecond()
# # destructors in python
# # employ2.__del__
# # del employ2 -------> explictly deleting the object
# print(employ2.naam)

employ4 = Employee("halal", 8, 20)
employ3 = Employee("hilal", 78, 40)
employ5 = Employee("arilal", 88, 90)

print(Employee.pop)
Employee.common()

class test:
    pop = 99
    # def __init__(self):
    #     pass
    @classmethod
    def getPop(cls):
        print(cls.pop)
        print(id(cls))
    @classmethod # created only once class object 
    def  getPOpu(clss):
        print(id(clss))
    
t = test()
t.getPop()
test.getPOpu()
tt = test()
test.getPop()
tt.getPOpu()

#place we can declare instance variables

class lala:
    def __init__(self):
        self.a =10
        self.b = 333
    def m1(self):
        self.c=30
    
t = lala()
print(t.__dict__)
t.m1()
print(t.__dict__)
t.d=99 #using object reference
t.e=0
print(t.__dict__)