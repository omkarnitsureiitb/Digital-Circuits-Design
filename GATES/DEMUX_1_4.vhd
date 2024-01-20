library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity DEMUX_1_4  is
  port (S1, S0, In0: in std_logic; Y3, Y2, Y1, Y0: out std_logic);
end entity DEMUX_1_4;

architecture Struct of DEMUX_1_4 is

  signal i1, i2, i3 : std_logic;
  
component DEMUX_1_2  is
  port (S, D: in std_logic; I0, I1: out std_logic);
end component DEMUX_1_2;
  
begin

IN1: INVERTER port map (A => S1, Y => i1);
AND1: AND_2 port map (A => i1, B => In0, Y => i2);
AND2: AND_2 port map (A => S1, B => In0, Y => i3);
DE1: DEMUX_1_2 port map (S => S0, D => i2, I0 => Y0, I1 => Y1);
DE2: DEMUX_1_2 port map (S => S0, D => i3, I0 => Y2, I1 => Y3);

end Struct;