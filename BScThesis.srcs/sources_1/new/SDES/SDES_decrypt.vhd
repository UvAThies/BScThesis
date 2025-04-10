----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2025 01:48:39 PM
-- Design Name: 
-- Module Name: SDES_decrypt - Behavioral
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
ENTITY SDES_decrypt IS
    PORT (
        input : IN STD_LOGIC_VECTOR(0 TO 7);
        key : IN STD_LOGIC_VECTOR(0 TO 9);
        output : OUT STD_LOGIC_VECTOR(0 TO 7)
    );
END SDES_decrypt;


ARCHITECTURE Behavioral OF SDES_decrypt IS
COMPONENT SDES_initial_permutation
GENERIC (
    IS_INVERSE : BOOLEAN
);
PORT (
    input : IN STD_LOGIC_VECTOR(0 TO 7);
    output : OUT STD_LOGIC_VECTOR(0 TO 7)
);
END COMPONENT;

COMPONENT SDES_swap
PORT (
    input : IN STD_LOGIC_VECTOR(0 TO 7);
    output : OUT STD_LOGIC_VECTOR(0 TO 7)
);
END COMPONENT;

COMPONENT SDES_generate_keys
PORT (
    input : IN STD_LOGIC_VECTOR(0 TO 9);
    key1 : OUT STD_LOGIC_VECTOR(0 TO 7);
    key2 : OUT STD_LOGIC_VECTOR(0 TO 7)
);
END COMPONENT;

COMPONENT SDES_pi IS
    PORT (
        input : IN STD_LOGIC_VECTOR(0 TO 7);
        key : IN STD_LOGIC_VECTOR(0 TO 7);
        output : OUT STD_LOGIC_VECTOR(0 TO 7)
    );
END COMPONENT;

SIGNAL ip_output : STD_LOGIC_VECTOR(0 TO 7);
SIGNAL key1 : STD_LOGIC_VECTOR(0 TO 7);
SIGNAL key2 : STD_LOGIC_VECTOR(0 TO 7);
SIGNAL pi1_output : STD_LOGIC_VECTOR(0 TO 7);
SIGNAL swap_output : STD_LOGIC_VECTOR(0 TO 7);
SIGNAL pi2_output : STD_LOGIC_VECTOR(0 TO 7);

BEGIN
    -- IP
    -- PI key2
    -- SWAP
    -- PI key1
    -- IP_INV

    ip : SDES_initial_permutation
    GENERIC MAP (IS_INVERSE => FALSE)
    PORT MAP (
        input => input,
        output => ip_output
    );

    key_gen : SDES_generate_keys
    PORT MAP (
        input => key,
        key1 => key1,
        key2 => key2
    );

    pi1 : SDES_pi
    PORT MAP (
        input => ip_output,
        key => key2,
        output => pi1_output
    );

    swap : SDES_swap
    PORT MAP (
        input => pi1_output,
        output => swap_output
    );

    pi2 : SDES_pi
    PORT MAP (
        input => swap_output,
        key => key1,
        output => pi2_output
    );

    ip_inv : SDES_initial_permutation
    GENERIC MAP (IS_INVERSE => TRUE)
    PORT MAP (
        input => pi2_output,
        output => output
    );

END Behavioral;