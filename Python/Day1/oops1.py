#without a constructor initializing the object with methods

class sel:
    def info(self, name):
        self.name = name
t = sel()
t.info("harilal")
print(t.name)

class sello:
    def __init__(self):
        print("lala is ghod")
        print(self)
sello() # smae
t1 =sello() #smae
t2 = sello() #different 


class numofobj:
    def __init__(self):
        print(id(self))
# same object
t = numofobj()
t.__init__()
t.__init__()

# method overloading is not possible, latest method defination is prefered in order defined inside the class

class overload:
    def __init__(self, x):
        self.x = x
    def __init__(self):
        print("default")

t = overload()
# t1 = overload(9) # error 

class Tes:
    def __init__(self, name):
        self.name = name
t = Tes("haiiiii")
print(t.name)
t.__init__("kera")
print(type(t))
print(t.name)


class koko:
    def koko(self):
        print("a special metos")

#LHL ---> compile time         
t = koko() # __init__(self) is executing and creating a blank object in heap
#RHL ----> Runtime time
t.koko() # koko(self) method is executing..
print(type(t.koko()))
print(type(t)) 
 
