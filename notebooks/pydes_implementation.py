from des import DesKey
from standard import Encryptor

class PyDES(Encryptor):
    def __init__(self):
        pass

    def encrypt(self, message, key):
        key_bytes = bytes(key, "ascii")
        assert len(key_bytes) == 8, "Key must be 8 bytes"
        des_key = DesKey(key_bytes)
        # Pad message with null bytes to be a multiple of 8
        padding_needed = 8 - (len(message) % 8) if len(message) % 8 != 0 else 0
        message += '\0' * padding_needed
        message_bytes = message.encode('ascii')
        cipher_text = des_key.encrypt(message_bytes, padding=False)
        return cipher_text

    def decrypt(self, encrypted_message, key):
        key_bytes = bytes(key, "ascii")
        assert len(key_bytes) == 8, "Key must be 8 bytes"
        des_key = DesKey(key_bytes)
        padding_needed = 8 - (len(encrypted_message) % 8) if len(encrypted_message) % 8 != 0 else 0
        encrypted_message += '\0' * padding_needed
        encrypted_message_bytes = encrypted_message.encode('ascii')
        plain_text = des_key.decrypt(encrypted_message_bytes, padding=False)
        return plain_text
    
class PyTDES(Encryptor):
    def __init__(self):
        pass

    def encrypt(self, message, key):
        key_bytes = bytes(key, "ascii")
        assert len(key_bytes) == 24, "Key must be 24 bytes"
        des_key = DesKey(key_bytes)
        # Pad message with null bytes to be a multiple of 8
        padding_needed = 8 - (len(message) % 8) if len(message) % 8 != 0 else 0
        message += '\0' * padding_needed
        message_bytes = message.encode('ascii')
        cipher_text = des_key.encrypt(message_bytes, padding=False)
        return cipher_text

    def decrypt(self, encrypted_message, key):
        key_bytes = bytes(key, "ascii")
        assert len(key_bytes) == 24, "Key must be 24 bytes"
        des_key = DesKey(key_bytes)
        padding_needed = 8 - (len(encrypted_message) % 8) if len(encrypted_message) % 8 != 0 else 0
        encrypted_message += '\0' * padding_needed
        encrypted_message_bytes = encrypted_message.encode('ascii')
        plain_text = des_key.decrypt(encrypted_message_bytes, padding=False)
        return plain_text
