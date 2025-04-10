----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2025 01:48:39 PM
-- Design Name: 
-- Module Name: SDES_encrypt - Behavioral
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
ENTITY SDES_encrypt IS
    PORT (
        input : IN STD_LOGIC_VECTOR(0 TO 7);
        key : IN STD_LOGIC_VECTOR(0 TO 9);
        output : OUT STD_LOGIC_VECTOR(0 TO 7)
    );
END SDES_encrypt;




ARCHITECTURE Behavioral OF SDES_encrypt IS
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


BEGIN
    -- IP
    -- PI key1
    -- SWAP
    -- PI key2
    -- IP inv

    -- temporary
--    SIGNAL temp : STD_LOGIC_VECTOR(0 TO 7);
--    SIGNAL temp2 : STD_LOGIC_VECTOR(0 TO 7);
--    SIGNAL key1 : STD_LOGIC_VECTOR(0 TO 7);
--    siGNAL key2 : STD_LOGIC_VECTOR(0 TO 7);

--    KEY_instance : SDES_generate_keys
--    PORT MAP (
--        input => key,
--        key1 => key1,
--        key2 => key2
--    );
    
--    IP_instance : SDES_initial_permutation
--    GENERIC MAP (
--        IS_INVERSE => FALSE
--    )
--    PORT MAP (
--        input => input,
--        output => temp
--    );

--    SWAP_instance : SDES_swap
--    PORT MAP (
--        input => temp,
--        output => temp2
--    );



END Behavioral;