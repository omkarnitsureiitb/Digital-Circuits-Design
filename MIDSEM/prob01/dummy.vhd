library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity SUBTRACTOR_CHECKER  is
  port (X3, X2, X1, X0, Y3, Y2, Y1, Y0: in std_logic; Z, N, V, L, G: out std_logic);
end entity SUBTRACTOR_CHECKER;

architecture Struct of SUBTRACTOR_CHECKER is

  signal w1, B_BAR : std_logic;
  
component ADDER_SUBTRACTOR  is
  port (A3, A2, A1, A0, B3, B2, B1, B0, M: in std_logic; Cout, S3, S2, S1, S0: out std_logic);
end component ADDER_SUBTRACTOR;
  
begin

AS1: ADDER_SUBTRACTOR port map (A3 => X3, A2 => X2, A1 => X1, A0 => X0, B3 => Y3, B2 => Y2, B1 => Y1, B0 => Y0, M => '1', S3 => S3, S2 => S2, S1 => S1, S0 => S0, Cout => w1);
OR1: OR_2 port map (A => S3, B => S2, Y => w2);
OR2: OR_2 port map (A => S1, B => w2, Y => w3);
OR3: OR_2 port map (A => w3, B => S0, Y => w4);
IN1: INVERTER port map (A => w4, Y => Z);
