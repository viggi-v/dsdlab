
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decade_counter is
    Port ( data_in : in STD_LOGIC_VECTOR (3 downto 0);
           load : in STD_LOGIC;
           up : in STD_LOGIC;
           clear : in STD_LOGIC;
           clk : in STD_LOGIC;
           tc : out STD_LOGIC;
           bit_out : out STD_LOGIC_VECTOR (7 downto 0);
           bit_enab :  out STD_LOGIC_VECTOR (7 downto 0)
           --cntr : out STD_LOGIC_VECTOR (3 downto 0)
           );
end decade_counter;

architecture Behavioral of decade_counter is


    signal count_val : STD_LOGIC_VECTOR(3 downto 0) := "0000";
    component bcd_to_seven_seg port(
         bcd : in STD_LOGIC_VECTOR (3 downto 0);
         seg : out STD_LOGIC_VECTOR (7 downto 0);
         enab : out STD_LOGIC_VECTOR (7 downto 0)
     );
     end component;
begin
    bcd_decoder: bcd_to_seven_seg port map(
        bcd => count_val,
        seg => bit_out,
        enab => bit_enab);
--process(clk)
--        begin
--           if(clk'event and clk='1') then
--                divcntr <= divcntr+1;
--            end if;
--        end process clkevent;
--    divclock <= divcntr(26);
process(clk)
            --variable counter : integer range 0 to 10;--std_logic_vector(3 downto 0);
            begin
                --counter := to_integer(unsigned(count_val));
                if(clear = '1') then count_val <= "0000";             
                elsif (load = '0') then
                    count_val <= data_in;
                elsif(clk = '1' and clk'event) then
                    if (up='1') then
                    count_val <= std_logic_vector(unsigned(count_val) + "0001");
                    --counter := counter+1;
                    --counter := counter mod 10;
                    if(count_val = "1001")then
                        tc <= '1';
                        count_val <= "0000";
                    else
                         tc <= '0';
                    end if;
                    elsif (up ='0') then
                        count_val <= std_logic_vector(unsigned(count_val) - "0001");
                    --counter := counter-1;
                    --counter := counter rem 0;
                        if(count_val = "0000")then
                            tc <= '1';
                            count_val <= "1001";
                        else
                            tc <= '0';
                        end if;
                    end if;
                end if;
                --count_val <= std_logic_vector(to_unsigned(counter,count_val'length));
       end process;      
       --cntr <= count_val;      
end Behavioral;
