library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity DECODER is
  port (S0, S1: in std_logic; Y0, Y1, Y2, Y3: out std_logic);
end entity DECODER;

architecture Struct of DECODER is
  signal w0, w1 : std_logic;
  
begin

IN1: INVERTER port map (A => S0, Y => w0);
IN2: INVERTER port map (A => S1, Y => w1);
AND1: AND_2 port map (A => w0, B => w1, Y => Y0);
AND2: AND_2 port map (A => S0, B => w1, Y => Y1);
AND3: AND_2 port map (A => w0, B => S1, Y => Y2);
AND4: AND_2 port map (A => S0, B => S1, Y => Y3);

end Struct;