# Asymmetric key encryption uses a pair of keys, one public and one private
# The public key is designed to be widely shared, while a single user holds the private one.
#The only way you can decrypt messages that have been encrypted using your public key is by using your private key.
#This style of encryption is widely used to pass information confidentially both on local networks and across the internet.
#One very popular asymmetric key algorithm is Rivest-Shamir-Adleman (RSA), which is widely used for communication across networks.

from cryptography.hazmat.backends import default_backend

from cryptography.hazmat.primitives.asymmetric import rsa

private_key=rsa.generate_private_key(public_exponent=65537,key_size=4096,backend=default_backend())

print(private_key)
print(type(private_key))

public_key=private_key.public_key
public_key=private_key.public_key()

print(public_key)
print(type(public_key))

message=b"lala is the best here"

from cryptography.hazmat.primitives.asymmetric import padding
from cryptography.hazmat.primitives import hashes

encrypted=public_key.encrypt(message,padding.OAEP(mgf=padding.MGF1(algorithm=hashes.SHA256()),algorithm=hashes.SHA256(),label=None))

print(encrypted)
print(type(encrypted))

decrypted=private_key.decrypt(encrypted,padding.OAEP(mgf=padding.MGF1(algorithm=hashes.SHA256()),algorithm=hashes.SHA256(),label=None))

print(decrypted)
print(type(decrypted))

