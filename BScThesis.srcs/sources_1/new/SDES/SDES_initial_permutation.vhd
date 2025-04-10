----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:03:57 PM
-- Design Name: 
-- Module Name: SDES_initial_permutation - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY SDES_initial_permutation IS
    GENERIC (
        IS_INVERSE : BOOLEAN
    );
    PORT (
        input : IN STD_LOGIC_VECTOR(0 TO 7);
        output : OUT STD_LOGIC_VECTOR(0 TO 7));
END SDES_initial_permutation;

ARCHITECTURE Behavioral OF SDES_initial_permutation IS

    TYPE t_Permutation_table IS ARRAY (0 TO 7) OF INTEGER RANGE 0 TO 7;

    CONSTANT ip : t_Permutation_table :=
    (1, 5, 2, 0, 3, 7, 4, 6);

    CONSTANT ip_inv : t_Permutation_table :=
    (3, 0, 2, 4, 6, 1, 7, 5);

BEGIN
    swapbits : FOR i IN 0 TO 7 GENERATE
        inverse : IF (IS_INVERSE) GENERATE
                output(i) <= input(ip_inv(i));
        ELSE
            GENERATE
                output(i) <= input(ip(i));
            END GENERATE inverse;
        END GENERATE swapbits;
    END Behavioral;