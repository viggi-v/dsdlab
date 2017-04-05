----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.01.2017 15:34:46
-- Design Name: 
-- Module Name: four_bit_adder - Behavioral
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

entity four_bit_adder is
    Port ( a1 : in STD_LOGIC_VECTOR (3 downto 0);
           b1 : in STD_LOGIC_VECTOR (3 downto 0);
           cin1 : in STD_LOGIC;
           s1 : out STD_LOGIC_VECTOR (3 downto 0);
           cout1 : out STD_LOGIC);
end four_bit_adder;

architecture Behavioral of four_bit_adder is
    

    component fulladder
        PORT(a,b,cin:in std_logic;sum,cout : out std_logic);
    end component;

signal cint:std_logic_vector(3 downto 1);
begin
FA0:fulladder port map(a1(0),b1(0),cin1,s1(0),cint(1));
FA1:fulladder port map(a1(1),b1(1),cint(1),s1(1),cint(2));
FA2:fulladder port map(a1(2),b1(2),cint(2),s1(2),cint(3));
FA3:fulladder port map(a1(3),b1(3),cint(3),s1(3),cout1);
end Behavioral;
