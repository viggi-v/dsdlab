
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library UNISIM;
use UNISIM.VComponents.all;

entity twodigit_counter_7segment is
    Port ( clkin, reset, resetc, enable : in STD_LOGIC;
           dout : out STD_LOGIC_VECTOR (7 downto 0);
           locked : out std_logic;
           an_en, seg7 : out STD_LOGIC_VECTOR (7 downto 0));
end twodigit_counter_7segment;

architecture Behavioral of twodigit_counter_7segment is

--- insert component declarations here .....
--component clk_wiz_0
--port
-- (-- Clock in ports
--  clk_5           : in     std_logic;
--  -- Clock out ports
--  clk_out1          : out    std_logic;
--  -- Status and control signals
--  reset             : in     std_logic;
--  locked            : out    std_logic
-- );
--end component;

COMPONENT c_counter_binary_0
  PORT (
    CLK : IN STD_LOGIC;
    CE : IN STD_LOGIC;
    SCLR : IN STD_LOGIC;
    THRESH0 : OUT STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END COMPONENT;

component clk_5MHz
port
 (-- Clock in ports
  clk_in1           : in     std_logic;
  -- Clock out ports
  clk_out1          : out    std_logic;
  -- Status and control signals
  reset             : in     std_logic;
  locked            : out    std_logic
 );
end component;

component clk_divider_1hz_behavior Is
port (
		clk : in STD_LOGIC;
		reset : in STD_LOGIC;
		enable : in STD_LOGIC;
		q : out STD_LOGIC
	);
end component;	

component bcd27seg
Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           led : out STD_LOGIC_VECTOR (7 downto 0));
end component;
           
component clk_divider_refresh_rate_2display
 port(
		clk 		: in STD_LOGIC;
		rst 		: in STD_LOGIC;
		an			: out STD_LOGIC
	);
end component;

COMPONENT ila_dig0
PORT (
	clk : IN STD_LOGIC;
	probe0 : IN STD_LOGIC;
	probe1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
);
END COMPONENT  ;
	          
signal clk : std_logic;
Signal clk_1hz : STD_LOGIC;
Signal thresh0 : STD_LOGIC;
signal thresh1: STD_LOGIC;

signal  anode_clk : STD_LOGIC;
signal cntr0,cntr1 : STD_LOGIC_VECTOR (3 downto 0);
signal led_dig0, led_dig1 : STD_LOGIC_VECTOR (7 downto 0);


begin

-- insert component instantiations here ----
--your_instance_name: clk_wiz_0
--   port map ( 
--   -- Clock in ports
--   clk_5 => clk_5,
--  -- Clock out ports  
--   clk_out1 => clk_out1,
--  -- Status and control signals                
--   reset => reset,
--   locked => locked            
-- );
 
component1: c_counter_binary_0  -- one's digit
  PORT MAP (
    CLK => clk_1hz ,
    CE => enable,
    SCLR => resetc,
    THRESH0 => thresh0,
    Q => cntr0
  );
component2: c_counter_binary_0  -- ten's digit
    PORT MAP (
      CLK => clk_1hz,
      CE => thresh0,
      SCLR => resetc,
      THRESH0 => thresh1,
      Q => cntr1
    );
component3: clk_5MHz
     port map ( 
     -- Clock in ports
     clk_in1 => clkin,
    -- Clock out ports  
     clk_out1 => clk,
    -- Status and control signals                
     reset => reset,
     locked => locked            
   );
component4: clk_divider_1hz_behavior port map (clk,reset,enable,clk_1hz);
componentled1: bcd27seg port map(cntr0,led_dig0);
componentled2: bcd27seg port map(cntr1,led_dig1);
componentreferesh: clk_divider_refresh_rate_2display port map (clk,reset,anode_clk);
componentprobe: ila_dig0
PORT MAP (
	clk => clkin,
	probe0 => thresh0,
	probe1 => cntr0
);
process (anode_clk,led_dig0,led_dig1)
begin
  if (anode_clk='1') then
        an_en <= "11111110";
        seg7 <= led_dig0;
      else 
        an_en <= "11111101";
        seg7 <= led_dig1;
    end if;
end process;
dout(3 downto 0)<=cntr0;
dout(7 downto 4)<=cntr1;
end Behavioral;
