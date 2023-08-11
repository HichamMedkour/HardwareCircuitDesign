----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:43:51 06/27/2015 
-- Design Name: 
-- Module Name:    mux_time - Behavioral 
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

entity mux_time is
    Port ( a,b : in  STD_LOGIC_VECTOR (7 downto 0);
			  c : out STD_LOGIC_VECTOR (7 downto 0));
           --s : in  STD_LOGIC_VECTOR (1 downto 0);
           
end mux_time;

architecture Behavioral of mux_time is
begin
process (a,b,c)
begin
--with s selec t 
 c<= a after 0 ns;
 c<= b after 150 ns;
end process;
end Behavioral;

