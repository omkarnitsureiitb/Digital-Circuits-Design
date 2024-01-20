library ieee;
use ieee.std_logic_1164.all;

entity AND_3 is
   port (A, B, C: in std_logic; Y: out std_logic);
end entity AND_3;

architecture Equations of AND_3 is
begin
   Y <= A and B and C;
end Equations;

library ieee;
use ieee.std_logic_1164.all;

entity OR_3 is
   port (A, B, C: in std_logic; Y: out std_logic);
end entity OR_3;

architecture Equations of OR_3 is
begin
   Y <= A or B or C;
end Equations;

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity COMPARATOR_2_BIT  is
  port (A0, A1, B0, B1: in std_logic; A_LESS, A_MORE, EQUAL: out std_logic);
end entity COMPARATOR_2_BIT;

architecture Struct of COMPARATOR_2_BIT is
  signal s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12: std_logic;
  
component AND_3 is
   port (A, B, C: in std_logic; Y: out std_logic);
end component AND_3;

component OR_3 is
   port (A, B, C: in std_logic; Y: out std_logic);
end component OR_3;
  
begin

IN1: INVERTER port map (A => A0, Y => s1);
IN2: INVERTER port map (A => A1, Y => s2);
IN3: INVERTER port map (A => B0, Y => s3);
IN4: INVERTER port map (A => B1, Y => s4);
AND1: AND_3 port map (A => s2, B => s1, C => B0, Y => s5); 
AND2: AND_2 port map (A => s2, B => B1, Y => s6);
AND3: AND_3 port map (A => s1, B => B1, C => B0, Y => s7);
XN1: XNOR_2 port map(A => A1, B => B1, Y => s8);
XN2: XNOR_2 port map(A => A0, B => B0, Y => s9);
AND4: AND_3 port map (A => A0, B => s4, C => B0, Y => s10); 
AND5: AND_2 port map (A => A1, B => s4, Y => s11);
AND6: AND_3 port map (A => A1, B => A0, C => s3, Y => s12);
OR1: OR_3 port map (A => s5, B => s6, C => s7, Y => A_LESS);
OR2: OR_3 port map (A => s10, B => s11, C => s12, Y => A_MORE);
AND7: AND_2 port map (A => s8, B => s9, Y => EQUAL);

end Struct;