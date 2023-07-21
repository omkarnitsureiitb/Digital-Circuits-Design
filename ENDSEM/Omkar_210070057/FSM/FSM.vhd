library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FSM is
	port(inp:in std_logic_vector(3 downto 0);
		  clock:in std_logic;
	output: out std_logic_vector(4 downto 0));
end FSM;

architecture behav of FSM is

type state is (idle,admin,professor,researcher,student);

signal y_present,y_next: state:=idle;

signal alert : std_logic :='0';

signal counter : integer := 0;

begin


state_transition_proc:process(inp,y_present)

begin

if(y_present = idle)then
			if(inp(3) = '1')then
				y_present <= admin;
				alert <= '0';
			elsif(inp(2) = '1')then
				y_present <= professor;
				alert <= '0';
			elsif(inp(1) = '1')then
				y_present <= researcher;
				alert <= '0';
			elsif(inp(0) = '1')then
				y_present <= student;
				alert <= '0';
			else
				y_present <= idle;
				alert <= '0';
			end if;
				
elsif(y_present = student)then
			if(inp(3) = '1')then
				y_present <= admin;
				alert <= '1';
			elsif(inp(2) = '1')then
				y_present <= professor;
				alert <= '1';
			elsif(inp(1) = '1')then
				y_present <= researcher;
				alert <= '1';
			elsif(inp(0) = '1')then
				y_present <= student;
				alert <= '0';
			else
				y_present <= idle;
				alert <= '0';
			end if;
				
elsif(y_present = researcher)then
			if(inp(3) = '1')then
				y_present <= admin;
				alert <= '1';
			elsif(inp(2) = '1')then
				y_present <= professor;
				alert <= '1';
			elsif(inp(1) = '1')then
				y_present <= researcher;
				alert <= '0';
			else
				y_present <= idle;
				alert <= '0';
			end if;
				
elsif(y_present = professor)then
			if(inp(3) = '1')then
				y_present <= admin;
				alert <= '1';
			elsif(inp(2) = '1')then
				y_present <= professor;
				alert <= '0';
			else
				y_present <= idle;
				alert <= '0';
			end if;
				
elsif(y_present = admin)then
			if(inp(3) = '1')then
				y_present <= admin;
				alert <= '0';
			else
				y_present <= idle;
				alert <= '0';
			end if;
			
end if;

end process state_transition_proc;

output_proc:process(y_present,alert,clock)

variable ending :std_logic:='0';

begin

if(alert = '1' and ending = '0')then
	if(clock = '1' and clock'event)then
		if(counter < 150000000)then
			counter <= counter + 1;
			output <= "11111";
		else
			counter <= 0;
			ending := '1';
		end if;
end if;

elsif(y_present = admin and alert = '0')then
	output <= "01111";
	
elsif(y_present = professor and alert = '0')then
	output <= "00111";
	
elsif(y_present = researcher and alert = '0')then
	output <= "00011";
	
elsif(y_present = student and alert = '0')then
	output <= "00001";
	
elsif(y_present = idle and alert = '0')then
	output <= "00000";
	
end if;
	
end process output_proc;

end architecture behav;
