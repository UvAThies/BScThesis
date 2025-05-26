----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:11:16 PM
-- Design Name: 
-- Module Name: tb_DESL_decrypt - Behavioral
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


ENTITY tb_DESL_decrypt IS
END tb_DESL_decrypt;

ARCHITECTURE Behavioral OF tb_DESL_decrypt IS
    COMPONENT DESL_decrypt
        PORT (
            clk : IN STD_LOGIC;
            rst : IN STD_LOGIC;
            inp : IN STD_LOGIC_VECTOR(0 TO 63);
            key : IN STD_LOGIC_VECTOR(0 TO 63);
            outp : OUT STD_LOGIC_VECTOR(0 TO 63)
        );
    END COMPONENT;

    -- Clock period definition
    CONSTANT clk_period : TIME := 10 ns;

    --inps
    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL rst : STD_LOGIC := '1';
    SIGNAL inp : STD_LOGIC_VECTOR(0 TO 63);
    SIGNAL key : STD_LOGIC_VECTOR(0 TO 63);

    --outps
    SIGNAL outp : STD_LOGIC_VECTOR(0 TO 63);
BEGIN
    ip_instance : DESL_decrypt
    PORT MAP(
        clk => clk,
        rst => rst,
        inp => inp,
        key => key,
        outp => outp
    );

    -- Clock process
    clk_process : PROCESS
    BEGIN
        clk <= '0';
        WAIT FOR clk_period/2;
        clk <= '1';
        WAIT FOR clk_period/2;
    END PROCESS;

    stim_proc : PROCESS
    BEGIN
        -- Initialize inputs
        -- TODO: These values have no source
        inp <= "1010010100011010100011000001001000110011111001010001010100101110";
        key <= "0000000100100011010001010110011110001001101010111100110111101111";
        
        -- Reset for 2 clock cycles
        rst <= '1';
        WAIT FOR clk_period * 2;
        
        -- Release reset
        rst <= '0';
        
        -- Wait for enough clock cycles for the pipeline to fill
        WAIT FOR clk_period * 20;
        
        -- Check output
        ASSERT outp = "1101111010101101101111101110111111001010111111101011101010111110" 
            REPORT "decrypt not working correctly" 
            SEVERITY failure;
            
        wait;
    END PROCESS;
END Behavioral;