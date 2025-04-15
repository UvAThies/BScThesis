----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:11:16 PM
-- Design Name: 
-- Module Name: tb_SDES_pi - Behavioral
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


ENTITY tb_SDES_pi IS
END tb_SDES_pi;

ARCHITECTURE Behavioral OF tb_SDES_pi IS
    COMPONENT SDES_pi
        PORT (
            inp : IN STD_LOGIC_VECTOR(0 TO 7);
            key : IN STD_LOGIC_VECTOR(0 TO 7);
            outp : OUT STD_LOGIC_VECTOR(0 TO 7)
        );
    END COMPONENT;

    --inps
    SIGNAL inp : STD_LOGIC_VECTOR(0 TO 7);
    SIGNAL key : STD_LOGIC_VECTOR(0 TO 7);

    --outps
    SIGNAL outp : STD_LOGIC_VECTOR(0 TO 7);
BEGIN
    ip_instance : SDES_pi
    PORT MAP(
        inp => inp,
        key => key,
        outp => outp
    );

    stim_proc : PROCESS
    BEGIN
        -- https://www.uomustansiriyah.edu.iq/media/lectures/6/6_2022_05_15!02_16_49_PM.pdf page 16
        inp <= "01011101";
        key <= "10100100";

        WAIT FOR 10 ns;
        ASSERT outp = "10101101" REPORT "Swap not working correctly" SEVERITY failure;
        wait;
    END PROCESS;
END Behavioral;