

class Encryptor():

    def encrypt(self, message, key):
        raise NotImplementedError("Subclasses must implement encrypt method")

    def decrypt(self, encrypted_message, key):
        raise NotImplementedError("Subclasses must implement decrypt method")
    