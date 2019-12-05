--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:41:15 03/09/2017
-- Design Name:   
-- Module Name:   D:/my back ups/DSD2/Lab3/L3/RippleCarryAdder_tb.vhd
-- Project Name:  L3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RippleCarryAdder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 use ieee.NUMERIC_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY RippleCarryAdder_tb IS
END RippleCarryAdder_tb;
 
ARCHITECTURE behavior OF RippleCarryAdder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RippleCarryAdder
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         Cin : IN  std_logic;
         Cout : OUT  std_logic;
         Sum : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal Cout : std_logic;
   signal Sum : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RippleCarryAdder PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          Cout => Cout,
          Sum => Sum
        );

  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	
		A<="0000111111111111";
		B<="0000000000000001";
		Cin<='0';
		
      for i in 0 to 5 loop
		for j in 0 to 5 loop
		A <= std_logic_vector(to_unsigned(i,16));
		
		B <= std_logic_vector(to_unsigned(j,16));
		
		Cin<='0';
		wait for 50ns;


		end loop;
		end loop;
		for i in 0 to 5 loop
		for j in 0 to 5 loop
		A <= std_logic_vector(to_unsigned(i,16));
		
		B <= std_logic_vector(to_unsigned(j,16));
		
		Cin<='1';
		wait for 50ns;


		end loop;
		end loop;
      -- insert stimulus here 

      wait;
   end process;

END;
