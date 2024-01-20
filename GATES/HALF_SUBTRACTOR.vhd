library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity HALF_SUBTRACTOR  is
  port (A, B: in std_logic; Dif, Bout: out std_logic);
end entity HALF_SUBTRACTOR;

architecture Struct of HALF_SUBTRACTOR is
  signal s1, s2, s3 : std_logic;
begin
	NAND1: NAND_2 port map (A => A, B => B, Y => s1);
	NAND2: NAND_2 port map (A => A, B => s1, Y => s2);
	NAND3: NAND_2 port map (A => s1, B => B, Y => s3);
	NAND4: NAND_2 port map (A => s2, B => s3, Y => Dif);
	NAND5: NAND_2 port map (A => s3, B => s3, Y => Bout);
end Struct;