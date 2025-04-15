----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:11:16 PM
-- Design Name: 
-- Module Name: tb_SDES_initial_permutation - Behavioral
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


ENTITY tb_SDES_initial_permutation IS
END tb_SDES_initial_permutation;

ARCHITECTURE Behavioral OF tb_SDES_initial_permutation IS
    COMPONENT SDES_initial_permutation
        GENERIC (
            IS_INVERSE : BOOLEAN
        );
        PORT (
            inp : IN STD_LOGIC_VECTOR(0 TO 7);
            outp : OUT STD_LOGIC_VECTOR(0 TO 7)
        );
    END COMPONENT;

    --inps
    SIGNAL inp : STD_LOGIC_VECTOR(0 TO 7);
    SIGNAL inp_inv : STD_LOGIC_VECTOR(0 TO 7);

    --outps
    SIGNAL outp : STD_LOGIC_VECTOR(0 TO 7);
    SIGNAL outp_inv : STD_LOGIC_VECTOR(0 TO 7);
BEGIN
    ip_instance : SDES_initial_permutation
    GENERIC MAP(
        IS_INVERSE => false
    )
    PORT MAP(
        inp => inp,
        outp => outp
    );
    ip_inv_instance : SDES_initial_permutation
    GENERIC MAP(
        IS_INVERSE => true
    )
    PORT MAP(
        inp => inp_inv,
        outp => outp_inv
    );
    stim_proc : PROCESS
    BEGIN
        -- Example from: https://medium.com/@np01nt4s220042/simplified-data-encryption-standard-8ab7061eaa3c
        inp <= "01110010";
        WAIT FOR 10 ns;
        ASSERT outp = "10101001" REPORT "Initial permutation not working correctly" SEVERITY failure;

        -- Example from https://www.uomustansiriyah.edu.iq/media/lectures/6/6_2022_05_15!02_16_49_PM.pdf, page 18.
        inp_inv <= "00101010";
        WAIT FOR 10 ns;
        ASSERT outp_inv = "00111000" REPORT "Initial permutation inv not working correctly" SEVERITY failure;
        wait;
    END PROCESS;
END Behavioral;