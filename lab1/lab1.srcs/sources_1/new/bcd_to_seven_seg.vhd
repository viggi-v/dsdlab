----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.01.2017 14:17:34
-- Design Name: 
-- Module Name: bcd_to_seven_seg - Behavioral
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

entity bcd_to_seven_seg is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           seg : out STD_LOGIC_VECTOR (7 downto 0);
           enab : out STD_LOGIC_VECTOR (7 downto 0)
           );
end bcd_to_seven_seg;

architecture Behavioral of bcd_to_seven_seg is

begin
    enab <= "01111111";
    with bcd select
        seg <= "00000011" when "0000",
               "10011111" when "0001",
               "00100101" when "0010",
               "00001101" when "0011",
               "10011001" when "0100",
               "01001001" when "0101",
               "01000001" when "0110",
               "00011111" when "0111",
               "00000001" when "1000",
               "00001001" when "1001",
               "11111110" when others;
               
end Behavioral;
