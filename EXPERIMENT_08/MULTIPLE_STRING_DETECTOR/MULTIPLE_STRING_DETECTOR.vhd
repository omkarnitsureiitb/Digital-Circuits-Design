library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity word_detection is
	port( inp:in std_logic_vector(4 downto 0);
	reset,clock:in std_logic;
	outp: out std_logic);
end word_detection;

architecture bhv of word_detection is
---------------Define state type here-----------------------------
type state is (rst,s1,s2,s3); -- Fill other states here

type state1 is (rst,s4,s5,s6,s7,s8); -- Fill other states here

type state2 is (rst,s9,s10,s11); -- Fill other states here
---------------Define signals of state type-----------------------
signal outp1,outp2,outp3:std_logic:='0';
signal y_present,y_next: state:=rst;
signal y_present1,y_next1: state1:=rst;
signal y_present2,y_next2: state2:=rst;
begin
clock_proc:process(clock,reset)
begin
if(clock='1' and clock' event) then
if(reset = '1') then
y_present<= rst;
y_present1<= rst;
y_present2<= rst;
--Here Reset is synchronous
-- Fill the code here
else
y_present <= y_next;
y_present1 <= y_next1;
y_present2 <= y_next2;
end if;
end if;
end process;


state_transition_proc:process(inp,y_present)

begin

case y_present is
		when rst=>
		if(unsigned(inp)=18) then --r has been detected
			y_next<= s1;-- Fill the code here
		else
			y_next <= rst;
		end if;
		
		when s1=>
		if(unsigned(inp)=21) then --r has been detected
			y_next<= s2;-- Fill the code here
		else
			y_next <= s1;
		end if;
		
		when s2=>
		if(unsigned(inp)=14)then --r has been detected
			y_next<= s3;-- Fill the code here
		else
			y_next <= s2;
		end if;
		
		when s3=>
		if(unsigned(inp)=18)then --r has been detected
			y_next<= s1;-- Fill the code here
		else
			y_next <= rst;
		end if;
end case;
end process state_transition_proc;

state_transition_proc1:process(inp,y_present1)

begin

case y_present1 is
		when rst=>
		if(unsigned(inp)=2) then --r has been detected
			y_next1<= s4;-- Fill the code here
		else
			y_next1 <= rst;
		end if;
		
		when s4=>
		if(unsigned(inp)=18) then --r has been detected
			y_next1<= s5;-- Fill the code here
		else
			y_next1 <= s4;
		end if;
		
		when s5=>
		if(unsigned(inp)=15)then --r has been detected
			y_next1<= s6;-- Fill the code here
		else
			y_next1 <= s5;
		end if;
		
		when s6=>
		if(unsigned(inp)=15)then --r has been detected
			y_next1<= s7;-- Fill the code here
		else
			y_next1 <= s6;
		end if;
		
		when s7=>
		if(unsigned(inp)=13)then --r has been detected
			y_next1<= s8;-- Fill the code here
		else
			y_next1 <= s7;
		end if;
		
		when s8=>
		if(unsigned(inp)=2)then --r has been detected
			y_next1<= s4;-- Fill the code here
		else
			y_next1 <= rst;
		end if;
end case;

end process state_transition_proc1;


state_transition_proc2:process(inp,y_present2)

begin

case y_present2 is
		when rst=>
		if(unsigned(inp)=3) then --r has been detected
			y_next2<= s9;-- Fill the code here
		else
			y_next2 <= rst;
		end if;
		
		when s9=>
		if(unsigned(inp)=18) then --r has been detected
			y_next2<= s10;-- Fill the code here
		else
			y_next2 <= s9;
		end if;
		
		when s10=>
		if(unsigned(inp)=25)then --r has been detected
			y_next2<= s11;-- Fill the code here
		else
			y_next2 <= s10;
		end if;
		
		when s11=>
		if(unsigned(inp)=3)then --r has been detected
			y_next2<= s9;-- Fill the code here
		else
			y_next2 <= rst;
		end if;
end case;

end process state_transition_proc2;
		-------------------------
		---------Fill rest of the code here---------

output_proc:process(y_present, inp) ------- output process after this which will give
-------the output based on the present state and input (Mealy machine)
begin
case y_present is
	when rst=>
		outp1<='0';
	when s1=>
		outp1<='0';
	when s2=>
		if(unsigned(inp) = 14) then
			outp1 <= '1';
		else
			outp1 <= '0';
		end if;
	when s3=>
		outp1<='0';
		
end case;

end process output_proc;

output_proc1:process(y_present1, inp)

begin

case y_present1 is


	when rst=>
		outp2<='0';
	when s4=>
		outp2<='0';
	when s5=>
		outp2<='0';
	when s6=>
		outp2<='0';
	when s7=>
		if(unsigned(inp) = 13) then
			outp2 <= '1';
		else
		outp2 <= '0';
		end if;
	when s8=>
		outp2<='0';
		
end case;
end process output_proc1;

output_proc2:process(y_present2, inp)

begin

case y_present2 is

	when rst=>
		outp3<='0';
	when s9=>
		outp3<='0';
	when s10=>
		if(unsigned(inp) = 25) then
			outp3 <= '1';
		else
		outp3 <= '0';
		end if;
	when s11=>
		outp3<='0';
end case;

end process output_proc2;

output:process(outp1,outp2,outp3)

begin

outp <= outp1 or outp2 or outp3;


end process output;
end bhv;