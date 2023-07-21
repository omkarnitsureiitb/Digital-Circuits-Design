library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity XOR_GATE  is
  port (A, B: in std_logic; OUTPUT: out std_logic);
end entity XOR_GATE;

architecture Struct of XOR_GATE is
  signal A_BAR, B_BAR, s1, s2 : std_logic;
begin
  NAND1: NAND_2 port map (A => A, B => A, Y => A_BAR);
  NAND2: NAND_2 port map (A => B, B => B, Y => B_BAR);
  NAND3: NAND_2 port map (A => A_BAR, B => B, Y => s1);
  NAND4: NAND_2 port map (A => B_BAR, B => A, Y => s2);
  
  NAND5: NAND_2 port map (A => s1, B => s2, Y => OUTPUT);
  
end Struct;