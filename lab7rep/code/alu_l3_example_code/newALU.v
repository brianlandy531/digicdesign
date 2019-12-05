//
// Verilog description for cell miniALU, 
// Mon Nov 11 17:33:10 2019
//
// LeonardoSpectrum Level 3, 2008b.3 
//


module miniALU ( Input1, Input2, Control, \Output , Cout ) ;

    input [0:0]Input1 ;
    input [0:0]Input2 ;
    input [1:0]Control ;
    output [0:0]\Output  ;
    output Cout ;

    wire nx8, nx117, nx120, nx122, nx124, nx128, nx130, nx132;



    ao32 ix49 (.Y (Cout), .A0 (Control[1]), .A1 (nx117), .A2 (Input2[0]), .B0 (
         Control[0]), .B1 (nx124)) ;
    xor2 ix118 (.Y (nx117), .A0 (Input1[0]), .A1 (nx8)) ;
    xnor2 ix9 (.Y (nx8), .A0 (nx120), .A1 (Input2[0])) ;
    nand02 ix121 (.Y (nx120), .A0 (nx122), .A1 (Control[1])) ;
    inv01 ix123 (.Y (nx122), .A (Control[0])) ;
    inv01 ix126 (.Y (nx124), .A (Control[1])) ;
    oai22 ix29 (.Y (\Output [0]), .A0 (Control[1]), .A1 (nx128), .B0 (nx124), .B1 (
          nx130)) ;
    aoi22 ix129 (.Y (nx128), .A0 (nx8), .A1 (Input1[0]), .B0 (Control[0]), .B1 (
          nx117)) ;
    xnor2 ix131 (.Y (nx130), .A0 (nx132), .A1 (nx117)) ;
    nand02 ix133 (.Y (nx132), .A0 (Control[0]), .A1 (Control[1])) ;
endmodule

