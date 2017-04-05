library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

Entity clk_divider_refresh_rate_2display is
port(
		clk 		: in STD_LOGIC;
		rst 		: in STD_LOGIC;
		an			: out STD_LOGIC
	);
end clk_divider_refresh_rate_2display;

Architecture behavior of clk_divider_refresh_rate_2display is

signal count : STD_LOGIC_VECTOR(13 downto 0) := "00000000000000";
signal an_int : STD_LOGIC;

begin
    an <= an_int;    
	process (clk) begin
		if rising_edge(clk) then
			if (rst = '1') then
				an_int <= '0';
				count <= "00000000000000";
			elsif (count(13) = '1') then
			    an_int <= not(an_int);
				count <= "00000000000000";
		    else
				count <= count + '1';
			end if;
		end if;
	end process;
end behavior;