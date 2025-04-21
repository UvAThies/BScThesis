----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:11:16 PM
-- Design Name: 
-- Module Name: tb_DES_key_pc1 - Behavioral
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


ENTITY tb_DES_key_pc1 IS
END tb_DES_key_pc1;

ARCHITECTURE Behavioral OF tb_DES_key_pc1 IS
    COMPONENT DES_key_pc1
        PORT (
            inp : IN STD_LOGIC_VECTOR(0 TO 63);
            outp_left : OUT STD_LOGIC_VECTOR(0 TO 27);
            outp_right : OUT STD_LOGIC_VECTOR(0 TO 27)
        );
    END COMPONENT;

    --inps
    SIGNAL inp : STD_LOGIC_VECTOR(0 TO 63);

    --outps
    SIGNAL outp_left : STD_LOGIC_VECTOR(0 TO 27);
    SIGNAL outp_right : STD_LOGIC_VECTOR(0 TO 27);
BEGIN
    ip_instance : DES_key_pc1
    PORT MAP(
        inp => inp,
        outp_left => outp_left,
        outp_right => outp_right
    );

    stim_proc : PROCESS
    BEGIN
        -- Example from: https://simewu.com/des/
        inp <= "0000000100100011010001010110011110001001101010111100110111101111";
        WAIT FOR 10 ns;
        ASSERT outp_left = "1111000011001100101010100000" REPORT "DES PC1left not working correctly" SEVERITY failure;
        ASSERT outp_right = "1010101011001100111100000000" REPORT "DES PC1right not working correctly" SEVERITY failure;


        inp <= "1011101011011101110111011101110111011101110111011101110111011101";
        WAIT FOR 10 ns;
        ASSERT outp_left = "1111111111111110000000011111" REPORT "DES PC1left not working correctly" SEVERITY failure;
        ASSERT outp_right = "0000000111111110111111111111" REPORT "DES PC1right not working correctly" SEVERITY failure;

        wait;
    END PROCESS;
END Behavioral;