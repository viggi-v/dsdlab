----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.03.2017 13:44:34
-- Design Name: 
-- Module Name: int2vec - Behavioral
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
use work.package_ec.all;

entity int2vectest is
  Port (op : out  std_logic_vector(3 downto 0);
        ip : in std_logic_vector (3 downto 0)
        );
end int2vectest;

architecture Behavioral of int2vectest is     
begin

    op <= int2vec(2*vec2int(ip),4);
    

end Behavioral;
