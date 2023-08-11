----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:52:22 06/26/2015 
-- Design Name: 
-- Module Name:    DFF - Behavioral 
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

entity DFF is
       PORT ( d, clk, rst: IN STD_LOGIC;
        q: OUT STD_LOGIC);
end DFF;
architecture Behavioral of DFF is
begin 
PROCESS (rst,clk)
BEGIN
IF (rst='1') THEN
q <= '0';
ELSIF (clk'EVENT AND clk='1') THEN
q <= d;
END IF;
END PROCESS;
end Behavioral;

