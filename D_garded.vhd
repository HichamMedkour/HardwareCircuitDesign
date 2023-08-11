--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--entity D_garded is
--    Port ( d : in  STD_LOGIC;
--           clk : in  STD_LOGIC;
--          q : out  STD_LOGIC);
--end D_garded;
--
--architecture Behavioral of D_garded is
--signal k:std_logic bus;
--begin
--
--F:block( clk='1')
--
--begin
--
--k<=Guarded d;
--
--end block F;
--q<=k;
--end Behavioral;
entity X_GATE is
generic (LongTime : Time; ShortTime : Time);
  port (P1, P2, P3 : inout BIT);
end X_GATE;
architecture STRUCTURE of X_GATE is
-- global declarations of signal:
signal A, B : BIT;
begin
LEVEL1 : block
-- local declaration of generic parameters
   generic (GB1, GB2 : Time);
-- local binding of generic parameters
   generic map (GB1 => LongTime, GB2 => ShortTime);
-- local declaration of ports
   port (PB1: in BIT; PB2 : inout BIT );
-- local binding of ports and signals
   port map (PB1 => P1, PB2 => B);
-- local declarations:
   constant Delay : Time := 1 ms;
   signal S1 : BIT;
begin
   S1 <= PB1 after Delay;
   PB2 <= S1 after GB1, P1 after GB2;
end block LEVEL1;
end architecture STRUCTURE;