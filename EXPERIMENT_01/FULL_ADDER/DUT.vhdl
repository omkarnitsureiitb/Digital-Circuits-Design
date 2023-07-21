-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
   component FULL_ADDER is
     port(A, B, C_in: in std_logic;
         SUM, C_out: out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: FULL_ADDER 
			port map (
					-- order of inputs B A
					C_in => input_vector(2),
					B => input_vector(1),
					A => input_vector(0),
               -- order of output OUTPUT
					C_out => output_vector(0),
					SUM => output_vector(1));
end DutWrap;