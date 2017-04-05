----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.01.2017 14:17:42
-- Design Name: 
-- Module Name: fulladder_tb - Behavioral
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

entity fulladder_tb is
--  Port ( );
end fulladder_tb;




architecture Behavioral of fulladder_tb is
-- Component Declaration for the Unit Under Test (UUT)
COMPONENT fulladder
PORT(
a : IN std_logic;
b : IN std_logic;
cin : IN std_logic;
sum : OUT std_logic;
cout : OUT std_logic
);
END COMPONENT;

--Inputs
SIGNAL a : std_logic := '0';
SIGNAL b : std_logic := '0';
SIGNAL cin : std_logic := '0';

--Outputs
SIGNAL sum : std_logic;
SIGNAL cout : std_logic;

BEGIN
-- Instantiate the Unit Under Test (UUT)
uut: fulladder PORT MAP(
a => a,
b => b,
cin => cin,
sum => sum,
cout => cout
);

PROCESS
BEGIN
a <= transport '0';
b <= transport '0';
cin <= transport '0';
wait for 50ns;
a <= transport '1';
wait for 50ns;
a <= transport '0';
b <= transport '1';
wait for 50ns;
a <= transport '1';
wait for 50ns;
a <= transport '0';
b <= transport '0';
cin <= transport '1';
wait for 50ns;
a <= transport '1';
wait for 50ns;
a <= transport '0';
b <= transport '1';
wait for 50ns;
a <= transport '1';
wait for 50ns;
wait for 50ns;
END PROCESS;
end Behavioral;
