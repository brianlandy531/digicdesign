//
// Verilog description for cell miniALU16, 
// Mon Nov 11 21:03:38 2019
//
// LeonardoSpectrum Level 3, 2008b.3 
//


module miniALU16 ( Input1, Input2, Control, \Output , Cout ) ;

    input [15:0]Input1 ;
    input [15:0]Input2 ;
    input [1:0]Control ;
    output [15:0]\Output  ;
    output Cout ;

    wire nx8, nx10, nx18, nx24, nx56, nx58, nx86, nx88, nx116, nx118, nx146, 
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
         nx757, nx759, nx761, nx763, nx765, nx767;



    ao22 ix507 (.Y (Cout), .A0 (Control[0]), .A1 (nx759), .B0 (Control[1]), .B1 (
         nx498)) ;
    inv01 ix528 (.Y (nx526), .A (Control[1])) ;
    xnor2 ix499 (.Y (nx498), .A0 (nx761), .A1 (nx534)) ;
    nand02 ix531 (.Y (nx530), .A0 (nx532), .A1 (Control[1])) ;
    inv01 ix533 (.Y (nx532), .A (Control[0])) ;
    mux21 ix535 (.Y (nx534), .A0 (nx476), .A1 (nx537), .S0 (nx478)) ;
    xnor2 ix477 (.Y (nx476), .A0 (nx761), .A1 (Input2[15])) ;
    mux21 ix538 (.Y (nx537), .A0 (nx446), .A1 (nx540), .S0 (nx448)) ;
    xnor2 ix447 (.Y (nx446), .A0 (nx761), .A1 (Input2[14])) ;
    mux21 ix541 (.Y (nx540), .A0 (nx416), .A1 (nx543), .S0 (nx418)) ;
    xnor2 ix417 (.Y (nx416), .A0 (nx761), .A1 (Input2[13])) ;
    mux21 ix544 (.Y (nx543), .A0 (nx386), .A1 (nx546), .S0 (nx388)) ;
    xnor2 ix387 (.Y (nx386), .A0 (nx761), .A1 (Input2[12])) ;
    mux21 ix547 (.Y (nx546), .A0 (nx356), .A1 (nx549), .S0 (nx358)) ;
    xnor2 ix357 (.Y (nx356), .A0 (nx761), .A1 (Input2[11])) ;
    mux21 ix550 (.Y (nx549), .A0 (nx326), .A1 (nx552), .S0 (nx328)) ;
    xnor2 ix327 (.Y (nx326), .A0 (nx761), .A1 (Input2[10])) ;
    mux21 ix553 (.Y (nx552), .A0 (nx296), .A1 (nx555), .S0 (nx298)) ;
    xnor2 ix297 (.Y (nx296), .A0 (nx761), .A1 (Input2[9])) ;
    mux21 ix556 (.Y (nx555), .A0 (nx266), .A1 (nx558), .S0 (nx268)) ;
    xnor2 ix267 (.Y (nx266), .A0 (nx761), .A1 (Input2[8])) ;
    mux21 ix559 (.Y (nx558), .A0 (nx236), .A1 (nx561), .S0 (nx238)) ;
    xnor2 ix237 (.Y (nx236), .A0 (nx761), .A1 (Input2[7])) ;
    mux21 ix562 (.Y (nx561), .A0 (nx206), .A1 (nx564), .S0 (nx208)) ;
    xnor2 ix207 (.Y (nx206), .A0 (nx761), .A1 (Input2[6])) ;
    mux21 ix565 (.Y (nx564), .A0 (nx176), .A1 (nx567), .S0 (nx178)) ;
    xnor2 ix177 (.Y (nx176), .A0 (nx763), .A1 (Input2[5])) ;
    mux21 ix568 (.Y (nx567), .A0 (nx146), .A1 (nx570), .S0 (nx148)) ;
    xnor2 ix147 (.Y (nx146), .A0 (nx763), .A1 (Input2[4])) ;
    mux21 ix571 (.Y (nx570), .A0 (nx116), .A1 (nx573), .S0 (nx118)) ;
    xnor2 ix117 (.Y (nx116), .A0 (nx763), .A1 (Input2[3])) ;
    mux21 ix574 (.Y (nx573), .A0 (nx86), .A1 (nx576), .S0 (nx88)) ;
    xnor2 ix87 (.Y (nx86), .A0 (nx763), .A1 (Input2[2])) ;
    mux21 ix577 (.Y (nx576), .A0 (nx56), .A1 (nx579), .S0 (nx58)) ;
    xnor2 ix57 (.Y (nx56), .A0 (nx763), .A1 (Input2[1])) ;
    aoi32 ix580 (.Y (nx579), .A0 (Control[0]), .A1 (Control[1]), .A2 (nx10), .B0 (
          nx583), .B1 (Input1[0])) ;
    xnor2 ix11 (.Y (nx10), .A0 (Input1[0]), .A1 (nx8)) ;
    xnor2 ix9 (.Y (nx8), .A0 (nx763), .A1 (Input2[0])) ;
    xnor2 ix59 (.Y (nx58), .A0 (Input1[1]), .A1 (nx56)) ;
    xnor2 ix89 (.Y (nx88), .A0 (Input1[2]), .A1 (nx86)) ;
    xnor2 ix119 (.Y (nx118), .A0 (Input1[3]), .A1 (nx116)) ;
    xnor2 ix149 (.Y (nx148), .A0 (Input1[4]), .A1 (nx146)) ;
    xnor2 ix179 (.Y (nx178), .A0 (Input1[5]), .A1 (nx176)) ;
    xnor2 ix209 (.Y (nx208), .A0 (Input1[6]), .A1 (nx206)) ;
    xnor2 ix239 (.Y (nx238), .A0 (Input1[7]), .A1 (nx236)) ;
    xnor2 ix269 (.Y (nx268), .A0 (Input1[8]), .A1 (nx266)) ;
    xnor2 ix299 (.Y (nx298), .A0 (Input1[9]), .A1 (nx296)) ;
    xnor2 ix329 (.Y (nx328), .A0 (Input1[10]), .A1 (nx326)) ;
    xnor2 ix359 (.Y (nx358), .A0 (Input1[11]), .A1 (nx356)) ;
    xnor2 ix389 (.Y (nx388), .A0 (Input1[12]), .A1 (nx386)) ;
    xnor2 ix419 (.Y (nx418), .A0 (Input1[13]), .A1 (nx416)) ;
    xnor2 ix449 (.Y (nx448), .A0 (Input1[14]), .A1 (nx446)) ;
    xnor2 ix479 (.Y (nx478), .A0 (Input1[15]), .A1 (nx476)) ;
    oai222 ix37 (.Y (\Output [0]), .A0 (nx759), .A1 (nx601), .B0 (nx605), .B1 (
           nx765), .C0 (nx609), .C1 (nx611)) ;
    xor2 ix602 (.Y (nx601), .A0 (nx603), .A1 (nx10)) ;
    nand02 ix604 (.Y (nx603), .A0 (Control[0]), .A1 (Control[1])) ;
    inv01 ix606 (.Y (nx605), .A (Input1[0])) ;
    inv01 ix610 (.Y (nx609), .A (Input2[0])) ;
    aoi21 ix612 (.Y (nx611), .A0 (Input1[0]), .A1 (nx24), .B0 (nx755)) ;
    nor02 ix25 (.Y (nx24), .A0 (Control[0]), .A1 (Control[1])) ;
    oai222 ix67 (.Y (\Output [1]), .A0 (nx759), .A1 (nx616), .B0 (nx618), .B1 (
           nx620), .C0 (nx622), .C1 (nx765)) ;
    xor2 ix617 (.Y (nx616), .A0 (nx579), .A1 (nx58)) ;
    inv01 ix619 (.Y (nx618), .A (Input2[1])) ;
    aoi21 ix621 (.Y (nx620), .A0 (Input1[1]), .A1 (nx24), .B0 (nx755)) ;
    inv01 ix623 (.Y (nx622), .A (Input1[1])) ;
    oai222 ix97 (.Y (\Output [2]), .A0 (nx759), .A1 (nx625), .B0 (nx627), .B1 (
           nx629), .C0 (nx631), .C1 (nx765)) ;
    xor2 ix626 (.Y (nx625), .A0 (nx576), .A1 (nx88)) ;
    inv01 ix628 (.Y (nx627), .A (Input2[2])) ;
    aoi21 ix630 (.Y (nx629), .A0 (Input1[2]), .A1 (nx24), .B0 (nx755)) ;
    inv01 ix632 (.Y (nx631), .A (Input1[2])) ;
    oai222 ix127 (.Y (\Output [3]), .A0 (nx759), .A1 (nx634), .B0 (nx636), .B1 (
           nx638), .C0 (nx640), .C1 (nx765)) ;
    xor2 ix635 (.Y (nx634), .A0 (nx573), .A1 (nx118)) ;
    inv01 ix637 (.Y (nx636), .A (Input2[3])) ;
    aoi21 ix639 (.Y (nx638), .A0 (Input1[3]), .A1 (nx24), .B0 (nx755)) ;
    inv01 ix641 (.Y (nx640), .A (Input1[3])) ;
    oai222 ix157 (.Y (\Output [4]), .A0 (nx759), .A1 (nx643), .B0 (nx645), .B1 (
           nx647), .C0 (nx649), .C1 (nx765)) ;
    xor2 ix644 (.Y (nx643), .A0 (nx570), .A1 (nx148)) ;
    inv01 ix646 (.Y (nx645), .A (Input2[4])) ;
    aoi21 ix648 (.Y (nx647), .A0 (Input1[4]), .A1 (nx24), .B0 (nx755)) ;
    inv01 ix650 (.Y (nx649), .A (Input1[4])) ;
    oai222 ix187 (.Y (\Output [5]), .A0 (nx759), .A1 (nx652), .B0 (nx654), .B1 (
           nx656), .C0 (nx658), .C1 (nx765)) ;
    xor2 ix653 (.Y (nx652), .A0 (nx567), .A1 (nx178)) ;
    inv01 ix655 (.Y (nx654), .A (Input2[5])) ;
    aoi21 ix657 (.Y (nx656), .A0 (Input1[5]), .A1 (nx24), .B0 (nx755)) ;
    inv01 ix659 (.Y (nx658), .A (Input1[5])) ;
    oai222 ix217 (.Y (\Output [6]), .A0 (nx759), .A1 (nx661), .B0 (nx663), .B1 (
           nx665), .C0 (nx667), .C1 (nx765)) ;
    xor2 ix662 (.Y (nx661), .A0 (nx564), .A1 (nx208)) ;
    inv01 ix664 (.Y (nx663), .A (Input2[6])) ;
    aoi21 ix666 (.Y (nx665), .A0 (Input1[6]), .A1 (nx24), .B0 (nx755)) ;
    inv01 ix668 (.Y (nx667), .A (Input1[6])) ;
    oai222 ix247 (.Y (\Output [7]), .A0 (nx759), .A1 (nx670), .B0 (nx672), .B1 (
           nx674), .C0 (nx676), .C1 (nx765)) ;
    xor2 ix671 (.Y (nx670), .A0 (nx561), .A1 (nx238)) ;
    inv01 ix673 (.Y (nx672), .A (Input2[7])) ;
    aoi21 ix675 (.Y (nx674), .A0 (Input1[7]), .A1 (nx24), .B0 (nx755)) ;
    inv01 ix677 (.Y (nx676), .A (Input1[7])) ;
    oai222 ix277 (.Y (\Output [8]), .A0 (nx759), .A1 (nx679), .B0 (nx681), .B1 (
           nx683), .C0 (nx685), .C1 (nx765)) ;
    xor2 ix680 (.Y (nx679), .A0 (nx558), .A1 (nx268)) ;
    inv01 ix682 (.Y (nx681), .A (Input2[8])) ;
    aoi21 ix684 (.Y (nx683), .A0 (Input1[8]), .A1 (nx24), .B0 (nx755)) ;
    inv01 ix686 (.Y (nx685), .A (Input1[8])) ;
    oai222 ix307 (.Y (\Output [9]), .A0 (nx759), .A1 (nx688), .B0 (nx690), .B1 (
           nx692), .C0 (nx694), .C1 (nx765)) ;
    xor2 ix689 (.Y (nx688), .A0 (nx555), .A1 (nx298)) ;
    inv01 ix691 (.Y (nx690), .A (Input2[9])) ;
    aoi21 ix693 (.Y (nx692), .A0 (Input1[9]), .A1 (nx24), .B0 (nx755)) ;
    inv01 ix695 (.Y (nx694), .A (Input1[9])) ;
    oai222 ix337 (.Y (\Output [10]), .A0 (nx759), .A1 (nx697), .B0 (nx699), .B1 (
           nx701), .C0 (nx703), .C1 (nx765)) ;
    xor2 ix698 (.Y (nx697), .A0 (nx552), .A1 (nx328)) ;
    inv01 ix700 (.Y (nx699), .A (Input2[10])) ;
    aoi21 ix702 (.Y (nx701), .A0 (Input1[10]), .A1 (nx24), .B0 (nx755)) ;
    inv01 ix704 (.Y (nx703), .A (Input1[10])) ;
    oai222 ix367 (.Y (\Output [11]), .A0 (nx526), .A1 (nx706), .B0 (nx708), .B1 (
           nx710), .C0 (nx712), .C1 (nx765)) ;
    xor2 ix707 (.Y (nx706), .A0 (nx549), .A1 (nx358)) ;
    inv01 ix709 (.Y (nx708), .A (Input2[11])) ;
    aoi21 ix711 (.Y (nx710), .A0 (Input1[11]), .A1 (nx24), .B0 (nx755)) ;
    inv01 ix713 (.Y (nx712), .A (Input1[11])) ;
    oai222 ix397 (.Y (\Output [12]), .A0 (nx526), .A1 (nx715), .B0 (nx717), .B1 (
           nx719), .C0 (nx721), .C1 (nx765)) ;
    xor2 ix716 (.Y (nx715), .A0 (nx546), .A1 (nx388)) ;
    inv01 ix718 (.Y (nx717), .A (Input2[12])) ;
    aoi21 ix720 (.Y (nx719), .A0 (Input1[12]), .A1 (nx24), .B0 (nx755)) ;
    inv01 ix722 (.Y (nx721), .A (Input1[12])) ;
    oai222 ix427 (.Y (\Output [13]), .A0 (nx526), .A1 (nx724), .B0 (nx726), .B1 (
           nx728), .C0 (nx730), .C1 (nx765)) ;
    xor2 ix725 (.Y (nx724), .A0 (nx543), .A1 (nx418)) ;
    inv01 ix727 (.Y (nx726), .A (Input2[13])) ;
    aoi21 ix729 (.Y (nx728), .A0 (Input1[13]), .A1 (nx24), .B0 (nx755)) ;
    inv01 ix731 (.Y (nx730), .A (Input1[13])) ;
    oai222 ix457 (.Y (\Output [14]), .A0 (nx526), .A1 (nx733), .B0 (nx735), .B1 (
           nx737), .C0 (nx739), .C1 (nx765)) ;
    xor2 ix734 (.Y (nx733), .A0 (nx540), .A1 (nx448)) ;
    inv01 ix736 (.Y (nx735), .A (Input2[14])) ;
    aoi21 ix738 (.Y (nx737), .A0 (Input1[14]), .A1 (nx24), .B0 (nx755)) ;
    inv01 ix740 (.Y (nx739), .A (Input1[14])) ;
    oai222 ix487 (.Y (\Output [15]), .A0 (nx526), .A1 (nx742), .B0 (nx744), .B1 (
           nx746), .C0 (nx748), .C1 (nx767)) ;
    xor2 ix743 (.Y (nx742), .A0 (nx537), .A1 (nx478)) ;
    inv01 ix745 (.Y (nx744), .A (Input2[15])) ;
    aoi21 ix747 (.Y (nx746), .A0 (Input1[15]), .A1 (nx24), .B0 (nx757)) ;
    inv01 ix749 (.Y (nx748), .A (Input1[15])) ;
    inv01 ix584 (.Y (nx583), .A (nx8)) ;
    inv01 ix754 (.Y (nx755), .A (nx767)) ;
    inv01 ix756 (.Y (nx757), .A (nx767)) ;
    inv01 ix758 (.Y (nx759), .A (Control[1])) ;
    buf02 ix760 (.Y (nx761), .A (nx530)) ;
    buf02 ix762 (.Y (nx763), .A (nx530)) ;
    inv02 ix764 (.Y (nx765), .A (nx18)) ;
    inv02 ix766 (.Y (nx767), .A (nx18)) ;
    nor02ii ix19 (.Y (nx18), .A0 (Control[1]), .A1 (Control[0])) ;
endmodule

