----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:11:16 PM
-- DESXign Name: 
-- Module Name: tb_DESX_decrypt - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- DESXcription: 
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


ENTITY tb_DESX_decrypt IS
END tb_DESX_decrypt;

ARCHITECTURE Behavioral OF tb_DESX_decrypt IS
    COMPONENT DESX_decrypt
        PORT (
            inp : IN STD_LOGIC_VECTOR(0 TO 63);
            key : IN STD_LOGIC_VECTOR(0 TO 63);
            key1 : IN STD_LOGIC_VECTOR(0 TO 63);
            key2 : IN STD_LOGIC_VECTOR(0 TO 63);
            outp : OUT STD_LOGIC_VECTOR(0 TO 63)
        );
    END COMPONENT;

    --inps
    SIGNAL inp : STD_LOGIC_VECTOR(0 TO 63);
    SIGNAL key : STD_LOGIC_VECTOR(0 TO 63);
    SIGNAL key1 : STD_LOGIC_VECTOR(0 TO 63);
    SIGNAL key2 : STD_LOGIC_VECTOR(0 TO 63);

    --outps
    SIGNAL outp : STD_LOGIC_VECTOR(0 TO 63);
BEGIN
    ip_instance : DESX_decrypt
    PORT MAP(
        inp => inp,
        key => key,
        key1 => key1,
        key2 => key2,
        outp => outp
    );

    stim_proc : PROCESS
    BEGIN

  -- DEX should behave the same, when key1 and key2 are 0
        -- https://simewu.com/des/
        -- With input: DEADBEEFCAFEBABE
        -- and key: 0123456789ABCDEF
        inp <= "0111001000010100010100110010011000100110100101111100001111111100";
        key <= "0000000100100011010001010110011110001001101010111100110111101111";
        key1 <= "0000000000000000000000000000000000000000000000000000000000000000";
        key2 <= "0000000000000000000000000000000000000000000000000000000000000000";

        WAIT FOR 10 ns;
        ASSERT outp = "1101111010101101101111101110111111001010111111101011101010111110" REPORT "Encrypt not working correctly" SEVERITY failure;
        
    -- TODO: These values have no source

        -- inp <= "0101000001011000000101000100110010001001110101010100010111111100"; -- Output of encrypt
        -- key <= "0100001001000010010000100100001001000010010000100100001001000010"; -- BBBBBBBB, hex: 42424242
        -- key1 <= "0100001101000011010000110100001101000011010000110100001101000011"; -- CCCCCCCC, hex: 43434343
        -- key2 <= "0100010001000100010001000100010001000100010001000100010001000100"; -- DDDDDDDD, hex: 44444444

        -- WAIT FOR 10 ns;
        -- ASSERT outp = "0100000101000001010000010100000101000001010000010100000101000001" REPORT "decrypt not working correctly" SEVERITY failure; -- AAAAAAAA, hex: 41414141
        wait;
    END PROCESS;
END Behavioral;