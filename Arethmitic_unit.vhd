----------------------------------------------------------------------------------
-- Company: Self-learning
-- Engineer: Hicham Medkour 
-- 
-- Create Date:    10:36:36 07/07/2015 
-- Design Name: 
-- Module Name:    Arethmitic_unit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: Xilinx
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned. All;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Arethmitic_unit is
    Port ( a : in std_logic_vector  (7 downto 0);
           b : in  STD_LOGIC_VECTOR (7 downto 0);
			  Cin: in std_logic;
           sel2 : in  STD_LOGIC_VECTOR (2 downto 0);
           y2 : out  STD_LOGIC_VECTOR (7 downto 0));
end Arethmitic_unit;

architecture Behavioral of Arethmitic_unit is

begin
      Y2<= a        when sel2= "000" else
		     a+10      when sel2= "001" else
		     a-3      when sel2= "010" else
		     b        when sel2= "011" else
		     b+1      when sel2= "100" else
		     b-1      when sel2= "101" else
		     a+b      when sel2= "110" else
		     a+b+Cin;		
end Behavioral;

