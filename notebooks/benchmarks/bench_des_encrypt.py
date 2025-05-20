import sys 
import os
# This is needed for imports to local python modules to work!
sys.path.append(os.path.abspath("/home/xilinx/jupyter_notebooks/thies/notebooks"))

from fpga_implementation import DESEncryptor, BaseFPGAEncryptor
from pydes_implementation import PyDES

test_vectors = [
    {"message": "ABCDEFGH", "key": "12345678"},
    {"message": "ABCDEFGHabcdefgh", "key": "12345678"},
    {"message": "ABCDEFG", "key": "12345678"},
    {"message": "", "key": "12345678"},
    {"message": "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456", "key": "12345678"},
    {"message": "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456ABCDEFGHIJKLMNOPQRSTUVWXYZ123456ABCDEFGHIJKLMNOPQRSTUVWXYZ123456", "key": "12345678"},
]

max_parallel_send=2**4

fpga_encryptor = DESEncryptor(max_parallel_send=max_parallel_send, logging=False) 
pyDes_encryptor = PyDES()


def pydes():
    for _ in range(1):
        for test_vector in test_vectors:
            message = test_vector["message"]
            key = test_vector["key"]
            pyDes_encryptor.encrypt(message, key)

def fpga():
    for _ in range(1):
         for test_vector in test_vectors:
            message = test_vector["message"]
            key = test_vector["key"]
            fpga_encryptor.encrypt(message, key)


__benchmarks__ = [
    (pydes, fpga, "Using FPGA instead of PyDES")
]