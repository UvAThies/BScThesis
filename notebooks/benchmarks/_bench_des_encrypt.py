import sys 
import os
# This is needed for imports to local python modules to work!
sys.path.append(os.path.abspath("/home/xilinx/jupyter_notebooks/thies/notebooks"))

from fpga_implementation import DESEncryptor, BaseFPGAEncryptor
from pydes_implementation import PyDES

global_test_vectors = [
    {"message": "ABCDEFGH", "key": "12345678"},
    {"message": "ABCDEFGHabcdefgh", "key": "12345678"},
    {"message": "ABCDEFG", "key": "12345678"},
    {"message": "", "key": "12345678"},
    {"message": "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456", "key": "12345678"},
    {"message": "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456ABCDEFGHIJKLMNOPQRSTUVWXYZ123456ABCDEFGHIJKLMNOPQRSTUVWXYZ123456", "key": "12345678"},
]

fpga_encryptor = None
pyDes_encryptor = None

def setup(max_parallel_send):
    global fpga_encryptor, pyDes_encryptor
    fpga_encryptor = DESEncryptor(max_parallel_send=max_parallel_send, logging=False) 
    pyDes_encryptor = PyDES()

    
def pydes(test_vectors):
    for _ in range(1):
        for test_vector in test_vectors:
            message = test_vector["message"]
            key = test_vector["key"]
            pyDes_encryptor.encrypt(message, key)

def fpga(test_vectors):
    for _ in range(1):
         for test_vector in test_vectors:
            message = test_vector["message"]
            key = test_vector["key"]
            fpga_encryptor.encrypt(message, key)


# For richbench
# setup(2**4)
# __benchmarks__ = [
#     (pydes, fpga, "des-encrypt - Using FPGA instead of PyDES")
# ]

__benchmarks_thies__ = [
     (setup, (x, ), pydes, fpga, [*global_test_vectors, {
         "message": "A" * 8 * x, "key": "12345678"}], "des-encrypt") for x in [2**4, 2**6, 2**8, 2**10]
]
