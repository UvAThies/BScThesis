----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:11:16 PM
-- Design Name: 
-- Module Name: tb_DES_key_schedule - Behavioral
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
use work.pkg.all;


ENTITY tb_DES_key_schedule IS
END tb_DES_key_schedule;

ARCHITECTURE Behavioral OF tb_DES_key_schedule IS
    COMPONENT DES_key_schedule
        PORT (
            inp : IN STD_LOGIC_VECTOR(0 TO 63);
            outp : OUT t_keys
        );
    END COMPONENT;

    --inps
    SIGNAL inp : STD_LOGIC_VECTOR(0 TO 63);

    --outps
    SIGNAL outp : t_keys;
BEGIN
    ip_instance : DES_key_schedule
    PORT MAP(
        inp => inp,
        outp => outp
    );

    stim_proc : PROCESS
    BEGIN
        -- Example from: https://simewu.com/des/
        inp <= "0000000100100011010001010110011110001001101010111100110111101111";
        WAIT FOR 10 ns;
        ASSERT outp(0) = "110010100011110100000011101110000111000000110010" REPORT "DES keyschedule not working correctly" SEVERITY failure;
        
        ASSERT outp(1) = "000010110000001001100111100110110100100110100101" REPORT "DES keyschedule not working correctly" SEVERITY failure;
        ASSERT outp(2) = "011010011010011001011001001001010110101000100110" REPORT "DES keyschedule not working correctly" SEVERITY failure;
        ASSERT outp(3) = "010001011101010010001010101101000010100011010010" REPORT "DES keyschedule not working correctly" SEVERITY failure;
        ASSERT outp(4) = "011100101000100111010010101001011000001001010111" REPORT "DES keyschedule not working correctly" SEVERITY failure;
        ASSERT outp(5) = "001111001110100000000011000101111010011011000010" REPORT "DES keyschedule not working correctly" SEVERITY failure;
        ASSERT outp(6) = "001000110010010100011110001111001000010101000101" REPORT "DES keyschedule not working correctly" SEVERITY failure;
        ASSERT outp(7) = "011011000000010010010101000010101110010011000110" REPORT "DES keyschedule not working correctly" SEVERITY failure;
        ASSERT outp(8) = "010101111000100000111000011011001110010110000001" REPORT "DES keyschedule not working correctly" SEVERITY failure;
        ASSERT outp(9) = "110000001100100111101001001001101011100000111001" REPORT "DES keyschedule not working correctly" SEVERITY failure;
        ASSERT outp(10) = "100100011110001100000111011000110001110101110010" REPORT "DES keyschedule not working correctly" SEVERITY failure;
        ASSERT outp(11) = "001000010001111110000011000011011000100100111010" REPORT "DES keyschedule not working correctly" SEVERITY failure;
        ASSERT outp(12) = "011100010011000011100101010001010101110001010100" REPORT "DES keyschedule not working correctly" SEVERITY failure;
        ASSERT outp(13) = "100100011100010011010000010010011000000011111100" REPORT "DES keyschedule not working correctly" SEVERITY failure;
        ASSERT outp(14) = "010101000100001110110110100000011101110010001101" REPORT "DES keyschedule not working correctly" SEVERITY failure;
        ASSERT outp(15) = "101101101001000100000101000010100001011010110101" REPORT "DES keyschedule not working correctly" SEVERITY failure;
        
        wait;
    END PROCESS;
END Behavioral;