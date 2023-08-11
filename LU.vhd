----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:51:43 07/07/2015 
-- Design Name: 
-- Module Name:    LU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LU is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           b : in  STD_LOGIC_VECTOR (7 downto 0);
           sel1 : in  STD_LOGIC_VECTOR (2 downto 0);
           y1 : out  STD_LOGIC_VECTOR (7 downto 0));
end LU;

architecture Behavioral of LU is

begin
with sel1 select
        y1 <=      not a    when "000",
                   not b    when "001",
	            a   and  b   when "010",
	            a   or   b   when "011",
	            a  nand  b   when "100",
	            a   nor  b   when "101",
	            a   xor  b   when "110",
	            a   xnor b   when others; 
end Behavioral;

