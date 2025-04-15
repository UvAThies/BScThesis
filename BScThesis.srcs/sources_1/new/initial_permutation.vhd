----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:03:57 PM
-- Design Name: 
-- Module Name: initial_permutation - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity initial_permutation is
    generic (
        IS_INVERSE: boolean 
    );
    Port ( inp : in std_logic_vector(0 to 63);
           outp: out std_logic_vector(0 to 63));
end initial_permutation;

architecture Behavioral of initial_permutation is

type t_Permutation_table is array (0 to 63) of integer range 0 to 63;
 
constant ip: t_Permutation_table :=
		(57,49,41,33,25,17,9,1,
		 59,51,43,35,27,19,11,3,
		 61,53,45,37,29,21,13,5,
		 63,55,47,39,31,23,15,7,
		 56,48,40,32,24,16,8,0,
		 58,50,42,34,26,18,10,2,
		 60,52,44,36,28,20,12,4,
		 62,54,46,38,30,22,14,6);
begin
        swapbits: for i in 0 to 63 generate
           inverse: if (IS_INVERSE) generate
                outp(ip(i)) <= inp(i);
            else generate
                outp(i) <= inp(ip(i));
            end generate inverse;
        end generate swapbits;
end Behavioral;
