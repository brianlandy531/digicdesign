* SPICE NETLIST
***************************************

.SUBCKT mimcap_g13 plus minus
.ENDS
***************************************
.SUBCKT spiral_inductor_lvs pos neg
.ENDS
***************************************
.SUBCKT xnor2 VDD VSS Y A0 A1
** N=9 EP=5 IP=0 FDC=10
* PORT VDD VDD 2450 8050 metal1
* PORT VSS VSS 2450 350 metal1
* PORT Y Y 3955 3675 metal1
* PORT A0 A0 980 3675 metal1
* PORT A1 A1 2555 3675 metal1
M0 7 A0 6 VSS nmos L=1.4e-07 W=7.7e-07 $X=805 $Y=1610 $D=19
M1 VSS A1 7 VSS nmos L=1.4e-07 W=7.7e-07 $X=1225 $Y=1610 $D=19
M2 Y A1 8 VSS nmos L=1.4e-07 W=7.7e-07 $X=2345 $Y=1610 $D=19
M3 8 A0 Y VSS nmos L=1.4e-07 W=7.7e-07 $X=2905 $Y=1610 $D=19
M4 VSS 6 8 VSS nmos L=1.4e-07 W=7.7e-07 $X=3465 $Y=1610 $D=19
M5 6 A0 VDD VDD pmos L=1.4e-07 W=1.19e-06 $X=1175 $Y=4585 $D=25
M6 VDD A1 6 VDD pmos L=1.4e-07 W=1.19e-06 $X=1735 $Y=4585 $D=25
M7 9 A0 VDD VDD pmos L=1.4e-07 W=2.24e-06 $X=2365 $Y=4620 $D=25
M8 Y A1 9 VDD pmos L=1.4e-07 W=2.24e-06 $X=2855 $Y=4585 $D=25
M9 VDD 6 Y VDD pmos L=1.4e-07 W=1.19e-06 $X=3450 $Y=4620 $D=25
.ENDS
***************************************
.SUBCKT inv01 VSS VDD Y A
** N=4 EP=4 IP=0 FDC=2
* PORT VSS VSS 980 350 metal1
* PORT VDD VDD 980 8050 metal1
* PORT Y Y 1435 3675 metal1
* PORT A A 805 3675 metal1
M0 Y A VSS VSS nmos L=1.4e-07 W=3.5e-07 $X=910 $Y=1820 $D=19
M1 Y A VDD VDD pmos L=1.4e-07 W=7.7e-07 $X=910 $Y=5600 $D=25
.ENDS
***************************************
.SUBCKT nand02 VSS Y VDD A1 A0
** N=6 EP=5 IP=0 FDC=4
* PORT VSS VSS 1225 350 metal1
* PORT Y Y 1925 3675 metal1
* PORT VDD VDD 1225 8050 metal1
* PORT A1 A1 665 3675 metal1
* PORT A0 A0 1295 4305 metal1
M0 6 A1 VSS VSS nmos L=1.4e-07 W=7.7e-07 $X=875 $Y=1190 $D=19
M1 Y A0 6 VSS nmos L=1.4e-07 W=7.7e-07 $X=1295 $Y=1190 $D=19
M2 Y A1 VDD VDD pmos L=1.4e-07 W=1.05e-06 $X=875 $Y=6160 $D=25
M3 VDD A0 Y VDD pmos L=1.4e-07 W=1.05e-06 $X=1435 $Y=6160 $D=25
.ENDS
***************************************
.SUBCKT miniALU VSS VDD Cout Output[0] Input1[0] Control[0] Control[1] Input2[0]
** N=40 EP=8 IP=28 FDC=72
* PORT VSS VSS 35190 8440 metal7
* PORT VDD VDD -13980 8440 metal7
* PORT Cout Cout 5290 30845 metal8
* PORT Output[0] Output[0] 6990 -13970 metal8
* PORT Input1[0] Input1[0] -13980 11595 metal7
* PORT Control[0] Control[0] 13425 -13970 metal8
* PORT Control[1] Control[1] 10485 30845 metal8
* PORT Input2[0] Input2[0] 18255 30845 metal8
M0 3 Input1[0] 1 VSS nmos L=1.4e-07 W=7.7e-07 $X=825 $Y=9775 $D=19
M1 4 Input1[0] VSS VSS nmos L=1.4e-07 W=7.7e-07 $X=965 $Y=1220 $D=19
M2 VSS 24 3 VSS nmos L=1.4e-07 W=7.7e-07 $X=1245 $Y=9775 $D=19
M3 6 24 4 VSS nmos L=1.4e-07 W=7.7e-07 $X=1385 $Y=1220 $D=19
M4 7 1 VSS VSS nmos L=1.4e-07 W=7.7e-07 $X=1805 $Y=9775 $D=19
M5 8 Control[0] 6 VSS nmos L=1.4e-07 W=7.7e-07 $X=1945 $Y=1220 $D=19
M6 VSS 10 8 VSS nmos L=1.4e-07 W=7.7e-07 $X=2365 $Y=1220 $D=19
M7 9 24 7 VSS nmos L=1.4e-07 W=7.7e-07 $X=2365 $Y=9775 $D=19
M8 7 Input1[0] 9 VSS nmos L=1.4e-07 W=7.7e-07 $X=2925 $Y=9775 $D=19
M9 10 9 VSS VSS nmos L=1.4e-07 W=3.5e-07 $X=4045 $Y=9775 $D=19
M10 VSS 27 11 VSS nmos L=1.4e-07 W=7.7e-07 $X=4745 $Y=1255 $D=19
M11 11 26 VSS VSS nmos L=1.4e-07 W=7.7e-07 $X=5305 $Y=1255 $D=19
M12 VSS 16 Cout VSS nmos L=1.4e-07 W=3.5e-07 $X=5725 $Y=10475 $D=19
M13 Output[0] 6 11 VSS nmos L=1.4e-07 W=7.7e-07 $X=5865 $Y=1255 $D=19
M14 14 Input2[0] VSS VSS nmos L=1.4e-07 W=1.19e-06 $X=6320 $Y=9635 $D=19
M15 11 Control[1] Output[0] VSS nmos L=1.4e-07 W=7.7e-07 $X=6425 $Y=1255 $D=19
M16 15 10 14 VSS nmos L=1.4e-07 W=1.19e-06 $X=6740 $Y=9635 $D=19
M17 16 Control[1] 15 VSS nmos L=1.4e-07 W=1.19e-06 $X=7160 $Y=9635 $D=19
M18 17 Control[0] 16 VSS nmos L=1.4e-07 W=7.7e-07 $X=7755 $Y=10055 $D=19
M19 VSS 27 17 VSS nmos L=1.4e-07 W=7.7e-07 $X=8175 $Y=10055 $D=19
M20 VDD Input1[0] 18 VDD pmos L=1.4e-07 W=1.19e-06 $X=825 $Y=6050 $D=25
M21 1 Input1[0] VDD VDD pmos L=1.4e-07 W=1.19e-06 $X=895 $Y=14325 $D=25
M22 18 24 VDD VDD pmos L=1.4e-07 W=1.19e-06 $X=1385 $Y=6050 $D=25
M23 VDD 24 1 VDD pmos L=1.4e-07 W=1.19e-06 $X=1455 $Y=14325 $D=25
M24 6 Control[0] 18 VDD pmos L=1.4e-07 W=1.19e-06 $X=1945 $Y=6050 $D=25
M25 9 1 VDD VDD pmos L=1.4e-07 W=1.19e-06 $X=2015 $Y=14325 $D=25
M26 18 10 6 VDD pmos L=1.4e-07 W=1.19e-06 $X=2505 $Y=6050 $D=25
M27 19 24 9 VDD pmos L=1.4e-07 W=2.24e-06 $X=2610 $Y=13275 $D=25
M28 VDD Input1[0] 19 VDD pmos L=1.4e-07 W=2.24e-06 $X=3030 $Y=13275 $D=25
M29 10 9 VDD VDD pmos L=1.4e-07 W=7.7e-07 $X=3625 $Y=13275 $D=25
M30 20 27 VDD VDD pmos L=1.4e-07 W=2.03e-06 $X=4885 $Y=5295 $D=25
M31 Output[0] 26 20 VDD pmos L=1.4e-07 W=2.03e-06 $X=5305 $Y=5295 $D=25
M32 VDD 16 Cout VDD pmos L=1.4e-07 W=7.7e-07 $X=5625 $Y=14465 $D=25
M33 21 6 Output[0] VDD pmos L=1.4e-07 W=2.03e-06 $X=5865 $Y=5295 $D=25
M34 22 Input2[0] VDD VDD pmos L=1.4e-07 W=1.19e-06 $X=6220 $Y=14465 $D=25
M35 VDD Control[1] 21 VDD pmos L=1.4e-07 W=2.03e-06 $X=6285 $Y=5295 $D=25
M36 VDD 10 22 VDD pmos L=1.4e-07 W=1.19e-06 $X=6780 $Y=14465 $D=25
M37 22 Control[1] VDD VDD pmos L=1.4e-07 W=1.19e-06 $X=7340 $Y=14465 $D=25
M38 16 Control[0] 22 VDD pmos L=1.4e-07 W=1.19e-06 $X=7900 $Y=14465 $D=25
M39 22 27 16 VDD pmos L=1.4e-07 W=1.19e-06 $X=8460 $Y=14465 $D=25
X40 VDD VSS 26 30 10 xnor2 $T=12270 30 1 180 $X=7370 $Y=30
X41 VDD VSS 24 32 Input2[0] xnor2 $T=15700 8445 0 0 $X=15700 $Y=8445
X42 VSS VDD 27 Control[1] inv01 $T=11290 8445 1 180 $X=9330 $Y=8445
X43 VSS VDD 31 Control[0] inv01 $T=11290 8445 0 0 $X=11290 $Y=8445
X44 VSS 30 VDD Control[1] Control[0] nand02 $T=14720 30 1 180 $X=12270 $Y=30
X45 VSS 32 VDD Control[1] 31 nand02 $T=13250 8445 0 0 $X=13250 $Y=8445
.ENDS
***************************************
