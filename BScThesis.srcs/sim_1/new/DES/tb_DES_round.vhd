----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:11:16 PM
-- Design Name: 
-- Module Name: tb_DES_round - Behavioral
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
ENTITY tb_DES_round IS
END tb_DES_round;

ARCHITECTURE Behavioral OF tb_DES_round IS
    COMPONENT DES_round
        PORT (
            inp_left : IN STD_LOGIC_VECTOR(0 TO 31);
            inp_right : IN STD_LOGIC_VECTOR(0 TO 31);
            key : IN STD_LOGIC_VECTOR(0 TO 47);
            outp_left : OUT STD_LOGIC_VECTOR(0 TO 31);
            outp_right : OUT STD_LOGIC_VECTOR(0 TO 31)
        );
    END COMPONENT;

    --inps
    SIGNAL inp_left : STD_LOGIC_VECTOR(0 TO 31);
    SIGNAL inp_right : STD_LOGIC_VECTOR(0 TO 31);
    SIGNAL key : STD_LOGIC_VECTOR(0 TO 47);

    --outps
    SIGNAL outp_left : STD_LOGIC_VECTOR(0 TO 31);
    SIGNAL outp_right : STD_LOGIC_VECTOR(0 TO 31);
BEGIN
    ip_instance : DES_round
    PORT MAP(
        inp_left => inp_left,
        inp_right => inp_right,
        key => key,
        outp_left => outp_left,
        outp_right => outp_right
    );

    stim_proc : PROCESS
    BEGIN
        -- Example from: https://simewu.com/des/
        inp_left <= "01110000001101100000010000111011";
        inp_right <= "11110001010001110000101111000010";
        key <= "011011000000010010010101000010101110010011000110";
        WAIT FOR 10 ns;
        ASSERT outp_left = "11110001010001110000101111000010" REPORT "DES round left not working correctly" SEVERITY failure;
        ASSERT outp_right = "00111001010011001000111101000101" REPORT "DES round right not working correctly" SEVERITY failure;
        WAIT;
    END PROCESS;
END Behavioral;