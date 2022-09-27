# access the object of one class by using another class
class Employee:
    def __init__(self, eno,ename,esa1):
        self.eno = eno
        self.ename=ename
        self.esa1 = esa1
    def display(self):
        print(self.eno, self.ename, self.esa1)
        
class Test:
    @staticmethod
    def modify(emp):
        emp.esa1 = emp.esa1+10000
        emp.display()
    
e1 = Employee(4,"nkcm", 9000)
Test.modify(e1) 

# inner-class
# declared inside another class
# without existing one type of obj. if there is no chance of existing another type then we should go for inner classes.
# like Car and Engine, Human and Brain, University and Department are tightly coupled.
# without existence of outer class inner class cannot exits.

class humanBody:
    def __init__(self):
        print("human body is formed")
    def kidney(self):
        print('kidney is working fine!!')
    class Brain:
        def __init__(self):
            print("brain is formed")
        def brain(self):
            print("brain is working!!")
            
nk = humanBody()
# nk.Brain()
# nk.Brain().brain()
kk = nk.Brain()
kk.brain()
print("------------------------------------")
humanBody().Brain().brain() #shorthand to access the inner class
# humanBody().Brain().kidney() # error becauz. humanBody have other function like kidney one but object of brain cannot perform the objective of kidney.
print("--------------------------------------")
