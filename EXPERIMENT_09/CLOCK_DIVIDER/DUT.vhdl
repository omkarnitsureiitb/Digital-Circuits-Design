-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(1 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
   component clock_divider is
	port (clk_out : out std_logic;
		clk_50, resetn : in std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: clock_divider 
			port map (
					-- order of inputs B A
					clk_50 => input_vector(1),
					resetn => input_vector(0),
               -- order of output OUTPUT
					clk_out => output_vector(0));
end DutWrap;