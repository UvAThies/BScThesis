----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:11:16 PM
-- Design Name: 
-- Module Name: tb_DES_expand - Behavioral
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
ENTITY tb_DES_expand IS
END tb_DES_expand;

ARCHITECTURE Behavioral OF tb_DES_expand IS
    COMPONENT DES_expand
        PORT (
            inp : IN STD_LOGIC_VECTOR(0 TO 31);
            outp : OUT STD_LOGIC_VECTOR(0 TO 47)
        );
    END COMPONENT;

    --inps
    SIGNAL inp : STD_LOGIC_VECTOR(0 TO 31);

    --outps
    SIGNAL outp : STD_LOGIC_VECTOR(0 TO 47);
BEGIN
    ip_instance : DES_expand
    PORT MAP(
        inp => inp,
        outp => outp
    );

    stim_proc : PROCESS
    BEGIN
        -- Example from: https://simewu.com/des/
        inp <= "11110000101010101111000010101010";
        WAIT FOR 10 ns;
        ASSERT outp = "011110100001010101010101011110100001010101010101" REPORT "DES expand not working correctly" SEVERITY failure;
        WAIT;
    END PROCESS;
END Behavioral;