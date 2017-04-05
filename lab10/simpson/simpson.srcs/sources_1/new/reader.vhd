----------------------------------------------------------------------------------
-- File Name: reader.vhd
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity reader is
    Port ( clk, reset : in  STD_LOGIC;
           row : in  STD_LOGIC_VECTOR (9 downto 0);
           col : in  STD_LOGIC_VECTOR (9 downto 0);
           addr : out  STD_LOGIC_VECTOR (15 downto 0);
           ennormal, enencryp : out std_logic;
		   datain : in  STD_LOGIC_VECTOR (2 downto 0);
		   dataout : out  STD_LOGIC_VECTOR (2 downto 0);
		   up,down,left,right : STD_LOGIC);
end reader;

architecture Behavioral of reader is

	shared variable vtop : integer := 128;
	shared variable vbottom : integer := 351;
	
    shared variable htop1 : integer := 64;
	shared variable hbottom1 : integer := 287;
	shared variable htop2 : integer := 352;
	shared variable hbottom2 : integer := 575;

	signal addr_normal : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
	signal addr_encryp : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
	
	signal en_normal : std_logic := '0';
	signal en_encryp : std_logic := '0';

begin
    process(up, down,left, right)
        begin
            if(up'event and up = '1') then
                vtop := vtop + 10;
                vbottom := vbottom + 10;
             end if;
             if(down'event and down = '1') then
                 vtop := vtop - 10;
                 vbottom := vbottom - 10;
             end if;
             if(left'event and left = '1') then
                 htop1 := htop1 + 10;
                 hbottom2 := hbottom2 + 10;
                 htop2 := htop2 + 10;
                 hbottom1 := hbottom1 + 10;
             end if;                
             if(right'event and right = '1') then
                   htop1 := htop1 - 10;
                   hbottom2 := hbottom2 - 10;
                   htop2 := htop2 - 10;
                   hbottom1 := hbottom1 - 10;
             end if;
    end process;   
	ens : process (clk, reset)
	begin
		if reset = '1' then
				en_normal <= '0';
				en_encryp <= '0';		
		
		elsif clk'event and clk='1' then
			
				if (row >= vtop) and (row <= vbottom) then
					
					if (col >= htop1) and (col <= hbottom1) then
							en_normal <= '1';
							en_encryp <= '0';
					elsif (col >= htop2) and (col <= hbottom2) then
							en_normal <= '0';
							en_encryp <= '1';
					else
							en_normal <= '0';
							en_encryp <= '0';
					end if;
					
				else
						en_normal <= '0';
						en_encryp <= '0';
				end if;
				
		end if;
		
	end process ens;
	
	c_normal: process (clk, reset)
	begin
			if reset = '1' then
					
				addr_normal <= (others => '0');
				
			elsif clk'event and clk='1' then
			
				if en_normal = '1' then
				
					if addr_normal = 50175 then
						addr_normal <= (others => '0');
					else
						addr_normal <= addr_normal + 1;
					end if;

				end if;
			end if;
	end process c_normal;
	
	c_encryp: process (clk, reset)
	begin
			if reset = '1' then
					
				addr_encryp <= (others => '0');
				
			elsif clk'event and clk='1' then
			
				if en_encryp = '1' then
				
					if addr_encryp = 50175 then
						addr_encryp <= (others => '0');
					else
						addr_encryp <= addr_encryp + 1;
					end if;

				end if;
			end if;
	end process c_encryp;
	
	addr <= addr_normal when (en_normal = '1') else addr_encryp;
	
	dataout <= datain;

	ennormal <= en_normal;
	enencryp <= en_encryp;

end Behavioral;
