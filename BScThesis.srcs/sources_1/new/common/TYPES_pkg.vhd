----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:03:57 PM
-- Design Name: 
-- Module Name: pkg - Package
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

PACKAGE pkg IS

-- Array of 16 keys, all of which are 48 bits long
  type t_keys is array (0 to 15) of std_logic_vector(0 TO 47);

    TYPE t_Sbox_row IS ARRAY (0 TO 15) OF INTEGER RANGE 0 TO 15;
    TYPE t_Sbox_table IS ARRAY (0 TO 3) OF t_Sbox_row;
END PACKAGE pkg;

package body pkg is
end package body;