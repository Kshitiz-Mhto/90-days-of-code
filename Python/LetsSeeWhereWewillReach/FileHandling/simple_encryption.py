import hashlib

my_data = "hello, world this is me form 5th dimension"

bs = my_data.encode() # coverting to binary string

print(bs)
print(type(bs))
#algo = hashlib.md5() # alogrithm
algo = hashlib.sha256()
algo.update(bs)

print(algo.digest())
