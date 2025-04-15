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


ENTITY tb_xor_32bit IS
END tb_xor_32bit;

ARCHITECTURE Behavioral OF tb_xor_32bit IS
    COMPONENT xor_32bit
        PORT (
            inp : IN STD_LOGIC_VECTOR(0 TO 31);
            key : IN STD_LOGIC_VECTOR(0 TO 31);
            outp : OUT STD_LOGIC_VECTOR(0 TO 31)
        );
    END COMPONENT;

    --inps
    SIGNAL inp : STD_LOGIC_VECTOR(0 TO 31);
    SIGNAL key : STD_LOGIC_VECTOR(0 TO 31);

    --outps
    SIGNAL outp : STD_LOGIC_VECTOR(0 TO 31);
BEGIN

    uut : xor_32bit PORT MAP(
        inp => inp,
        key => key,
        outp => outp
    );

    stim_proc : PROCESS
    BEGIN
        inp <= "01100000000000000000000000000000";
        key <= "10100000000000000000000000000000";
        WAIT FOR 10 ns;

        ASSERT outp = "11000000000000000000000000000000" REPORT "XOR not working correctly" SEVERITY failure;

        wait;
    END PROCESS;
END Behavioral;