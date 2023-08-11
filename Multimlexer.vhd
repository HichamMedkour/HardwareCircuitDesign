----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:00:50 07/07/2015 
-- Design Name: 
-- Module Name:    Multimlexer - Behavioral 
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

entity Multimlexer is
    Port ( y1 : in  STD_LOGIC_VECTOR (7 downto 0);
           y2 : in  STD_LOGIC_VECTOR (7 downto 0);
           sel3 : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (7 downto 0));
end Multimlexer;

architecture Behavioral of Multimlexer is

begin
 with sel3 select
      output<= y1 when '0',
		         y2 when others;
end Behavioral;

