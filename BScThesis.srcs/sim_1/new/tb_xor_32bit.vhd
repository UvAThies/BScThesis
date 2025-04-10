----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2025 03:29:44 PM
-- Design Name: 
-- Module Name: xor_gate - Behavioral
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
USE std.env.stop;

ENTITY tb_xor_gate IS
END tb_xor_gate;

ARCHITECTURE Behavioral OF tb_xor_gate IS
    COMPONENT xor_gate
        PORT (
            input : IN STD_LOGIC_VECTOR(0 TO 31);
            key : IN STD_LOGIC_VECTOR(0 TO 31);
            output : OUT STD_LOGIC_VECTOR(0 TO 31)
        );
    END COMPONENT;

    --Inputs
    SIGNAL input : STD_LOGIC_VECTOR(0 TO 31);
    SIGNAL key : STD_LOGIC_VECTOR(0 TO 31);

    --Outputs
    SIGNAL output : STD_LOGIC_VECTOR(0 TO 31);
BEGIN

    uut : xor_gate PORT MAP(
        input => input,
        key => key,
        output => output
    );

    stim_proc : PROCESS
    BEGIN
        input <= "01100000000000000000000000000000";
        key <= "10100000000000000000000000000000";
        WAIT FOR 10 ns;

        ASSERT output = "11000000000000000000000000000000" REPORT "XOR not working correctly" SEVERITY failure;

        stop;
    END PROCESS;
END Behavioral;