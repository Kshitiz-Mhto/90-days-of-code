class Money:
    def __init__(self, amt):
        self.amt = amt
m1 = Money(99)
m2 = Money(100)
#print(m1 + m2) # error
# # operator (+)plus operator overloading not for Money class
# but in Python we can achieve the operator overloading --> implies we can operate such thing with custom class object  also.

# Operator overloading can be acheived using  magic method that is defined in that particular class on whose object you want to operate using operator.
# the action of the operator is defined inside that particular magic method.
# And this magic is called immediately when operator overiding is occuring and the result and type is same as the return value and return type of the magic method resp.

print (m1.amt+ m2.amt)

# for following operation
# b = m1 + m2
# for + operator we have __add__(self, another) where m1 --> self and m2 ---> another 
class Money:
    def __init__(self, amt):
        self.amt = amt
    def __add__(self, another):
        return self.amt + another.amt
    def __add__(self, another): # always latest method is given priority.
        return self.amt == another.amt
    # def __and__(self, one , two):  # not valid, argument is always fixed 
    #     return self.amt + one.amt + two.amt
    def __sub__(self, another):
        return self.amt - another.amt
    def __mul__(self, another):
        return self.amt * another.amt
m1 = Money(99)
m2 = Money(100)
m3 = Money(10)
print (m1 + m2)
print(m1 * m2)
# print (m1 + m2 + m3) # Operator overloading for more than 2 var. is not supported