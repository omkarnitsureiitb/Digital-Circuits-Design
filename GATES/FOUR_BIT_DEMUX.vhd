library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity FOUR_BIT_DEMUX  is
  port (A3, A2, A1, A0, S1, S0: in std_logic; Y15, Y14, Y13, Y12, Y11, Y10, Y9, Y8, Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0: out std_logic);
end entity FOUR_BIT_DEMUX;

architecture Struct of FOUR_BIT_DEMUX is

  signal b1, b2 : std_logic;
  
component DEMUX_1_4  is
  port (S1, S0, In0: in std_logic; Y3, Y2, Y1, Y0: out std_logic);
end component DEMUX_1_4;

begin

IN1: INVERTER port map (A => S1, Y => b1);
IN2: INVERTER port map (A => S0, Y => b2);
DM1: DEMUX_1_4 port map (S1 => S1, S0 => S0, In0 => A0, Y3 => Y12, Y2 => Y8, Y1 => Y4, Y0 => Y0);
DM2: DEMUX_1_4 port map (S1 => S1, S0 => S0, In0 => A1, Y3 => Y13, Y2 => Y9, Y1 => Y5, Y0 => Y1);
DM3: DEMUX_1_4 port map (S1 => S1, S0 => S0, In0 => A2, Y3 => Y14, Y2 => Y10, Y1 => Y6, Y0 => Y2);
DM4: DEMUX_1_4 port map (S1 => S1, S0 => S0, In0 => A3, Y3 => Y15, Y2 => Y11, Y1 => Y7, Y0 => Y3);

end Struct;