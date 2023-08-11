----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:18:14 07/10/2015 
-- Design Name: 
-- Module Name:    count - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-------------- Counter with if
------------entity Counter is
------------    Port ( clk : in  STD_LOGIC;
------------           digit : out  integer range  9 downto 0);
------------end Counter;
------------
------------architecture Behavioral of Counter is
------------
------------signal count : integer range 9 downto 0:=0;
------------
------------begin
------------
------------   process( clk,count)
------------
------------     begin
------------
------------       if (clk'event and clk ='1' and count < 9 ) then
------------
------------              count<=count+1;
------------
------------       elsif(clk'event and clk ='1' and count = 9  ) then
------------
------------           count <=0;
------------
------------       end if;
------------
------------                digit<=count;
------------
------------    end process;

--counter with until

entity Counter is

    Port ( clk : in  STD_LOGIC;
	 
           digit : out  integer range  0 to 9);
			  
    end Counter;
	 
architecture Behavioral of Counter is
 
	begin
           PROCESS 
               VARIABLE temp : INTEGER RANGE 0 TO 10;
                BEGIN
                    WAIT UNTIL (clk'EVENT AND clk='1');
						  
                       temp := temp + 1;
							  
                       IF (temp=10) THEN
                    temp := 0;
						 
              END IF;
                digit <= temp;
					  
                 end process;
	
	 end Behavioral;