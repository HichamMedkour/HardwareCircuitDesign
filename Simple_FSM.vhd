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
type state is (SA,SB);
signal Sp,Sf:state;
begin
--upper section
process(Sp,d,a,b)
begin
case Sp is 
            when SA => x<=a;
				    if d='1' then Sf<=SB;else Sf<=SA; end if;
					 
			   when SB => x<=b;
           		 if d='1' then Sf<=SA;else Sf<=SB; end if;
					 
end case;
end process;
--lower section
process(clk, rst, Sf)
begin
         if rst='1' then  Sp<=SA;
			
            elsif rising_edge (clk) then
				
              Sp<=Sf;
				  
               end if;
end process; 
end Behavioral;

