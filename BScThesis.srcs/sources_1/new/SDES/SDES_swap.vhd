----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2025 01:48:39 PM
-- Design Name: 
-- Module Name: SDES_swap - Behavioral
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
ENTITY SDES_swap IS
    PORT (
        input : IN STD_LOGIC_VECTOR(0 TO 7);
        output : OUT STD_LOGIC_VECTOR(0 TO 7)
    );
END SDES_swap;

ARCHITECTURE Behavioral OF SDES_swap IS

BEGIN
    output <= input(4 TO 7) & input(0 TO 3);
END Behavioral;