----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:18:07 03/09/2017 
-- Design Name: 
-- Module Name:    RippleCarryAdder - Behavioral 
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

entity RippleCarryAdder is
Generic(N : integer := 16);
    Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
           B : in  STD_LOGIC_VECTOR (N-1 downto 0);
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (N-1 downto 0));
end RippleCarryAdder;

architecture Behavioral of RippleCarryAdder is
 signal int_cout : std_logic_vector(N-1 downto 0);
 --this is the one bitt adder that my structural adder is built of
component fadder is 
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Sum : out  STD_LOGIC);
			  end component;

signal bout_zero, binternal_i : STD_LOGIC;


begin

--create full adders from the one- this is the first with unique inputs


bout_zero <= B(0) XOR Cin;
 fulladders: entity work.fadder port map (
    A => A(0), B => bout_zero, Cin => Cin, Sum => Sum(0), Cout => int_cout(0));
  --this is the generate for the rest of the adders
  adders: for i in 1 to N-1 generate
    binternal_i <= B(i) XOR Cin;
    fulladders: entity work.fadder port map (  
      A => A(i), B => binternal_i, Cin => int_cout(i-1), Sum => Sum(i), Cout => int_cout(i));
  end generate;
  
  Cout <= int_cout(N-1);




end Behavioral;

