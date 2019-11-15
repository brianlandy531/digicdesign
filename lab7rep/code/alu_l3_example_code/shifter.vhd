----------------------------------------------------------------------------------
--File: shifter
--Entity: shifter
--Architechure:behavioral
--Author: Brian Landy
--Created: 3/2/17
--Modified:
--VHDL'93
--Description: This performs the shifts
------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use Math_real.all;
use IEEE.math_real."ceil";
use IEEE.math_real."log2";

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shifter is

generic (N : integer := 16);
    Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
           amt : in  STD_LOGIC_VECTOR (integer(ceil(log2(real(N))))-1 downto 0);--alter to be ceiling  integer(ceil(log2(real(a))))
           control : in  STD_LOGIC_VECTOR (1 downto 0);-- first 2 bits - "11"
           output : out  STD_LOGIC_VECTOR (N-1 downto 0));
end shifter;

architecture Behavioral of shifter is
--ones and zeroes are vectors of n size to be placed into an output. their size is altered by amt.
signal ones :  std_logic_vector(N-1 downto 0) := (others=>'1');
signal zeroes: std_logic_vector(N-1 downto 0) := (others=>'0');
signal num : Integer := to_integer(unsigned(amt));
signal msb: std_logic := A(N-1);

signal outpoop : std_logic_vector(N-1 downto 0);
begin
				 
--this process is used for determining which shift to perform
shift : process(A,amt,control,msb,outpoop)
begin
if amt = zeroes(integer(ceil(log2(real(N))))-1 downto 0) then
--output the original value
	outpoop<=A;
else	
--left logical
	if control = "00" then
		outpoop <= A((N-to_integer(unsigned(amt))-1) downto 0) & zeroes(to_integer(unsigned(amt))-1 downto 0);
		--right logical
	elsif control =   "01" then 
		outpoop <= zeroes(to_integer(unsigned(amt))-1 downto 0) & A((N-1) downto to_integer(unsigned(amt)));
	elsif control = "10" then
	--right arithmetic
		if  A(N-1) = '0' then
			outpoop <= zeroes(to_integer(unsigned(amt))-1 downto 0) & A((N-1) downto to_integer(unsigned(amt)));

			else 
			outpoop <= ones(to_integer(unsigned(amt))-1 downto 0) & A((N-1) downto to_integer(unsigned(amt))); 
	end if;
	
end if;

end if;
output<=outpoop;
end process;

end Behavioral;

