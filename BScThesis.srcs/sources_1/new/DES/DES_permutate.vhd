----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:03:57 PM
-- Design Name: 
-- Module Name: DES_permutate - Behavioral
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

ENTITY DES_permutate IS
    PORT (
        inp : IN STD_LOGIC_VECTOR(0 TO 31);
        outp : OUT STD_LOGIC_VECTOR(0 TO 31)
    );
END DES_permutate;

ARCHITECTURE Behavioral OF DES_permutate IS
    TYPE t_Permutation_table IS ARRAY (0 TO 31) OF INTEGER RANGE 0 TO 31;

    CONSTANT perm : t_Permutation_table := (15, 6, 19, 20, 28, 11, 27, 16, 0, 14, 22, 25, 4, 17, 30, 9, 1, 7, 23, 13, 31, 26, 2, 8, 18, 12, 29, 5, 21, 10, 3, 24);
BEGIN
    swapbits : FOR i IN 0 TO 31 GENERATE
        outp(i) <= inp(perm(i));
    END GENERATE swapbits;
END Behavioral;