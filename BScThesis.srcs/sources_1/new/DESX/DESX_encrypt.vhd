----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2025 01:48:39 PM
-- Design Name: 
-- Module Name: DESX_encrypt - Behavioral
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
USE work.pkg.ALL;

ENTITY DESX_encrypt IS
    PORT (
        clk : IN STD_LOGIC;                    -- Clock input
        rst : IN STD_LOGIC;                    -- Reset input
        inp : IN STD_LOGIC_VECTOR(0 TO 63);    -- Plaintext
        key : IN STD_LOGIC_VECTOR(0 TO 63);    -- Main DES key
        key1 : IN STD_LOGIC_VECTOR(0 TO 63);   -- First additional key
        key2 : IN STD_LOGIC_VECTOR(0 TO 63);   -- Second additional key
        outp : OUT STD_LOGIC_VECTOR(0 TO 63)   -- Ciphertext
    );
END DESX_encrypt;

ARCHITECTURE Behavioral OF DESX_encrypt IS
COMPONENT DES_initial_permutation
GENERIC (
    IS_INVERSE : BOOLEAN
);
PORT (
    inp : IN STD_LOGIC_VECTOR(0 TO 63);
    outp : OUT STD_LOGIC_VECTOR(0 TO 63)
);
END COMPONENT;

COMPONENT DES_key_schedule
PORT (
    inp : IN STD_LOGIC_VECTOR(0 TO 63);
    outp : OUT t_keys
);
END COMPONENT;

COMPONENT DES_round
PORT (
    inp_left : IN STD_LOGIC_VECTOR(0 TO 31);
    inp_right : IN STD_LOGIC_VECTOR(0 TO 31);
    key : IN STD_LOGIC_VECTOR(0 TO 47);
    outp_left : OUT STD_LOGIC_VECTOR(0 TO 31);
    outp_right : OUT STD_LOGIC_VECTOR(0 TO 31)
);
END COMPONENT;

SIGNAL keys_outp : t_keys;
SIGNAL keys_outp_reg : t_keys;
SIGNAL left : t_rounds;
SIGNAL right : t_rounds;
SIGNAL left_reg : t_rounds;
SIGNAL right_reg : t_rounds;
SIGNAL xor_with_k1 : STD_LOGIC_VECTOR(0 TO 63);
SIGNAL xor_with_k1_reg : STD_LOGIC_VECTOR(0 TO 63);
SIGNAL ip_outp : STD_LOGIC_VECTOR(0 TO 63);
SIGNAL ip_outp_reg : STD_LOGIC_VECTOR(0 TO 63);
SIGNAL ip_inv_outp : STD_LOGIC_VECTOR(0 TO 63);
SIGNAL ip_inv_outp_reg : STD_LOGIC_VECTOR(0 TO 63);
SIGNAL des_output : STD_LOGIC_VECTOR(0 TO 63);
SIGNAL des_output_reg : STD_LOGIC_VECTOR(0 TO 63);

BEGIN
    -- First XOR with K1
    xor_with_k1 <= inp XOR key1;
    
    process(clk, rst)
    begin
        if rst = '1' then
            xor_with_k1_reg <= (others => '0');
        elsif rising_edge(clk) then
            xor_with_k1_reg <= xor_with_k1;
        end if;
    end process;
    
    -- Initial permutation
    ip_instance : DES_initial_permutation
    GENERIC MAP (IS_INVERSE => FALSE)
    PORT MAP (
        inp => xor_with_k1_reg,
        outp => ip_outp
    );
    
    process(clk, rst)
    begin
        if rst = '1' then
            ip_outp_reg <= (others => '0');
        elsif rising_edge(clk) then
            ip_outp_reg <= ip_outp;
        end if;
    end process;
    
    -- Initialize left and right with permuted input
    left(0) <= ip_outp_reg(0 TO 31);
    right(0) <= ip_outp_reg(32 TO 63);

    -- Generate round keys
    key_gen_instance : DES_key_schedule
    PORT MAP (
        inp => key,
        outp => keys_outp
    );

    process(clk, rst)
    begin
        if rst = '1' then
            keys_outp_reg <= (others => (others => '0'));
        elsif rising_edge(clk) then
            keys_outp_reg <= keys_outp;
        end if;
    end process;

    -- Generate 16 rounds
    u0: FOR i IN 0 TO 15 GENERATE
        round_instance : DES_round
        PORT MAP (
            inp_left => left_reg(i),
            inp_right => right_reg(i),
            key => keys_outp_reg(i),
            outp_left => left(i + 1),
            outp_right => right(i + 1)
        );

        process(clk, rst)
        begin
            if rst = '1' then
                left_reg(i + 1) <= (others => '0');
                right_reg(i + 1) <= (others => '0');
            elsif rising_edge(clk) then
                left_reg(i + 1) <= left(i + 1);
                right_reg(i + 1) <= right(i + 1);
            end if;
        end process;
    END GENERATE u0;

    process(clk, rst)
    begin
        if rst = '1' then
            left_reg(0) <= (others => '0');
            right_reg(0) <= (others => '0');
        elsif rising_edge(clk) then
            left_reg(0) <= left(0);
            right_reg(0) <= right(0);
        end if;
    end process;

    -- Combine final round output
    des_output <= right_reg(16) & left_reg(16);
    
    process(clk, rst)
    begin
        if rst = '1' then
            des_output_reg <= (others => '0');
        elsif rising_edge(clk) then
            des_output_reg <= des_output;
        end if;
    end process;
    
    -- Inverse permutation
    ip_inv_instance : DES_initial_permutation
    GENERIC MAP (IS_INVERSE => TRUE)
    PORT MAP (
        inp => des_output_reg,
        outp => ip_inv_outp
    );
    
    process(clk, rst)
    begin
        if rst = '1' then
            ip_inv_outp_reg <= (others => '0');
        elsif rising_edge(clk) then
            ip_inv_outp_reg <= ip_inv_outp;
        end if;
    end process;
    
    -- Final XOR with K2
    process(clk, rst)
    begin
        if rst = '1' then
            outp <= (others => '0');
        elsif rising_edge(clk) then
            outp <= ip_inv_outp_reg XOR key2;
        end if;
    end process;
END Behavioral; 