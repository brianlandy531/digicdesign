* SPICE NETLIST
***************************************

.SUBCKT mimcap_g13 plus minus
.ENDS
***************************************
.SUBCKT spiral_inductor_lvs pos neg
.ENDS
***************************************
.SUBCKT inv2 GROUND VOUT VDD Vin
** N=8 EP=4 IP=0 FDC=2
* PORT GROUND GROUND 695 -4903 metal1
* PORT VOUT VOUT 595 -3865 metal1
* PORT VDD VDD 440 1235 metal1
* PORT Vin Vin 320 -1823 metal1
M0 VOUT Vin GROUND GROUND nmos L=1.3e-07 W=2.6e-07 $X=390 $Y=-3890 $D=19
M1 VOUT Vin VDD VDD pmos L=1.3e-07 W=5.2e-07 $X=390 $Y=-770 $D=25
.ENDS
***************************************
