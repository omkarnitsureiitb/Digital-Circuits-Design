library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity ENCODER_4_2  is
  port (A, B, C, D, E: in std_logic; Y0, Y1: out std_logic);
end entity ENCODER_4_2;

architecture Struct of ENCODER_4_2 is
  signal s1, s2 : std_logic;
begin
OR1: OR_2 port map (A => A, B => C, Y => s1);
OR2: OR_2 port map (A => A, B => B, Y => s2);
AND1: AND_2 port map (A => s1, B => E, Y => Y0);
AND2: AND_2 port map (A => s2, B => E, Y => Y1);
end Struct;