library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity ZNVLG  is
  port (X, Y: in std_logic_vector(3 downto 0); Z, N,V,a,b: out std_logic);
end entity ZNVLG;

architecture Struct of ZNVLG is

signal w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w14, w15 : std_logic;
  
component ADDER_SUBTRACTOR  is
  port (A3, A2, A1, A0, B3, B2, B1, B0, M: in std_logic; Cout, S3, S2, S1, S0: out std_logic);
end component ADDER_SUBTRACTOR;

begin

AS1: ADDER_SUBTRACTOR port map (A3 => X(3), A2 => X(2), A1 => X(1), A0 => X(0), B3 => Y(3), B2 => Y(2), B1 => Y(1), B0 => Y(0), M => '1', S3 => w3, S2 => w2, S1 => w1, S0 => w0, Cout => w4);
OR1: OR_2 port map (A => w3, B => w2, Y => w5);
OR2: OR_2 port map (A => w1, B => w5, Y => w6);
OR3: OR_2 port map (A => w6, B => w0, Y => w7);
IN1: INVERTER port map (A => w7, Y => w15);
OR10: OR_2 port map (A => w15, B => w15, Y => Z);
OR4: OR_2 port map (A => w3, B => w3, Y => N);
OR8: OR_2 port map (A => w4, B => w4, Y => V);
OR5: OR_2 port map (A => '0', B => '0', Y => a);
OR6: OR_2 port map (A => '0', B => '0', Y => b);
end Struct;
