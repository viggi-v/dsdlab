----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.01.2017 14:19:23
-- Design Name: 
-- Module Name: bcd_adder - Behavioral
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
--use ieee.std_logic_unsigned.all;
--use IEEE.STD_LOGIC_ARITH.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bcd_adder is
    Port ( bcd_a : in STD_LOGIC_VECTOR (3 downto 0);
           bcd_b : in STD_LOGIC_VECTOR (3 downto 0);
           bcd_cin : in STD_LOGIC;
          
           bcd_cout : out STD_LOGIC;
           bcd_seg : out STD_LOGIC_VECTOR(7 downto 0);
           bcd_enab : out STD_LOGIC_VECTOR(7 downto 0));
end bcd_adder;

architecture Behavioral of bcd_adder is
    --
    signal sumsig : std_logic_vector(3 downto 0);
    signal coutsig : std_logic;
    signal bcd_sum : STD_LOGIC_VECTOR (3 downto 0);
    component adder_4
        port(
            a : in STD_LOGIC_VECTOR (3 downto 0);
            b : in STD_LOGIC_VECTOR (3 downto 0);
            cin : in STD_LOGIC;
            sum : out STD_LOGIC_VECTOR (3 downto 0);
            cout : out STD_LOGIC
        );
    end component;
    component bcd_to_seven_seg
        port(
            bcd : in STD_LOGIC_VECTOR (3 downto 0);
            seg : out STD_LOGIC_VECTOR (7 downto 0);
            enab : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;
begin
    bcd_adder_first: adder_4
        port map ( a => bcd_a,
                   b => bcd_b,
                   cin => bcd_cin,
                   sum => sumsig,
                   cout => coutsig);
    bcd_sum <= std_logic_vector((unsigned(sumsig) + "0110")) when (coutsig = '1' or (unsigned(sumsig)>"1001"))
                else (sumsig);
    bcd_cout <= '1' when ((unsigned(sumsig) > "1001") or coutsig = '1')
                else '0';
    bcd_decoder : bcd_to_seven_seg
        port map (
            bcd => bcd_sum,
            seg => bcd_seg,
            enab =>bcd_enab
        );    
end Behavioral;
