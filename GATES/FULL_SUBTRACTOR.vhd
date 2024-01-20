library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity FULL_SUBTRACTOR  is
  port (A, B, Bin: in std_logic; Dif, Bout: out std_logic);
end entity FULL_SUBTRACTOR;

architecture Struct of FULL_SUBTRACTOR is
  signal s1, s2, s3, s4, s5, s6, s7 : std_logic;
begin
  -- component instances
  NAND1: NAND_2 port map (A => A, B => B, Y => s1);
  NAND2: NAND_2 port map (A => A, B => s1, Y => s2);
  NAND3: NAND_2 port map (A => s1, B => B, Y => s3);
  NAND4: NAND_2 port map (A => s2, B => s3, Y => s4);
  NAND5: NAND_2 port map (A => s4, B => Bin, Y => s5);
  NAND6: NAND_2 port map (A => s4, B => s5, Y => s6);
  NAND7: NAND_2 port map (A => s5, B => Bin, Y => s7);
  NAND8: NAND_2 port map (A => s6, B => s7, Y => Dif);
  NAND9: NAND_2 port map (A => s7, B => s3, Y => Bout);
end Struct;