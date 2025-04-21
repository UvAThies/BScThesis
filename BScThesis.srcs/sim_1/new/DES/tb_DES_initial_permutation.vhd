----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:11:16 PM
-- Design Name: 
-- Module Name: tb_DES_initial_permutation - Behavioral
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
ENTITY tb_DES_initial_permutation IS
END tb_DES_initial_permutation;

ARCHITECTURE Behavioral OF tb_DES_initial_permutation IS
    COMPONENT DES_initial_permutation
        GENERIC (
            IS_INVERSE : BOOLEAN
        );
        PORT (
            inp : IN STD_LOGIC_VECTOR(0 TO 63);
            outp : OUT STD_LOGIC_VECTOR(0 TO 63)
        );
    END COMPONENT;

    --inps
    SIGNAL inp : STD_LOGIC_VECTOR(0 TO 63);
    SIGNAL inp_inv : STD_LOGIC_VECTOR(0 TO 63);

    --outps
    SIGNAL outp : STD_LOGIC_VECTOR(0 TO 63);
    SIGNAL outp_inv : STD_LOGIC_VECTOR(0 TO 63);
BEGIN
    ip_instance : DES_initial_permutation
    GENERIC MAP(
        IS_INVERSE => false
    )
    PORT MAP(
        inp => inp,
        outp => outp
    );
    ip_inv_instance : DES_initial_permutation
    GENERIC MAP(
        IS_INVERSE => true
    )
    PORT MAP(
        inp => inp_inv,
        outp => outp_inv
    );
    stim_proc : PROCESS
    BEGIN
        -- Example from: https://simewu.com/des/
        inp <= "0000000100100011010001010110011110001001101010111100110111101111";
        WAIT FOR 10 ns;
        ASSERT outp = "1100110000000000110011001111111111110000101010101111000010101010" REPORT "DES Initial permutation not working correctly" SEVERITY failure;

        inp <= "1101111010101101101111101110111111001010111111101011101010111110";
        WAIT FOR 10 ns;
        ASSERT outp = "0011100111100101101011110000101011111111111011101111111111111101" REPORT "DES Initial permutation not working correctly" SEVERITY failure;
        WAIT;
    END PROCESS;
END Behavioral;