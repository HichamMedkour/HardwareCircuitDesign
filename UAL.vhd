----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:22:50 07/07/2015 
-- Design Name: 
-- Module Name:    UAL - Behavioral 
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
--use IEEE.std_logic_unsigned. All;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UAL is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           b : in  STD_LOGIC_VECTOR (7 downto 0);
           cin : in  STD_LOGIC;
           sel : in  STD_LOGIC_VECTOR (3 downto 0);
           outt : out  STD_LOGIC_VECTOR (7 downto 0));
end UAL;

architecture Behavioral of UAL is

component LU 
    Port ( a    : in  STD_LOGIC_VECTOR (7 downto 0);
           b    : in  STD_LOGIC_VECTOR (7 downto 0);
           sel1 : in  STD_LOGIC_VECTOR (2 downto 0);
           y1   : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component Arethmitic_unit 
    Port ( a   : in  STD_LOGIC_VECTOR (7 downto 0);
           b   : in  STD_LOGIC_VECTOR (7 downto 0);
			  Cin : in  STD_LOGIC;
           sel2: in  STD_LOGIC_VECTOR (2 downto 0);
           y2  : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component Multimlexer 
    Port ( y1    : in  STD_LOGIC_VECTOR (7 downto 0);
           y2    : in  STD_LOGIC_VECTOR (7 downto 0);
           sel3  : in  STD_LOGIC;
           Output: out STD_LOGIC_VECTOR (7 downto 0));
end component;
signal s1,s2,s3:std_logic_vector (7 downto 0);
begin
  UU1:        LU          port map (a,b, sel(2 downto 0),s1);
  UU2:  Arethmitic_unit   port map (a,b,Cin,sel(2 downto 0),s2);
  UU3:     Multimlexer    port map (s1,s2,sel(3),s3);
  outt<=s3;
end Behavioral;

