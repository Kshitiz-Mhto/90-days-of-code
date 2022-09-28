# printing the reference of the object in python --> actually call the magic method called __str__(self):

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
h1 = Hero(9)
h2 = Hero(2)
h3 = Hero(99)

print(h1,h2) # __str(self) is called twice
print(h1+h2+h3)
print("----------------------")

h1+h2 # no printing so __str__(self) isnot calling
