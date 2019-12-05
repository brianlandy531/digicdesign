
-- 
-- Definition of  miniALU4
-- 
--      Thu Nov 14 20:52:42 2019
--      
--      LeonardoSpectrum Level 3, 2008b.3
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity miniALU4 is
   port (
      Input1 : IN std_logic_vector (3 DOWNTO 0) ;
      Input2 : IN std_logic_vector (3 DOWNTO 0) ;
      Control : IN std_logic_vector (1 DOWNTO 0) ;
      Output : OUT std_logic_vector (3 DOWNTO 0) ;
      Cout : OUT std_logic) ;
end miniALU4 ;

architecture Behavioral of miniALU4 is
   signal nx8, nx10, nx12, nx18, nx28, nx42, nx56, nx58, nx60, nx72, nx86, 
      nx88, nx90, nx102, nx116, nx118, nx120, nx138, nx200, nx204, nx206, 
      nx208, nx211, nx214, nx217, nx221, nx227, nx231, nx234, nx237, nx240, 
      nx244, nx247, nx251, nx254: std_logic ;

begin
   ix147 : ao22 port map ( Y=>Cout, A0=>Control(0), A1=>nx200, B0=>
      Control(1), B1=>nx138);
   ix202 : inv01 port map ( Y=>nx200, A=>Control(1));
   ix139 : xnor2 port map ( Y=>nx138, A0=>nx204, A1=>nx208);
   ix205 : nand02 port map ( Y=>nx204, A0=>nx206, A1=>Control(1));
   ix207 : inv01 port map ( Y=>nx206, A=>Control(0));
   ix209 : mux21 port map ( Y=>nx208, A0=>nx116, A1=>nx211, S0=>nx118);
   ix117 : xnor2 port map ( Y=>nx116, A0=>nx204, A1=>Input2(3));
   ix212 : mux21 port map ( Y=>nx211, A0=>nx86, A1=>nx214, S0=>nx88);
   ix87 : xnor2 port map ( Y=>nx86, A0=>nx204, A1=>Input2(2));
   ix215 : mux21 port map ( Y=>nx214, A0=>nx56, A1=>nx217, S0=>nx58);
   ix57 : xnor2 port map ( Y=>nx56, A0=>nx204, A1=>Input2(1));
   ix218 : aoi32 port map ( Y=>nx217, A0=>Control(0), A1=>Control(1), A2=>
      nx10, B0=>nx221, B1=>Input1(0));
   ix11 : xnor2 port map ( Y=>nx10, A0=>Input1(0), A1=>nx8);
   ix9 : xnor2 port map ( Y=>nx8, A0=>nx204, A1=>Input2(0));
   ix59 : xnor2 port map ( Y=>nx58, A0=>Input1(1), A1=>nx56);
   ix89 : xnor2 port map ( Y=>nx88, A0=>Input1(2), A1=>nx86);
   ix119 : xnor2 port map ( Y=>nx118, A0=>Input1(3), A1=>nx116);
   ix37 : inv01 port map ( Y=>Output(0), A=>nx227);
   ix228 : aoi222 port map ( Y=>nx227, A0=>Input1(0), A1=>nx18, B0=>
      Input2(0), B1=>nx28, C0=>Control(1), C1=>nx12);
   ix29 : aoi21 port map ( Y=>nx28, A0=>nx231, A1=>nx206, B0=>Control(1));
   ix232 : inv01 port map ( Y=>nx231, A=>Input1(0));
   ix13 : xnor2 port map ( Y=>nx12, A0=>nx234, A1=>nx10);
   ix235 : nand02 port map ( Y=>nx234, A0=>Control(0), A1=>Control(1));
   ix67 : inv01 port map ( Y=>Output(1), A=>nx237);
   ix238 : aoi222 port map ( Y=>nx237, A0=>Input2(1), A1=>nx42, B0=>
      Input1(1), B1=>nx18, C0=>Control(1), C1=>nx60);
   ix43 : aoi21 port map ( Y=>nx42, A0=>nx240, A1=>nx206, B0=>Control(1));
   ix241 : inv01 port map ( Y=>nx240, A=>Input1(1));
   ix61 : xnor2 port map ( Y=>nx60, A0=>nx217, A1=>nx58);
   ix97 : inv01 port map ( Y=>Output(2), A=>nx244);
   ix245 : aoi222 port map ( Y=>nx244, A0=>Input2(2), A1=>nx72, B0=>
      Input1(2), B1=>nx18, C0=>Control(1), C1=>nx90);
   ix73 : aoi21 port map ( Y=>nx72, A0=>nx247, A1=>nx206, B0=>Control(1));
   ix248 : inv01 port map ( Y=>nx247, A=>Input1(2));
   ix91 : xnor2 port map ( Y=>nx90, A0=>nx214, A1=>nx88);
   ix127 : inv01 port map ( Y=>Output(3), A=>nx251);
   ix252 : aoi222 port map ( Y=>nx251, A0=>Input2(3), A1=>nx102, B0=>
      Input1(3), B1=>nx18, C0=>Control(1), C1=>nx120);
   ix103 : aoi21 port map ( Y=>nx102, A0=>nx254, A1=>nx206, B0=>Control(1));
   ix255 : inv01 port map ( Y=>nx254, A=>Input1(3));
   ix121 : xnor2 port map ( Y=>nx120, A0=>nx211, A1=>nx118);
   ix222 : inv01 port map ( Y=>nx221, A=>nx8);
   ix19 : nor02ii port map ( Y=>nx18, A0=>Control(1), A1=>Control(0));
end Behavioral ;

