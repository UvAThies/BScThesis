----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2025 01:48:39 PM
-- Design Name: 
-- Module Name: TDES_encrypt - Behavioral
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

ENTITY TDES_encrypt IS
    PORT (
        clk : IN STD_LOGIC;                    -- Clock input
        rst : IN STD_LOGIC;                    -- Reset input
        inp : IN STD_LOGIC_VECTOR(0 TO 63);    -- Plaintext
        key : IN STD_LOGIC_VECTOR(0 TO 63);    -- First key
        key1 : IN STD_LOGIC_VECTOR(0 TO 63);   -- Second key
        key2 : IN STD_LOGIC_VECTOR(0 TO 63);   -- Third key
        outp : OUT STD_LOGIC_VECTOR(0 TO 63)   -- Ciphertext
    );
END TDES_encrypt;

ARCHITECTURE Behavioral OF TDES_encrypt IS
COMPONENT DES_encrypt
PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    inp : IN STD_LOGIC_VECTOR(0 TO 63);
    key : IN STD_LOGIC_VECTOR(0 TO 63);
    outp : OUT STD_LOGIC_VECTOR(0 TO 63)
);
END COMPONENT;

COMPONENT DES_decrypt
PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    inp : IN STD_LOGIC_VECTOR(0 TO 63);
    key : IN STD_LOGIC_VECTOR(0 TO 63);
    outp : OUT STD_LOGIC_VECTOR(0 TO 63)
);
END COMPONENT;

SIGNAL first_enc_out : STD_LOGIC_VECTOR(0 TO 63);
SIGNAL dec_out : STD_LOGIC_VECTOR(0 TO 63);

BEGIN
    -- First encryption with key1
    first_enc : DES_encrypt
    PORT MAP (
        clk => clk,
        rst => rst,
        inp => inp,
        key => key,
        outp => first_enc_out
    );

    -- Decryption with key2
    dec : DES_decrypt
    PORT MAP (
        clk => clk,
        rst => rst,
        inp => first_enc_out,
        key => key1,
        outp => dec_out
    );

    -- Final encryption with key3
    final_enc : DES_encrypt
    PORT MAP (
        clk => clk,
        rst => rst,
        inp => dec_out,
        key => key2,
        outp => outp
    );

END Behavioral; 