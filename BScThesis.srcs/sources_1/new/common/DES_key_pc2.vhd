----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:03:57 PM
-- Design Name: 
-- Module Name: DES_key_pc2 - Behavioral
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

ENTITY DES_key_pc2 IS
    PORT (
        inp : IN STD_LOGIC_VECTOR(0 TO 55);
        outp : OUT STD_LOGIC_VECTOR(0 TO 47)
        );
END DES_key_pc2;

ARCHITECTURE Behavioral OF DES_key_pc2 IS
    TYPE t_Permutation_table IS ARRAY (0 TO 47) OF INTEGER RANGE 0 TO 55;

    CONSTANT pc2 : t_Permutation_table := (13, 16, 10, 23, 0, 4, 2, 27,
                                        14, 5, 20, 9, 22, 18, 11, 3,
                                        25, 7, 15, 6, 26, 19, 12, 1,
                                        40, 51, 30, 36, 46, 54, 29, 39,
                                        50, 44, 32, 47, 43, 48, 38, 55,
                                        33, 52, 45, 41, 49, 35, 28, 31);
BEGIN
    swapbits : FOR i IN 0 TO 47 GENERATE
            outp(i) <= inp(pc2(i));
        END GENERATE swapbits;
    END Behavioral;