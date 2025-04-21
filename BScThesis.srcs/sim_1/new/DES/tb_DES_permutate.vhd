----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:11:16 PM
-- Design Name: 
-- Module Name: tb_DES_permutate - Behavioral
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
ENTITY tb_DES_permutate IS
END tb_DES_permutate;

ARCHITECTURE Behavioral OF tb_DES_permutate IS
    COMPONENT DES_permutate
        PORT (
            inp : IN STD_LOGIC_VECTOR(0 TO 31);
            outp : OUT STD_LOGIC_VECTOR(0 TO 31)
        );
    END COMPONENT;

    --inps
    SIGNAL inp : STD_LOGIC_VECTOR(0 TO 31);

    --outps
    SIGNAL outp : STD_LOGIC_VECTOR(0 TO 31);
BEGIN
    ip_instance : DES_permutate
    PORT MAP(
        inp => inp,
        outp => outp
    );

    stim_proc : PROCESS
    BEGIN
        -- Example from: https://simewu.com/des/
        inp <= "01111110101010101000011001001111";
        WAIT FOR 10 ns;
        ASSERT outp = "01001001011110101000101101111110" REPORT "DES permutate not working correctly" SEVERITY failure;
        WAIT;
    END PROCESS;
END Behavioral;