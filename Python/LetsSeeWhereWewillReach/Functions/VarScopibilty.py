# local variables are accessible only inside the function in which it was initialized
#  whereas the global variables are accessible throughout the program and inside every function. 


x1 = 90 #global var
def sum(x,y=1):
	return x+y
# print(sum(x,y)) --> y is local var


def Prnt():
	x1 =99
	print(x1)
def Prn():
	global x1
# Global keyword is a keyword that allows a user to modify a variable outside of the current scope. 
	x1 =0
	print(x1)
print(x1)
Prnt()
print(x1)
Prn()


