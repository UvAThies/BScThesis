----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:11:16 PM
-- Design Name: 
-- Module Name: tb_DES_encrypt - Behavioral
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


ENTITY tb_DES_encrypt IS
END tb_DES_encrypt;

ARCHITECTURE Behavioral OF tb_DES_encrypt IS
    COMPONENT DES_encrypt
        PORT (
            inp : IN STD_LOGIC_VECTOR(0 TO 63);
            key : IN STD_LOGIC_VECTOR(0 TO 63);
            outp : OUT STD_LOGIC_VECTOR(0 TO 63)
        );
    END COMPONENT;

    --inps
    SIGNAL inp : STD_LOGIC_VECTOR(0 TO 63);
    SIGNAL key : STD_LOGIC_VECTOR(0 TO 63);

    --outps
    SIGNAL outp : STD_LOGIC_VECTOR(0 TO 63);
BEGIN
    ip_instance : DES_encrypt
    PORT MAP(
        inp => inp,
        key => key,
        outp => outp
    );

    stim_proc : PROCESS
    BEGIN
        -- https://simewu.com/des/
        -- With input: DEADBEEFCAFEBABE
        -- and key: 0123456789ABCDEF
        inp <= "1101111010101101101111101110111111001010111111101011101010111110";
        key <= "0000000100100011010001010110011110001001101010111100110111101111";

        WAIT FOR 10 ns;
        ASSERT outp = "0111001000010100010100110010011000100110100101111100001111111100" REPORT "Encrypt not working correctly" SEVERITY failure;
        
        inp <= "0100000101000010010000110100010001000101010001100100011101001000";
        key <= "0011000100110010001100110011010000110101001101100011011100111000";
        
        WAIT FOR 10ns;
        ASSERT outp = "1001011011011110011000000011111010101110110101100010010101101111" REPORT "Encrypt not working correctly" SEVERITY failure;
        wait;
    END PROCESS;
END Behavioral;