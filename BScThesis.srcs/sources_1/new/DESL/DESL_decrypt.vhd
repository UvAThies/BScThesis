----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2025 01:48:39 PM
-- DESLign Name: 
-- Module Name: DESL_decrypt - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- DESLcription: 
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

ENTITY DESL_decrypt IS
    PORT (
        inp : IN STD_LOGIC_VECTOR(0 TO 63);
        key : IN STD_LOGIC_VECTOR(0 TO 63);
        outp : OUT STD_LOGIC_VECTOR(0 TO 63)
    );
END DESL_decrypt;


ARCHITECTURE Behavioral OF DESL_decrypt IS
COMPONENT DES_key_schedule
PORT (
    inp : IN STD_LOGIC_VECTOR(0 TO 63);
    outp : OUT t_keys
);
END COMPONENT;

COMPONENT DESL_round
PORT (
    inp_left : IN STD_LOGIC_VECTOR(0 TO 31);
    inp_right : IN STD_LOGIC_VECTOR(0 TO 31);
    key : IN STD_LOGIC_VECTOR(0 TO 47);
    outp_left : OUT STD_LOGIC_VECTOR(0 TO 31);
    outp_right : OUT STD_LOGIC_VECTOR(0 TO 31)
);
END COMPONENT;

SIGNAL keys_outp : t_keys;
SIGNAL left : t_rounds;
SIGNAL right : t_rounds;


BEGIN
    left(0) <= inp(0 TO 31);
    right(0) <= inp(32 TO 63);

    key_gen_instance : DES_key_schedule
    PORT MAP (
        inp => key,
        outp => keys_outp
    );

    u0: FOR i IN 0 TO 15 GENERATE
        round_instance : DESL_round
        PORT MAP (
            inp_left => left(i),
            inp_right => right(i),
            key => keys_outp(15 - i),  -- Reverse the order of keys for decryption
            outp_left => left(i + 1),
            outp_right => right(i + 1)
        );
    END GENERATE u0;

    outp <= right(16) & left(16);
END Behavioral;