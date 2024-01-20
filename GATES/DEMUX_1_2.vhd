library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity DEMUX_1_2  is
  port (S, D: in std_logic; I0, I1: out std_logic);
end entity DEMUX_1_2;

architecture Struct of DEMUX_1_2 is

  signal s1 : std_logic;
  
begin

IN1: INVERTER port map (A => S, Y => s1);
AND1: AND_2 port map (A => s1, B => D, Y => I0);
AND2: AND_2 port map (A => S, B => D, Y => I1);

end Struct;
