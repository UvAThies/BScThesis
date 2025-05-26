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
            outp : OUT STD_LOGIC_VECTOR(0 TO 7);
            clk : IN STD_LOGIC;
            rst : IN STD_LOGIC
        );
    END COMPONENT;

    --inps
    SIGNAL inp : STD_LOGIC_VECTOR(0 TO 7);
    SIGNAL key : STD_LOGIC_VECTOR(0 TO 9);

    --outps
    SIGNAL outp : STD_LOGIC_VECTOR(0 TO 7);

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
    
    ip_instance : SDES_encrypt
    PORT MAP(
        inp => inp,
        key => key,
        outp => outp,
        clk => clk,
        rst => rst
    );

    stim_proc : PROCESS
    BEGIN
        -- Reset
        rst <= '1';
        WAIT FOR clk_period * 2;
        rst <= '0';

        -- https://www.uomustansiriyah.edu.iq/media/lectures/6/6_2022_05_15!02_16_49_PM.pdf page 15
        inp <= "10010111";
        key <= "1010000010";

        WAIT FOR clk_period * 1;
        ASSERT outp = "00111000" REPORT "Encrypt not working correctly" SEVERITY failure;
        wait;
    END PROCESS;
END Behavioral;