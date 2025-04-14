----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:11:16 PM
-- Design Name: 
-- Module Name: tb_initial_permutation - Behavioral
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


entity tb_initial_permutation is
end tb_initial_permutation;

architecture Behavioral of tb_initial_permutation is
   COMPONENT initial_permutation
   generic(
        IS_INVERSE: boolean 
    );
    PORT(
         input : IN  std_logic_vector(0 to 63);
         output : OUT  std_logic_vector(0 to 63)
        );
    END COMPONENT;
    
   --Inputs
   signal input : std_logic_vector(0 to 63);
   signal input_inv: std_logic_vector(0 to 63);

 	--Outputs
   signal output : std_logic_vector(0 to 63);
   signal output_inv: std_logic_vector(0 to 63);
BEGIN
   ip_instance: initial_permutation 
   GENERIC MAP (
       IS_INVERSE => false
   )
   PORT MAP (
          input => input,
          output => output
        );
   ip_inv_instance: initial_permutation 
   GENERIC MAP (
       IS_INVERSE => true
   )
   PORT MAP (
          input => input_inv,
          output => output_inv
        );


   stim_proc: process
   begin
        input <= "0000000000000000000000000000000000000000000000000000000001000000";
		wait for 10 ns;	
        assert output = "1000000000000000000000000000000000000000000000000000000000000000" report "Initial permutation not working correctly" severity failure;
        
        input_inv <= "1000000000000000000000000000000000000000000000000000000000000000";
        wait for 10 ns;	
        assert output_inv = "0000000000000000000000000000000000000000000000000000000001000000" report "Initial permutation inv not working correctly" severity failure;
        
      
        wait;
   end process;
end Behavioral;
