----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.02.2017 15:29:24
-- Design Name: 
-- Module Name: centurycounter - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity centurycounter is
    Port ( data_msb : in STD_LOGIC_VECTOR (3 downto 0);
           data_lsb : in STD_LOGIC_VECTOR (3 downto 0);
           clear : in STD_LOGIC;
           clk : in STD_LOGIC;
           load : in STD_LOGIC;
           up : in STD_LOGIC;
           tc : out STD_LOGIC;
           bit_enab : out STD_LOGIC_VECTOR (7 downto 0);
           bit_out : out STD_LOGIC_VECTOR (7 downto 0));
end centurycounter;

architecture Behavioral of centurycounter is
    
    signal divcntr : STD_LOGIC_VECTOR(26 downto 0);
    signal divclock : STD_LOGIC;
    signal flickclock : STD_LOGIC;
        
    --signal count_val : STD_LOGIC_VECTOR(3 downto 0) := "0000";
    signal tc_imm : STD_LOGIC;
    signal msb_signal : STD_LOGIC_VECTOR (7 downto 0);
    signal lsb_signal : STD_LOGIC_VECTOR (7 downto 0);
    signal dump_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal dump_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal out_enab : STD_LOGIC_VECTOR (7 downto 0) := "11111110";
    --signal out_bits : STD_LOGIC_VECTOR (7 downto 0);
        
    component decade_counter port(
               data_in : in STD_LOGIC_VECTOR (3 downto 0);
               load : in STD_LOGIC;
               up : in STD_LOGIC;
               clear : in STD_LOGIC;
               clk : in STD_LOGIC;
               tc : out STD_LOGIC;
               bit_out : out STD_LOGIC_VECTOR (7 downto 0);
               bit_enab : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
begin
    
    msb_counter: decade_counter port map(
        data_in => data_msb,
        load => load,
        up => up,
        clear => clear,
        clk => tc_imm,
        tc => tc,
        bit_out => msb_signal,
        bit_enab => dump_2);
    lsb_counter: decade_counter port map(
        data_in => data_lsb,
        load => load,
        up => up,
        clear => clear,
        clk => divclock,
        tc => tc_imm,
        bit_out => lsb_signal,
        bit_enab =>  dump_1);
        process(clk)
            begin
               if(clk'event and clk='1') then
                     divcntr <= divcntr+1;
                end if;
            end process clkevent;
        flickclock <= divcntr(15);
        divclock <= divcntr(26);    
        process(flickclock)
            begin            
                if(flickclock = '1' and flickclock'event) then
                    if(out_enab = "11111110") then
                        out_enab <= "11111101";
                        bit_out  <= msb_signal;
                    elsif(out_enab = "11111101") then
                        out_enab <= "11111110";
                        bit_out  <= lsb_signal;
                    end if;
                end if; 
            end process;
            bit_enab <= out_enab;        
end Behavioral;
