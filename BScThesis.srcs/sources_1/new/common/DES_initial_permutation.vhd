----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:03:57 PM
-- Design Name: 
-- Module Name: DES_initial_permutation - Behavioral
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

ENTITY DES_initial_permutation IS
    GENERIC (
        IS_INVERSE : BOOLEAN
    );
    PORT (
        inp : IN STD_LOGIC_VECTOR(0 TO 63);
        outp : OUT STD_LOGIC_VECTOR(0 TO 63));
END DES_initial_permutation;

ARCHITECTURE Behavioral OF DES_initial_permutation IS

    TYPE t_Permutation_table IS ARRAY (0 TO 63) OF INTEGER RANGE 0 TO 63;

    CONSTANT ip : t_Permutation_table :=
    (57, 49, 41, 33, 25, 17, 9, 1, 59, 51, 43, 35, 27, 19, 11, 3, 61, 53, 45, 37, 29, 21, 13, 5, 63, 55, 47, 39, 31, 23, 15, 7, 56, 48, 40, 32, 24, 16, 8, 0, 58, 50, 42, 34, 26, 18, 10, 2, 60, 52, 44, 36, 28, 20, 12, 4, 62, 54, 46, 38, 30, 22, 14, 6);

    CONSTANT ip_inv : t_Permutation_table :=
    (39, 7, 47, 15, 55, 23, 63, 31, 38, 6, 46, 14, 54, 22, 62, 30, 37, 5, 45, 13, 53, 21, 61, 29, 36, 4, 44, 12, 52, 20, 60, 28, 35, 3, 43, 11, 51, 19, 59, 27, 34, 2, 42, 10, 50, 18, 58, 26, 33, 1, 41, 9, 49, 17, 57, 25, 32, 0, 40, 8, 48, 16, 56, 24);

BEGIN
    swapbits : FOR i IN 0 TO 63 GENERATE
        inverse : IF (IS_INVERSE) GENERATE
                outp(i) <= inp(ip_inv(i));
        ELSE
            GENERATE
                outp(i) <= inp(ip(i));
            END GENERATE inverse;
        END GENERATE swapbits;
    END Behavioral;