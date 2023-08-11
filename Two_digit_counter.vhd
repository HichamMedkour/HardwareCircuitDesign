library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Tow_digit_counter is
    Port ( rst : in  bit;
           clk : in  STD_LOGIC;
           out1,out2 : out  std_logic_vector (6 downto 0));
end Tow_digit_counter;

architecture Behavioral of Tow_digit_counter is

signal count1, count2: integer range 0 to 9;
signal digit1,digit2 : std_logic_vector (6 downto 0);

begin

process( count1,count2,rst, clk)
begin
 case rst is 
        when '1' =>   count1<=0;
               		 count2<=0;
        when '0' =>			
		                     if rising_edge(clk) and count1 < 9 and count2 < 9 then
			 			         count1<=count1+1; 
									elsif rising_edge (clk) and count1 = 9 and count2 < 9 then
									count2<= count2+ 1; count1<=0;
									elsif rising_edge (clk) and count1 < 9 and count2 = 9 then
                           count1<=count1+1;							   	
                           elsif rising_edge (clk) and count1 = 9 and count2 = 9 then 
			                  count1 <=0;count2 <=0;
                           end if;
 end case;
end process;

Process (count1)
begin 
case count1 is 
      when 0 => digit1 <= "1111110";
      when 1 => digit1 <= "0110000";
      when 2 => digit1 <= "1101101";
	   when 3 => digit1 <= "1111001";
		when 4 => digit1 <= "0110011";
		when 5 => digit1 <= "1011011";
		when 6 => digit1 <= "0011111";
		when 7 => digit1 <= "1110000";
		when 8 => digit1 <= "1111111";
		when 9 => digit1 <= "1110011";
		when others =>  null;
end case;
end process;
     		
Process (count2)
begin 
case count2 is 
      when 0 => digit2 <= "1111110";
      when 1 => digit2 <= "0110000";
      when 2 => digit2 <= "1101101";
	   when 3 => digit2 <= "1111001";
		when 4 => digit2 <= "0110011";
		when 5 => digit2 <= "1011011";
		when 6 => digit2 <= "0011111";
		when 7 => digit2 <= "1110000";
		when 8 => digit2 <= "1111111";
		when 9 => digit2 <= "1110011";
		when others => null;
end case;
end process;
out1<=digit1;
out2<=digit2;		
End Behavioral;
