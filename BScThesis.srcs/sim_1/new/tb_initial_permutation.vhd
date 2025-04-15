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
         inp : IN  std_logic_vector(0 to 63);
         outp : OUT  std_logic_vector(0 to 63)
        );
    END COMPONENT;
    
   --inps
   signal inp : std_logic_vector(0 to 63);
   signal inp_inv: std_logic_vector(0 to 63);

 	--outps
   signal outp : std_logic_vector(0 to 63);
   signal outp_inv: std_logic_vector(0 to 63);
BEGIN
   ip_instance: initial_permutation 
   GENERIC MAP (
       IS_INVERSE => false
   )
   PORT MAP (
          inp => inp,
          outp => outp
        );
   ip_inv_instance: initial_permutation 
   GENERIC MAP (
       IS_INVERSE => true
   )
   PORT MAP (
          inp => inp_inv,
          outp => outp_inv
        );


   stim_proc: process
   begin
        inp <= "0000000000000000000000000000000000000000000000000000000001000000";
		wait for 10 ns;	
        assert outp = "1000000000000000000000000000000000000000000000000000000000000000" report "Initial permutation not working correctly" severity failure;
        
        inp_inv <= "1000000000000000000000000000000000000000000000000000000000000000";
        wait for 10 ns;	
        assert outp_inv = "0000000000000000000000000000000000000000000000000000000001000000" report "Initial permutation inv not working correctly" severity failure;
        
      
        wait;
   end process;
end Behavioral;
