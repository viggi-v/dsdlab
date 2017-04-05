----------------------------------------------------------------------------------
-- File Name: main.vhd 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity main is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           U : in  STD_LOGIC_VECTOR (2 downto 0);
           hsync : out  STD_LOGIC;
           vsync : out  STD_LOGIC;
           VGA_out_red : out  STD_LOGIC_VECTOR (3 downto 0);
           VGA_out_green : out  STD_LOGIC_VECTOR (3 downto 0);
           VGA_out_blue : out  STD_LOGIC_VECTOR (3 downto 0);
           up, down, left, right: STD_LOGIC);
end main;

architecture Behavioral of main is

signal clk_25       : STD_LOGIC;
signal rows     	: STD_LOGIC_VECTOR (9 downto 0);
signal cols     	: STD_LOGIC_VECTOR (9 downto 0);
signal datamem  	: STD_LOGIC_VECTOR (2 downto 0);
signal enormal  	: std_logic;
signal eencryp  	: std_logic;
signal address  	: STD_LOGIC_VECTOR (15 downto 0);
signal dataread 	: STD_LOGIC_VECTOR (2 downto 0);
signal dataencryp   : STD_LOGIC_VECTOR (2 downto 0);
signal colors       : STD_LOGIC_VECTOR (2 downto 0);
signal temp         : STD_LOGIC_VECTOR(1 downto 0);
signal locked       : STD_LOGIC;
--signal up_d,down_d, left_d,right_d : STD_LOGIC;
component reader is
    Port ( clk, reset : in  STD_LOGIC;
           row : in  STD_LOGIC_VECTOR (9 downto 0);
           col : in  STD_LOGIC_VECTOR (9 downto 0);
           addr : out  STD_LOGIC_VECTOR (15 downto 0);
           ennormal, enencryp : out std_logic;
		   datain : in  STD_LOGIC_VECTOR (2 downto 0);
		   up,down,left,right : STD_LOGIC;
		   dataout : out  STD_LOGIC_VECTOR (2 downto 0));
end component;
--component debounce is
--    Port (clk_i : in std_logic;
--      sig_i : in std_logic;
--      pls_o : out std_logic
--   );
--end component;
component mux is
    Port ( clk : in  STD_LOGIC;
           ennormal : in  STD_LOGIC;
           enencryp : in  STD_LOGIC;
           data_normal : in  STD_LOGIC_VECTOR (2 downto 0);
		   data_encryp : in  STD_LOGIC_VECTOR (2 downto 0);
           dataout : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

component vga_controller is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
		   VGA_in_red : in std_logic_vector(3 downto 0);
		   VGA_in_green : in std_logic_vector(3 downto 0);
	       VGA_in_blue : in std_logic_vector(3 downto 0);
           col : out  STD_LOGIC_VECTOR (9 downto 0);
           row : out  STD_LOGIC_VECTOR (9 downto 0);
		   VGA_out_red : out std_logic_vector(3 downto 0);
		   VGA_out_green : out std_logic_vector(3 downto 0);
		   VGA_out_blue : out std_logic_vector(3 downto 0);
           hsync : out  STD_LOGIC;
           vsync : out  STD_LOGIC);

end component;

component encryption is
    Port ( U : in  STD_LOGIC_VECTOR (2 downto 0);
           P : in  STD_LOGIC_VECTOR (2 downto 0);
           O : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

component blk_mem_gen_1 is
  PORT(clka : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
end component;
component clk_wiz_0 is
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
begin
READER_1: reader
    port map ( clk      => clk_25,
	           reset    => reset,
               row      => rows,
               col      => cols,
               addr     => address,
               ennormal => enormal,
			   enencryp => eencryp,
			   datain   => datamem,
			   dataout  => dataread,
			   up       => up,
			   down     => down,
			   left     => left,
			   right    => right);

MUX_1: mux
    Port map ( clk         => clk_25,
			   ennormal    => enormal,
			   enencryp    => eencryp,
			   data_normal => dataread,
			   data_encryp => dataencryp,
			   dataout     => colors);

VGA_CONTROLLER_1: vga_controller
    Port map ( clk                       => clk_25,
			   reset                     => reset,
			   VGA_in_red (0)            => colors (2),
			   VGA_in_red (3 downto 1)   => "000",
			   VGA_in_green (0)          => colors (1),
			   VGA_in_green (3 downto 1) => "000",
			   VGA_in_blue (0)           => colors (0),
			   VGA_in_blue (3 downto 1)  => "000",
			   col                       => cols,
			   row                       => rows,
			   VGA_out_red               => VGA_out_red,
			   VGA_out_green             => VGA_out_green,
			   VGA_out_blue              => VGA_out_blue,
			   hsync                     => hsync,
			   vsync                     => vsync);

ENCRYPTION_1: encryption
    Port map ( U => U,
			   P => dataread,
			   O => dataencryp);
ROM: blk_mem_gen_1
    port map(clka  => clk_25, 
             addra => address,
             douta => datamem );


--- insert code here to connect memory and generate clk_25		
clk_viz:  clk_wiz_0
    port map(
      clk_in1 => clk,
      -- Clock out ports
      clk_out1 => clk_25,
      -- Status and control signals
      reset => reset,
      locked => locked);
--debounce1: debounce
--    port map(
--          clk_i => clk,
--          sig_i => up,
--          pls_o => up_d
--    );
--debounce2: debounce
--        port map(
--              clk_i => clk,
--              sig_i => down,
--              pls_o => down_d
--    );
              
--debounce3: debounce
--            port map(
--                  clk_i => clk,
--                  sig_i => right,
--                  pls_o => right_d
--            );
--debounce4: debounce
--                port map(
--                      clk_i => clk,
--                      sig_i => left,
--                      pls_o => left_d
--    );
end Behavioral;

