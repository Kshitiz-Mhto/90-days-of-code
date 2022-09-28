# Overriding Concept
#Method overriding is an ability of any object-oriented programming,
# language that allows a subclass or child class to provide a specific implementation of a method that is already provided by one of its super-classes or parent classes
#When a method in a subclass has the same name, same parameters or signature and same return type(or sub-type) as a method in its super-class, 
# then the method in the subclass is said to override the method in the super-class.

#The version of a method that is executed will be determined by the object that is used to invoke it. 
# If an object of a parent class is used to invoke the method, then the version in the parent class will be executed, 
# but if an object of the subclass is used to invoke the method, then the version in the child class will be executed.
# In other words, it is the type of the object being referred to (not the type of the reference variable) that determines which version of an overridden method will be executed.

import gc
class Parent:
    def car(self):
        print("mercedes is good for you.")
class child(Parent):
    def car(self):
        # super().marry()
        print("Nah, RR is best for me!!")
    def __del__(self):
        print("i am being called")
hari = child()
hari.car()
# hari = None
print(hari)

# IS-A vs HAS-A
# A HAS-A relationship is dynamic (run time) binding while inheritance is a static (compile time) binding.
# IS-A ---> inheritances like apple is a fruit 
# It's like parent child relation
# HAS-A ---> compostition and aggregation like house has a kitchen 
# It's like class and its component and further measure into how closely they are related for their existence.


# Composition vs Aggregation
# composition ---> strong association / tightly coupled
# like Human body and its organ, object and instance variables. without body where will the organs resides. Body HAS-A Organs but strong association
# Aggregation ---> weak association / loosely coupled
# like Human Body and one Kidney, object and static variables. HAS-A relationship but weak association

