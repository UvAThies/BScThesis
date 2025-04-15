----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:11:16 PM
-- Design Name: 
-- Module Name: tb_SDES_encrypt - Behavioral
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


ENTITY tb_SDES_encrypt IS
END tb_SDES_encrypt;

ARCHITECTURE Behavioral OF tb_SDES_encrypt IS
    COMPONENT SDES_encrypt
        PORT (
            inp : IN STD_LOGIC_VECTOR(0 TO 7);
            key : IN STD_LOGIC_VECTOR(0 TO 9);
            outp : OUT STD_LOGIC_VECTOR(0 TO 7)
        );
    END COMPONENT;

    --inps
    SIGNAL inp : STD_LOGIC_VECTOR(0 TO 7);
    SIGNAL key : STD_LOGIC_VECTOR(0 TO 9);

    --outps
    SIGNAL outp : STD_LOGIC_VECTOR(0 TO 7);
BEGIN
    ip_instance : SDES_encrypt
    PORT MAP(
        inp => inp,
        key => key,
        outp => outp
    );

    stim_proc : PROCESS
    BEGIN
        -- https://www.uomustansiriyah.edu.iq/media/lectures/6/6_2022_05_15!02_16_49_PM.pdf page 15
        inp <= "10010111";
        key <= "1010000010";

        WAIT FOR 10 ns;
        ASSERT outp = "00111000" REPORT "Encrypt not working correctly" SEVERITY failure;
        wait;
    END PROCESS;
END Behavioral;