----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2025 01:48:39 PM
-- Design Name: 
-- Module Name: DES_decrypt - Behavioral
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

ENTITY DES_decrypt IS
    PORT (
        inp : IN STD_LOGIC_VECTOR(0 TO 63);
        key : IN STD_LOGIC_VECTOR(0 TO 63);
        outp : OUT STD_LOGIC_VECTOR(0 TO 63)
    );
END DES_decrypt;


ARCHITECTURE Behavioral OF DES_decrypt IS
COMPONENT DES_initial_permutation
GENERIC (
    IS_INVERSE : BOOLEAN
);
PORT (
    inp : IN STD_LOGIC_VECTOR(0 TO 63);
    outp : OUT STD_LOGIC_VECTOR(0 TO 63)
);
END COMPONENT;

COMPONENT DES_key_schedule
PORT (
    inp : IN STD_LOGIC_VECTOR(0 TO 63);
    outp : OUT t_keys
);
END COMPONENT;

COMPONENT DES_round
PORT (
    inp_left : IN STD_LOGIC_VECTOR(0 TO 31);
    inp_right : IN STD_LOGIC_VECTOR(0 TO 31);
    key : IN STD_LOGIC_VECTOR(0 TO 47);
    outp_left : OUT STD_LOGIC_VECTOR(0 TO 31);
    outp_right : OUT STD_LOGIC_VECTOR(0 TO 31)
);
END COMPONENT;


SIGNAL ip_outp : STD_LOGIC_VECTOR(0 TO 63);
SIGNAL keys_outp : t_keys;
SIGNAL left : t_rounds;
SIGNAL right : t_rounds;


BEGIN
    ip_instance : DES_initial_permutation
    GENERIC MAP (IS_INVERSE => FALSE)
    PORT MAP (
        inp => inp,
        outp => ip_outp
    );


    left(0) <= ip_outp(0 TO 31);
    right(0) <= ip_outp(32 TO 63);

    key_gen_instance : DES_key_schedule
    PORT MAP (
        inp => key,
        outp => keys_outp
    );

    u0: FOR i IN 0 TO 15 GENERATE
        round_instance : DES_round
        PORT MAP (
            inp_left => left(i),
            inp_right => right(i),
            key => keys_outp(15 - i),  -- Reverse the order of keys for decryption
            outp_left => left(i + 1),
            outp_right => right(i + 1)
        );
    END GENERATE u0;


    ip_inv_instance : DES_initial_permutation
    GENERIC MAP (IS_INVERSE => TRUE)
    PORT MAP (
        -- Concatenate them backwards ?!? Stuck on this for a while
        inp => right(16) & left(16),
        outp => outp
    );
END Behavioral;