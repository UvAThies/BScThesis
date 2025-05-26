----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2025 01:48:39 PM
-- Design Name: 
-- Module Name: DES_decrypt - Behavioral
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

ENTITY DES_decrypt IS
    PORT (
        clk : IN STD_LOGIC;                    -- Clock input
        rst : IN STD_LOGIC;                    -- Reset input
        inp : IN STD_LOGIC_VECTOR(0 TO 63);    -- Ciphertext
        key : IN STD_LOGIC_VECTOR(0 TO 63);    -- Key
        outp : OUT STD_LOGIC_VECTOR(0 TO 63)   -- Plaintext
    );
END DES_decrypt;


ARCHITECTURE Behavioral OF DES_decrypt IS
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


SIGNAL ip_outp : STD_LOGIC_VECTOR(0 TO 63);
SIGNAL ip_outp_reg : STD_LOGIC_VECTOR(0 TO 63);
SIGNAL keys_outp : t_keys;
SIGNAL keys_outp_reg : t_keys;
SIGNAL left : t_rounds;
SIGNAL right : t_rounds;
SIGNAL left_reg : t_rounds;
SIGNAL right_reg : t_rounds;
SIGNAL ip_inv_inp : STD_LOGIC_VECTOR(0 TO 63);
SIGNAL ip_inv_outp : STD_LOGIC_VECTOR(0 TO 63);


BEGIN
    ip_instance : DES_initial_permutation
    GENERIC MAP (IS_INVERSE => FALSE)
    PORT MAP (
        inp => inp,
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

    left(0) <= ip_outp_reg(0 TO 31);
    right(0) <= ip_outp_reg(32 TO 63);

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

    u0: FOR i IN 0 TO 15 GENERATE
        round_instance : DES_round
        PORT MAP (
            inp_left => left_reg(i),
            inp_right => right_reg(i),
            key => keys_outp_reg(15 - i),  -- Reverse the order of keys for decryption
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

    ip_inv_inp <= right_reg(16) & left_reg(16);

    ip_inv_instance : DES_initial_permutation
    GENERIC MAP (IS_INVERSE => TRUE)
    PORT MAP (
        inp => ip_inv_inp,
        outp => ip_inv_outp
    );

    process(clk, rst)
    begin
        if rst = '1' then
            outp <= (others => '0');
        elsif rising_edge(clk) then
            outp <= ip_inv_outp;
        end if;
    end process;
END Behavioral;