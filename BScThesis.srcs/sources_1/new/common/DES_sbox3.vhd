----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:03:57 PM
-- Design Name: 
-- Module Name: DES_sbox3 - Behavioral
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

ENTITY DES_sbox3 IS
    PORT (
        inp : IN STD_LOGIC_VECTOR(0 TO 5);
        outp : OUT STD_LOGIC_VECTOR(0 TO 3)
        );
END DES_sbox3;

ARCHITECTURE Behavioral OF DES_sbox3 IS
    CONSTANT sbox : t_Sbox_table := (
        (10, 0, 9, 14, 6, 3, 15, 5, 1, 13, 12, 7, 11, 4, 2, 8),
        (13, 7, 0, 9, 3, 4, 6, 10, 2, 8, 5, 14, 12, 11, 15, 1),
        (13, 6, 4, 9, 8, 15, 3, 0, 11, 1, 2, 12, 5, 10, 14, 7),
        (1, 10, 13, 0, 6, 9, 8, 7, 4, 15, 14, 3, 11, 5, 2, 12)
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