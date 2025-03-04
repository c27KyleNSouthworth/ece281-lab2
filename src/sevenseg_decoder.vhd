----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/27/2025 01:58:33 PM
-- Design Name: 
-- Module Name: sevenseg_decoder - Behavioral
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

entity sevenseg_decoder is
    Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
end sevenseg_decoder;

architecture Behavioral of sevenseg_decoder is

begin
    process(i_Hex) -- runs when i_Hex changes
    begin
        case i_Hex is 
            when "0000" => o_seg_n <= "0000001"; -- 0
            when "0001" => o_seg_n <= "1001111"; -- 1
            when "0010" => o_seg_n <= "0010010"; -- 2
            when "0011" => o_seg_n <= "0000110"; -- 3
            when "0100" => o_seg_n <= "1001100"; -- 4
            when "0101" => o_seg_n <= "0100100"; -- 5
            when "0110" => o_seg_n <= "0100000"; -- 6
            when "0111" => o_seg_n <= "0001111"; -- 7
            when "1000" => o_seg_n <= "0000000"; -- 8
            when "1001" => o_seg_n <= "0000100"; -- 9
            when "1010" => o_seg_n <= "0001000"; -- A
            when "1011" => o_seg_n <= "1100000"; -- B
            when "1100" => o_seg_n <= "1110010"; -- C
            when "1101" => o_seg_n <= "1000010"; -- D
            when "1110" => o_seg_n <= "0110000"; -- E
            when "1111" => o_seg_n <= "0111000"; -- F
            when others => o_seg_n <= "1111111"; -- off
        end case;
    end process;
end Behavioral;
