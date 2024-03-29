library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity miniALU1bit_tb is
  generic( N : Integer :=1);
end;

architecture bench of miniALU1bit_tb is

  component miniALU
  
      Port ( Input1 : in  STD_LOGIC_VECTOR (N-1 downto 0);
             Input2 : in  STD_LOGIC_VECTOR (N-1 downto 0);
             Control : in  STD_LOGIC_VECTOR (1 downto 0);
             Output : out  STD_LOGIC_VECTOR (N-1 downto 0);
             Cout : out STD_LOGIC);
  end component;

  signal Input1: STD_LOGIC_VECTOR (N-1 downto 0);
  signal Input2: STD_LOGIC_VECTOR (N-1 downto 0);
  signal Control: STD_LOGIC_VECTOR (1 downto 0);
  signal Output: STD_LOGIC_VECTOR (N-1 downto 0);
  signal Cout: STD_LOGIC;


  

 BEGIN      
  
  -- Insert values for generic parameters !!
  uut: miniALU port map ( Input1  => Input1,
                             Input2  => Input2,
                             Control => Control,
                             Output  => Output,
                             Cout=> Cout );


  --  Test Bench Statements
     tb : PROCESS
     BEGIN
		
		wait for 10 ns;

		Input1 <="1";
--		
		Input2 <="0";
		Control<="00";
		
		wait for 10 ns;	
		
		Input1 <="1";
--		
		Input2 <="0";
		Control<="01";
		
		
		wait for 10 ns;	
		
		--loop by control 
		for i in 0 to 1 loop
		  for j in 0 to 1 loop
		  Input1 <= std_logic_vector(to_unsigned(i,N));
		
		  Input2 <= std_logic_vector(to_unsigned(j,N));
		--addition
		  Control<="10";
		
		  wait for 5ns;


		  end loop; 
		end loop;
	
	wait for 10ns;
	
	
	
	--loop by control 
		for i in 0 to 1 loop
		  for j in 0 to 1 loop
		  Input1 <= std_logic_vector(to_unsigned(i,N));
		
		  Input2 <= std_logic_vector(to_unsigned(j,N));
		--addition
		  Control<="11";
		
		  wait for 5ns;


		  end loop; 
		end loop;

--assert false
  --report "all test done"
  --severity failure;
				
	
     END PROCESS tb;
  --  End Test Bench 

  END;

