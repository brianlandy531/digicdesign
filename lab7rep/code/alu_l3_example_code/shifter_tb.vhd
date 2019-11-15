--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:14:30 03/09/2017
-- Design Name:   
-- Module Name:   D:/my back ups/DSD2/Lab3/L3/shifter_tb.vhd
-- Project Name:  L3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shifter
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
 
ENTITY shifter_tb IS
END shifter_tb;
 
ARCHITECTURE behavior OF shifter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shifter
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         amt : IN  std_logic_vector(3 downto 0);
         control : IN  std_logic_vector(1 downto 0);
         output : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal amt : std_logic_vector(3 downto 0) := (others => '0');
   signal control : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shifter PORT MAP (
          A => A,
          amt => amt,
          control => control,
          output => output
        );

  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      	

		amt <= "0000";
		control <="00";
		A<="1010101010101010";
		

      wait for 100ns;

		
		for i in 0 to 15 loop
		
		amt <= std_logic_vector(to_unsigned(i,4));
		control <="00";
		A<="1000100010001000";
		wait for 100ns;


		end loop;
		
		for i in 0 to 15 loop
		
		amt <= std_logic_vector(to_unsigned(i,4));
		control <="01";
		A<="1000100010001000";
		wait for 100ns;


		end loop;
		
		for i in 0 to 15 loop
		
		amt <= std_logic_vector(to_unsigned(i,4));
		control <="10";
		A<="1000100010001000";
		wait for 100ns;


		end loop;
		
		for i in 0 to 15 loop
		
		amt <= std_logic_vector(to_unsigned(i,4));
		control <="10";
		A<="0000101010101010";
		wait for 100ns;


		end loop;
		
		
		
      -- insert stimulus here 

      wait;
   end process;

END;
