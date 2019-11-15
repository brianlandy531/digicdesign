-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  generic( N : Integer :=16);
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT ALU
           Port ( Input1 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           Input2 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           Control : in  STD_LOGIC_VECTOR (3 downto 0);
			  clk : in std_logic;
           Output : out  STD_LOGIC_VECTOR (N-1 downto 0));
          END COMPONENT;

          Signal Input1 :  STD_LOGIC_VECTOR (N-1 downto 0);
          Signal Input2 :  STD_LOGIC_VECTOR (N-1 downto 0);
           Signal Control : STD_LOGIC_VECTOR (3 downto 0);
          Signal Output :  STD_LOGIC_VECTOR (N-1 downto 0);
			 signal clk : std_logic;
          

  BEGIN
process  
begin
  clk<='1';
  
  wait for 50 ns;
  clk <='0';
  
  wait for 50 ns;
  
end process; 
             
  
  -- Component Instantiation
          uut: ALU PORT MAP(
                  Input1 => Input1,
           Input2 =>Input2,
			  Control=>Control,
			  clk=>clk,
           Output=>Output
          );


  --  Test Bench Statements
     tb : PROCESS
     BEGIN
		
		--loop by control and run each smaller test bench
		
		--control is 0100 or 0101 run add sub tb
		
	
      for i in 0 to 15 loop
		for j in 0 to 15 loop
		Input1 <= std_logic_vector(to_unsigned(i,N));
		
		Input2 <= std_logic_vector(to_unsigned(j,N));
		--addition
		Control<="0100";
		
		wait for 50ns;


		end loop;
		end loop;
		for i in 0 to 15 loop
		for j in 0 to 15 loop
		Input1 <= std_logic_vector(to_unsigned(i,N));
		
		Input2 <= std_logic_vector(to_unsigned(j,N));
		--sub
		Control<="0101";
		wait for 50ns;


		end loop;
		end loop;
		
		--test some small multiplications
		 for i in 0 to 15 loop
		for j in 0 to 15 loop
		wait for 50ns;
		Input1<= std_logic_vector(to_unsigned(i,N));
		
		Input2 <= std_logic_vector(to_unsigned(j,N));
		Control<="0110";


		end loop;
		end loop;
	
		-------test logic block here
		  wait for 100 ns;	
		  --or
		Input1 <="1110011111100111";
--		
		Input2 <="0000000000000000";
--		Input1 <="1110";
		
	--	Input2 <="0000";
		
		
		Control<="1000";
		
		
		wait for 100 ns;	
		--not
		Input1 <="1110111011101110";
		Input2 <="0000000000000000";
		--Input1 <="1110";
		--Input2 <="0000";
		Control<="1001";
		
		wait for 200ns;
		--and
		Input1 <="1010101010101010";
		Input2 <="0000000000000000";
--		Input1 <="1010";
	--	Input2 <="0000";
		
		Control<="1010";
		wait for 200ns;
		--xor
		Input1 <="1111111111111111";
		Input2 <="1111111011111110";
	--	Input1 <="1111";
		--Input2 <="1110";
		
		
		Control<="1011";
		wait for 200ns;
		
		--now time for shifting
		

		
		for i in 0 to 15 loop
		
		Input2 <= std_logic_vector(to_unsigned(i,N));
		Control <="1100";
		Input1<="1000100010001000";
		--Input1<="1010";
		wait for 100ns;


		end loop;
		
		for i in 0 to 15 loop
		
		Input2 <= std_logic_vector(to_unsigned(i,N));
		Control <="1101";
		Input1<="1000100010001000";
		--Input1<="1010";
		
		wait for 100ns;


		end loop;
		
		for i in 0 to 15 loop
		
		Input2 <= std_logic_vector(to_unsigned(i,N));
		Control <="1110";
		Input1<="1000100010001000";
		--Input1<="1010";
		wait for 100ns;


		end loop;
		
		for i in 0 to 15 loop
		
		Input2 <= std_logic_vector(to_unsigned(i,N));
		Control <="1110";
		Input1<="0000101010101010";
		--Input1<="0101";
		wait for 100ns;


		end loop;
		
		
		
		
        wait for 100 ns; -- wait until global set/reset completes

        -- Add user defined stimulus here

        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
