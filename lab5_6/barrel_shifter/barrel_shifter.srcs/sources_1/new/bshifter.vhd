----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.03.2017 15:31:38
-- Design Name: 
-- Module Name: bshifter - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bshifter is
    Port ( d : in STD_LOGIC_VECTOR (7 downto 0);
           cntr : in STD_LOGIC_VECTOR (2 downto 0);
           log : in STD_LOGIC;
           dir : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (7 downto 0));
end bshifter;

architecture Behavioral of bshifter is

begin

    process(d,cntr,log,dir)
        variable count : integer;
        variable shift_bit : std_logic :='0';
        begin
            if(dir = '1') then
                shift_bit := '0';
            end if;
            if(log = '0' and dir = '0') then
                shift_bit := d(7);
            else
                shift_bit := '0';
            end if;
            count := to_integer(unsigned(cntr));
            case dir is
                when '1' =>
                    -- Left Shift 
                    for i in 6 downto 0 loop
                        if (i < count) then
                            q(i) <= shift_bit;
                        else
                            q(i) <= d(i-count);
                        end if;
                     end loop;
                     if(log = '0') then
                        q(7) <= d(7);
                     else
                        q(7) <= d(7-count);
                     end if;
                     
                 when '0' =>
                    -- right shift
                    for i in 0 to 7 loop
                        if (7-i > 7-count) then
                            q(7-i) <= shift_bit;
                        else
                            q(7-i) <= d((7-i)+count);
                        end if;
                    end loop;
                  when others =>
                    q <= "00000001";
                  end case;
           end process;
end Behavioral;
