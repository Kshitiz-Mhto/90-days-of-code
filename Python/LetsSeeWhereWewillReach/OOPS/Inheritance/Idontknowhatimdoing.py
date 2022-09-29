# method resolution order
# class.mro() --> shows the order of the search for the user desire in the give program's classes

class Panther:
    def m1(self):
        print("parent method.")
class Car(Panther):pass

print(Car.mro()) # method resolution order 
# here, the search begin in Car class then Panther class then finally to Object class. In case of multiple parents, the consideration begins from left to right.
# Child object can access all the components[method, fields] of Parent but Parent cannot access the child's components.
obj1 = Car()
obj1.m1()

# Method Resolution Order 
# uses C3 algorithm for high level of inheritance
# C3 is the algorithm used by Python to construct the method resolution order for new style classes involving multiple inheritance

class A:pass
class B:pass
class C:pass
class X(A,B,C):pass
class Y(B,C):pass
class P(X,Y,C):pass
print(P.mro())
 
