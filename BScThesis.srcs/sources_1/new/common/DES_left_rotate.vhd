----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:03:57 PM
-- Design Name: 
-- Module Name: DES_left_rotate - Behavioral
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

ENTITY DES_left_rotate IS
    GENERIC
    (
        amount : INTEGER := 1 -- Amount to rotate left
    );
    PORT (
        inp : IN STD_LOGIC_VECTOR(0 TO 27);
        outp : OUT STD_LOGIC_VECTOR(0 TO 27)
        );
END DES_left_rotate;

ARCHITECTURE Behavioral OF DES_left_rotate IS
BEGIN
    PROCESS (inp)
    BEGIN
        outp(0 TO 27) <= inp(amount TO 27) & inp(0 TO (amount - 1));
    END PROCESS;
END Behavioral;