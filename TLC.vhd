library IEEE;
use IEEE.STD_LOGIC_1164.ALL;entity TLC is
    Port ( clk    : in  STD_LOGIC;
           Sdby   : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (5 downto 0));
end TLC;

architecture Behavioral of TLC is

type state is (YY,RY,GR,YR,RG);
signal p_state, f_state: state;
signal timer: integer range 0 to 5100;

begin
-- Upper section:
process(p_state,timer)
begin 
case p_state is

when YY  => output<="010010"; f_state<=RY;

when RY  => output<="001010";if (timer = 300) then f_state<= GR; else f_state<= RY; end if;
when GR  => output<="100001";if (timer =4000) then f_state<= YR; else f_state<= GR; end if;
when YR  => output<="010001";if (timer =4300) then f_state<= RG; else f_state<= YR; end if; 
when RG  => output<="001100";if (timer =5100) then f_state<= RY; else f_state<= RG; end if; 

end case;
end process;
-- Lowwer section:
process(clk,sdby,timer)
begin
if (sdby='1') then p_state<=YY;
elsif (clk'event and clk='1') then p_state<=f_state; timer<=timer+1;  end if; 
if timer > 5100 then timer<=0; end if;
end process;
end Behavioral;

