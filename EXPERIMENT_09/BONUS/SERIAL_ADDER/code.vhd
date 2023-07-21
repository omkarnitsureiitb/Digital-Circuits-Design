library ieee;
use ieee.std_logic_1164.all;
entity Serial_Adder is
port (reset, a, b, clock: in std_logic; s: out std_logic);
end entity;
architecture BHV of Serial_Adder is
begin

reg_process: process(clock,a, b,reset)
begin
if(reset='1')then 
s<= '0';
else
s<=a xor b;
end if;
end process reg_process;
end BHV;