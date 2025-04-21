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
    TYPE t_keys IS ARRAY (0 TO 15) OF STD_LOGIC_VECTOR(0 TO 47);

    -- Array of 16 rounds, all with 2 parts of 32 bits each
    TYPE t_rounds IS ARRAY (0 TO 16) OF STD_LOGIC_VECTOR(0 TO 31);
    TYPE t_Sbox_row IS ARRAY (0 TO 15) OF INTEGER RANGE 0 TO 15;
    TYPE t_Sbox_table IS ARRAY (0 TO 3) OF t_Sbox_row;
END PACKAGE pkg;

PACKAGE BODY pkg IS
END PACKAGE BODY;