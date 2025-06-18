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


des_encryptor = None
desl_encryptor = None
desx_encryptor = None
desxl_encryptor = None
sdes_encryptor = None
tdes_encryptor = None
pydes_encryptor = PyDES()
pytdes_encryptor = PyTDES()


def setup_des(max_parallel_send):
    global des_encryptor
    des_encryptor = DESEncryptor(max_parallel_send=max_parallel_send, logging=False)

def setup_desl(max_parallel_send):
    global desl_encryptor
    desl_encryptor = DESLEncryptor(max_parallel_send=max_parallel_send, logging=False)

def setup_desx(max_parallel_send):
    global desx_encryptor
    desx_encryptor = DESXEncryptor(max_parallel_send=max_parallel_send, logging=False)

def setup_desxl(max_parallel_send):
    global desxl_encryptor
    desxl_encryptor = DESXLEncryptor(max_parallel_send=max_parallel_send, logging=False)

def setup_sdes(max_parallel_send):
    global sdes_encryptor
    sdes_encryptor = SDESEncryptor(max_parallel_send=max_parallel_send, logging=False)

def setup_tdes(max_parallel_send):
    global tdes_encryptor
    tdes_encryptor = TDESEncryptor(max_parallel_send=max_parallel_send, logging=False)

def breakdown():
    global des_encryptor, desl_encryptor, desx_encryptor, desxl_encryptor, sdes_encryptor, tdes_encryptor, pydes_encryptor, pytdes_encryptor
    des_encryptor = None
    desl_encryptor = None
    desx_encryptor = None
    desxl_encryptor = None
    sdes_encryptor = None
    tdes_encryptor = None

def des(test_vectors, encrypt=True):
    return [des_encryptor.encrypt(test_vector["message"], test_vector["key"]) if encrypt else des_encryptor.decrypt(test_vector["message"], test_vector["key"]) for test_vector in test_vectors]

def desl(test_vectors, encrypt=True):
    return [desl_encryptor.encrypt(test_vector["message"], test_vector["key"]) if encrypt else desl_encryptor.decrypt(test_vector["message"], test_vector["key"]) for test_vector in test_vectors]

def desx(test_vectors, encrypt=True):
    return [desx_encryptor.encrypt(test_vector["message"], test_vector["key"]) if encrypt else desx_encryptor.decrypt(test_vector["message"], test_vector["key"]) for test_vector in test_vectors]

def desxl(test_vectors, encrypt=True):
    return [desxl_encryptor.encrypt(test_vector["message"], test_vector["key"]) if encrypt else desxl_encryptor.decrypt(test_vector["message"], test_vector["key"]) for test_vector in test_vectors]

def sdes(test_vectors, encrypt=True):
    return [sdes_encryptor.encrypt(test_vector["message"], test_vector["key"]) if encrypt else sdes_encryptor.decrypt(test_vector["message"], test_vector["key"]) for test_vector in test_vectors]

def tdes(test_vectors, encrypt=True):
    return [tdes_encryptor.encrypt(test_vector["message"], test_vector["key"]) if encrypt else tdes_encryptor.decrypt(test_vector["message"], test_vector["key"]) for test_vector in test_vectors]

def pydes(test_vectors, encrypt=True):
    return [pydes_encryptor.encrypt(test_vector["message"], test_vector["key"]) if encrypt else pydes_encryptor.decrypt(test_vector["message"], test_vector["key"]) for test_vector in test_vectors]

def pytdes(test_vectors, encrypt=True):
    return [pytdes_encryptor.encrypt(test_vector["message"], test_vector["key"]) if encrypt else pytdes_encryptor.decrypt(test_vector["message"], test_vector["key"]) for test_vector in test_vectors]

max_test_vectors = [
#     (x, [*global_test_vectors, {"message": "A" * 8 * x, "key": "12345678"}]) for x in [2 ** 4, 2**12]
    (x, [{"message": "A" * 8 * x, "key": "12345678"}]) for x in [2 ** 4, 2**12]
]


max_test_vectors_SDES = [
#     (x, [*global_test_vectors, {"message": "A" * 8 * x, "key": "12345678"}]) for x in [2 ** 4, 2**12]
    (x, [{"message": "A" * 1 * x, "key": "12345678"}]) for x in [2**12]
]

def noop(tmp):
    pass

__benchmarks_thies__ = [
     *[(setup_des, (amt, ), breakdown, des, noop, test_vectors, "des-encrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup_des, (amt, ), breakdown, des, noop, test_vectors, "des-decrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup_desl, (amt, ), breakdown, desl, noop, test_vectors, "desl-encrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup_desl, (amt, ), breakdown, desl, noop, test_vectors, "desl-decrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup_desx, (amt, ), breakdown, desx, noop, test_vectors, "desx-encrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup_desx, (amt, ), breakdown, desx, noop, test_vectors, "desx-decrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup_desxl, (amt, ), breakdown, desxl, noop, test_vectors, "desxl-encrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup_desxl, (amt, ), breakdown, desxl, noop, test_vectors, "desxl-decrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup_sdes, (amt, ),  breakdown,sdes, noop,  [{"message": vector["message"], "key": "123"} for vector in test_vectors], "sdes-encrypt") for (amt, test_vectors) in max_test_vectors_SDES],
     *[(setup_sdes, (amt, ), breakdown, sdes, noop, [{"message": vector["message"], "key": "123"} for vector in test_vectors], "sdes-decrypt") for (amt, test_vectors) in max_test_vectors_SDES],
     *[(setup_tdes, (amt, ), breakdown, tdes, noop, [{"message": vector["message"], "key": vector["key"] * 3} for vector in test_vectors], "tdes-encrypt") for (amt, test_vectors) in max_test_vectors],
     *[(setup_tdes, (amt, ), breakdown, tdes, noop, [{"message": vector["message"], "key": vector["key"] * 3} for vector in test_vectors], "tdes-decrypt") for (amt, test_vectors) in max_test_vectors],
     *[(noop, (amt, ), breakdown, pydes, noop, test_vectors, "pydes-encrypt") for (amt, test_vectors) in max_test_vectors],
     *[(noop, (amt, ), breakdown, pydes, noop, test_vectors, "pydes-decrypt") for (amt, test_vectors) in max_test_vectors],
     *[(noop, (amt, ), breakdown, pytdes, noop, [{"message": vector["message"], "key": vector["key"] * 3} for vector in test_vectors], "pytdes-encrypt") for (amt, test_vectors) in max_test_vectors],
     *[(noop, (amt, ), breakdown, pytdes, noop, [{"message": vector["message"], "key": vector["key"] * 3} for vector in test_vectors], "pytdes-decrypt") for (amt, test_vectors) in max_test_vectors],
]
