library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity HALF_ADDER  is
  port (A, B: in std_logic; SUM, Cout: out std_logic);
end entity HALF_ADDER;

architecture Struct of HALF_ADDER is
  signal s1, s2, s3, s4 : std_logic;
begin
	NAND1: NAND_2 port map (A => A, B => B, Y => s1);
	NAND2: NAND_2 port map (A => A, B => s1, Y => s2);
	NAND3: NAND_2 port map (A => s1, B => B, Y => s3);
	NAND4: NAND_2 port map (A => s2, B => s3, Y => SUM);
	NAND5: NAND_2 port map (A => A, B => B, Y => s4);
	NAND6: NAND_2 port map (A => s4, B => s4, Y => Cout);
end Struct;