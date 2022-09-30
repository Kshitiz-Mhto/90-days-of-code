#  Python treats files differently as text or binary and this is important. Each line of code includes a sequence of characters and they form a text file.
#  Each line of a file is terminated with a special character, called the EOL or End of Line characters like comma {,} or newline character. 
#  It ends the current line and tells the interpreter a new one has begun.

#initially, open the file using open() function
#syntax

# f = open(filename, mode)

#modes

# for only Text files
    # r: open an existing file for a read operation. also Default mode.
    # w: create a new file if not exist. open an existing file for a write operation. If the file already contains some data then it will be overridden.
    # a: open an existing file for append operation. It won’t override existing data. if fiel don't exist then create now
    # r+: To read then write data into the file. The previous data in the file will be overridden.
    # w+: To write then read data. It will override existing data.
    # a+: To append and read data from the file. It won’t override existing data.
    # x: exclusive mode --> Write operation. But here, file mustnot exists already. if files exist throws FileExistsError
# for binary files.
    # rb,we,ab,r+b.w+b,a+b,xb


f = open('./LetsSeeWhereWewillReach/FileHandling/abc.txt') # r mode is by default
print(f.name)
print(f.mode)
print(f.tell)
print(f.readable())
print(f.writable())
print(f.closed)
f.close()
print(f.closed)

f = open('./LetsSeeWhereWewillReach/FileHandling/abcd.txt', 'w')
listof={'1':'one', '2': 'two', '3':'three'} # only string can be written
for i,j in listof.items():
    f.write(i+":"+j+'\n')
# listof= {'5,3,32,2,32'} # set
# listof=["hero is here.\n", "papa is on"]
# f.writelines(listof)
f.close()

# File handling dynamically..

# filename = input("enter file name: ")
# f = open('./LetsSeeWhereWewillReach/FileHandling/'+filename, 'w')
# # data = input("provide me infoooo: \n") # single line input 
# # we can write a loop, read till we have received an EOF (Ctrl-D) from user:
# print("Enter your data. Ctrl-d to save it.")
# contents = []
# while True:
#     try:
#         line = input()
#     except EOFError:
#         break
#     contents.append(line+"\n")
# f.writelines(contents)
# f.close()

# Reading character data from files:
# f.read() --> to read total data from the file
# f.read(m) --> to read n characters from the file
# f.readline() --> to read only one line
# f.readlines() --> to real all lines into a list

f = open('./LetsSeeWhereWewillReach/FileHandling/kaka.txt')
# print(f.read()) # ref reaches to EOF so line 70 could give me desired output
# print(f.read(5))
# print(f.readline(), end="") # print 1 line then add `\n``
# print(f.readline(), end="")
# print(f.readline(), end="")
# print(f.readlines()) # ['kaak is on \n', 'i am also here\n', 'why fear\n']

lines = f.readlines()
for line in lines:
    print(line, end="")
f.close()


# f = open("inpu")
# g = open ("yy","w")
# g.write(f.read()) # write into file yy char by char as read() reads char by char
# f.close()
# g.close()

# lets do some 59 stuff
f = open("./LetsSeeWhereWewillReach/FileHandling/kaka.txt")
with open("./LetsSeeWhereWewillReach/FileHandling/auto","w") as file:
    file.write(f.read())
    print(file.closed)
    f.close()
print(file.closed) 
