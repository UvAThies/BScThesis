----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:03:57 PM
-- Design Name: 
-- Module Name: DES_key_pc1 - Behavioral
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

ENTITY DES_key_pc1 IS
    PORT (
        inp : IN STD_LOGIC_VECTOR(0 TO 63);
        outp_left : OUT STD_LOGIC_VECTOR(0 TO 27);
        outp_right : OUT STD_LOGIC_VECTOR(0 TO 27)
        );
END DES_key_pc1;

ARCHITECTURE Behavioral OF DES_key_pc1 IS
    TYPE t_Permutation_table IS ARRAY (0 TO 27) OF INTEGER RANGE 0 TO 63;

    constant pc1_left : t_Permutation_table := (56, 48, 40, 32, 24, 16, 8,
                                                0, 57, 49, 41, 33, 25, 17,
                                                9, 1, 58, 50, 42, 34, 26,
                                                18, 10, 2, 59, 51, 43, 35);
    constant pc1_right : t_Permutation_table := (62, 54, 46, 38, 30, 22, 14,
                                                 6, 61, 53, 45, 37, 29, 21,
                                                 13, 5, 60, 52, 44, 36, 28,
                                                 20, 12, 4, 27, 19, 11, 3);
BEGIN
    swapbits : FOR i IN 0 TO 27 GENERATE
            outp_left(i) <= inp(pc1_left(i));
            outp_right(i) <= inp(pc1_right(i));
        END GENERATE swapbits;
    END Behavioral;