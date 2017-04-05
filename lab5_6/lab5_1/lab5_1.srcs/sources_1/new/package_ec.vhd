----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.03.2017 13:58:47
-- Design Name: 
-- Module Name: package_ec - Behavioral
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

package package_ec is
    function vec2int(vec1:std_logic_vector) return integer;
    function int2vec(int1,Nbits: integer) return std_logic_vector;
end package_ec;

package body package_ec is

    function int2vec(int1, Nbits : integer) return std_logic_vector is
        variable N1 : integer;
        variable retval : std_logic_vector(Nbits-1 downto 0);
        begin 
            N1 := int1;
            for i in retval'Reverse_Range loop
                if(N1 mod 2 = 1) then 
                    retval(i) := '1';
                else
                    retval(i) := '0';
                end if;
                N1 := N1/2;
            end loop;
         return retval;
      end int2vec;
      
      function vec2int(vec1:std_logic_vector) return integer is
        variable retval : integer;
        begin 
            retval := 0;
            for i in vec1'high downto 1 loop
                if(vec1(i) = '1') then
                    retval := (retval+1)*2;
                else
                    retval := retval*2;
                end if;
            end loop;
            if(vec1(0) = '1') then 
                retval := retval+1;
            end if;
            return retval;
        end vec2int;      
end package_ec;
