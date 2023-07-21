library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity MULTIPLIER  is
  port (A3, A2, A1, A0, B2, B1, B0: in std_logic; M6, M5, M4, M3, M2, M1, M0: out std_logic);
end entity MULTIPLIER;

architecture Struct of MULTIPLIER is

signal s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19  : std_logic;
  
component ADDER_SUBTRACTOR  is
  port (A3, A2, A1, A0, B3, B2, B1, B0, M: in std_logic; Cout, S3, S2, S1, S0: out std_logic);
end component ADDER_SUBTRACTOR;

begin

 AND1: AND_2 port map (A => A0, B => B0, Y => M0);
 AND2: AND_2 port map (A => A1, B => B0, Y => s1);
 AND3: AND_2 port map (A => A0, B => B1, Y => s2);
 AND4: AND_2 port map (A => A2, B => B0, Y => s3);
 AND5: AND_2 port map (A => A1, B => B1, Y => s4);
 AND6: AND_2 port map (A => A0, B => B2, Y => s5);
 AND7: AND_2 port map (A => A3, B => B0, Y => s6);
 AND8: AND_2 port map (A => A2, B => B1, Y => s7);
 AND9: AND_2 port map (A => A1, B => B2, Y => s8);
 AND10: AND_2 port map (A => A3, B => B1, Y => s9);
 AND11: AND_2 port map (A => A2, B => B2, Y => s10);
 AND12: AND_2 port map (A => A3, B => B2, Y => s11);
 
	FB1: ADDER_SUBTRACTOR port map (A3 => '0', A2 => s6, A1 => s3, A0 => s1, B3 => s9, B2 => s7, B1 => s4, B0 => s2,
	 M => '0', S3 => s12, S2 => s13, S1 => s14, S0 => M1, Cout => s15);
	FB2: ADDER_SUBTRACTOR port map (A3 => s15, A2 => s12, A1 => s13, A0 => s14,
	 B3 => s11, B2 => s10, B1 => s8, B0 => s5, M => '0', S3 => M5, S2 => M4, S1 => M3, S0 => M2, Cout => M6);

 end Struct;