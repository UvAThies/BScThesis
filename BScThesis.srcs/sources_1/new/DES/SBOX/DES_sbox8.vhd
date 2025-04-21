----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:03:57 PM
-- Design Name: 
-- Module Name: DES_sbox8 - Behavioral
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

ENTITY DES_sbox8 IS
    PORT (
        inp : IN STD_LOGIC_VECTOR(0 TO 5);
        outp : OUT STD_LOGIC_VECTOR(0 TO 3)
        );
END DES_sbox8;

ARCHITECTURE Behavioral OF DES_sbox8 IS
    CONSTANT sbox : t_Sbox_table := (
        (13, 2, 8, 4, 6, 15, 11, 1, 10, 9, 3, 14, 5, 0, 12, 7),
        (1, 15, 13, 8, 10, 3, 7, 4, 12, 5, 6, 11, 0, 14, 9, 2),
        (7, 11, 4, 1, 9, 12, 14, 2, 0, 6, 10, 13, 15, 3, 5, 8),
        (2, 1, 14, 7, 4, 10, 8, 13, 15, 12, 9, 0, 3, 5, 6, 11)
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