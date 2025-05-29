----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:03:57 PM
-- Design Name: 
-- Module Name: DESL_sbox - Behavioral
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

ENTITY DESL_sbox IS
    PORT (
        inp : IN STD_LOGIC_VECTOR(0 TO 47);
        outp : OUT STD_LOGIC_VECTOR(0 TO 31)
    );
END DESL_sbox;

ARCHITECTURE Behavioral OF DESL_sbox IS
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
        -- S-box 1
        row_vec := inp(0) & inp(5);
        col_vec := inp(1 TO 4);
        row := TO_INTEGER(UNSIGNED(row_vec));
        col := TO_INTEGER(UNSIGNED(col_vec));
        outp(0 TO 3) <= STD_LOGIC_VECTOR(TO_UNSIGNED(sbox(row)(col), 4));
        
        -- S-box 2
        row_vec := inp(6) & inp(11);
        col_vec := inp(7 TO 10);
        row := TO_INTEGER(UNSIGNED(row_vec));
        col := TO_INTEGER(UNSIGNED(col_vec));
        outp(4 TO 7) <= STD_LOGIC_VECTOR(TO_UNSIGNED(sbox(row)(col), 4));
        
        -- S-box 3
        row_vec := inp(12) & inp(17);
        col_vec := inp(13 TO 16);
        row := TO_INTEGER(UNSIGNED(row_vec));
        col := TO_INTEGER(UNSIGNED(col_vec));
        outp(8 TO 11) <= STD_LOGIC_VECTOR(TO_UNSIGNED(sbox(row)(col), 4));
        
        -- S-box 4
        row_vec := inp(18) & inp(23);
        col_vec := inp(19 TO 22);
        row := TO_INTEGER(UNSIGNED(row_vec));
        col := TO_INTEGER(UNSIGNED(col_vec));
        outp(12 TO 15) <= STD_LOGIC_VECTOR(TO_UNSIGNED(sbox(row)(col), 4));
        
        -- S-box 5
        row_vec := inp(24) & inp(29);
        col_vec := inp(25 TO 28);
        row := TO_INTEGER(UNSIGNED(row_vec));
        col := TO_INTEGER(UNSIGNED(col_vec));
        outp(16 TO 19) <= STD_LOGIC_VECTOR(TO_UNSIGNED(sbox(row)(col), 4));
        
        -- S-box 6
        row_vec := inp(30) & inp(35);
        col_vec := inp(31 TO 34);
        row := TO_INTEGER(UNSIGNED(row_vec));
        col := TO_INTEGER(UNSIGNED(col_vec));
        outp(20 TO 23) <= STD_LOGIC_VECTOR(TO_UNSIGNED(sbox(row)(col), 4));
        
        -- S-box 7
        row_vec := inp(36) & inp(41);
        col_vec := inp(37 TO 40);
        row := TO_INTEGER(UNSIGNED(row_vec));
        col := TO_INTEGER(UNSIGNED(col_vec));
        outp(24 TO 27) <= STD_LOGIC_VECTOR(TO_UNSIGNED(sbox(row)(col), 4));
        
        -- S-box 8
        row_vec := inp(42) & inp(47);
        col_vec := inp(43 TO 46);
        row := TO_INTEGER(UNSIGNED(row_vec));
        col := TO_INTEGER(UNSIGNED(col_vec));
        outp(28 TO 31) <= STD_LOGIC_VECTOR(TO_UNSIGNED(sbox(row)(col), 4));
    END PROCESS;
END Behavioral;