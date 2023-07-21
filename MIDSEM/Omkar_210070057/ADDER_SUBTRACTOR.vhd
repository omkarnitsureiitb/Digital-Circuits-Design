library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity ADDER_SUBTRACTOR  is
  port (A3, A2, A1, A0, B3, B2, B1, B0, M: in std_logic; Cout, S3, S2, S1, S0: out std_logic);
end entity ADDER_SUBTRACTOR;

architecture Struct of ADDER_SUBTRACTOR is

component XOR_GATE  is
  port (A, B: in std_logic; OUTPUT: out std_logic);
end component XOR_GATE;

signal d1, d2, d3, d4, d5, d6, d7 : std_logic;

begin
	XOR1: XOR_GATE port map (A => M, B => B0, OUTPUT => d1);
	XOR2: XOR_GATE port map (A => M, B => B1, OUTPUT => d2);
	XOR3: XOR_GATE port map (A => M, B => B2, OUTPUT => d3);
	XOR4: XOR_GATE port map (A => M, B => B3, OUTPUT => d4);
	FA1: FULL_ADDER port map (A => A0, B => d1, Ci => M, S => S0, Co => d5);
	FA2: FULL_ADDER port map (A => A1, B => d2, Ci => d5, S => S1, Co => d6);
	FA3: FULL_ADDER port map (A => A2, B => d3, Ci => d6, S => S2, Co => d7);
	FA4: FULL_ADDER port map (A => A3, B => d4, Ci => d7, S => S3, Co => Cout);
end Struct;