----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2025 01:48:39 PM
-- Design Name: 
-- Module Name: TDES_decrypt - Behavioral
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

ENTITY TDES_decrypt IS
    PORT (
        inp : IN STD_LOGIC_VECTOR(0 TO 63);    -- Ciphertext
        key : IN STD_LOGIC_VECTOR(0 TO 63);   -- First key
        key1 : IN STD_LOGIC_VECTOR(0 TO 63);   -- Second key
        key2 : IN STD_LOGIC_VECTOR(0 TO 63);   -- Third key
        outp : OUT STD_LOGIC_VECTOR(0 TO 63)   -- Plaintext
    );
END TDES_decrypt;

ARCHITECTURE Behavioral OF TDES_decrypt IS
COMPONENT DES_encrypt
PORT (
    inp : IN STD_LOGIC_VECTOR(0 TO 63);
    key : IN STD_LOGIC_VECTOR(0 TO 63);
    outp : OUT STD_LOGIC_VECTOR(0 TO 63)
);
END COMPONENT;

COMPONENT DES_decrypt
PORT (
    inp : IN STD_LOGIC_VECTOR(0 TO 63);
    key : IN STD_LOGIC_VECTOR(0 TO 63);
    outp : OUT STD_LOGIC_VECTOR(0 TO 63)
);
END COMPONENT;

SIGNAL first_dec_out : STD_LOGIC_VECTOR(0 TO 63);
SIGNAL enc_out : STD_LOGIC_VECTOR(0 TO 63);

BEGIN
    -- First decryption with key2
    first_dec : DES_decrypt
    PORT MAP (
        inp => inp,
        key => key2,
        outp => first_dec_out
    );

    -- Encryption with key1
    enc : DES_encrypt
    PORT MAP (
        inp => first_dec_out,
        key => key1,
        outp => enc_out
    );

    -- Final decryption with key
    final_dec : DES_decrypt
    PORT MAP (
        inp => enc_out,
        key => key,
        outp => outp
    );

END Behavioral; 