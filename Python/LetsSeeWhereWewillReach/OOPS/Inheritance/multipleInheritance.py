# Multiple Inheritance is one of the inheritance in Java types where one class extending more than one class.
# This give rise to ambiguity situation or Diamond program
# Here, python solve it with this simple trick


# class Car:
#     def body(self):
#         print("car is here")
# class engine:pass
class engine:
    def body1(self):
        print("i am engine")
    def body(self):
        print("i am engine")
class frame:
    def body(self):
        print("i m frame of the car")
# class Car(engine, frame):
#     def body(self):
#         print("i am the child")
class Car(engine, frame):pass
#the engine is the 1st nominy then frame is 2nd one 
car = Car()
car.body() # Diamond problem if line 15 isn't there.