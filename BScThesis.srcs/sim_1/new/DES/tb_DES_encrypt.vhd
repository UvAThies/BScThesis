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
            clk : IN STD_LOGIC;
            rst : IN STD_LOGIC;
            inp : IN STD_LOGIC_VECTOR(0 TO 63);
            key : IN STD_LOGIC_VECTOR(0 TO 63);
            outp : OUT STD_LOGIC_VECTOR(0 TO 63)
        );
    END COMPONENT;

    -- Clock and reset
    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL rst : STD_LOGIC := '1';
    
    -- Inputs
    SIGNAL inp : STD_LOGIC_VECTOR(0 TO 63);
    SIGNAL key : STD_LOGIC_VECTOR(0 TO 63);

    -- Outputs
    SIGNAL outp : STD_LOGIC_VECTOR(0 TO 63);
    
    -- Clock period definition
    CONSTANT clk_period : TIME := 10 ns;
    
    -- Expected results
    CONSTANT expected_result1 : STD_LOGIC_VECTOR(0 TO 63) := "0111001000010100010100110010011000100110100101111100001111111100";
    CONSTANT expected_result2 : STD_LOGIC_VECTOR(0 TO 63) := "1001011011011110011000000011111010101110110101100010010101101111";
    
BEGIN
    -- Clock generation
    clk_process : PROCESS
    BEGIN
        clk <= '0';
        WAIT FOR clk_period/2;
        clk <= '1';
        WAIT FOR clk_period/2;
    END PROCESS;

    -- Unit Under Test
    uut : DES_encrypt
    PORT MAP(
        clk => clk,
        rst => rst,
        inp => inp,
        key => key,
        outp => outp
    );

    -- Stimulus process
    stim_proc : PROCESS
    BEGIN
        -- Initial reset
        rst <= '1';
        WAIT FOR clk_period * 2;
        rst <= '0';
        WAIT FOR clk_period * 2;

        -- Test case 1
        -- https://simewu.com/des/
        -- With input: DEADBEEFCAFEBABE
        -- and key: 0123456789ABCDEF
        inp <= "1101111010101101101111101110111111001010111111101011101010111110";
        key <= "0000000100100011010001010110011110001001101010111100110111101111";

        -- Wait for pipeline to fill (17 clock cycles)
        WAIT FOR clk_period * 17;
        
        -- Check result
        ASSERT outp = expected_result1 
            REPORT "Test case 1 failed: Encryption not working correctly" 
            SEVERITY failure;
        
        -- Test case 2
        inp <= "0100000101000010010000110100010001000101010001100100011101001000";
        key <= "0011000100110010001100110011010000110101001101100011011100111000";
        
        -- Wait for pipeline to fill (17 clock cycles)
        WAIT FOR clk_period * 17;
        
        -- Check result
        ASSERT outp = expected_result2 
            REPORT "Test case 2 failed: Encryption not working correctly" 
            SEVERITY failure;
            
        -- Add more test cases if needed
        ASSERT false REPORT "Test completed" SEVERITY note;
    END PROCESS;
END Behavioral;