----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 01:11:16 PM
-- DESXLign Name: 
-- Module Name: tb_DESXL_encrypt - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- DESXLcription: 
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


ENTITY tb_DESXL_encrypt IS
END tb_DESXL_encrypt;

ARCHITECTURE Behavioral OF tb_DESXL_encrypt IS
    COMPONENT DESXL_encrypt
        PORT (
            inp : IN STD_LOGIC_VECTOR(0 TO 63);
            key : IN STD_LOGIC_VECTOR(0 TO 63);
            key1 : IN STD_LOGIC_VECTOR(0 TO 63);
            key2 : IN STD_LOGIC_VECTOR(0 TO 63);
            outp : OUT STD_LOGIC_VECTOR(0 TO 63)
        );
    END COMPONENT;

    --inps
    SIGNAL inp : STD_LOGIC_VECTOR(0 TO 63);
    SIGNAL key : STD_LOGIC_VECTOR(0 TO 63);
    SIGNAL key1 : STD_LOGIC_VECTOR(0 TO 63);
    SIGNAL key2 : STD_LOGIC_VECTOR(0 TO 63);

    --outps
    SIGNAL outp : STD_LOGIC_VECTOR(0 TO 63);
BEGIN
    ip_instance : DESXL_encrypt
    PORT MAP(
        inp => inp,
        key => key,
        key1 => key1,
        key2 => key2,
        outp => outp
    );

    stim_proc : PROCESS
    BEGIN
        inp <= "0100000101000001010000010100000101000001010000010100000101000001"; -- AAAAAAAA, hex: 4141414141414141
        key <= "0100001001000010010000100100001001000010010000100100001001000010"; -- BBBBBBBB, hex: 4242424242424242
        key1 <= "0100001101000011010000110100001101000011010000110100001101000011"; -- CCCCCCCC, hex: 4343434343434343  
        key2 <= "0100010001000100010001000100010001000100010001000100010001000100"; -- DDDDDDDD, hex: 4444444444444444

        WAIT FOR 10 ns;
        ASSERT outp = "1111100101101010001011001101000100001000101100011010100100100011" REPORT "Encrypt not working correctly" SEVERITY failure; -- 3c0941e5af5dfebb	
        
          wait;
    END PROCESS;
END Behavioral;