#Symmetric key encryption is a group of encryption algorithms based on shared keys.
#These algorithms include Advanced Encryption Algorithm (AES), Blowfish, Data Encryption Standard (DES), Serpent, and Twofish. A shared key is similar to a password that is used to both encrypt and decrypt text.
#The fact that both the creator and the reader of an encrypted file need to share the key is a drawback when compared to asymmetric key encryption,

from cryptography.fernet import Fernet
# 1st we need to create a key so
key = Fernet.generate_key()

print(key)
 #storing the key

f = Fernet(key)

msg = b"lala is out of the tsm" # msg that need to encrpt must be in binary form so 

emsg = f.encrypt(msg)

print(emsg)

# decrpytion can only be done by using the same generated key above

dmsg = f.decrypt(emsg)


print(dmsg)
