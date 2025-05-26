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
        inp : IN STD_LOGIC_VECTOR(0 TO 7);
        key : IN STD_LOGIC_VECTOR(0 TO 9);
        outp : OUT STD_LOGIC_VECTOR(0 TO 7);
        clk : IN STD_LOGIC;
        rst : IN STD_LOGIC
    );
END SDES_decrypt;


ARCHITECTURE Behavioral OF SDES_decrypt IS
COMPONENT SDES_initial_permutation
GENERIC (
    IS_INVERSE : BOOLEAN
);
PORT (
    inp : IN STD_LOGIC_VECTOR(0 TO 7);
    outp : OUT STD_LOGIC_VECTOR(0 TO 7)
);
END COMPONENT;

COMPONENT SDES_swap
PORT (
    inp : IN STD_LOGIC_VECTOR(0 TO 7);
    outp : OUT STD_LOGIC_VECTOR(0 TO 7)
);
END COMPONENT;

COMPONENT SDES_generate_keys
PORT (
    inp : IN STD_LOGIC_VECTOR(0 TO 9);
    key1 : OUT STD_LOGIC_VECTOR(0 TO 7);
    key2 : OUT STD_LOGIC_VECTOR(0 TO 7)
);
END COMPONENT;

COMPONENT SDES_pi IS
    PORT (
        inp : IN STD_LOGIC_VECTOR(0 TO 7);
        key : IN STD_LOGIC_VECTOR(0 TO 7);
        outp : OUT STD_LOGIC_VECTOR(0 TO 7)
    );
END COMPONENT;

SIGNAL ip_outp : STD_LOGIC_VECTOR(0 TO 7);
SIGNAL key1 : STD_LOGIC_VECTOR(0 TO 7);
SIGNAL key2 : STD_LOGIC_VECTOR(0 TO 7);
SIGNAL pi1_outp : STD_LOGIC_VECTOR(0 TO 7);
SIGNAL swap_outp : STD_LOGIC_VECTOR(0 TO 7);
SIGNAL pi2_outp : STD_LOGIC_VECTOR(0 TO 7);
SIGNAL ip_inv_outp : STD_LOGIC_VECTOR(0 TO 7);

BEGIN
    -- IP
    -- PI key2
    -- SWAP
    -- PI key1
    -- IP_INV

    ip : SDES_initial_permutation
    GENERIC MAP (IS_INVERSE => FALSE)
    PORT MAP (
        inp => inp,
        outp => ip_outp
    );

    key_gen : SDES_generate_keys
    PORT MAP (
        inp => key,
        key1 => key1,
        key2 => key2
    );

    pi1 : SDES_pi
    PORT MAP (
        inp => ip_outp,
        key => key2,
        outp => pi1_outp
    );

    swap : SDES_swap
    PORT MAP (
        inp => pi1_outp,
        outp => swap_outp
    );

    pi2 : SDES_pi
    PORT MAP (
        inp => swap_outp,
        key => key1,
        outp => pi2_outp
    );

    ip_inv : SDES_initial_permutation
    GENERIC MAP (IS_INVERSE => TRUE)
    PORT MAP (
        inp => pi2_outp,
        outp => ip_inv_outp
    );

    process(clk, rst)
    begin
        if rst = '1' then
            outp <= (others => '0');
        elsif rising_edge(clk) then
            outp <= ip_inv_outp;
        end if;
    end process;
END Behavioral;