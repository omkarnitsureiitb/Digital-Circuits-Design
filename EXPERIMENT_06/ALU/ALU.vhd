library ieee;
use ieee.std_logic_1164.all;

entity alu_beh is
generic(
operand_width : integer:=4);
port (
A: in std_logic_vector(operand_width-1 downto 0);
B: in std_logic_vector(operand_width-1 downto 0);
op: out std_logic_vector((operand_width*2)-1 downto 0)) ;
end alu_beh;

architecture a1 of alu_beh is

function sub(A: in std_logic_vector(operand_width-1 downto 0);
B: in std_logic_vector(operand_width-1 downto 0))
return std_logic_vector is

variable diff : std_logic_vector(operand_width*2-1 downto 0):= (others=>'0');
variable carry : std_logic:= '0';

begin

	diff(0) := A(0) xor B(0);
	carry := (not B(0)) and A(0);
	L1: for i in 1 to (operand_width - 1) loop
			diff(i) := B(i) xor A(i) xor carry;
			carry := ((not B(i)) and A(i)) or (carry and (A(i) xnor B(i)));
		end loop L1;		
return diff;
end sub;

function add(A: in std_logic_vector(operand_width-1 downto 0))
return std_logic_vector is

variable sum : std_logic_vector(operand_width*2-1 downto 0):= (others=>'0');
variable carry : std_logic:= '0';

begin
	sum(0) := A(0);
	sum(1) := A(1);
	sum(2) := A(2) xor A(0);
	carry := A(2) and A(0);
	sum(3) := A(3) xor A(1) xor carry;
	carry := (A(3) and A(1)) or (A(3) and carry) or (A(1) and carry);
	sum(4) := carry xor A(2);
	carry := carry and A(2);
	sum(5) := A(3) xor carry;
	carry := carry and A(3);
	sum(6) := carry;
	sum(7) := '0';
return sum;
end add;


function rolf(A: in std_logic_vector(operand_width-1 downto 0);
B: in std_logic_vector(operand_width-1 downto 0))
return std_logic_vector is

variable shift : std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
variable index : integer;

begin

shift(operand_width-1 downto 0):= A;
	for i in 0 to 2 loop
		if B(i) = '1' then
		shift := shift(7 - 2**i downto 0) & shift(7 downto 8-2**i);
		end if;
	end loop;
return shift;
end rolf;

begin
alu : process( A, B)
begin	

	if B(3) = '1' and A(3) = '0' then
		op <= sub(A, B);
	elsif B(3) = '0' and A(3) = '0' then
		op <= rolf(A,B);
	elsif B(3) = '1' and A(3) = '1' then
		op <= ( 7 => '0', 6 => '0', 5 => '0', 4 => '0',
		3 => A(3) xor B(3), 2 => A(2) xor B(2), 1 => A(1) xor B(1), 0 => A(0) xor B(0));
	else
		op <= add(A);
	end if;
end process ;
end a1 ;
