# instance variables
from curses.panel import update_panels
from os import stat


class Test:
    def __init__(self):
        self.a = 99
    def func1(self):
        self.a = 20
        self.b = 990
        
obj1 = Test()
obj1.func1()
print(obj1.__dict__) #{'a': 20, 'b': 990}


# static variables ---> values that don't vary with object to object.
# like students of particular college , population of the world

#scope of the static variable declaration
# ouside the constructors/methods
# inside methods using class name like below block of code
# inside static method using class name
# ouside the class using class name

class static:
    popu = 0
    sum1 = 1
    def __init__(self) -> None:
        static.popu += 1
        self.m =99
        pass
    def hello(self):
        static .sum1 =90
        self.m = 99*8
    
    @classmethod
    def classlevel(classl):
        classl.hero = "kk"
        static.herioine =32
    @staticmethod
    def staticmethod():
        static.herioine =30000 # not recommanded
     
pop=static()
pop1=static()
print("total population is %d" % static.popu)
print()
pop1.hello()
pop1.classlevel()
pop1.staticmethod()
static.kop = "lala"
static.lol = 89
print(static.__dict__) # to show class level things..
print()
print()

#accessing the static variables
#static variable can be accessed using self, class name, class object reference

#updating the static variables
# IMP
# we need class level object reference to update the static variables

class var:
    a = 90
    def __init__(self):
        print(self.a)
        # cannot use self to update the static variables
        self.a = 99 # create a instance variable `a`
        var.a = 123
        print(self.a)
        print(var.a)
        
t = var()
print(t.__dict__) # {'a': 99}
print(var.__dict__) # {'a': 123 }
print()
print()


class update:
    a = 90
    def __init__(self):
        update.a = 99
        pass
    @classmethod
    def classi(cls):
        cls.a = 909090
        update.a = 99999
    @staticmethod
    def static():
        update.a= 900009
        a = 90 # local variables bounded to static method 
    
t = update()
print(update.a) #99  
t.classi()
print(update.a) #99999
t.static()
print(update.a) #900009
# 1st priority goes to searching for instance variable if not creates one instance variables if case of updating
t.a =102220 # static var. cannot be updated using current object ref. here, creates a new instance variable a in `t` referencing object or will update if already present
print(t.a) #102220