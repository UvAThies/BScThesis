from pynq import Overlay, allocate
import numpy as np
import math
import time

from standard import Encryptor

class BaseFPGAEncryptor(Encryptor):
    """
    Base class for FPGA-based encryption algorithms.
    """

    IS_ENCRYPTOR = True
    _active_instance = None  # Class variable to track active instance

    def __init__(self, size_of_message, size_of_key, size_of_return, bitstream_encryptor, bitstream_decryptor, logging=True, max_parallel_send=2**4):
        """
        Initializes the FPGA Encryptor with the provided bitstream.

        Args:
            size_of_algo (int): The size of the algorithm in bytes.
            bitstream_path (str): Path to the bitstream file.
            logging (boolean, default = True): Extra logging to debug message sending.
            max_parallel_send (int, default = 2**4): The maximal amount of memory to send at once.
        """
        self.bitstream_encryptor = bitstream_encryptor
        self.bitstream_decryptor = bitstream_decryptor
        self._init_overlay(bitstream_encryptor)
        
        # Program bitstream to FPGA
        self.logging = logging
        
        self.size_of_message = size_of_message
        self.size_of_key = size_of_key
        self.size_of_return = size_of_return
        
        self.INPUT_TYPE = np.dtype([("message", np.bytes_, self.size_of_message), ("key", np.bytes_, self.size_of_key)])
        self.OUTPUT_TYPE = np.dtype([("result", np.bytes_, self.size_of_return)])

        self.max_parallel_send = max_parallel_send

        # Allocate physical memory
        self.input_buffer = allocate(shape=(self.max_parallel_send,), dtype=self.INPUT_TYPE)
        self.output_buffer = allocate(shape=(self.max_parallel_send,), dtype=self.OUTPUT_TYPE)

        print(f"Using {self.max_parallel_send}x type with input: {self.INPUT_TYPE.itemsize * 8} bits, and output: {self.OUTPUT_TYPE.itemsize * 8} bits")

    def _check_correct_overlay(self, encrypt):
        if encrypt:
            if self.IS_ENCRYPTOR:
                pass
            else:
                self._init_overlay(self.bitstream_encryptor)
                self.IS_ENCRYPTOR = True
        else:
            if self.IS_ENCRYPTOR:
                self._init_overlay(self.bitstream_decryptor)
                self.IS_ENCRYPTOR = False
            else:
                pass

    def _init_overlay(self, bitstream_path):
        if hasattr(self, "overlay"):
            del self.overlay
        self.overlay = Overlay(bitstream_path)
        self.dma = self.overlay.axi_dma_0
        self.dma_send = self.dma.sendchannel
        self.dma_recv = self.dma.recvchannel

    def _pad_string(self, message):
        padding_needed = self.size_of_message - (len(message) % self.size_of_message) if len(message) % self.size_of_message != 0 else 0
        message += b'\0' * padding_needed
        return message
    
    def _unpad_string(self, message):
        return message.rstrip(b'\0')


    def _send_data(self, message_bytes, key_bytes):
        iterations = math.ceil(len(message_bytes) / self.size_of_message)

        for i in range(iterations):
            part = message_bytes[self.size_of_message * i : self.size_of_message * (i + 1)]
            if self.logging:
                print(f"Now sending part({i}, {self.size_of_message * i}): {part}, {part.hex()}, with key: {key_bytes}, {key_bytes.hex()}")
            self.input_buffer[i] = (part[::-1], key_bytes[::-1])

        # Do AXI DMA MM2S transfer
        self.dma_send.transfer(self.input_buffer)
        # Do AXI DMA S2MM transfer
        self.dma_recv.transfer(self.output_buffer)
        
        self.dma_send.wait()
        self.dma_recv.wait()

        output_hex = "".join([self.output_buffer[i].tobytes()[::-1].hex() for i in range(iterations)])
        return output_hex
       
    def encrypt_bytes(self, message_bytes, key_bytes):
        assert len(message_bytes) == self.size_of_message
        assert len(key_bytes) == self.size_of_key
        self._check_correct_overlay(True)
        return self._send_data(message_bytes, key_bytes)
        

    def encrypt(self, message, key):
        """
        Encrypts the given message using the given key.

        Args:
            message (str): The message to encrypt.
            key (str): The encryption key.

        Returns:
            str: A hexadecimal string representing the encrypted output.
        """

        self._check_correct_overlay(True)
        
        message_bytes = bytes(message, "ascii")
        
        message_bytes = self._pad_string(message_bytes)
        if len(key) != self.size_of_key:
            raise ValueError(f"Key must be {self.size_of_key} bytes, got {len(key)}")
        
        key_bytes = bytes(key, "ascii")

        return self._send_data(message_bytes, key_bytes)

    def decrypt(self, encrypted_message, key):
        """
        Decrypts the given encrypted message using the given key.

        Args:
            encrypted_message (str): The encrypted message to decrypt.
            key (str): The decryption key.

        Returns:
            str: The decrypted message.
        """

        self._check_correct_overlay(False)
        encrypted_message_bytes = bytes(encrypted_message, 'ascii')
        encrypted_message_bytes = self._pad_string(encrypted_message_bytes)

        if len(key) != self.size_of_key:
            raise ValueError(f"Key must be {self.size_of_key} bytes, got {len(key)}")

        key_bytes = bytes(key, "ascii")
            
        return self._send_data(encrypted_message_bytes, key_bytes)
    
    def __del__(self):
        """
        Destructor to deallocate buffers and prevent memory leaks.
        Also clears the active instance if this instance was active.
        """
        if hasattr(self, 'input_buffer'):
            del self.input_buffer
        if hasattr(self, 'output_buffer'):
            del self.output_buffer
            
    def __enter__(self):
        return self
    
    def __exit__(self, type, value, traceback):
        del self
            
class SDESEncryptor(BaseFPGAEncryptor):
    """
    Implementation of Simplified DES (SDES) encryption using FPGA.
    
    The message should contain 8 bits.
    The key should contain 3 zeros, and then a value from 0x000 to 0x3FF. This is because the key should be 10 bits, but the AXI interface only supports transfers of a total of 32 bits).
    Your result will be in the last 2 bytes of the returned hex (Also a 32 bit value, because of axi limitations)
    """
    def __init__(self, logging=True, max_parallel_send=2**4):
        super().__init__(1, 3, 4, "./sdes_encrypt.bit", "./sdes_decrypt.bit", logging, max_parallel_send)

class DESEncryptor(BaseFPGAEncryptor):
    """
    Implementation of DES encryption using FPGA.
    """
    def __init__(self, logging=True, max_parallel_send=2**4):
        super().__init__(8, 8, 8, "./des_encrypt.bit", "./des_decrypt.bit", logging, max_parallel_send)


class TDESEncryptor(BaseFPGAEncryptor):
    """
    Implementation of Triple DES encryption using FPGA.
    """
    def __init__(self, logging=True, max_parallel_send=2**4):
        super().__init__(8, 24, 8, "./tdes_encrypt.bit", "./tdes_decrypt.bit", logging, max_parallel_send)


class DESLEncryptor(BaseFPGAEncryptor):
    """
    Implementation of DES-like encryption using FPGA.
    """
    def __init__(self, logging=True, max_parallel_send=2**4):
        super().__init__(8, 8, 8, "./desl_encrypt.bit", "./desl_decrypt.bit", logging, max_parallel_send)

class DESXEncryptor(BaseFPGAEncryptor):
    """
    Implementation of DES-like encryption using FPGA.
    """
    def __init__(self, logging=True, max_parallel_send=2**4):
        super().__init__(8, 8, 8, "./desx_encrypt.bit", "./desx_decrypt.bit", logging, max_parallel_send)   

class DESXLEncryptor(BaseFPGAEncryptor):
    """
    Implementation of DES-like encryption using FPGA.
    """
    def __init__(self, logging=True, max_parallel_send=2**4):
        super().__init__(8, 8, 8, "./desxl_encrypt.bit", "./desxl_decrypt.bit", logging, max_parallel_send)

