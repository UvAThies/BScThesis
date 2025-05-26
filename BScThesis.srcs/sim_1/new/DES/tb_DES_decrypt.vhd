----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:11:16 PM
-- Design Name: 
-- Module Name: tb_DES_decrypt - Behavioral
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


ENTITY tb_DES_decrypt IS
END tb_DES_decrypt;

ARCHITECTURE Behavioral OF tb_DES_decrypt IS
    COMPONENT DES_decrypt
        PORT (
            clk : IN STD_LOGIC;
            rst : IN STD_LOGIC;
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

    -- Clock period definition
    CONSTANT clk_period : TIME := 10 ns;
    -- Clock and reset
    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL rst : STD_LOGIC := '1';

BEGIN
    -- Clock generation
    clk_process : PROCESS
    BEGIN
        clk <= '0';
        WAIT FOR clk_period/2;
        clk <= '1';
        WAIT FOR clk_period/2;
    END PROCESS;

    ip_instance : DES_decrypt
    PORT MAP(
        clk => clk,
        rst => rst,
        inp => inp,
        key => key,
        outp => outp
    );

    stim_proc : PROCESS
    BEGIN
        -- Initial reset
        rst <= '1';
        WAIT FOR clk_period * 2;
        rst <= '0';
        WAIT FOR clk_period * 2;

        -- https://simewu.com/des/
        -- With input: 7214 5326 2697 C3FC (Encrypted: DEADBEEFCAFEBABE)
        -- and key: 0123456789ABCDEF
        inp <= "0111001000010100010100110010011000100110100101111100001111111100";
        key <= "0000000100100011010001010110011110001001101010111100110111101111";

        WAIT FOR clk_period * 17;
        ASSERT outp = "1101111010101101101111101110111111001010111111101011101010111110" REPORT "decrypt not working correctly" SEVERITY failure;
        
        ASSERT false REPORT "Test completed" SEVERITY note;
    END PROCESS;
END Behavioral;