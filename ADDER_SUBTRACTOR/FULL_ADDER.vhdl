library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

Entity FULL_ADDER is 
	port (A, B, Cin: in std_logic ; SUM, Cout: out std_logic);
end entity FULL_ADDER;

Architecture Struct of FULL_ADDER is 
	signal s1, s2, s3, s4, s5, s6, s7 : std_logic ;
begin
	NAND1:  NAND_2 port map (A => A, B => B, Y => s1);
	NAND2:  NAND_2 port map (A => A, B => s1, Y => s2);
	NAND3:  NAND_2 port map (A => s1, B => B, Y => s3);
	NAND4:  NAND_2 port map (A => s2, B => s3, Y => s4);
	NAND5:  NAND_2 port map (A => s4, B => Cin, Y => s5);
	NAND6:  NAND_2 port map (A => s5, B => s4, Y => s7);
	NAND7:  NAND_2 port map (A => s5, B => Cin, Y => s6);
	NAND8:  NAND_2 port map (A => s7, B => s6, Y => SUM);
	NAND9:  NAND_2 port map (A => s5, B=> s1, Y => Cout);
end Struct;


