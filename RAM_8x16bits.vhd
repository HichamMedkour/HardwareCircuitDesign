library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
entity RAM_8x16bits is
    Port (  input : in  STD_LOGIC_VECTOR (7 downto 0);
              clk : in  STD_LOGIC;
               WR : in  bit;
           adress : in std_logic_vector( 3 downto 0);
           output : out  STD_LOGIC_vector(7 downto 0));
end RAM_8x16bits;

architecture Behavioral of RAM_8x16bits is

		Subtype  data is std_logic_vector( 7 downto 0);
		type ramm is array(0 to 15) of data;
		Signal  word : ramm;

begin

process (clk,adress,WR)

        Variable cazz:integer range 0 to 15;
begin

cazz:=to_integer(unsigned(adress));

	 case WR is 
					when '1' => 
					
							 If (clk'event and clk='1') then 
								word(cazz) <=input;
							 end if;
							 
					when '0' =>
					
							 if (clk'event and clk='1')then
								output <=word(cazz);
							 end if;
							 
	  end case; 
end process;
end Behavioral;

