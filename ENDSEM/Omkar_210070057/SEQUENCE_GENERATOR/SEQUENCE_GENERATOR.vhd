library ieee;
use ieee.std_logic_1164.all;

entity SEQUENCE_GENERATOR is
	port(reset: in std_logic;
			clock: in std_logic;
			output: out std_logic );
end entity SEQUENCE_GENERATOR;

architecture behav of SEQUENCE_GENERATOR is

type state is (s1,s2,s3,s4);

signal y_present: state:=s1;

begin

clock_proc:process(clock,reset)
begin

if(reset = '1')then
y_present<= s1;
--output <= '1';

elsif(clock='1' and clock' event)then

	--output <= '1';
	
if(y_present = s1)then
	y_present <= s2;
	--output <= '1';
	
elsif(y_present = s2)then
	y_present <= s3;
	--output <= '1';
	
elsif(y_present = s3)then
	y_present <= s4;
	--output <= '1';
	
elsif(y_present = s4)then
	y_present <= s1;

end if;

end if;

end process clock_proc;

output_proc:process(y_present)

begin

case y_present is
	when s1 =>
		output <= '1';
	when s2 =>
		output <= '1';
	when s3 =>
		output <= '1';
	when s4 =>
		output <= '1';
end case;

end process output_proc; 

end architecture behav;
