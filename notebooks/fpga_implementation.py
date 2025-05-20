from pynq import Overlay, allocate
import numpy as np
import math

from standard import Encryptor

class BaseFPGAEncryptor(Encryptor):
    """
    Base class for FPGA-based encryption algorithms.
    """

    IS_ENCRYPTOR = True
    _active_instance = None  # Class variable to track active instance

    def __init__(self, size_of_algo, bitstream_encryptor, bitstream_decryptor, logging=True, max_parallel_send=2**4):
        """
        Initializes the FPGA Encryptor with the provided bitstream.

        Args:
            size_of_algo (int): The size of the algorithm in bytes.
            bitstream_path (str): Path to the bitstream file.
            logging (boolean, default = True): Extra logging to debug message sending.
            max_parallel_send (int, default = 2**4): The maximal amount of memory to send at once.
        """
        # Check if another instance is active
        if BaseFPGAEncryptor._active_instance is not None and BaseFPGAEncryptor._active_instance is not self:
            raise RuntimeError("Another FPGA encryptor instance is already active. Please delete the existing instance before creating a new one.")

        self.bitstream_encryptor = bitstream_encryptor
        self.bitstream_decryptor = bitstream_decryptor
        self._init_overlay(bitstream_encryptor)
        
        # Program bitstream to FPGA
        self.logging = logging
        
        self.SIZE_OF_ALGO = size_of_algo
        self.INPUT_TYPE = np.dtype([("message", np.bytes_, self.SIZE_OF_ALGO), ("key", np.bytes_, self.SIZE_OF_ALGO)])
        self.OUTPUT_TYPE = np.dtype([("result", np.bytes_, self.SIZE_OF_ALGO)])

        self.max_parallel_send = max_parallel_send

        # Allocate physical memory
        self.input_buffer = allocate(shape=(self.max_parallel_send,), dtype=self.INPUT_TYPE)
        self.output_buffer = allocate(shape=(self.max_parallel_send,), dtype=self.OUTPUT_TYPE)



        # Set this instance as the active instance
        BaseFPGAEncryptor._active_instance = self

        print(f"Using {self.max_parallel_send}x type with input: {self.INPUT_TYPE.itemsize * 8} bits, and output: {self.OUTPUT_TYPE.itemsize * 8} bits")

    def _check_correct_overlay(self, encrypt):
        if encrypt and not self.IS_ENCRYPTOR:
            self._init_overlay(self.bitstream_encryptor)
        elif not encrypt and not self.IS_ENCRYPTOR:
            self._init_overlay(self.bitstream_decryptor)

    def _init_overlay(self, bitstream_path):
        self.overlay = Overlay(bitstream_path)
        self.dma = self.overlay.axi_dma_0
        self.dma_send = self.dma.sendchannel
        self.dma_recv = self.dma.recvchannel


    def _pad_string(self, message):
        padding_needed = self.SIZE_OF_ALGO - (len(message) % self.SIZE_OF_ALGO) if len(message) % self.SIZE_OF_ALGO != 0 else 0
        message += b'\0' * padding_needed
        return message
    
    def _unpad_string(self, message):
        return message.rstrip(b'\0')


    def _send_data(self, message_bytes, key_bytes):
        iterations = math.ceil(len(message_bytes) / self.SIZE_OF_ALGO)

        for i in range(iterations):
            part = message_bytes[self.SIZE_OF_ALGO * i : self.SIZE_OF_ALGO * (i + 1)]
            if self.logging:
                print(f"Now sending part({i}, {self.SIZE_OF_ALGO * i}): {part}, {part.hex()}, with key: {key_bytes}, {key_bytes.hex()}")
            self.input_buffer[i] = (part[::-1], key_bytes[::-1])

        # Do AXI DMA MM2S transfer
        self.dma_send.transfer(self.input_buffer)
        # Do AXI DMA S2MM transfer
        self.dma_recv.transfer(self.output_buffer)

        self.dma_send.wait()
        self.dma_recv.wait()

        return bytes([self.output_buffer[i].tobytes()[::-1] for i in range(iterations)])


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
        if len(key) != self.SIZE_OF_ALGO:
            raise ValueError(f"Key must be {self.SIZE_OF_ALGO} bytes, got {len(key)}")
        
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

        if len(key) != self.SIZE_OF_ALGO:
            raise ValueError(f"Key must be {self.SIZE_OF_ALGO} bytes, got {len(key)}")

        return self._send_data(encrypted_message_bytes, key)
    
    def __del__(self):
        """
        Destructor to deallocate buffers and prevent memory leaks.
        Also clears the active instance if this instance was active.
        """
        if hasattr(self, 'input_buffer'):
            del self.input_buffer
        if hasattr(self, 'output_buffer'):
            del self.output_buffer
        if BaseFPGAEncryptor._active_instance is self:
            BaseFPGAEncryptor._active_instance = None


class SDESEncryptor(BaseFPGAEncryptor):
    """
    Implementation of Simplified DES (SDES) encryption using FPGA.
    """
    def __init__(self, logging=True, max_parallel_send=2**4):
        super().__init__(8, "./sdes_encrypt.bit", "./sdes_decrypt.bit", logging, max_parallel_send)



class DESEncryptor(BaseFPGAEncryptor):
    """
    Implementation of DES encryption using FPGA.
    """
    def __init__(self, logging=True, max_parallel_send=2**4):
        super().__init__(8, "./des_encrypt.bit", "./des_decrypt.bit", logging, max_parallel_send)


class TDESEncryptor(BaseFPGAEncryptor):
    """
    Implementation of Triple DES encryption using FPGA.
    """
    def __init__(self, logging=True, max_parallel_send=2**4):
        super().__init__(8, "./tdes_encrypt.bit", "./tdes_decrypt.bit", logging, max_parallel_send)


