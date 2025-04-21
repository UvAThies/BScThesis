----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:03:57 PM
-- Design Name: 
-- Module Name: DES_key_schedule - Behavioral
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
USE work.pkg.ALL;
ENTITY DES_key_schedule IS
    PORT (
        inp : IN STD_LOGIC_VECTOR(0 TO 63);
        outp : OUT t_keys
    );
END DES_key_schedule;

ARCHITECTURE Behavioral OF DES_key_schedule IS
    COMPONENT DES_key_pc1
        PORT (
            inp : IN STD_LOGIC_VECTOR(0 TO 63);
            outp_left : OUT STD_LOGIC_VECTOR(0 TO 27);
            outp_right : OUT STD_LOGIC_VECTOR(0 TO 27)
        );
    END COMPONENT;
    COMPONENT DES_key_pc2 IS
        PORT (
            inp : IN STD_LOGIC_VECTOR(0 TO 55);
            outp : OUT STD_LOGIC_VECTOR(0 TO 47)
        );
    END COMPONENT;
    COMPONENT DES_left_rotate IS
        GENERIC (
            amount : INTEGER := 1 -- Amount to rotate left
        );
        PORT (
            inp : IN STD_LOGIC_VECTOR(0 TO 27);
            outp : OUT STD_LOGIC_VECTOR(0 TO 27)
        );
    END COMPONENT;

    TYPE cd_sub_results IS ARRAY (0 TO 16) OF STD_LOGIC_VECTOR(0 TO 27);

    SIGNAL c : cd_sub_results;
    SIGNAL d : cd_sub_results;

    TYPE t_rotate_amount IS ARRAY (0 TO 15) OF INTEGER RANGE 1 TO 2;

    CONSTANT rotate_amount : t_rotate_amount := (1, 1, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 1);

BEGIN
    pc1_instance : DES_key_pc1
    PORT MAP(
        inp => inp,
        outp_left => c(0),
        outp_right => d(0)
    );

    u0 : FOR i IN 0 TO 15 GENERATE
        x0 : DES_left_rotate
        GENERIC MAP(
            amount => rotate_amount(i)
        )
        PORT MAP(
            inp => c(i),
            outp => c(i + 1)
        );

        y0 : DES_left_rotate
        GENERIC MAP(
            amount => rotate_amount(i)
        )
        PORT MAP(
            inp => d(i),
            outp => d(i + 1)
        );
    END GENERATE u0;

    u1 : FOR i IN 0 TO 15 GENERATE
        z0 : DES_key_pc2
        PORT MAP(
            inp => c(i + 1) & d(i + 1),
            outp => outp(i)
        );
    END GENERATE u1;
END Behavioral;