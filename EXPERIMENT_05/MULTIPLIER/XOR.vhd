library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity XOR_GATE  is
  port (A, B: in std_logic; OUTPUT: out std_logic);
end entity XOR_GATE;

architecture Struct of XOR_GATE is
  signal s1, s2, s3 : std_logic;
begin
	NAND1: NAND_2 port map (A => A, B => B, Y => s1);
	NAND2: NAND_2 port map (A => A, B => s1, Y => s2);
	NAND3: NAND_2 port map (A => s1, B => B, Y => s3);
	NAND4: NAND_2 port map (A => s2, B => s3, Y => OUTPUT);
end Struct;