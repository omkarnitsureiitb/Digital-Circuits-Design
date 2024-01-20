library ieee;
use ieee.std_logic_1164.all;


entity ALU is

	generic(
			  operand_width : integer:=4);
	port(
		  A, B: in std_logic_vector(operand_width-1 downto 0);
		  op: out std_logic_vector(5 downto 0));
		
end entity ALU;

architecture Behav of ALU is

	function add(A: in std_logic_vector(operand_width-1 downto 0))
	 
	return std_logic_vector is
	
		variable sum : std_logic_vector(5 downto 0) := (others => '0');
		variable carry : std_logic:='0';

	begin
	
		sum(0) := A(0);
		
		for index in 1 to 3 loop
			sum(index) := A(index) xor A(index - 1) xor carry;
			carry := (A(index) and A(index - 1)) or (carry and (A(index) or A(index - 1)));
		end loop;
		
		sum(4) := A(3) xor carry;
		sum(5) := A(3) and carry;

	return sum;
	
	end function add;
	
	
	function and_op(A: in std_logic_vector(operand_width-1 downto 0);
						 B: in std_logic_vector(operand_width-1 downto 0))
						 
	return std_logic_vector is
	
	variable and_ans : std_logic_vector(5 downto 0) := (others => '0');
		
	begin
	
		for index in 0 to 3 loop
			and_ans(index) := A(index) and B(index);
		end loop;
		
	return and_ans;
	
	end function and_op;
	
	
	function max(A: in std_logic_vector(operand_width-1 downto 0);
					 B: in std_logic_vector(operand_width-1 downto 0))
						 
	return std_logic_vector is
	
	variable max_num : std_logic_vector(5 downto 0) := (others => '0');
		
	begin
	
		for index in 3 downto 0 loop
			if(A(index) = '0' and B(index) = '1' and max_num = "000000")then
				max_num := "00" & B;
			elsif(A(index) = '1' and B(index) = '0' and max_num = "000000")then
				max_num := "00" & A;
			end if;
		end loop;
		
	return max_num;
	
	end function max;
	
	
	function eql(A: in std_logic_vector(operand_width-1 downto 0);
					 B: in std_logic_vector(operand_width-1 downto 0))
						 
	return std_logic_vector is
	
	variable num : std_logic_vector(5 downto 0) := (others => '0');
		
	begin
	
	num := max(A,B);
	
	if(num = "000000")then
		num := "00" & A;
	else
		num := "000000";
	end if;

	return num;
	
	end function eql;
	

	
begin

	output_process : process(A, B)

	begin
	
	if B(3) = '0' and A(3) = '0' then
		op <= max(A, B);
	elsif B(3) = '1' and A(3) = '0' then
		op <= and_op(A,B);
	elsif B(3) = '0' and A(3) = '1' then
		op <= add(A);
	else
		op <= eql(A,B);
	end if;

	end process output_process;
	
end architecture Behav;