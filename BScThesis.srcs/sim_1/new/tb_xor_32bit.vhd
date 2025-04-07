----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2025 03:29:44 PM
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

entity tb_xor_32bit is
end tb_xor_32bit;

architecture Behavioral of tb_xor_32bit is
   COMPONENT xor_32bit
    PORT(
         input : IN  std_logic_vector(0 to 31);
         key : IN  std_logic_vector(0 to 31);
         output : OUT  std_logic_vector(0 to 31)
        );
    END COMPONENT;
    
   --Inputs
   signal input : std_logic_vector(0 to 31);
   signal key : std_logic_vector(0 to 31);

 	--Outputs
   signal output : std_logic_vector(0 to 31);
BEGIN
 
   uut: xor_32bit PORT MAP (
          input => input,
          key => key,
          output => output
        );

   stim_proc: process
   begin		
        input<="01100000000000000000000000000000";
		key<="10100000000000000000000000000000";
		wait for 10 ns;	
		
        assert output = "11000000000000000000000000000000" report "XOR not working correctly" severity failure;
       

      wait;
   end process;


end Behavioral;
