#Python’s memory allocation and deallocation method is automatic

# Python uses two strategies for memory allocation: 
#     Reference counting
#     Garbage collection

#enabaling and disabling the garbage collector

import gc
print(gc.isenabled())
gc.disable()
print(gc.isenabled())
gc.enable()
print(gc.isenabled())

# Destructure
# __del__(self)

# GC will call the destructure automatically just before destroying an object resource clean up activities will be performed by destructure!!
# when there is no any destructure then class object destructure will be called which will do nothing.

import time

# GC maynot destory object during program execution but will delete all the object after program execution. Until the reference count of the object is 0, GC will the delete that particular object
class Toto:
    def __init__(self):
        print("obj is intialization begin......")
    def __del__(self): # destructure will be called at least one 
        print("cleanup activity is going on!!") # clean up activity implies those action that releases the connected resouces to useless object
t1 = Toto()
# t1 = None
#when line 31 is executed the GC will come in action immediately for deleting t1 object

time.sleep(3)
print("finished")

class Toti:
    def __init__(self):
        print("obj is intialization begin......")
    def __del__(self):
        print("cleanup activity is going on!!")
gc.disable()
print(gc.isenabled())
t2 = Toti()
t2 = None # None is itself is a NoneType object. It imples t2 not pointing any object.
# del t2 # here t2 will be deleted and make refering object eligible for deletion
print(t2) #error
print("-------------------")

import sys
list = [Toti(), Toti(), Toti()]
time.sleep(2)
list = None # 3-3 times constructor and destructor will be called
print(sys.getrefcount(t2)) # 2 one is t2 and self