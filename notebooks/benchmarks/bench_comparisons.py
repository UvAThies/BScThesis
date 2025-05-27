import sys 
import os
# This is needed for imports to local python modules to work!
sys.path.append(os.path.abspath("/home/xilinx/jupyter_notebooks/thies/notebooks"))

from fpga_implementation import DESEncryptor,  DESLEncryptor, DESXEncryptor, DESXLEncryptor, SDESEncryptor, TDESEncryptor
from pydes_implementation import PyDES, PyTDES

global_test_vectors = [
    {"message": "ABCDEFGH", "key": "12345678"},
    {"message": "ABCDEFGHabcdefgh", "key": "12345678"},
    {"message": "ABCDEFG", "key": "12345678"},
    {"message": "", "key": "12345678"},
    {"message": "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456", "key": "12345678"},
    {"message": "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456ABCDEFGHIJKLMNOPQRSTUVWXYZ123456ABCDEFGHIJKLMNOPQRSTUVWXYZ123456", "key": "12345678"},
]

pydes_encryptor = None
pytdes_encryptor = None
des_encryptor = None
desl_encryptor = None
desx_encryptor = None
desxl_encryptor = None
sdes_encryptor = None
tdes_encryptor = None


def setup(max_parallel_send):
    global des_encryptor, desl_encryptor, desx_encryptor, desxl_encryptor, sdes_encryptor, tdes_encryptor, pydes_encryptor, pytdes_encryptor
    pydes_encryptor = PyDES()
    pytdes_encryptor = PyTDES()
    des_encryptor = DESEncryptor(max_parallel_send=max_parallel_send, logging=False) 
    desl_encryptor = DESLEncryptor(max_parallel_send=max_parallel_send, logging=False)
    desx_encryptor = DESXEncryptor(max_parallel_send=max_parallel_send, logging=False)
    desxl_encryptor = DESXLEncryptor(max_parallel_send=max_parallel_send, logging=False)
    sdes_encryptor = SDESEncryptor(max_parallel_send=max_parallel_send, logging=False)
    tdes_encryptor = TDESEncryptor(max_parallel_send=max_parallel_send, logging=False)


def algo(algorithm, test_vectors, encrypt=True):
    return lambda: [algorithm.encrypt(test_vector["message"], test_vector["key"]) if encrypt else algorithm.decrypt(test_vector["message"], test_vector["key"]) for test_vector in test_vectors]


max_test_vectors = [
    (x, {"message": "A" * 8 * x, "key": "12345678"}) for x in [2**4]
    # (x, {"message": "A" * 8 * x, "key": "12345678"}) for x in [2**4, 2**6, 2**8, 2**10]
]

def noop():
    pass

__benchmarks_thies__ = [
     *[(setup, (amt, ), algo(des_encryptor, test_vectors, True), noop, "des-encrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup, (amt, ), algo(des_encryptor, test_vectors, False), noop, "des-decrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup, (amt, ), algo(desl_encryptor, test_vectors, True), noop, "desl-encrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup, (amt, ), algo(desl_encryptor, test_vectors, False), noop, "desl-decrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup, (amt, ),  algo(desx_encryptor, test_vectors, True), noop, "desx-encrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup, (amt, ),  algo(desx_encryptor, test_vectors, False), noop, "desx-decrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup, (amt, ),  algo(desxl_encryptor, test_vectors, True), noop, "desxl-encrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup, (amt, ), algo(desxl_encryptor, test_vectors, False), noop, "desxl-decrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup, (amt, ), algo(sdes_encryptor, test_vectors, True), noop, "sdes-encrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup, (amt, ), algo(sdes_encryptor, test_vectors, False), noop, "sdes-decrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup, (amt, ), algo(tdes_encryptor, test_vectors, True), noop, "tdes-encrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup, (amt, ), algo(tdes_encryptor, test_vectors, False), noop, "tdes-decrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup, (amt, ), algo(pydes_encryptor, test_vectors, True), noop, "pydes-encrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup, (amt, ), algo(pydes_encryptor, test_vectors, False), noop, "pydes-decrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup, (amt, ), algo(pytdes_encryptor, test_vectors, True), noop, "pytdes-encrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup, (amt, ), algo(pytdes_encryptor, test_vectors, False), noop, "pytdes-decrypt") for (amt, test_vectors) in max_test_vectors],
]
