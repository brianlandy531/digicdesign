//
// Verilog description for cell miniALU4, 
// Thu Nov 14 20:52:42 2019
//
// LeonardoSpectrum Level 3, 2008b.3 
//


module miniALU4 ( Input1, Input2, Control, \Output , Cout ) ;

    input [3:0]Input1 ;
    input [3:0]Input2 ;
    input [1:0]Control ;
    output [3:0]\Output  ;
    output Cout ;

    wire nx8, nx10, nx12, nx18, nx28, nx42, nx56, nx58, nx60, nx72, nx86, nx88, 
         nx90, nx102, nx116, nx118, nx120, nx138, nx200, nx204, nx206, nx208, 
         nx211, nx214, nx217, nx221, nx227, nx231, nx234, nx237, nx240, nx244, 
         nx247, nx251, nx254;



    ao22 ix147 (.Y (Cout), .A0 (Control[0]), .A1 (nx200), .B0 (Control[1]), .B1 (
         nx138)) ;
    inv01 ix202 (.Y (nx200), .A (Control[1])) ;
    xnor2 ix139 (.Y (nx138), .A0 (nx204), .A1 (nx208)) ;
    nand02 ix205 (.Y (nx204), .A0 (nx206), .A1 (Control[1])) ;
    inv01 ix207 (.Y (nx206), .A (Control[0])) ;
    mux21 ix209 (.Y (nx208), .A0 (nx116), .A1 (nx211), .S0 (nx118)) ;
    xnor2 ix117 (.Y (nx116), .A0 (nx204), .A1 (Input2[3])) ;
    mux21 ix212 (.Y (nx211), .A0 (nx86), .A1 (nx214), .S0 (nx88)) ;
    xnor2 ix87 (.Y (nx86), .A0 (nx204), .A1 (Input2[2])) ;
    mux21 ix215 (.Y (nx214), .A0 (nx56), .A1 (nx217), .S0 (nx58)) ;
    xnor2 ix57 (.Y (nx56), .A0 (nx204), .A1 (Input2[1])) ;
    aoi32 ix218 (.Y (nx217), .A0 (Control[0]), .A1 (Control[1]), .A2 (nx10), .B0 (
          nx221), .B1 (Input1[0])) ;
    xnor2 ix11 (.Y (nx10), .A0 (Input1[0]), .A1 (nx8)) ;
    xnor2 ix9 (.Y (nx8), .A0 (nx204), .A1 (Input2[0])) ;
    xnor2 ix59 (.Y (nx58), .A0 (Input1[1]), .A1 (nx56)) ;
    xnor2 ix89 (.Y (nx88), .A0 (Input1[2]), .A1 (nx86)) ;
    xnor2 ix119 (.Y (nx118), .A0 (Input1[3]), .A1 (nx116)) ;
    inv01 ix37 (.Y (\Output [0]), .A (nx227)) ;
    aoi222 ix228 (.Y (nx227), .A0 (Input1[0]), .A1 (nx18), .B0 (Input2[0]), .B1 (
           nx28), .C0 (Control[1]), .C1 (nx12)) ;
    aoi21 ix29 (.Y (nx28), .A0 (nx231), .A1 (nx206), .B0 (Control[1])) ;
    inv01 ix232 (.Y (nx231), .A (Input1[0])) ;
    xnor2 ix13 (.Y (nx12), .A0 (nx234), .A1 (nx10)) ;
    nand02 ix235 (.Y (nx234), .A0 (Control[0]), .A1 (Control[1])) ;
    inv01 ix67 (.Y (\Output [1]), .A (nx237)) ;
    aoi222 ix238 (.Y (nx237), .A0 (Input2[1]), .A1 (nx42), .B0 (Input1[1]), .B1 (
           nx18), .C0 (Control[1]), .C1 (nx60)) ;
    aoi21 ix43 (.Y (nx42), .A0 (nx240), .A1 (nx206), .B0 (Control[1])) ;
    inv01 ix241 (.Y (nx240), .A (Input1[1])) ;
    xnor2 ix61 (.Y (nx60), .A0 (nx217), .A1 (nx58)) ;
    inv01 ix97 (.Y (\Output [2]), .A (nx244)) ;
    aoi222 ix245 (.Y (nx244), .A0 (Input2[2]), .A1 (nx72), .B0 (Input1[2]), .B1 (
           nx18), .C0 (Control[1]), .C1 (nx90)) ;
    aoi21 ix73 (.Y (nx72), .A0 (nx247), .A1 (nx206), .B0 (Control[1])) ;
    inv01 ix248 (.Y (nx247), .A (Input1[2])) ;
    xnor2 ix91 (.Y (nx90), .A0 (nx214), .A1 (nx88)) ;
    inv01 ix127 (.Y (\Output [3]), .A (nx251)) ;
    aoi222 ix252 (.Y (nx251), .A0 (Input2[3]), .A1 (nx102), .B0 (Input1[3]), .B1 (
           nx18), .C0 (Control[1]), .C1 (nx120)) ;
    aoi21 ix103 (.Y (nx102), .A0 (nx254), .A1 (nx206), .B0 (Control[1])) ;
    inv01 ix255 (.Y (nx254), .A (Input1[3])) ;
    xnor2 ix121 (.Y (nx120), .A0 (nx211), .A1 (nx118)) ;
    inv01 ix222 (.Y (nx221), .A (nx8)) ;
    nor02ii ix19 (.Y (nx18), .A0 (Control[1]), .A1 (Control[0])) ;
endmodule

