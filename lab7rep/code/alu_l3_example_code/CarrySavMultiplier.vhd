----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:28:56 03/02/2017 
-- Design Name: 
-- Module Name:    CarrySavMultiplier - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CarrySavMultiplier is
generic( N : Integer :=16);
    Port ( A : in  STD_LOGIC_VECTOR (N/2-1 downto 0);
           B : in  STD_LOGIC_VECTOR (N/2-1 downto 0);
           product : out  STD_LOGIC_VECTOR (N-1 downto 0));
end CarrySavMultiplier;



architecture Behavioral of CarrySavMultiplier is

type out_in_array2D is array(N/2-2 downto 0) of std_logic_vector(N/2-1 downto 0);
type and_array2D is array(N/2 -1 downto 0) of std_logic_vector(N/2-1 downto 0);

--3 signal arrays
signal carry_array : out_in_array2D; -- in/out of the FAS
signal Sum_array : out_in_array2D; --FA sum out
signal and_array: and_array2D; --and outputs
 
component fadder is 
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Sum : out  STD_LOGIC);
			  end component;

component gate_and is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           OUTPUTprt : out  STD_LOGIC);
end component;

begin--start multiplying

--populate and array
--	ands: entity work.gate_and port map (
  --  A => A(0), B => B(0), OUTPUTprt => and_array(0)(0));
  
  
anddepth : for r in 0 to N/2-1 generate

andwidth : for c in 0 to N/2-1 generate
		ands: entity work.gate_and port map (
		A => A(r), B => B(c), OUTPUTprt => and_array(r)(c));
	end generate;
end generate;	


adddepth : for r in 0 to N/2-2 generate

addwidth : for c in 0 to N/2-1 generate
		--start finding exceptions to the rules for generating adders
		
		
		--r1c1 corner
		r1c1 : if r=0 AND c=0 generate
			fulladders: entity work.fadder port map (
			--A => and_array(r)(c), B => and_array(r-1)(c+1), Cin =>'0', Sum => Sum_array(r)(c), Cout => carry_array(r)(c));
			A => and_array(r+1)(c), B => and_array(r)(c+1), Cin =>'0', Sum => Sum_array(r)(c), Cout => carry_array(r)(c));
		end generate;
		
		--r1c2,3 mid
		r1cmid : if r=0 AND (c>0  AND c<N/2-1) generate
			fulladders: entity work.fadder port map (
			--A => and_array(r)(c), B => and_array(r-1)(c+1), Cin =>carry_array(r)(c-1), Sum => Sum_array(r)(c), Cout => carry_array(r)(c));
			A => and_array(r+1)(c), B => and_array(r)(c+1), Cin =>carry_array(r)(c-1), Sum => Sum_array(r)(c), Cout => carry_array(r)(c));
		end generate;
		
		
		
		--r1c4 corner
		r1c4 : if r=0 AND c=N/2-1 generate
			fulladders: entity work.fadder port map (
			A => and_array(r+1)(c), B => '0', Cin =>carry_array(r)(c-1), Sum => Sum_array(r)(c), Cout => carry_array(r)(c));
		end generate;
	--fixed up to this point
	
	
	
		--r2c2 edge
		r2c2 : if (r>0  AND r<N/2-1) AND c=0 generate
			fulladders: entity work.fadder port map (
			A => and_array(r+1)(c), B => Sum_array(r-1)(c+1), Cin =>'0', Sum => Sum_array(r)(c), Cout => carry_array(r)(c));
		end generate;
		
		--r2c3,4 mid
		r2c34 : if (r>0  AND r<N/2-1) AND (c>0  AND c<N/2-1) generate
			fulladders: entity work.fadder port map (
			A => and_array(r+1)(c), B => Sum_array(r-1)(c+1), Cin =>carry_array(r)(c-1), Sum => Sum_array(r)(c), Cout => carry_array(r)(c));
		end generate;
		
		--r2c5 edge
		r2c5 : if (r>0  AND r<N/2-1) AND c=N/2-1  generate
			fulladders: entity work.fadder port map (
			A => and_array(r+1)(c), B => carry_array(r-1)(c), Cin =>carry_array(r)(c-1), Sum => Sum_array(r)(c), Cout => carry_array(r)(c));
		end generate;
				
				--need last set of cases (corner,mids,corner
		--r3c3 edge
		r3c3 : if r=N/2-1 AND c=0 generate
			fulladders: entity work.fadder port map (
			A => and_array(r+1)(c), B => Sum_array(r-1)(c+1), Cin =>'0', Sum => Sum_array(r)(c), Cout => carry_array(r)(c));
		end generate;
		
		--r3c4,5 mid
		r3c45 : if r=N/2-1 AND (c>0  AND c<N/2-1) generate
			fulladders: entity work.fadder port map (
			A => and_array(r+1)(c), B => Sum_array(r-1)(c+1), Cin =>carry_array(r)(c-1), Sum => Sum_array(r)(c), Cout => carry_array(r)(c));
		end generate;
		
		--r3c6 edge
		r3c6 : if r=N/2-1 AND c=N/2-1  generate
			fulladders: entity work.fadder port map (
			A => and_array(r+1)(c), B => carry_array(r-1)(c), Cin =>carry_array(r)(c-1), Sum => Sum_array(r)(c), Cout => carry_array(r)(c));
			
		end generate;
	
		
end generate; 
end generate;

--product(N-1)<=carry_array(3)(3);
--product(N-2)<=Sum_array(3)(3);
--product(N-3)<=Sum_array(3)(2);
--product(N-4)<=Sum_array(3)(1);
--product(N-5)<=Sum_array(3)(0);
--product(N-6)<=Sum_array(2)(0);
--product(N-7)<=Sum_array(1)(0);
--product(N-8)<=and_array(0)(0)
--;
--HERE I ASSIGN PRODUCT OUTPUTS
	--productproc : process(A,B) begin
	product(N-1)<=carry_array(N/2-2)(N/2-1);
	loop1: for i in 1 to N/2-1 generate
	product(N-1-i)<=Sum_array(N/2-2)(N/2-i);
	
	

	end generate;
	loop2 : for j in 1 to N/2-1 generate
	product(N/2-j)<=Sum_array(N/2-1-j)(0);
	
	

	end generate;
	
	product(0)<=and_array(0)(0);

	--end process;


	end Behavioral;


