----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:11:16 PM
-- Design Name: 
-- Module Name: tb_DES_left_rotate - Behavioral
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


ENTITY tb_DES_left_rotate IS
END tb_DES_left_rotate;

ARCHITECTURE Behavioral OF tb_DES_left_rotate IS
    COMPONENT DES_left_rotate
        GENERIC
        (
            amount : INTEGER := 1 -- Amount to rotate left
        );
        PORT (
            inp : IN STD_LOGIC_VECTOR(0 TO 27);
            outp : OUT STD_LOGIC_VECTOR(0 TO 27)
        );
    END COMPONENT;

    --inps
    SIGNAL inp : STD_LOGIC_VECTOR(0 TO 27);
    SIGNAL inp2 : STD_LOGIC_VECTOR(0 TO 27);

    --outps
    SIGNAL outp : STD_LOGIC_VECTOR(0 TO 27);
    SIGNAL outp2 : STD_LOGIC_VECTOR(0 TO 27);
BEGIN
    l1_instance : DES_left_rotate
    GENERIC MAP(
        amount => 1
    )
    PORT MAP(
        inp => inp,
        outp => outp
    );

    l2_instance : DES_left_rotate
    GENERIC MAP(
        amount => 2
    )
    PORT MAP(
        inp => inp2,
        outp => outp2
    );

    stim_proc : PROCESS
    BEGIN
        -- Example from: https://simewu.com/des/
        inp <= "1111000011001100101010100000";
        WAIT FOR 10 ns;
        ASSERT outp = "1110000110011001010101000001" REPORT "DES leftrotate not working correctly" SEVERITY failure;

        inp2 <= "1100001100110010101010000011";
        WAIT FOR 10 ns;
        ASSERT outp2 = "0000110011001010101000001111" REPORT "DES leftrotate not working correctly" SEVERITY failure;

        inp <= "1000000000000000000000000000";
        WAIT FOR 10 ns;
        ASSERT outp = "0000000000000000000000000001" REPORT "DES leftrotate not working correctly" SEVERITY failure;

        inp2 <= "1000000000000000000000000000";
        WAIT FOR 10 ns;
        ASSERT outp2 = "0000000000000000000000000010" REPORT "DES leftrotate not working correctly" SEVERITY failure;

        wait;
    END PROCESS;
END Behavioral;