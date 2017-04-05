----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.03.2017 14:29:18
-- Design Name: 
-- Module Name: sr - Behavioral
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

entity sr is
    Port ( sel : in STD_LOGIC_VECTOR (1 downto 0);
           d : in STD_LOGIC_VECTOR (7 downto 0);
           lin : in STD_LOGIC;
           rin : in STD_LOGIC;
           clk : in STD_LOGIC;  
           q : inout STD_LOGIC_VECTOR (7 downto 0));
end sr;

architecture Behavioral of sr is
    signal divcntr :std_logic_vector(26 downto 0);
    signal divclk : std_logic;
begin

--   process(clk)
--            begin
--               if(clk'event and clk='1') then
--                     divcntr <= divcntr+1;
--                end if;
--            end process clkevent;
--    divclk <= divcntr(26);
    process(clk)
        variable temp : std_logic_vector(7 downto 0);
        begin
            --temp := q;
            if(clk = '1' and clk'event) then
                case sel is 
                    when "00" => q <= d;
                    when "01" =>
                        q(0) <= rin;
                        for i in 1 to 7 loop
                            q(i) <= q(i-1); 
                        end loop;
                    when "10" =>
                        q(7) <= lin;
                        for i in 0 to 6 loop
                            q(i) <= q(i+1); 
                        end loop;
                    when others => q <= q;
                end case;
            end if;
        end process;
end Behavioral;
