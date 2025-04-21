----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:03:57 PM
-- Design Name: 
-- Module Name: DES_sbox5 - Behavioral
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

ENTITY DES_sbox5 IS
    PORT (
        inp : IN STD_LOGIC_VECTOR(0 TO 5);
        outp : OUT STD_LOGIC_VECTOR(0 TO 3)
        );
END DES_sbox5;

ARCHITECTURE Behavioral OF DES_sbox5 IS
    CONSTANT sbox : t_Sbox_table := (
        (2, 12, 4, 1, 7, 10, 11, 6, 8, 5, 3, 15, 13, 0, 14, 9),
        (14, 11, 2, 12, 4, 7, 13, 1, 5, 0, 15, 10, 3, 9, 8, 6),
        (4, 2, 1, 11, 10, 13, 7, 8, 15, 9, 12, 5, 6, 3, 0, 14),
        (11, 8, 12, 7, 1, 14, 2, 13, 6, 15, 0, 9, 10, 4, 5, 3)
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