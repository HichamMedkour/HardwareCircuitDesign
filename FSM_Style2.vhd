----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:28:31 07/16/2015 
-- Design Name: 
-- Module Name:    Simple_FSM - Behavioral 
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

entity Simple_FSM is
    Port ( a,b : in  STD_LOGIC_vector(3 downto 0);
           rst,d,clk : in  STD_LOGIC;
          
           x : out  STD_LOGIC_vector(3 downto 0));
end Simple_FSM;

architecture Behavioral of Simple_FSM is
type state is (A1,B1);
signal Sp,Sf:state;
signal temp:std_logic_vector(3 downto 0);
begin
--upper section
process(Sp,d,a,b)
begin
case Sp is 
            when A1 => temp<=a;
				    if d='1' then
							 Sf<=B1;
							 
					 else
					 Sf<=A1; 
					 end if;
					 
			   when B1 => temp<=b;
           		 if d='1' then 
							 Sf<=A1;
					 else Sf<=B1;
				    end if;
					 
end case;
end process;
--lower section
process(clk,rst,Sf,temp)
begin
         if rst='1' then 
			    Sp<=A1;x<=temp;
         elsif rising_edge (clk)then
							 
							 case Sp is 
							 
									 when A1 =>
   									  x<=temp;
										  Sp<=Sf;
													 
									 when B1 => 
									     x<=temp;
										  Sp<=Sf;
									 	  
							 end case;            
				  
          end if;
end process; 
end Behavioral;