library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity ADDER_SUBTRACTOR  is
  port (A3, A2, A1, A0, B3, B2, B1, B0, M: in std_logic; Cout, S3, S2, S1, S0: out std_logic);
end entity ADDER_SUBTRACTOR;

architecture Struct of ADDER_SUBTRACTOR is

component FULL_ADDER is 
	port (A, B, Cin: in std_logic ; SUM, Cout: out std_logic);
end component FULL_ADDER;

component XOR_GATE  is
  port (A, B: in std_logic; OUTPUT: out std_logic);
end component XOR_GATE;

signal d1, d2, d3, d4, d5, d6, d7 : std_logic;

begin
	XOR1: XOR_GATE port map (A => M, B => B0, OUTPUT => d1);
	XOR2: XOR_GATE port map (A => M, B => B1, OUTPUT => d2);
	XOR3: XOR_GATE port map (A => M, B => B2, OUTPUT => d3);
	XOR4: XOR_GATE port map (A => M, B => B3, OUTPUT => d4);
	FA1: FULL_ADDER port map (A => A0, B => d1, Cin => M, SUM => S0, Cout => d5);
	FA2: FULL_ADDER port map (A => A1, B => d2, Cin => d5, SUM => S1, Cout => d6);
	FA3: FULL_ADDER port map (A => A2, B => d3, Cin => d6, SUM => S2, Cout => d7);
	FA4: FULL_ADDER port map (A => A3, B => d4, Cin => d7, SUM => S3, Cout => Cout);
end Struct;