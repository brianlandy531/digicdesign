
-- 
-- Definition of  miniALU
-- 
--      Mon Nov 11 17:33:10 2019
--      
--      LeonardoSpectrum Level 3, 2008b.3
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity miniALU is
   port (
      Input1 : IN std_logic_vector (0 DOWNTO 0) ;
      Input2 : IN std_logic_vector (0 DOWNTO 0) ;
      Control : IN std_logic_vector (1 DOWNTO 0) ;
      Output : OUT std_logic_vector (0 DOWNTO 0) ;
      Cout : OUT std_logic) ;
end miniALU ;

architecture Behavioral of miniALU is
   signal nx8, nx117, nx120, nx122, nx124, nx128, nx130, nx132: std_logic ;

begin
   ix49 : ao32 port map ( Y=>Cout, A0=>Control(1), A1=>nx117, A2=>Input2(0), 
      B0=>Control(0), B1=>nx124);
   ix118 : xor2 port map ( Y=>nx117, A0=>Input1(0), A1=>nx8);
   ix9 : xnor2 port map ( Y=>nx8, A0=>nx120, A1=>Input2(0));
   ix121 : nand02 port map ( Y=>nx120, A0=>nx122, A1=>Control(1));
   ix123 : inv01 port map ( Y=>nx122, A=>Control(0));
   ix126 : inv01 port map ( Y=>nx124, A=>Control(1));
   ix29 : oai22 port map ( Y=>Output(0), A0=>Control(1), A1=>nx128, B0=>
      nx124, B1=>nx130);
   ix129 : aoi22 port map ( Y=>nx128, A0=>nx8, A1=>Input1(0), B0=>Control(0), 
      B1=>nx117);
   ix131 : xnor2 port map ( Y=>nx130, A0=>nx132, A1=>nx117);
   ix133 : nand02 port map ( Y=>nx132, A0=>Control(0), A1=>Control(1));
end Behavioral ;

