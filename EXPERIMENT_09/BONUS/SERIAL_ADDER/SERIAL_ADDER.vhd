library ieee;
use ieee.std_logic_1164.all;


entity Serial_Adder is
port (reset, a, b, clock: in std_logic; s: out std_logic);
end entity;


architecture BHV of Serial_Adder is

type statetype is (s0,s1);
signal ps_state,nx_state : statetype;

reg_process: process(clock,reset)
begin
if(reset='1')then 
ps_state<=s0;
elsif(clock'event and clock='1')then
ps_state<=nx_state;
end if;
end process reg_process;

    next_state_output_logic: process (ps_state, a, b)
     begin 
      case ps_state is 
      
							when s0=>
							if (A='0' and B='0')then 
								nx_state<=s0;
							elsif(A='0' and B='1')then
								nx_state<=s0;
							elsif(A='1' and B='0')then
								nx_state<=s0;
							elsif(A='1' and B='1')then
								nx_state<=s1;
							end if;

							when s1=>
							if (A='1' and B='1')then 
								nx_state<=s1;
							elsif(A='0' and B='1')then
								nx_state<=s1;
							elsif(A='1' and B='0')then
								nx_state<=s1;
							elsif(A='0' and B='0')then
								nx_state<=s0;
							end if;						
      end case; 
      end process next_state_output_logic;
		
		Output_process: process(ps_state, a, b)
			begin
					
					case ps_state is
								
						when s0 =>
							if (A='1' and B='1')then 
								s<='0';
							elsif(A='0' and B='1')
								s<='1';
							elsif(A='1' and B='0')
								s<='1';
							elsif(A='0' and B='0')
								s<='0';
							end if;		
								
							when s1 =>
							if (A='1' and B='1')then 
								s<='1';
							elsif(A='0' and B='1')
								s<='0';
							elsif(A='1' and B='0')
								s<='0';
							elsif(A='0' and B='0')
								s<='0';
							end if;	

						end case;
		end process Output_process;


end BHV;