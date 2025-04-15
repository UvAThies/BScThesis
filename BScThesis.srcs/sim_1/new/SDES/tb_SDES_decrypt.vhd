----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:11:16 PM
-- Design Name: 
-- Module Name: tb_SDES_decrypt - Behavioral
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


ENTITY tb_SDES_decrypt IS
END tb_SDES_decrypt;

ARCHITECTURE Behavioral OF tb_SDES_decrypt IS
    COMPONENT SDES_decrypt
        PORT (
            input : IN STD_LOGIC_VECTOR(0 TO 7);
            key : IN STD_LOGIC_VECTOR(0 TO 9);
            output : OUT STD_LOGIC_VECTOR(0 TO 7)
        );
    END COMPONENT;

    --Inputs
    SIGNAL input : STD_LOGIC_VECTOR(0 TO 7);
    SIGNAL key : STD_LOGIC_VECTOR(0 TO 9);

    --Outputs
    SIGNAL output : STD_LOGIC_VECTOR(0 TO 7);
BEGIN
    ip_instance : SDES_decrypt
    PORT MAP(
        input => input,
        key => key,
        output => output
    );

    stim_proc : PROCESS
    BEGIN
        -- Reverse of encrypt, https://www.uomustansiriyah.edu.iq/media/lectures/6/6_2022_05_15!02_16_49_PM.pdf page 15
        input <= "00111000";
        key <= "1010000010";

        WAIT FOR 10 ns;
        ASSERT output = "10010111" REPORT "Decrypt not working correctly" SEVERITY failure;

        -- Online calculator
        input <= "00000000";
        key <= "1111111111";
        WAIT FOR 10 ns;
        ASSERT output = "11101011" REPORT "Decrypt not working correctly" SEVERITY failure;

        wait;
    END PROCESS;
END Behavioral;