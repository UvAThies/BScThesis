----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:11:16 PM
-- Design Name: 
-- Module Name: tb_DES_key_pc2 - Behavioral
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


ENTITY tb_DES_key_pc2 IS
END tb_DES_key_pc2;

ARCHITECTURE Behavioral OF tb_DES_key_pc2 IS
    COMPONENT DES_key_pc2
        PORT (
            inp : IN STD_LOGIC_VECTOR(0 TO 55);
            outp : OUT STD_LOGIC_VECTOR(0 TO 47)
        );
    END COMPONENT;

    --inps
    SIGNAL inp : STD_LOGIC_VECTOR(0 TO 55);

    --outps
    SIGNAL outp : STD_LOGIC_VECTOR(0 TO 47);
BEGIN
    ip_instance : DES_key_pc2
    PORT MAP(
        inp => inp,
        outp => outp
    );

    stim_proc : PROCESS
    BEGIN
        -- Example from: https://simewu.com/des/
        inp <= "11110000110011001010101000001010101011001100111100000000";
        WAIT FOR 10 ns;
        ASSERT outp = "110010100011110100000011101110000111000000110010" REPORT "DES pc2 not working correctly" SEVERITY failure;
        wait;
    END PROCESS;
END Behavioral;