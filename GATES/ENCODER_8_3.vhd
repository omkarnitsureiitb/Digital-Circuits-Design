library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity ENCODER_8_3  is
  port (Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0, E: in std_logic;
			A2, A1, A0: out std_logic);
end entity ENCODER_8_3;

architecture Struct of ENCODER_8_3 is

	component ENCODER_4_2  is
	  port (A, B, C, D, E: in std_logic; Y0, Y1: out std_logic);
	end component ENCODER_4_2;
	
	signal s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11 : std_logic;
	
begin
	EN1:	ENCODER_4_2 port map (A => Y3, B => Y2, C => Y1, D => Y0, E => E, Y0 => s1, Y1 => s2);
	OR1:	OR_2 port map (A => s1, B => s2, Y => s3);
	EN2:	ENCODER_4_2 port map (A => Y7, B => Y6, C => Y5, D => Y4, E => E, Y0 => s4, Y1 => s5);
	OR2:	OR_2 port map (A => s4, B => s5, Y => s6);
	EN3:	ENCODER_4_2 port map (A => Y3, B => Y2, C => Y1, D => Y0, E => s3, Y0 => s7, Y1 => s8);
	EN4:	ENCODER_4_2 port map (A => Y7, B => Y6, C => Y5, D => Y4, E => s6, Y0 => s9, Y1 => s10);
	OR3:	OR_2 port map (A => s7, B => s9, Y => A0);
	OR4:	OR_2 port map (A => s8, B => s10, Y => A1);
	OR5:	OR_2 port map (A => s6, B => Y4, Y => s11);
	AND1:	AND_2 port map (A => s11, B => E, Y => A2);
end Struct;
	
	

