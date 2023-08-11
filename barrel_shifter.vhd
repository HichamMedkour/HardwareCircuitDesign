library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity Barrel_shifter is
    Port ( input : in  std_logic_VECTOR (7 downto 0);
           shift : in  integer range 0 to 7;
           output : out std_logic_VECTOR (7 downto 0));
end Barrel_shifter;

Architecture Behavioral of Barrel_shifter is
Subtype  ligne is std_logic_vector (7 downto 0);
type    RAM is array (7 downto 0)of ligne;
signal   row : RAM;
Signal S,K:std_logic_vector(7 downto 0);

Begin
row(0)<= K;
row(1)<= K(7 downto 1)& '0'; 
row(2)<= K(7 downto 2)& "00";
row(3)<= K(7 downto 3)& "000"; 
row(4)<= K(7 downto 4)& "0000";
row(5)<= K(7 downto 5)& "00000";
row(6)<= K(7 downto 6)& "000000";
row(7)<= K(7 downto 7)& "0000000";
S<= row(shift);
K<=input;output<=S;
End behavioral;