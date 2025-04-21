----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:03:57 PM
-- Design Name: 
-- Module Name: DES_expand - Behavioral
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

ENTITY DES_expand IS
    PORT (
        inp : IN STD_LOGIC_VECTOR(0 TO 31);
        outp : OUT STD_LOGIC_VECTOR(0 TO 47)
    );
END DES_expand;

ARCHITECTURE Behavioral OF DES_expand IS
    TYPE t_Expand_table IS ARRAY (0 TO 47) OF INTEGER RANGE 0 TO 32;

    CONSTANT e : t_Expand_table := (31, 0, 1, 2, 3, 4, 3, 4, 5, 6, 7, 8, 7, 8, 9, 10, 11, 12, 11, 12, 13, 14, 15, 16, 15, 16, 17, 18, 19, 20, 19, 20, 21, 22, 23, 24, 23, 24, 25, 26, 27, 28, 27, 28, 29, 30, 31, 0);
BEGIN
    swapbits : FOR i IN 0 TO 47 GENERATE
        outp(i) <= inp(e(i));
    END GENERATE swapbits;
END Behavioral;