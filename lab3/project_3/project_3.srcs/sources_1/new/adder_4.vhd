----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.01.2017 14:13:57
-- Design Name: 
-- Module Name: adder_4 - Behavioral
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

entity adder_4 is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC;
           sum : out STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC);
end adder_4;

architecture Behavioral of adder_4 is
    
    signal c : STD_LOGIC_VECTOR(4 downto 0);
begin
    c(0) <= cin;
    gen: for i in 0 to 3 generate
        sum(i) <= a(i) xor b(i) xor c(i);
        c(i+1) <= (a(i) and b(i)) or (a(i) and c(i)) or (b(i) and c(i));
    end generate gen;
        
    cout <= c(4);

end Behavioral;
