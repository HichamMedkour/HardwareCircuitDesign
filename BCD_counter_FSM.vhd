----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:13:25 07/16/2015 
-- Design Name: 
-- Module Name:    BCD_counter_FSM - Behavioral 
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

entity BCD_counter_FSM is
    Port ( rst  : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           output : out integer range 0 to 9);
end BCD_counter_FSM;

architecture Behavioral of BCD_counter_FSM is
type state is (S0,S1,S2,S3,S4,S5,S6,S7,S8,S9);
signal S_present,S_future: state;

begin
--Uppert section
process(S_present)
begin
case S_present is 
           when S0 => output<=0; S_future<= S1;
			  when S1 => output<=1; S_future<= S2;
			  when S2 => output<=2; S_future<= S3;
			  when S3 => output<=3; S_future<= S4;
			  when S4 => output<=4; S_future<= S5;
			  when S5 => output<=5; S_future<= S6;
			  when S6 => output<=6; S_future<= S7;
			  when S7 => output<=7; S_future<= S8;
			  when S8 => output<=8; S_future<= S9;
			  when S9 => output<=9; S_future<= S0;
end case;
end process;
--lower section
process(rst,clk,S_future)
begin
if rst='1' then S_present<=S0;
elsif clk'event and clk='1' then S_present<=S_future;
end if ;
end process;
end Behavioral;

