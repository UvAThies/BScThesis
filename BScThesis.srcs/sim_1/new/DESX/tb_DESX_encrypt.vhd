----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:11:16 PM
-- DESXign Name: 
-- Module Name: tb_DESX_encrypt - Behavioral
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


ENTITY tb_DESX_encrypt IS
END tb_DESX_encrypt;

ARCHITECTURE Behavioral OF tb_DESX_encrypt IS
    COMPONENT DESX_encrypt
        PORT (
            clk : IN STD_LOGIC;
            rst : IN STD_LOGIC;
            inp : IN STD_LOGIC_VECTOR(0 TO 63);
            key : IN STD_LOGIC_VECTOR(0 TO 63);
            key1 : IN STD_LOGIC_VECTOR(0 TO 63);
            key2 : IN STD_LOGIC_VECTOR(0 TO 63);
            outp : OUT STD_LOGIC_VECTOR(0 TO 63)
        );
    END COMPONENT;

    -- Clock and reset signals
    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL rst : STD_LOGIC := '1';

    --inps
    SIGNAL inp : STD_LOGIC_VECTOR(0 TO 63);
    SIGNAL key : STD_LOGIC_VECTOR(0 TO 63);
    SIGNAL key1 : STD_LOGIC_VECTOR(0 TO 63);
    SIGNAL key2 : STD_LOGIC_VECTOR(0 TO 63);
    
    --outps
    SIGNAL outp : STD_LOGIC_VECTOR(0 TO 63);

    -- Clock period definition
    CONSTANT clk_period : TIME := 10 ns;

BEGIN
    -- Clock generation
    clk_process : PROCESS
    BEGIN
        clk <= '0';
        WAIT FOR clk_period/2;
        clk <= '1';
        WAIT FOR clk_period/2;
    END PROCESS;

    ip_instance : DESX_encrypt
    PORT MAP(
        clk => clk,
        rst => rst,
        inp => inp,
        key => key,
        key1 => key1,
        key2 => key2,
        outp => outp
    );

    stim_proc : PROCESS
    BEGIN
        -- Reset
        rst <= '1';
        WAIT FOR clk_period * 2;
        rst <= '0';

    -- DEX should behave the same, when key1 and key2 are 0
        -- https://simewu.com/des/
        -- With input: DEADBEEFCAFEBABE
        -- and key: 0123456789ABCDEF
        inp <= "1101111010101101101111101110111111001010111111101011101010111110";
        key <= "0000000100100011010001010110011110001001101010111100110111101111";
        key1 <= "0000000000000000000000000000000000000000000000000000000000000000";
        key2 <= "0000000000000000000000000000000000000000000000000000000000000000";

        WAIT FOR clk_period * 17;
        ASSERT outp = "0111001000010100010100110010011000100110100101111100001111111100" REPORT "Encrypt not working correctly" SEVERITY failure;
        
    -- TODO: These values have no source

        -- inp <= "0100000101000001010000010100000101000001010000010100000101000001"; -- AAAAAAAA, hex: 41414141
        -- key <= "0100001001000010010000100100001001000010010000100100001001000010"; -- BBBBBBBB, hex: 42424242
        -- key1 <= "0100001101000011010000110100001101000011010000110100001101000011"; -- CCCCCCCC, hex: 43434343
        -- key2 <= "0100010001000100010001000100010001000100010001000100010001000100"; -- DDDDDDDD, hex: 44444444

        -- WAIT FOR 10 ns;
        -- ASSERT outp = "0101000001011000000101000100110010001001110101010100010111111100" REPORT "encrypt not working correctly" SEVERITY failure;
        wait;
    END PROCESS;
END Behavioral;