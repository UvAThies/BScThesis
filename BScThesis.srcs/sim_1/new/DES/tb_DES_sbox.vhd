----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:11:16 PM
-- Design Name: 
-- Module Name: tb_DES_sbox - Behavioral
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
ENTITY tb_DES_sbox IS
END tb_DES_sbox;

ARCHITECTURE Behavioral OF tb_DES_sbox IS
    COMPONENT DES_sbox
        PORT (
            inp : IN STD_LOGIC_VECTOR(0 TO 47);
            outp : OUT STD_LOGIC_VECTOR(0 TO 31)
        );
    END COMPONENT;

    --inps
    SIGNAL inp : STD_LOGIC_VECTOR(0 TO 47);

    --outps
    SIGNAL outp : STD_LOGIC_VECTOR(0 TO 31);
BEGIN
    ip_instance : DES_sbox
    PORT MAP(
        inp => inp,
        outp => outp
    );

    stim_proc : PROCESS
    BEGIN
        -- Example from: https://simewu.com/des/
        inp <= "000101100010111010011011100011111001101011000011";
        WAIT FOR 10 ns;
        ASSERT outp = "01111110101010101000011001001111" REPORT "DES sbox not working correctly" SEVERITY failure;
        WAIT;
    END PROCESS;
END Behavioral;