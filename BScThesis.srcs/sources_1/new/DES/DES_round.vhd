----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:03:57 PM
-- Design Name: 
-- Module Name: DES_round - Behavioral
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

ENTITY DES_round IS
    PORT (
        inp_left : IN STD_LOGIC_VECTOR(0 TO 31);
        inp_right : IN STD_LOGIC_VECTOR(0 TO 31);
        key : IN STD_LOGIC_VECTOR(0 TO 47);
        outp_left : OUT STD_LOGIC_VECTOR(0 TO 31);
        outp_right : OUT STD_LOGIC_VECTOR(0 TO 31)
    );
END DES_round;

ARCHITECTURE Behavioral OF DES_round IS

    COMPONENT DES_expand IS
        PORT (
            inp : IN STD_LOGIC_VECTOR(0 TO 31);
            outp : OUT STD_LOGIC_VECTOR(0 TO 47)
        );
    END COMPONENT;
    COMPONENT DES_sbox IS
        PORT (
            inp : IN STD_LOGIC_VECTOR(0 TO 47);
            outp : OUT STD_LOGIC_VECTOR(0 TO 31)
        );
    END COMPONENT;
    COMPONENT DES_permutate IS
        PORT (
            inp : IN STD_LOGIC_VECTOR(0 TO 31);
            outp : OUT STD_LOGIC_VECTOR(0 TO 31)
        );
    END COMPONENT;

    SIGNAL expanded, mixed : STD_LOGIC_VECTOR(0 TO 47);
    SIGNAL substituted, permutated : STD_LOGIC_VECTOR(0 TO 31);

BEGIN

    -- Expand the right half of the input
    expand : DES_expand PORT MAP(
        inp => inp_right,
        outp => expanded
    );

    -- XOR with the key
    xor_key : PROCESS (inp_left, expanded, key)
    BEGIN
        FOR i IN 0 TO 47 LOOP
            mixed(i) <= expanded(i) XOR key(i);
        END LOOP;
    END PROCESS xor_key;

    -- Substitute using S-boxes
    sbox : DES_sbox PORT MAP(
        inp => mixed,
        outp => substituted
    );
    -- Permutate the substituted output
    permute : DES_permutate PORT MAP(
        inp => substituted,
        outp => permutated
    );

    -- Swap the left and right halves and XOR with the permutated output
    outp_left <= inp_right;
    outp_right <= inp_left XOR permutated;
END Behavioral;