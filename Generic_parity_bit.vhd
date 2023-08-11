----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:03:33 07/05/2015 
-- Design Name: 
-- Module Name:    Generic_parity_bit - Behavioral 
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

entity Generic_parity_bit is
    Port ( input : in  bit_VECTOR (7 downto 0);
           output : out  bit_VECTOR (8 downto 0));
end Generic_parity_bit;

architecture Behavioral of Generic_parity_bit is

begin
Process (input)
variable Hicham:bit;
begin
Hicham:='0';
for i IN input'RANGE loop
Hicham:= Hicham xor input(i);
end loop;
output<= Hicham & input(7 downto 0); 
end process;
end Behavioral;

