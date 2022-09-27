class Person:
    def __init__(self):
        self.name="kshitiz"
        self.age = 99
        self.dob = DOB()
    def display(self):
        print("name : ", self.name)
        self.dob.display()
        print("------------------------------")
class DOB:
    def __init__(self):
        self.dd = 15
        self.mm = 5
        self.yyyy=2002
    def display(self):
        print("date of birth: {}/{}/{} ".format(self.dd, self.mm, self.yyyy))    
tt = Person()
tt.display()
class Person:
    def __init__(self, name,dd,mm,yyyy):
        self.name=name
        self.age = 99
        self.dob = DOB(dd,mm,yyyy)
    def display(self):
        print("name : ", self.name)
        self.dob.display()
class DOB:
    def __init__(self,dd,mm,yyyy):
        self.dd = dd
        self.mm = mm
        self.yyyy=yyyy
    def display(self):
        print("date of birth: {}/{}/{} ".format(self.dd, self.mm, self.yyyy))    
tt = Person("nkcm",4,5,2001)
tt.display()
