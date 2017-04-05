----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.03.2017 14:22:36
-- Design Name: 
-- Module Name: seqdet - Behavioral
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

entity seqdet is
    Port ( x : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           y : out STD_LOGIC;
           z : out STD_LOGIC);
end seqdet;

architecture Behavioral of seqdet is
type state is (s0,s1,s2,s3,s4,s5,s6,s7,s8);
shared variable temp_y, temp_z : STD_LOGIC;
signal curr_state, next_state  : state;
begin

update: process(clk, reset)
    begin        
        if(reset ='1') then
            curr_state <= s0;
--            y <= '0';
--            z <= '0';
--            temp_y := '0';
--            temp_z := '0';
        elsif(clk'event and clk = '1') then
            curr_state <= next_state;   
            y <= temp_y;
            z <= temp_z;
        end if;
    end process;
nsd: process(x)
    begin
        temp_y := '0';
        temp_z := '0';
        case curr_state is
            when s0 => 
                if(x='0') then
                    next_state <= s1;
                else
                    next_state <= s3;
                end if;
            when s1 =>
                    if x = '0' then
                        next_state <= s1;
                    else
                        next_state <= s2;
                    end if;
            when s2 => 
                    if x = '0' then
                        next_state <= s4;            
                    else
                        next_state <= s6;
                        temp_z := '1';
                    end if;
    
            when s3 => 
                    if x = '0' then
                        next_state <= s4;            
                    else
                        next_state <= s3;            
                    end if;
            when s4 => 
                    if x = '0'then
                         next_state <= s1;           
                    else
                         next_state <= s5;
                         temp_y := '1';           
                    end if;
            when s5 => 
                    if x = '0' then
                        next_state <= s4;                
                    else
                        next_state <= s6;
                        temp_z := '1';                                    
                    end if;
            when s6 => 
                    if x = '0' then
                        next_state <= s7;            
                    else
                        next_state <= s6;            
                    end if;
            when s7 => 
                    if x = '0' then
                         next_state <= s7;           
                    else
                         next_state <= s8;           
                    end if;
            when s8 =>
                    if x = '0' then
                        next_state <= s7;
                    else
                        next_state <= s6;
                        temp_z := '1';
                    end if;
            end case;
        end process;            
end Behavioral;
