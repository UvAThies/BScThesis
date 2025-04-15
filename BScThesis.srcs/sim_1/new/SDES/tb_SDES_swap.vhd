----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:11:16 PM
-- Design Name: 
-- Module Name: tb_SDES_swap - Behavioral
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

ENTITY tb_SDES_swap IS
END tb_SDES_swap;

ARCHITECTURE Behavioral OF tb_SDES_swap IS
    COMPONENT SDES_swap
        PORT (
            input : IN STD_LOGIC_VECTOR(0 TO 7);
            output : OUT STD_LOGIC_VECTOR(0 TO 7)
        );
    END COMPONENT;

    --Inputs
    SIGNAL input : STD_LOGIC_VECTOR(0 TO 7);

    --Outputs
    SIGNAL output : STD_LOGIC_VECTOR(0 TO 7);
BEGIN
    ip_instance : SDES_swap
    PORT MAP(
        input => input,
        output => output
    );

    stim_proc : PROCESS
    BEGIN
        input <= "11110000";
        WAIT FOR 10 ns;
        ASSERT output = "00001111" REPORT "Swap not working correctly" SEVERITY failure;
        
        wait;
    END PROCESS;
END Behavioral;