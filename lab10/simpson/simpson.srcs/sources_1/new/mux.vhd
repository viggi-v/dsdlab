----------------------------------------------------------------------------------
-- File Name: mux.vhd
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity mux is
    Port ( clk : in  STD_LOGIC;
           ennormal : in  STD_LOGIC;
           enencryp : in  STD_LOGIC;
           data_normal : in  STD_LOGIC_VECTOR (2 downto 0);
			  data_encryp : in  STD_LOGIC_VECTOR (2 downto 0);
           dataout : out  STD_LOGIC_VECTOR (2 downto 0));
end mux;

architecture Behavioral of mux is

begin


	mux1: process (clk)
	
		begin
				
			if clk'event and clk='1' then
				if (ennormal = '0') and (enencryp = '0') then
					dataout <= (others => '0');
				elsif (ennormal = '1') and (enencryp = '0') then
					dataout <= data_normal;
				elsif (ennormal = '0') and (enencryp = '1') then
					dataout <= data_encryp;
				else dataout <= (others => '0');
				end if;
				
			end if;
	end process mux1;

end Behavioral;

