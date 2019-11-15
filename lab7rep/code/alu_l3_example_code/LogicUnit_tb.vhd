--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:32:47 03/07/2017
-- Design Name:   
-- Module Name:   D:/my back ups/DSD2/Lab3/L3/LogicUnit_tb.vhd
-- Project Name:  L3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: LogicUnit
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY LogicUnit_tb IS
constant N : integer := 4;
END LogicUnit_tb;
 
ARCHITECTURE behavior OF LogicUnit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LogicUnit
    PORT(
         A : IN  std_logic_vector(N-1 downto 0);
         B : IN  std_logic_vector(N-1 downto 0);
         control : IN  std_logic_vector(1 downto 0);
         output : OUT  std_logic_vector(N-1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Atb : std_logic_vector(N-1 downto 0) := (others => '0');
   signal Btb : std_logic_vector(N-1 downto 0) := (others => '0');
   signal controltb : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal outputtb : std_logic_vector(N-1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LogicUnit PORT MAP (
          A => Atb,
          B => Btb,
          control => controltb,
          output => outputtb
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
       wait for 100 ns;	
		Atb <="1111";
		Btb<="0000";
		
		controltb<="00";
		wait for 100 ns;	
		Atb <="1111";
		Btb<="0000";
		
		controltb<="00";
		wait for 200ns;
		
		Atb <="1010";
		Btb<="0000";
		
		controltb<="01";
		wait for 200ns;
		
		Atb <="1111";
		Btb<="1110";
		
		controltb<="10";
		wait for 200ns;
		
		Atb <="1111";
		Btb<="0110";
		
		controltb<="11";
		wait for 200ns;
		

     

      -- insert stimulus here 

      wait;
   end process;

END;
