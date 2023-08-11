LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE ieee.std_logic_arith.all;
 -- necessary!
----------------------------------------
ENTITY comparator IS
GENERIC (n: INTEGER := 7);

PORT (a, b: IN SIGNED (n DOWNTO 0);
x: OUT STD_LOGIC_vector(2 downto 0));

 END comparator;

----------------------------------------

ARCHITECTURE signed OF comparator IS

BEGIN

x <= "001"  WHEN a > b ELSE "000";

x <= "010"  WHEN a = b ELSE "000";

x <= "100"  WHEN a < b ELSE "000";

END signed;