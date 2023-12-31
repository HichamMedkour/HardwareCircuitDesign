----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:23:52 07/11/2015 
-- Design Name: 
-- Module Name:    DFF_case - Behavioral 
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

entity DFF_case is
    Port ( d : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end DFF_case;

architecture Behavioral of DFF_case is

begin
process (clk,rst)
begin


   case rst is
          when '1' => 
			       
					 q<='0';
			  
		    when '0'=>   
			       if  clk'event and clk='1' then
					     q<= d;
                end if;						  	  
			when others => null;
		 
   end case; 
	
  end process;
end Behavioral;

