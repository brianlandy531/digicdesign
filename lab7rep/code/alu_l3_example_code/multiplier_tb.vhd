--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:27:19 03/21/2017
-- Design Name:   
-- Module Name:   D:/my back ups/DSD2/Lab3/L3/multiplier_tb.vhd
-- Project Name:  L3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CarrySavMultiplier
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
 use ieee.std_logic_textio.all;
 library std;
 use std.textio.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY multiplier_tb IS
generic( N : Integer :=8);
END multiplier_tb;
 
ARCHITECTURE behavior OF multiplier_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CarrySavMultiplier
    PORT(
         A : IN  std_logic_vector(N-1 downto 0);
         B : IN  std_logic_vector(N-1 downto 0);
         product : OUT  std_logic_vector(2*N-1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(N-1 downto 0) := (others => '0');
   signal B : std_logic_vector(N-1 downto 0) := (others => '0');
	
 	--Outputs
   signal product : std_logic_vector(2*N-1 downto 0);
	signal step : integer :=0;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CarrySavMultiplier PORT MAP (
          A => A,
          B => B,
          product => product
        );

process variable vline:line;
	file output_vectors: text;
  variable p: integer;
  --write file
  begin
  if step = 0 then
	file_open(output_vectors,"D:\my back ups\DSD2\Lab3\L3\text.txt", write_mode);
	for i in 0 to 2**(N)-1 loop
		for j in 0 to 2**(N)-1 loop
			hwrite(vline,std_logic_vector(to_unsigned(i,N)));
			write(vline,string'(" "));
			hwrite(vline,std_logic_vector(to_unsigned(j,N)));
			write(vline,string'(" "));
			p:=i*j;
			hwrite(vline,std_logic_vector(to_unsigned(p,2*N)));
			
			writeline(output_vectors,vline);
			
			
			
			end loop;
	end loop;
	
	file_close(output_vectors);
	step<=1;
	end if;
	wait;
	end process;
	
	process is 
	
	variable vline:line;
	file input_vectors : text;
	variable x_in,y_in : std_logic_vector(((N+3)/4)*4-1 downto 0);
	variable p_in : std_logic_vector(2*((N+3)/4)*4-1 downto 0);
	variable filler : String(1 to 1); 
	begin
	--step<=1;
	wait until step =1;
	file_open(input_vectors,"D:\my back ups\DSD2\Lab3\L3\text.txt",read_mode);
	--reaad from file
	while not endfile(input_vectors) loop
	
		readline(input_vectors,vline);
		
		
		hread(vline,x_in);
		read(vline,filler);
		hread(vline,y_in);
		read(vline,filler);
		hread(vline,p_in);
		
		
		A<=x_in;
		B<=y_in;
		
		--feed into components
		
		
		wait for 20ns;
		
		--asserts
		assert(p_in=product)
		report"error";
		
	
	
	end loop;
	
	
	end process;


   -- Stimulus process
   --stim_proc: process
   --begin		
      -- hold reset state for 100 ns.
      
		
		
     -- for i in 0 to 2**N loop
		--for j in 0 to 2**N loop
		--wait for 50ns;
		--A <= std_logic_vector(to_unsigned(i,8));
		
--		B <= std_logic_vector(to_unsigned(j,8));
		


	--	end loop;
		--end loop;
	
      --wait;
		--end process;

END;
