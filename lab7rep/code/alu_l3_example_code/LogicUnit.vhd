----------------------------------------------------------------------------------
--File: logic unit
--Entity:logic unit
--Architechure:behavioral
--Author: Brian Landy
--Created: 3/2/17
--Modified:
--VHDL'93
--Description: This computes bitwise operations of vectotrs
--------------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LogicUnit is
generic (N :integer :=16);
    Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
           B : in  STD_LOGIC_VECTOR (N-1 downto 0);
           control : in  STD_LOGIC_VECTOR (1 downto 0);
           output : out  STD_LOGIC_VECTOR (N-1 downto 0));
end LogicUnit;

  architecture Behavioral of LogicUnit is

begin
process(control,A,B) is--this uses loops to do the bitwise comparisons and 
--the last 2 control bits to determine the operation
begin
		if control = "00" then
			output <=A OR B;
		elsif control = "01" then
			output <=NOT A;
		elsif control = "10" then
			output <=A AND B;
		else 
			
			output <=A XOR B;
			
		end if;
	
end process;


end Behavioral;

