----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:51:20 07/12/2015 
-- Design Name: 
-- Module Name:    Carry_Ripple_Adder - Behavioral 
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

entity Carry_Ripple_Adder is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           b : in  STD_LOGIC_VECTOR (7 downto 0);
           cin: in STD_LOGIC ;
           sum : out  STD_LOGIC_VECTOR (7 downto 0);
           cout : out STD_LOGIC);
end Carry_Ripple_Adder;

architecture Behavioral of Carry_Ripple_Adder is

begin
process (a,b,cin) 
variable cazz: std_logic_vector ( 8 downto 0);

begin
cazz(0):=cin;
for i in 0 to 7 loop

sum(i)<=a(i) xor b(i) xor cazz(i);
cazz(i+1) := (a(i) and b(i)) or ( a(i) and cin) or (b(i) and cazz(i));
 end loop;
 cout<= cazz(8);
 end process;
 end Behavioral;

