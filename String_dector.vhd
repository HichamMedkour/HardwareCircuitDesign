----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:52:53 07/22/2015 
-- Design Name: 
-- Module Name:    String_dector - Behavioral 
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

entity String_dector is
    Port ( d : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end String_dector;

architecture Behavioral of String_dector is
Type state is (Zero,One,Tow,Three);
Signal S_present,S_future:state;

begin
--upper
		process(d,S_present)
		begin 
		case S_present is
			  when Zero  =>  if d='1' then S_future<= One;  else S_future<=Zero;end if;q<='0';
								 
											
			  when One   =>  if d='1' then S_future<= Tow;  else S_future<=Zero;end if; q<='0';
								
											
			  when Tow   =>  if d='1' then S_future<= Three; else S_future<=Zero;end if;q<='0';
								 
											
			  when three =>  if d='1' then S_future<= Three; else S_future<=Zero;end if;q<='1';
			end case;
	end process;				 			 
--lower section:
process(rst,clk)
begin
if rst='1' then S_present<=Zero; elsif rising_edge (clk) then S_present<=S_future; end if;
end process;             												
end Behavioral;

