library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity PRIME_DETECTOR  is
  port (A, B, C, D: in std_logic; OUTPUT: out std_logic);
end entity PRIME_DETECTOR;

architecture Struct of PRIME_DETECTOR is
  signal A_BAR, B_BAR, C_BAR, s1, s2, s3, s4 : std_logic;
begin
	I1: INVERTER port map (A => A, Y => A_BAR);
	I2: INVERTER port map (A => B, Y => B_BAR);
	I3: INVERTER port map (A => C, Y => C_BAR);
	AND1: AND_3 port map (A => A_BAR, B => B_BAR, C => C, Y => s1);
	AND2: AND_3 port map (A => A_BAR, B => B, C => D, Y => s2);
	AND3: AND_3 port map (A => B, B => C_BAR, C => D, Y => s3);
	AND4: AND_3 port map (A => B_BAR, B => C, C => D, Y => s4);
	OR1: OR_4 port map (A => s1, B => s2, C => s3, D => s4, Y => OUTPUT);
end Struct;
	