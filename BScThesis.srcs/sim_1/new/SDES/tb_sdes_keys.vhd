----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:11:16 PM
-- Design Name: 
-- Module Name: tb_sdes_keys - Behavioral
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


ENTITY tb_SDES_keys IS
END tb_SDES_keys;

ARCHITECTURE Behavioral OF tb_SDES_keys IS
    COMPONENT SDES_generate_keys
        PORT (
            input : IN STD_LOGIC_VECTOR(0 TO 9);
            key1 : OUT STD_LOGIC_VECTOR(0 TO 7);
            key2 : OUT STD_LOGIC_VECTOR(0 TO 7)
        );
    END COMPONENT;

    --Inputs
    SIGNAL input : STD_LOGIC_VECTOR(0 TO 9);

    --Outputs
    SIGNAL key1 : STD_LOGIC_VECTOR(0 TO 7);
    SIGNAL key2 : STD_LOGIC_VECTOR(0 TO 7);
BEGIN
    ip_instance : SDES_generate_keys
    PORT MAP(
        input => input,
        key1 => key1,
        key2 => key2
    );

    stim_proc : PROCESS
    BEGIN
        -- Example from: https://medium.com/@np01nt4s220042/simplified-data-encryption-standard-8ab7061eaa3c
        input <= "1010000010";
        WAIT FOR 10 ns;
        ASSERT key1 = "10100100" REPORT "Key gen part 1 not working correctly" SEVERITY failure;
        ASSERT key2 = "01000011" REPORT "Key gen part 2 not working correctly" SEVERITY failure;
        wait;
    END PROCESS;
END Behavioral;