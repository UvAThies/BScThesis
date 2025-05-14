----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:03:57 PM
-- DESLign Name: 
-- Module Name: DESL_sbox - Behavioral
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
USE IEEE.NUMERIC_STD.ALL;
USE WORK.pkg.ALL;

ENTITY DESL_sbox IS
    PORT (
        inp : IN STD_LOGIC_VECTOR(0 TO 47);
        outp : OUT STD_LOGIC_VECTOR(0 TO 31)
    );
END DESL_sbox;

ARCHITECTURE Behavioral OF DESL_sbox IS
COMPONENT DESL_sbox1 IS
    PORT (
        inp : IN STD_LOGIC_VECTOR(0 TO 5);
        outp : OUT STD_LOGIC_VECTOR(0 TO 3)
    );
END COMPONENT;
BEGIN

sbox1 : DESL_sbox1 PORT MAP (
    inp => inp(0 TO 5),
    outp => outp(0 TO 3)
);
sbox2 : DESL_sbox1 PORT MAP (
    inp => inp(6 TO 11),
    outp => outp(4 TO 7)
);
sbox3 : DESL_sbox1 PORT MAP (
    inp => inp(12 TO 17),
    outp => outp(8 TO 11)
);
sbox4 : DESL_sbox1 PORT MAP (
    inp => inp(18 TO 23),
    outp => outp(12 TO 15)
);
sbox5 : DESL_sbox1 PORT MAP (
    inp => inp(24 TO 29),
    outp => outp(16 TO 19)
);
sbox6 : DESL_sbox1 PORT MAP (
    inp => inp(30 TO 35),
    outp => outp(20 TO 23)
);
sbox7 : DESL_sbox1 PORT MAP (
    inp => inp(36 TO 41),
    outp => outp(24 TO 27)
);
sbox8 : DESL_sbox1 PORT MAP (
    inp => inp(42 TO 47),
    outp => outp(28 TO 31)
);
END Behavioral;