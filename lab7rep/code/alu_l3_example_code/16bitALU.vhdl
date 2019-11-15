
-- 
-- Definition of  miniALU16
-- 
--      Mon Nov 11 21:03:38 2019
--      
--      LeonardoSpectrum Level 3, 2008b.3
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity miniALU16 is
   port (
      Input1 : IN std_logic_vector (15 DOWNTO 0) ;
      Input2 : IN std_logic_vector (15 DOWNTO 0) ;
      Control : IN std_logic_vector (1 DOWNTO 0) ;
      Output : OUT std_logic_vector (15 DOWNTO 0) ;
      Cout : OUT std_logic) ;
end miniALU16 ;

architecture Behavioral of miniALU16 is
   signal nx8, nx10, nx18, nx24, nx56, nx58, nx86, nx88, nx116, nx118, nx146, 
      nx148, nx176, nx178, nx206, nx208, nx236, nx238, nx266, nx268, nx296, 
      nx298, nx326, nx328, nx356, nx358, nx386, nx388, nx416, nx418, nx446, 
      nx448, nx476, nx478, nx498, nx526, nx530, nx532, nx534, nx537, nx540, 
      nx543, nx546, nx549, nx552, nx555, nx558, nx561, nx564, nx567, nx570, 
      nx573, nx576, nx579, nx583, nx601, nx603, nx605, nx609, nx611, nx616, 
      nx618, nx620, nx622, nx625, nx627, nx629, nx631, nx634, nx636, nx638, 
      nx640, nx643, nx645, nx647, nx649, nx652, nx654, nx656, nx658, nx661, 
      nx663, nx665, nx667, nx670, nx672, nx674, nx676, nx679, nx681, nx683, 
      nx685, nx688, nx690, nx692, nx694, nx697, nx699, nx701, nx703, nx706, 
      nx708, nx710, nx712, nx715, nx717, nx719, nx721, nx724, nx726, nx728, 
      nx730, nx733, nx735, nx737, nx739, nx742, nx744, nx746, nx748, nx755, 
      nx757, nx759, nx761, nx763, nx765, nx767: std_logic ;

begin
   ix507 : ao22 port map ( Y=>Cout, A0=>Control(0), A1=>nx759, B0=>
      Control(1), B1=>nx498);
   ix528 : inv01 port map ( Y=>nx526, A=>Control(1));
   ix499 : xnor2 port map ( Y=>nx498, A0=>nx761, A1=>nx534);
   ix531 : nand02 port map ( Y=>nx530, A0=>nx532, A1=>Control(1));
   ix533 : inv01 port map ( Y=>nx532, A=>Control(0));
   ix535 : mux21 port map ( Y=>nx534, A0=>nx476, A1=>nx537, S0=>nx478);
   ix477 : xnor2 port map ( Y=>nx476, A0=>nx761, A1=>Input2(15));
   ix538 : mux21 port map ( Y=>nx537, A0=>nx446, A1=>nx540, S0=>nx448);
   ix447 : xnor2 port map ( Y=>nx446, A0=>nx761, A1=>Input2(14));
   ix541 : mux21 port map ( Y=>nx540, A0=>nx416, A1=>nx543, S0=>nx418);
   ix417 : xnor2 port map ( Y=>nx416, A0=>nx761, A1=>Input2(13));
   ix544 : mux21 port map ( Y=>nx543, A0=>nx386, A1=>nx546, S0=>nx388);
   ix387 : xnor2 port map ( Y=>nx386, A0=>nx761, A1=>Input2(12));
   ix547 : mux21 port map ( Y=>nx546, A0=>nx356, A1=>nx549, S0=>nx358);
   ix357 : xnor2 port map ( Y=>nx356, A0=>nx761, A1=>Input2(11));
   ix550 : mux21 port map ( Y=>nx549, A0=>nx326, A1=>nx552, S0=>nx328);
   ix327 : xnor2 port map ( Y=>nx326, A0=>nx761, A1=>Input2(10));
   ix553 : mux21 port map ( Y=>nx552, A0=>nx296, A1=>nx555, S0=>nx298);
   ix297 : xnor2 port map ( Y=>nx296, A0=>nx761, A1=>Input2(9));
   ix556 : mux21 port map ( Y=>nx555, A0=>nx266, A1=>nx558, S0=>nx268);
   ix267 : xnor2 port map ( Y=>nx266, A0=>nx761, A1=>Input2(8));
   ix559 : mux21 port map ( Y=>nx558, A0=>nx236, A1=>nx561, S0=>nx238);
   ix237 : xnor2 port map ( Y=>nx236, A0=>nx761, A1=>Input2(7));
   ix562 : mux21 port map ( Y=>nx561, A0=>nx206, A1=>nx564, S0=>nx208);
   ix207 : xnor2 port map ( Y=>nx206, A0=>nx761, A1=>Input2(6));
   ix565 : mux21 port map ( Y=>nx564, A0=>nx176, A1=>nx567, S0=>nx178);
   ix177 : xnor2 port map ( Y=>nx176, A0=>nx763, A1=>Input2(5));
   ix568 : mux21 port map ( Y=>nx567, A0=>nx146, A1=>nx570, S0=>nx148);
   ix147 : xnor2 port map ( Y=>nx146, A0=>nx763, A1=>Input2(4));
   ix571 : mux21 port map ( Y=>nx570, A0=>nx116, A1=>nx573, S0=>nx118);
   ix117 : xnor2 port map ( Y=>nx116, A0=>nx763, A1=>Input2(3));
   ix574 : mux21 port map ( Y=>nx573, A0=>nx86, A1=>nx576, S0=>nx88);
   ix87 : xnor2 port map ( Y=>nx86, A0=>nx763, A1=>Input2(2));
   ix577 : mux21 port map ( Y=>nx576, A0=>nx56, A1=>nx579, S0=>nx58);
   ix57 : xnor2 port map ( Y=>nx56, A0=>nx763, A1=>Input2(1));
   ix580 : aoi32 port map ( Y=>nx579, A0=>Control(0), A1=>Control(1), A2=>
      nx10, B0=>nx583, B1=>Input1(0));
   ix11 : xnor2 port map ( Y=>nx10, A0=>Input1(0), A1=>nx8);
   ix9 : xnor2 port map ( Y=>nx8, A0=>nx763, A1=>Input2(0));
   ix59 : xnor2 port map ( Y=>nx58, A0=>Input1(1), A1=>nx56);
   ix89 : xnor2 port map ( Y=>nx88, A0=>Input1(2), A1=>nx86);
   ix119 : xnor2 port map ( Y=>nx118, A0=>Input1(3), A1=>nx116);
   ix149 : xnor2 port map ( Y=>nx148, A0=>Input1(4), A1=>nx146);
   ix179 : xnor2 port map ( Y=>nx178, A0=>Input1(5), A1=>nx176);
   ix209 : xnor2 port map ( Y=>nx208, A0=>Input1(6), A1=>nx206);
   ix239 : xnor2 port map ( Y=>nx238, A0=>Input1(7), A1=>nx236);
   ix269 : xnor2 port map ( Y=>nx268, A0=>Input1(8), A1=>nx266);
   ix299 : xnor2 port map ( Y=>nx298, A0=>Input1(9), A1=>nx296);
   ix329 : xnor2 port map ( Y=>nx328, A0=>Input1(10), A1=>nx326);
   ix359 : xnor2 port map ( Y=>nx358, A0=>Input1(11), A1=>nx356);
   ix389 : xnor2 port map ( Y=>nx388, A0=>Input1(12), A1=>nx386);
   ix419 : xnor2 port map ( Y=>nx418, A0=>Input1(13), A1=>nx416);
   ix449 : xnor2 port map ( Y=>nx448, A0=>Input1(14), A1=>nx446);
   ix479 : xnor2 port map ( Y=>nx478, A0=>Input1(15), A1=>nx476);
   ix37 : oai222 port map ( Y=>Output(0), A0=>nx759, A1=>nx601, B0=>nx605, 
      B1=>nx765, C0=>nx609, C1=>nx611);
   ix602 : xor2 port map ( Y=>nx601, A0=>nx603, A1=>nx10);
   ix604 : nand02 port map ( Y=>nx603, A0=>Control(0), A1=>Control(1));
   ix606 : inv01 port map ( Y=>nx605, A=>Input1(0));
   ix610 : inv01 port map ( Y=>nx609, A=>Input2(0));
   ix612 : aoi21 port map ( Y=>nx611, A0=>Input1(0), A1=>nx24, B0=>nx755);
   ix25 : nor02 port map ( Y=>nx24, A0=>Control(0), A1=>Control(1));
   ix67 : oai222 port map ( Y=>Output(1), A0=>nx759, A1=>nx616, B0=>nx618, 
      B1=>nx620, C0=>nx622, C1=>nx765);
   ix617 : xor2 port map ( Y=>nx616, A0=>nx579, A1=>nx58);
   ix619 : inv01 port map ( Y=>nx618, A=>Input2(1));
   ix621 : aoi21 port map ( Y=>nx620, A0=>Input1(1), A1=>nx24, B0=>nx755);
   ix623 : inv01 port map ( Y=>nx622, A=>Input1(1));
   ix97 : oai222 port map ( Y=>Output(2), A0=>nx759, A1=>nx625, B0=>nx627, 
      B1=>nx629, C0=>nx631, C1=>nx765);
   ix626 : xor2 port map ( Y=>nx625, A0=>nx576, A1=>nx88);
   ix628 : inv01 port map ( Y=>nx627, A=>Input2(2));
   ix630 : aoi21 port map ( Y=>nx629, A0=>Input1(2), A1=>nx24, B0=>nx755);
   ix632 : inv01 port map ( Y=>nx631, A=>Input1(2));
   ix127 : oai222 port map ( Y=>Output(3), A0=>nx759, A1=>nx634, B0=>nx636, 
      B1=>nx638, C0=>nx640, C1=>nx765);
   ix635 : xor2 port map ( Y=>nx634, A0=>nx573, A1=>nx118);
   ix637 : inv01 port map ( Y=>nx636, A=>Input2(3));
   ix639 : aoi21 port map ( Y=>nx638, A0=>Input1(3), A1=>nx24, B0=>nx755);
   ix641 : inv01 port map ( Y=>nx640, A=>Input1(3));
   ix157 : oai222 port map ( Y=>Output(4), A0=>nx759, A1=>nx643, B0=>nx645, 
      B1=>nx647, C0=>nx649, C1=>nx765);
   ix644 : xor2 port map ( Y=>nx643, A0=>nx570, A1=>nx148);
   ix646 : inv01 port map ( Y=>nx645, A=>Input2(4));
   ix648 : aoi21 port map ( Y=>nx647, A0=>Input1(4), A1=>nx24, B0=>nx755);
   ix650 : inv01 port map ( Y=>nx649, A=>Input1(4));
   ix187 : oai222 port map ( Y=>Output(5), A0=>nx759, A1=>nx652, B0=>nx654, 
      B1=>nx656, C0=>nx658, C1=>nx765);
   ix653 : xor2 port map ( Y=>nx652, A0=>nx567, A1=>nx178);
   ix655 : inv01 port map ( Y=>nx654, A=>Input2(5));
   ix657 : aoi21 port map ( Y=>nx656, A0=>Input1(5), A1=>nx24, B0=>nx755);
   ix659 : inv01 port map ( Y=>nx658, A=>Input1(5));
   ix217 : oai222 port map ( Y=>Output(6), A0=>nx759, A1=>nx661, B0=>nx663, 
      B1=>nx665, C0=>nx667, C1=>nx765);
   ix662 : xor2 port map ( Y=>nx661, A0=>nx564, A1=>nx208);
   ix664 : inv01 port map ( Y=>nx663, A=>Input2(6));
   ix666 : aoi21 port map ( Y=>nx665, A0=>Input1(6), A1=>nx24, B0=>nx755);
   ix668 : inv01 port map ( Y=>nx667, A=>Input1(6));
   ix247 : oai222 port map ( Y=>Output(7), A0=>nx759, A1=>nx670, B0=>nx672, 
      B1=>nx674, C0=>nx676, C1=>nx765);
   ix671 : xor2 port map ( Y=>nx670, A0=>nx561, A1=>nx238);
   ix673 : inv01 port map ( Y=>nx672, A=>Input2(7));
   ix675 : aoi21 port map ( Y=>nx674, A0=>Input1(7), A1=>nx24, B0=>nx755);
   ix677 : inv01 port map ( Y=>nx676, A=>Input1(7));
   ix277 : oai222 port map ( Y=>Output(8), A0=>nx759, A1=>nx679, B0=>nx681, 
      B1=>nx683, C0=>nx685, C1=>nx765);
   ix680 : xor2 port map ( Y=>nx679, A0=>nx558, A1=>nx268);
   ix682 : inv01 port map ( Y=>nx681, A=>Input2(8));
   ix684 : aoi21 port map ( Y=>nx683, A0=>Input1(8), A1=>nx24, B0=>nx755);
   ix686 : inv01 port map ( Y=>nx685, A=>Input1(8));
   ix307 : oai222 port map ( Y=>Output(9), A0=>nx759, A1=>nx688, B0=>nx690, 
      B1=>nx692, C0=>nx694, C1=>nx765);
   ix689 : xor2 port map ( Y=>nx688, A0=>nx555, A1=>nx298);
   ix691 : inv01 port map ( Y=>nx690, A=>Input2(9));
   ix693 : aoi21 port map ( Y=>nx692, A0=>Input1(9), A1=>nx24, B0=>nx755);
   ix695 : inv01 port map ( Y=>nx694, A=>Input1(9));
   ix337 : oai222 port map ( Y=>Output(10), A0=>nx759, A1=>nx697, B0=>nx699, 
      B1=>nx701, C0=>nx703, C1=>nx765);
   ix698 : xor2 port map ( Y=>nx697, A0=>nx552, A1=>nx328);
   ix700 : inv01 port map ( Y=>nx699, A=>Input2(10));
   ix702 : aoi21 port map ( Y=>nx701, A0=>Input1(10), A1=>nx24, B0=>nx755);
   ix704 : inv01 port map ( Y=>nx703, A=>Input1(10));
   ix367 : oai222 port map ( Y=>Output(11), A0=>nx526, A1=>nx706, B0=>nx708, 
      B1=>nx710, C0=>nx712, C1=>nx765);
   ix707 : xor2 port map ( Y=>nx706, A0=>nx549, A1=>nx358);
   ix709 : inv01 port map ( Y=>nx708, A=>Input2(11));
   ix711 : aoi21 port map ( Y=>nx710, A0=>Input1(11), A1=>nx24, B0=>nx755);
   ix713 : inv01 port map ( Y=>nx712, A=>Input1(11));
   ix397 : oai222 port map ( Y=>Output(12), A0=>nx526, A1=>nx715, B0=>nx717, 
      B1=>nx719, C0=>nx721, C1=>nx765);
   ix716 : xor2 port map ( Y=>nx715, A0=>nx546, A1=>nx388);
   ix718 : inv01 port map ( Y=>nx717, A=>Input2(12));
   ix720 : aoi21 port map ( Y=>nx719, A0=>Input1(12), A1=>nx24, B0=>nx755);
   ix722 : inv01 port map ( Y=>nx721, A=>Input1(12));
   ix427 : oai222 port map ( Y=>Output(13), A0=>nx526, A1=>nx724, B0=>nx726, 
      B1=>nx728, C0=>nx730, C1=>nx765);
   ix725 : xor2 port map ( Y=>nx724, A0=>nx543, A1=>nx418);
   ix727 : inv01 port map ( Y=>nx726, A=>Input2(13));
   ix729 : aoi21 port map ( Y=>nx728, A0=>Input1(13), A1=>nx24, B0=>nx755);
   ix731 : inv01 port map ( Y=>nx730, A=>Input1(13));
   ix457 : oai222 port map ( Y=>Output(14), A0=>nx526, A1=>nx733, B0=>nx735, 
      B1=>nx737, C0=>nx739, C1=>nx765);
   ix734 : xor2 port map ( Y=>nx733, A0=>nx540, A1=>nx448);
   ix736 : inv01 port map ( Y=>nx735, A=>Input2(14));
   ix738 : aoi21 port map ( Y=>nx737, A0=>Input1(14), A1=>nx24, B0=>nx755);
   ix740 : inv01 port map ( Y=>nx739, A=>Input1(14));
   ix487 : oai222 port map ( Y=>Output(15), A0=>nx526, A1=>nx742, B0=>nx744, 
      B1=>nx746, C0=>nx748, C1=>nx767);
   ix743 : xor2 port map ( Y=>nx742, A0=>nx537, A1=>nx478);
   ix745 : inv01 port map ( Y=>nx744, A=>Input2(15));
   ix747 : aoi21 port map ( Y=>nx746, A0=>Input1(15), A1=>nx24, B0=>nx757);
   ix749 : inv01 port map ( Y=>nx748, A=>Input1(15));
   ix584 : inv01 port map ( Y=>nx583, A=>nx8);
   ix754 : inv01 port map ( Y=>nx755, A=>nx767);
   ix756 : inv01 port map ( Y=>nx757, A=>nx767);
   ix758 : inv01 port map ( Y=>nx759, A=>Control(1));
   ix760 : buf02 port map ( Y=>nx761, A=>nx530);
   ix762 : buf02 port map ( Y=>nx763, A=>nx530);
   ix764 : inv02 port map ( Y=>nx765, A=>nx18);
   ix766 : inv02 port map ( Y=>nx767, A=>nx18);
   ix19 : nor02ii port map ( Y=>nx18, A0=>Control(1), A1=>Control(0));
end Behavioral ;

