library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock_divider is
		port (clk_out : out std_logic;
		clk_50, resetn, frq : in std_logic);
end entity clock_divider;

architecture behav of clock_divider is
	signal count : integer := 1;
	signal clk_temp : std_logic := '0';

begin

clock_process : process(clk_50,resetn)

begin

if(resetn = '1') then 
	count <= 1;
	
else

	if(clk_50 = '1' and clk_50'event) then 
		if(count = frequency) then
			count <= 1 ; 
		elsif(clk_50 = '1' and clk_50'event) then 
			count <= count + 1;
		end if;
		
	end if;
	
end if;

end process;

output_process : process(count)
begin
if(count = 1) then
	clk_temp <= not clk_temp; 
	clk_out <= clk_temp;
end if;

end process output_process;

end behav;