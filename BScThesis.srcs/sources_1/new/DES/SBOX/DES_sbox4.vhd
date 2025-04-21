----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:03:57 PM
-- Design Name: 
-- Module Name: DES_sbox4 - Behavioral
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
USE IEEE.NUMERIC_STD.ALL;
USE WORK.pkg.ALL;

ENTITY DES_sbox4 IS
    PORT (
        inp : IN STD_LOGIC_VECTOR(0 TO 5);
        outp : OUT STD_LOGIC_VECTOR(0 TO 3)
        );
END DES_sbox4;

ARCHITECTURE Behavioral OF DES_sbox4 IS
    CONSTANT sbox : t_Sbox_table := (
        (7, 13, 14, 3, 0, 6, 9, 10, 1, 2, 8, 5, 11, 12, 4, 15),
        (13, 8, 11, 5, 6, 15, 0, 3, 4, 7, 2, 12, 1, 10, 14, 9),
        (10, 6, 9, 0, 12, 11, 7, 13, 15, 1, 3, 14, 5, 2, 8, 4),
        (3, 15, 0, 6, 10, 1, 13, 8, 9, 4, 5, 11, 12, 7, 2, 14)
    );
BEGIN
    PROCESS(inp)
        VARIABLE row, col : INTEGER;
        VARIABLE row_vec : STD_LOGIC_VECTOR(0 TO 1);
        VARIABLE col_vec : STD_LOGIC_VECTOR(0 TO 3);
    BEGIN
        row_vec := inp(0) & inp(5);
        col_vec := inp(1 TO 4);
        row := TO_INTEGER(UNSIGNED(row_vec));
        col := TO_INTEGER(UNSIGNED(col_vec));
        outp <= STD_LOGIC_VECTOR(TO_UNSIGNED(sbox(row)(col), 4));
    END PROCESS;
END Behavioral; 