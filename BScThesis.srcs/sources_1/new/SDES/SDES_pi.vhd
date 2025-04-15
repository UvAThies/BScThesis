----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2025 01:48:39 PM
-- Design Name: 
-- Module Name: SDES_pi - Behavioral
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
USE ieee.numeric_std.ALL;

ENTITY SDES_pi IS
    PORT (
        inp : IN STD_LOGIC_VECTOR(0 TO 7);
        key : IN STD_LOGIC_VECTOR(0 TO 7);
        outp : OUT STD_LOGIC_VECTOR(0 TO 7)
    );
END SDES_pi;

ARCHITECTURE Behavioral OF SDES_pi IS

    TYPE t_Expansion_table IS ARRAY (0 TO 7) OF INTEGER RANGE 0 TO 3;
    CONSTANT ep : t_Expansion_table := (3, 0, 1, 2, 1, 2, 3, 0);

    TYPE t_SBOX_table IS ARRAY (0 TO 3, 0 TO 3) OF INTEGER RANGE 0 TO 3;
    CONSTANT s0 : t_SBOX_table :=
    ((1, 0, 3, 2),
    (3, 2, 0, 1),
    (0, 2, 1, 3),
    (3, 1, 3, 2));
    CONSTANT s1 : t_SBOX_table :=
    ((0, 1, 2, 3),
    (2, 0, 1, 3),
    (3, 0, 1, 0),
    (2, 1, 0, 3));

    SIGNAL left : STD_LOGIC_VECTOR(0 TO 3);
    SIGNAL right : STD_LOGIC_VECTOR(0 TO 3);
    SIGNAL expanded_inp : STD_LOGIC_VECTOR(0 TO 7);
    SIGNAL expanded_inp_xor : STD_LOGIC_VECTOR(0 TO 7);

    SIGNAL bits_left1 : STD_LOGIC_VECTOR(0 TO 1);
    SIGNAL bits_left2 : STD_LOGIC_VECTOR(0 TO 1);
    SIGNAL bits_right1 : STD_LOGIC_VECTOR(0 TO 1);
    SIGNAL bits_right2 : STD_LOGIC_VECTOR(0 TO 1);
    SIGNAL sbox_outp1 : STD_LOGIC_VECTOR(0 TO 1);
    SIGNAL sbox_outp2 : STD_LOGIC_VECTOR(0 TO 1);

    SIGNAL permuted_sbox : STD_LOGIC_VECTOR(0 TO 7);
BEGIN

    exp : FOR i IN 0 TO 7 GENERATE
        expanded_inp(i) <= inp(ep(i) + 4);
    END GENERATE exp;

    expanded_inp_xor <= expanded_inp XOR key;
    left <= expanded_inp_xor(0 TO 3);
    right <= expanded_inp_xor(4 TO 7);

    bits_left1 <= left(0) & left(3);
    bits_left2 <= left(1) & left(2);

    sbox_outp1 <= STD_LOGIC_VECTOR(to_unsigned(s0(
        to_integer(unsigned(bits_left1)),
        to_integer(unsigned(bits_left2))
        ), sbox_outp1'length));

    bits_right1 <= right(0) & right(3);
    bits_right2 <= right(1) & right(2);

    sbox_outp2 <= STD_LOGIC_VECTOR(to_unsigned(s1(
        to_integer(unsigned(bits_right1)),
        to_integer(unsigned(bits_right2))
        ), sbox_outp2'length));

    outp <= (inp(0) XOR sbox_outp1(1)) &
        (inp(1) XOR sbox_outp2(1)) &
        (inp(2) XOR sbox_outp2(0)) &
        (inp(3) XOR sbox_outp1(0)) &
        inp(4 TO 7);
END Behavioral;