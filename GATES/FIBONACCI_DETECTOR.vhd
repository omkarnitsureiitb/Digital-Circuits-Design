library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity FIBONACCI_DETECTOR  is
  port (X3, X2, X1, X0: in std_logic; Y: out std_logic);
end entity FIBONACCI_DETECTOR;

architecture Struct of FIBONACCI_DETECTOR is

  signal s1, s2, s3, s4, s5, s6: std_logic;
  
begin

IN1: INVERTER port map (A => X3, Y => s1);
IN2: INVERTER port map (A => X2, Y => s2);
IN3: INVERTER port map (A => X1, Y => s3);
AND1: AND_2 port map (A => s1, B => s2, Y => s4);
XN1: XNOR_2 port map (A => X0, B => X2, Y => s5);
AND2: AND_2 port map (A => s3, B => s5, Y => s6);
OR1: OR_2 port map (A => s4, B => s6, Y => Y);

end Struct;