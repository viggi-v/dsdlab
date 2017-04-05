----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.01.2017 15:33:35
-- Design Name: 
-- Module Name: bcd_tb - Behavioral
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

entity bcd_tb is
--  Port ( );
end bcd_tb;

architecture Behavioral of bcd_tb is


component bcd_to_seven_seg
    PORT(
        bcd : in STD_LOGIC_VECTOR (3 downto 0);
        seg : out STD_LOGIC_VECTOR (7 downto 0);
        enab : out STD_LOGIC_VECTOR (7 downto 0)
    );
end component;

    SIGNAL bcd_tb : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL seg_tb : STD_LOGIC_VECTOR (7 downto 0);
    SIGNAL enab_tb : STD_LOGIC_VECTOR (7 downto 0);
begin
    -- in the port map, what you see on the left is that of component
    -- and one you see on the right is that of test bench
uut: bcd_to_seven_seg port map(
    bcd => bcd_tb,
    seg => seg_tb,
    enab => enab_tb
);
        
tb : PROCESS
        BEGIN
        
            bcd_tb <= transport "0000";
            wait for 25 ns;
            
            bcd_tb <= transport "0001";
            wait for 25 ns;
                        
            bcd_tb <= transport "0010";
            wait for 25 ns;
        
            bcd_tb <= transport "0011";
            wait for 25 ns;
            
            bcd_tb <= transport "0100";
            wait for 25 ns;
        END PROCESS;
end Behavioral;
