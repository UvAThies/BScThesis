----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:03:57 PM
-- DESLign Name: 
-- Module Name: DESL_sbox - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- DESLcription: 
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

ENTITY DESL_sbox1 IS
    PORT (
        inp : IN STD_LOGIC_VECTOR(0 TO 5);
        outp : OUT STD_LOGIC_VECTOR(0 TO 3)
    );
END DESL_sbox1;

ARCHITECTURE Behavioral OF DESL_sbox1 IS
    CONSTANT sbox : t_Sbox_table := (
        (14, 5, 7, 2, 11, 8, 1, 15, 0, 10, 9, 4, 6, 13, 12, 3),
        (5, 0, 8, 15, 14, 3, 2, 12, 11, 7, 6, 9, 13, 4, 1, 10),
        (4, 9, 2, 14, 8, 7, 13, 0, 10, 12, 15, 1, 5, 11, 3, 6),
        (9, 6, 15, 5, 3, 8, 4, 11, 7, 1, 12, 2, 0, 14, 10, 13)
    );
BEGIN
    PROCESS (inp)
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