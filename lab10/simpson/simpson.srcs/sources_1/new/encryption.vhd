----------------------------------------------------------------------------------
-- File Name: encryption.vhd
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity encryption is
    Port ( U : in  STD_LOGIC_VECTOR (2 downto 0);
           P : in  STD_LOGIC_VECTOR (2 downto 0);
           O : out  STD_LOGIC_VECTOR (2 downto 0));
end encryption;

architecture Behavioral of encryption is

signal pw : STD_LOGIC_VECTOR (2 downto 0) := "101";

begin

O(0) <= P(0) when pw(0) = U(0) else
        not P(0);
O(1) <= P(1) when pw(1) = U(1) else
        not P(1);
O(2) <= P(2) when pw(2) = U(2) else
        not P(2);

end Behavioral;

