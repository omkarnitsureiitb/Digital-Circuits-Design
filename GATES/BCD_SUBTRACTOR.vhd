library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity BCD_SUBTRACTOR  is
  port (A3, A2, A1, A0, B3, B2, B1, B0: in std_logic; Y4, Y3, Y2, Y1, Y0: out std_logic);
end entity BCD_SUBTRACTOR;

architecture Struct of BCD_SUBTRACTOR is

  signal w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19 : std_logic;
  
component ADDER_SUBTRACTOR  is
  port (A3, A2, A1, A0, B3, B2, B1, B0, M: in std_logic; Cout, S3, S2, S1, S0: out std_logic);
end component ADDER_SUBTRACTOR;

begin

AS1: ADDER_SUBTRACTOR port map (A3 => '1', A2 => '0', A1 => '1', A0 => '0', B3 => B3, B2 => B2, B1 => B1, B0 => B0, M => '1', S0 => w1, S1 => w2, S2 => w3, S3 => w4);
AS2: ADDER_SUBTRACTOR port map (A3 => A3, A2 => A2, A1 => A1, A0 => A0, B3 => w4, B2 => w3, B1 => w2, B0 => w1, M => '0', S0 => w5, S1 => w6, S2 => w7, S3 => w8, Cout => w9);
AND1: AND_2 port map (A => w8, B => w6, Y => w10);
AND2: AND_2 port map (A => w7, B => w8, Y => w11);
OR1: OR_2 port map (A => w10, B => w11, Y => w12);
OR2: OR_2 port map (A => w12, B => w9, Y => w13);
AS3: ADDER_SUBTRACTOR port map (A3 => w8, A2 => w7, A1 => w6, A0 => w5, B3 => '0', B2 => W13, B1 => W13, B0 => '0', M => '0', S0 => w14, S1 => w15, S2 => w16, S3 => w17, Cout => w18);
IN1: INVERTER port map (A => w13, Y => w19);
AS4: ADDER_SUBTRACTOR port map (A3 => w19, A2 => '0', A1 => w19, A0 => '0', B3 => w17, B2 => W16, B1 => W15, B0 => w14, M => w19, S0 => Y0, S1 => Y1, S2 => Y2, S3 => Y3);
OR3: OR_2 port map (A => w19, B => w19, Y => Y4);


end Struct;