library ieee;
use ieee.std_logic_1164.all;


entity  tone_generator is
	port(notes: in std_logic_vector(7 downto 0); clk_50: in std_logic;
		  output: out std_logic_vector(7 downto 0); music : out std_logic);
end entity tone_generator;


architecture behav of tone_generator is

signal counter : integer := 0;
signal count : integer := 1;
signal clk_temp : std_logic := '0';

begin

clock_process : process(clk_50)

begin

	if(clk_50 = '1' and clk_50'event) then 
		if(count >= counter) then
			count <= 1 ; 
		elsif(clk_50 = '1' and clk_50'event) then 
			count <= count + 1;
		end if;
		
	end if;

end process;

output_process : process(count)
begin
if(count = 1) then
	clk_temp <= not clk_temp; 
	music <= clk_temp;
end if;

end process output_process; 
		
		
		process1 : process(notes)
		
		begin
		
			case notes is
					
				when "00000001" =>
					counter <= 52083;
					output <= "00000001";
					
				when "00000011" =>
					counter <= 55556;
					output <= "00000010";
					
				when "00000111" =>
					counter <= 62500;
					output <= "00000100";
					
				when "00001111" =>
					counter <= 69444;
					output <= "00001000";
					
				when "00011111" =>
					counter <= 78125;
					output <= "00010000";
					
				when "00111111" =>
					counter <= 83333;
					output <= "00100000";
					
				when "01111111" =>
					counter <= 92593;
					output <= "01000000";
					
				when "11111111" =>
					counter <= 104167;
					output <= "10000000";
					
				when others=>
					output <= "00000000";
					
			end case;
			
		end process process1;
		
end behav;