----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2025 01:48:39 PM
-- Design Name: 
-- Module Name: DESX_encrypt - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.pkg.ALL;

ENTITY DESX_encrypt IS
    PORT (
        inp : IN STD_LOGIC_VECTOR(0 TO 63);    -- Plaintext
        key : IN STD_LOGIC_VECTOR(0 TO 63);    -- Main DES key
        key1 : IN STD_LOGIC_VECTOR(0 TO 63);   -- First additional key
        key2 : IN STD_LOGIC_VECTOR(0 TO 63);   -- Second additional key
        outp : OUT STD_LOGIC_VECTOR(0 TO 63)   -- Ciphertext
    );
END DESX_encrypt;

ARCHITECTURE Behavioral OF DESX_encrypt IS
COMPONENT DES_initial_permutation
GENERIC (
    IS_INVERSE : BOOLEAN
);
PORT (
    inp : IN STD_LOGIC_VECTOR(0 TO 63);
    outp : OUT STD_LOGIC_VECTOR(0 TO 63)
);
END COMPONENT;

COMPONENT DES_key_schedule
PORT (
    inp : IN STD_LOGIC_VECTOR(0 TO 63);
    outp : OUT t_keys
);
END COMPONENT;

COMPONENT DES_round
PORT (
    inp_left : IN STD_LOGIC_VECTOR(0 TO 31);
    inp_right : IN STD_LOGIC_VECTOR(0 TO 31);
    key : IN STD_LOGIC_VECTOR(0 TO 47);
    outp_left : OUT STD_LOGIC_VECTOR(0 TO 31);
    outp_right : OUT STD_LOGIC_VECTOR(0 TO 31)
);
END COMPONENT;

SIGNAL keys_outp : t_keys;
SIGNAL left : t_rounds;
SIGNAL right : t_rounds;
SIGNAL xor_with_k1 : STD_LOGIC_VECTOR(0 TO 63);
SIGNAL ip_outp : STD_LOGIC_VECTOR(0 TO 63);
SIGNAL ip_inv_outp : STD_LOGIC_VECTOR(0 TO 63);
SIGNAL des_output : STD_LOGIC_VECTOR(0 TO 63);

BEGIN
    -- First XOR with K1
    xor_with_k1 <= inp XOR key1;
    
    -- Initial permutation
    ip_instance : DES_initial_permutation
    GENERIC MAP (IS_INVERSE => FALSE)
    PORT MAP (
        inp => xor_with_k1,
        outp => ip_outp
    );
    
    -- Initialize left and right with permuted input
    left(0) <= ip_outp(0 TO 31);
    right(0) <= ip_outp(32 TO 63);

    -- Generate round keys
    key_gen_instance : DES_key_schedule
    PORT MAP (
        inp => key,
        outp => keys_outp
    );

    -- Generate 16 rounds
    u0: FOR i IN 0 TO 15 GENERATE
        round_instance : DES_round
        PORT MAP (
            inp_left => left(i),
            inp_right => right(i),
            key => keys_outp(i),
            outp_left => left(i + 1),
            outp_right => right(i + 1)
        );
    END GENERATE u0;

    -- Combine final round output
    des_output <= right(16) & left(16);
    
    -- Inverse permutation
    ip_inv_instance : DES_initial_permutation
    GENERIC MAP (IS_INVERSE => TRUE)
    PORT MAP (
        inp => des_output,
        outp => ip_inv_outp
    );
    
    -- Final XOR with K2
    outp <= ip_inv_outp XOR key2;
END Behavioral; 