from numpy import var


class student:
    def setVariableName(self, variableName):
        self.variableName = variableName
    def setMarks(self, marks):
        self.marks = marks
    def getMarks(self):
        # validation also be configured
        return self.marks
    def getVariable(self):
        return self.variableName

stud1 = student()
stud1.setMarks(99)
stud1.setVariableName("papa")
stud1.marks # direct access not validation 
a = stud1.getVariable  # <bound method student.getVariable of <__main__.student object at 0x7f525ae75fd0>>
print("name is {}".format(stud1.variableName))
# print("marks is {}".format(stud1.getMarks))


class Geeks:
    def __init__(self):
          self._age = 0 # here age is kind a private
          self._cow = ""
       
     # function to get value of _age
    def get_age(self):
         print("getter method called")
         return self._age
    def get_cow(self):
         print("getter method called..........")
         return self._cow
       
     # function to set value of _age
    def set_age(self, a):
         print("setter method called")
         self._age = a
    def set_cow(self, a):
         print("setter method called.....")
         self._cow = a
  
     # function to delete _age attribute
    def del_age(self):
         del self._age
    def del_cow(self):
        del self.cow
    # age = property(get_age, set_age, del_age)
    cow = property(get_cow, set_cow, del_cow)      
  
mark = Geeks()
  
mark.age = 10
mark.cow="green"
  
print(mark.age)
print(mark.cow)
