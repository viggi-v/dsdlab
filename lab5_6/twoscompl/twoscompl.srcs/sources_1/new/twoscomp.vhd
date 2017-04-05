----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.03.2017 15:38:04
-- Design Name: 
-- Module Name: twoscomp - Behavioral
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

entity twoscomp is
    Port ( x : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           z : out STD_LOGIC);
end twoscomp;

architecture Behavioral of twoscomp is

    type state is (s0,s1,s2,s3,s4,s5,s6);
    signal next_state, curr_state : state;
    shared variable temp_z : STD_LOGIC;    

begin

update: process(clk, rst)
        begin
            if(rst = '1') then
                curr_state <= s0;
                z <= '0';
            elsif(clk'event and clk ='1') then
                curr_state <= next_state;
                z <= temp_z;
            end if;
        end process;

nsd: process(x)
        begin
            case curr_state is
            when s0 =>
                    if (x= '0') then
                        next_state <= s1;
                    else 
                        next_state <= s4;
                    end if; 
                    temp_z := x;    
            when s1 =>
                    if (x= '0') then
                        next_state <= s2;
                    else 
                        next_state <= s5;
                    end if; 
                    temp_z := x;
            when s2 =>
                    if (x= '0') then
                        next_state <= s3;
                    else 
                        next_state <= s6;
                    end if;
                    temp_z := x; 
            when s3 =>
                    next_state <= s0; 
                    temp_z := x; 
            when s4 =>
                    next_state <= s5;
                    temp_z := not(x); 
            when s5 =>
                    next_state <= s6;
                    temp_z := not(x);         
            when s6 =>
                    next_state <= s0;
                    temp_z := not(x);
            end case;
      end process;
end Behavioral;
