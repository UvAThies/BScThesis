----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2025 01:48:39 PM
-- Design Name: 
-- Module Name: SDES_generate_keys - Behavioral
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
ENTITY SDES_generate_keys IS
    PORT (
        input : IN STD_LOGIC_VECTOR(0 TO 9);
        key1 : OUT STD_LOGIC_VECTOR(0 TO 7);
        key2 : OUT STD_LOGIC_VECTOR(0 TO 7)
    );
END SDES_generate_keys;

ARCHITECTURE Behavioral OF SDES_generate_keys IS

BEGIN
    -- The input is a 10-bit key
    -- The output is two 8-bit keys
    -- Process for this can be found in \cite{Schaefer1996}

    -- k2, k4, k1, k6, k3, k9, k0, k8, k7, k5 = s
    -- s0, s1, s2, s3, s4, s5, s6, s7, s8, s9 
    -- t4, t0, t1, t2, t3, t9, t5, t6, t7, t8
    -- u2, u3, u4, u0, u1, u7, u8, u9, u5, u6.

    -- key 1 = t5,t2,t6,t3,t7,t4,t9,t8
    -- key 1 = k0,k6,k8,k3,k7,k2,k9,k5

    -- key 2 = u5,u2,u6,u3,u7,u4,u9,u8
    -- key 2 = k7,k2,k5,k4,k9,k1,k8,k0

    PROCESS (input)
    BEGIN
        key1(0) <= input(0);
        key1(1) <= input(6);
        key1(2) <= input(8);
        key1(3) <= input(3);
        key1(4) <= input(7);
        key1(5) <= input(2);
        key1(6) <= input(9);
        key1(7) <= input(5);

        key2(0) <= input(7);
        key2(1) <= input(2);
        key2(2) <= input(5);
        key2(3) <= input(4);
        key2(4) <= input(9);
        key2(5) <= input(1);
        key2(6) <= input(8);
        key2(7) <= input(0);
    END PROCESS;



END Behavioral;