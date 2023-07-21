library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity PRIORITY_ENCODER  is
  port (A, B, C, D: in std_logic; Y0, Y1, V: out std_logic);
end entity PRIORITY_ENCODER;

architecture Struct of PRIORITY_ENCODER is
  signal s1, s2, s3, s4 : std_logic;
begin
OR1: OR_2 port map (A => A, B => B, Y => s3);
OR2: OR_2 port map (A => C, B => D, Y => s4);
OR3: OR_2 port map  (A => s3, B => s4, Y => V);
I1: INVERTER port map  (A => B, Y => s1);
AND1: AND_2 port map  (A => C, B => s1, Y => s2);
OR4: OR_2 port map  (A => A, B => B, Y => Y1);
OR5: OR_2 port map  (A => s2, B => A, Y => Y0);
end Struct;