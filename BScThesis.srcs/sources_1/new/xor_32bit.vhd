----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2025 03:33:28 PM
-- Design Name: 
-- Module Name: xor_32bit - Behavioral
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

entity xor_32bit is
    Port ( input : in std_logic_vector(0 to 31);
           key : in std_logic_vector(0 to 31);
           output : out std_logic_vector(0 to 31));
end xor_32bit;

architecture Behavioral of xor_32bit is
begin
    
    output <= input xor key;
    output(5) <= '1';

end Behavioral;
