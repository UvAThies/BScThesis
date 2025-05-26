----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:11:16 PM
-- TDESign Name: 
-- Module Name: tb_TDES_encrypt - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- TDEScription: 
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


ENTITY tb_TDES_encrypt IS
END tb_TDES_encrypt;

ARCHITECTURE Behavioral OF tb_TDES_encrypt IS
    COMPONENT TDES_encrypt
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

    -- Clock and reset
    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL rst : STD_LOGIC := '1';
    
    -- Inputs
    SIGNAL inp : STD_LOGIC_VECTOR(0 TO 63);
    SIGNAL key : STD_LOGIC_VECTOR(0 TO 63);
    SIGNAL key1 : STD_LOGIC_VECTOR(0 TO 63);
    SIGNAL key2 : STD_LOGIC_VECTOR(0 TO 63);

    -- Outputs
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

    -- Unit Under Test
    uut : TDES_encrypt
    PORT MAP(
        clk => clk,
        rst => rst,
        inp => inp,
        key => key,
        key1 => key1,
        key2 => key2,
        outp => outp
    );

    -- Stimulus process
    stim_proc : PROCESS
    BEGIN
        -- Reset for 2 clock cycles
        rst <= '1';
        WAIT FOR clk_period * 2;
        rst <= '0';

        -- Initialize inputs
        inp <= "0100000101000001010000010100000101000001010000010100000101000001"; -- AAAAAAAA, hex: 4141414141414141
        key <= "0100001001000010010000100100001001000010010000100100001001000010"; -- BBBBBBBB, hex: 4242424242424242
        key1 <= "0100001101000011010000110100001101000011010000110100001101000011"; -- CCCCCCCC, hex: 4343434343434343  
        key2 <= "0100010001000100010001000100010001000100010001000100010001000100"; -- DDDDDDDD, hex: 4444444444444444
        
        WAIT FOR clk_period * 17 * 3;
       
        -- Check output
        ASSERT outp = "0011110000001001010000011110010110101111010111011111111010111011" REPORT "Encrypt not working correctly" SEVERITY failure; -- 3c0941e5af5dfebb
        
        WAIT;
    END PROCESS;
END Behavioral;