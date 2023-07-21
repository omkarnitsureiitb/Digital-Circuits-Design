-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(7 downto 0);
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
   component alu_beh is
     port(A, B: in std_logic_vector(3 downto 0);
         op: out std_logic_vector(7 downto 0));
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: alu_beh 
			port map (
					-- order of inputs B A
					B => input_vector(3 downto 0),
					A => input_vector(7 downto 4),
               -- order of output OUTPUT
					op => output_vector(7 downto 0));
end DutWrap;