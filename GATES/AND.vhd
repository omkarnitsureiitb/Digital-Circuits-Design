library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity AND_GATE  is
  port (A, B: in std_logic; OUTPUT: out std_logic);
end entity AND_GATE;

architecture Struct of AND_GATE is
  signal A_B_BAR : std_logic;
begin
  -- component instances
  NAND1: NAND_2 port map (A => A, B => B, Y => A_B_BAR);
  NAND2: NAND_2 port map (A => A_B_BAR, B => A_B_BAR, Y => OUTPUT);
end Struct;