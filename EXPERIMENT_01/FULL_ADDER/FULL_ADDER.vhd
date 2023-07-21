library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity FULL_ADDER  is
  port (A, B, C_in: in std_logic; SUM, C_out: out std_logic);
end entity FULL_ADDER;

architecture Struct of FULL_ADDER is
  signal A_BAR, B_BAR, C_in_BAR, s3_BAR, s1, s2, s3, s4, s5, s6, s7 : std_logic;
begin
  NAND1: NAND_2 port map (A => A, B => A, Y => A_BAR);
  NAND2: NAND_2 port map (A => B, B => B, Y => B_BAR);
  NAND3: NAND_2 port map (A => A_BAR, B => B, Y => s1);
  NAND4: NAND_2 port map (A => A, B => B_BAR, Y => s2);
  NAND5: NAND_2 port map (A => s1, B => s2, Y => s3);
  NAND6: NAND_2 port map (A => C_in, B => C_in, Y => C_in_BAR);
  NAND7: NAND_2 port map (A => s3, B => s3, Y => s3_BAR);
  NAND8: NAND_2 port map (A => C_in_BAR, B => s3, Y => s4);
  NAND9: NAND_2 port map (A => s3_BAR, B => C_in, Y => s5);
  NAND10: NAND_2 port map (A => s4, B => s5, Y => SUM);
  NAND11: NAND_2 port map (A => A, B => B, Y => s6);
  NAND12: NAND_2 port map (A => s3, B => C_in, Y => s7);
  NAND13: NAND_2 port map (A => s6, B => s7, Y => C_out);
end Struct;
  