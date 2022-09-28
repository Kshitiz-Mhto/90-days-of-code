import random

def passGen(length = 8):
	sChr = ['#','%','$','*','!']
	upper = chr(random.randint(ord('A'), ord('Z')))
	lower = chr(random.randint(ord('a'), ord('z')))
	num = random.randint(1000,99999)
	password = upper + lower+str(num)+random.choice(sChr)
	s = random.sample(password,length)
	print (s)
	print(password)
	password = ('').join(s)
	print(type(password))
	return password
print(passGen(8))
