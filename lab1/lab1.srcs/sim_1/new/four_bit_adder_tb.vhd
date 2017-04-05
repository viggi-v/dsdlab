----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.01.2017 15:44:22
-- Design Name: 
-- Module Name: four_bit_adder_tb - Behavioral
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

entity four_bit_adder_tb is
--  Port ( );
end four_bit_adder_tb;

architecture Behavioral of four_bit_adder_tb is

begin component four_bit_adder
    PORT(
        a1 : IN std_logic_vector (3 downto 0);
        b1 : IN std_logic_vector (3 downto 0);
        cin1 : IN std_logic;
        s1 : OUT std_logic_vector (3 downto 0);
        cout1 : OUT std_logic
    );
end component;
begin



end Behavioral;
