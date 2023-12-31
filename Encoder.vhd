----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:11:24 07/06/2015 
-- Design Name: 
-- Module Name:    Encoder - Behavioral 
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

entity Encoder is
    Port ( sel : in  integer range  7 downto 0;
           Output : out  STD_LOGIC_VECTOR (7 downto 0));
end Encoder;

architecture Behavioral of Encoder is

begin
with sel select
       output<="00000001" when 0, 
               "00000010" when 1, 
               "00000100" when 2, 
			      "00001000" when 3, 
			      "00010000" when 4, 
			      "00100000" when 5, 
			      "01000000" when 6,
               "10000000" when 7;
					--"01000000" when 8;
					--unaffected when others; 
			

--			"10000000";--output <="00000001" when sel= 0 else
--         "00000010" when sel= 1 else
--         "00000100" when sel= 2 else
--			"00001000" when sel= 3 else
--			"00010000" when sel= 4 else
--			"00100000" when sel= 5 else
--			"01000000" when sel= 6 else
--			"10000000"; 
end Behavioral;

