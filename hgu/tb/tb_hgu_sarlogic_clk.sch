v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1190 -380 1320 -380 {
lab=result[0:7]}
N 710 -600 1630 -600 {
lab=VSS}
C {devices/code.sym} 510 -190 0 0 {name=spice1 only_toplevel=false value="

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.tran 10ps 400ns

.control
	option temp = 25
	let vdd_act = 1.8
      
	alter V4 vdd_act      
	alter V8 vdd_act      
	alter V10 vdd_act

	run
	plot V(EXT_CLK)-2 V(sample_clk) V(EOB)+2 V(READY)+4 V(sar_clk)+6 V(COMP_RESULT)+8
	plot V(\\"tempD[0]\\") V(\\"tempD[1]\\")+2 V(\\"tempD[2]\\")+4 V(\\"tempD[3]\\")+6 V(\\"tempD[4]\\")+8 V(\\"tempD[5]\\")+10 V(\\"tempD[6]\\")+12 V(\\"tempD[7]\\")+14 V(sar_clk) V(sar_clk)+2 V(sar_clk)+4 V(sar_clk)+6 V(sar_clk)+8 V(sar_clk)+10 V(sar_clk)+12 V(sar_clk)+14 V(EOB)-2 
	plot V(\\"result[0]\\") V(\\"result[1]\\")+2 V(\\"result[2]\\")+4 V(\\"result[3]\\")+6 V(\\"result[4]\\")+8 V(\\"result[5]\\")+10 V(\\"result[6]\\")+12 V(\\"result[7]\\")+14
 .endc
.save all

"}
C {devices/vsource.sym} 860 -130 0 0 {name=V2 value="PULSE(0 1.8 0 5p 5p 50n 100n)"}
C {devices/gnd.sym} 860 -100 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 860 -160 2 0 {name=p11 sig_type=std_logic lab=EXT_CLK}
C {devices/vdd.sym} 730 -160 0 0 {name=l7 lab=VDD}
C {devices/gnd.sym} 730 -100 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 730 -130 0 0 {name=V4 value=1.8}
C {devices/vsource.sym} 1080 -130 0 0 {name=V1 value="PULSE(0 1.8 100n 5p 5p 17n 31n)"}
C {devices/gnd.sym} 1080 -100 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 1080 -160 2 0 {name=p12 sig_type=std_logic lab=COMP_RESULT}
C {devices/gnd.sym} 1310 -100 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 1310 -160 2 0 {name=p13 sig_type=std_logic lab=READY}
C {devices/vdd.sym} 780 -160 0 0 {name=l6 lab=VSS}
C {devices/gnd.sym} 780 -100 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 780 -130 0 0 {name=V5 value=0}
C {devices/vsource.sym} 1310 -130 0 0 {name=V3 value="PULSE(1.8 0 22n 5p 5p 3n 10n)"}
C {jh_top.sym} 1040 -360 0 0 {name=x4}
C {devices/lab_pin.sym} 890 -400 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 890 -380 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 890 -360 0 0 {name=p22 sig_type=std_logic lab=EXT_CLK}
C {devices/lab_pin.sym} 890 -340 0 0 {name=p23 sig_type=std_logic lab=COMP_RESULT}
C {devices/lab_pin.sym} 890 -320 0 0 {name=p24 sig_type=std_logic lab=READY}
C {devices/lab_pin.sym} 1190 -420 2 0 {name=p25 sig_type=std_logic lab=sar_clk}
C {devices/lab_pin.sym} 1190 -400 2 0 {name=p26 sig_type=std_logic lab=EOB}
C {devices/lab_pin.sym} 1190 -380 2 0 {name=p27 sig_type=std_logic lab=result[0:7]}
C {devices/lab_pin.sym} 1190 -360 2 0 {name=p28 sig_type=std_logic lab=tempD[0:7]}
C {devices/lab_pin.sym} 1190 -340 2 0 {name=p29 sig_type=std_logic lab=sample_clk}
C {devices/capa.sym} 1320 -350 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1320 -320 3 0 {name=p30 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1530 -250 0 0 {name=p120 sig_type=std_logic lab=sel_bit[0]}
C {devices/lab_pin.sym} 1530 -220 0 0 {name=p1 sig_type=std_logic lab=sel_bit[1]}
C {devices/lab_pin.sym} 890 -420 0 0 {name=p2 sig_type=std_logic lab=sel_bit[0:1]}
C {devices/vsource.sym} 1560 -220 3 0 {name=V6 value=1.8}
C {devices/gnd.sym} 1590 -220 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 1560 -250 3 0 {name=V7 value=1.8}
C {devices/gnd.sym} 1590 -250 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 1700 -140 0 0 {name=l10 lab=VGND}
C {devices/gnd.sym} 1550 -80 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 1550 -110 0 0 {name=V8 value=1.8}
C {devices/vdd.sym} 1600 -140 0 0 {name=l12 lab=VNB}
C {devices/gnd.sym} 1600 -80 0 0 {name=l13 lab=GND}
C {devices/vsource.sym} 1600 -110 0 0 {name=V9 value=0}
C {devices/vdd.sym} 1650 -140 0 0 {name=l14 lab=VPB}
C {devices/gnd.sym} 1650 -80 0 0 {name=l15 lab=GND}
C {devices/vsource.sym} 1650 -110 0 0 {name=V10 value=1.8}
C {devices/vdd.sym} 1550 -140 0 0 {name=l16 lab=VPWR}
C {devices/gnd.sym} 1700 -80 0 0 {name=l17 lab=GND}
C {devices/vsource.sym} 1700 -110 0 0 {name=V11 value=0}
C {devices/lab_pin.sym} 890 -300 0 0 {name=p3 sig_type=std_logic lab=cap_ctrl_code[0:7]}
C {devices/vdd.sym} 770 -540 1 0 {name=l18 lab=cap_ctrl_code[7]}
C {devices/vdd.sym} 880 -540 1 0 {name=l19 lab=cap_ctrl_code[6]}
C {devices/vdd.sym} 990 -540 1 0 {name=l20 lab=cap_ctrl_code[5]}
C {devices/vdd.sym} 1100 -540 1 0 {name=l21 lab=cap_ctrl_code[4]}
C {devices/vdd.sym} 1210 -660 1 0 {name=l22 lab=cap_ctrl_code[3]}
C {devices/vdd.sym} 1320 -660 1 0 {name=l23 lab=cap_ctrl_code[2]}
C {devices/vdd.sym} 1430 -660 1 0 {name=l24 lab=cap_ctrl_code[1]}
C {devices/vdd.sym} 1540 -660 1 0 {name=l25 lab=cap_ctrl_code[0]}
C {devices/vsource.sym} 1540 -630 0 0 {name=V12 value=1.8}
C {devices/vsource.sym} 770 -570 0 0 {name=V13 value=0}
C {devices/vsource.sym} 880 -570 0 0 {name=V14 value=0}
C {devices/vsource.sym} 990 -570 0 0 {name=V15 value=0}
C {devices/vsource.sym} 1100 -570 0 0 {name=V28 value=0}
C {devices/vsource.sym} 1210 -570 0 0 {name=V29 value=0}
C {devices/vsource.sym} 1320 -570 0 0 {name=V30 value=0}
C {devices/vsource.sym} 1430 -570 0 0 {name=V31 value=0}
C {devices/lab_pin.sym} 710 -600 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1430 -630 0 0 {name=V16 value=1.8}
C {devices/vsource.sym} 1320 -630 0 0 {name=V17 value=1.8}
C {devices/vsource.sym} 1210 -630 0 0 {name=V18 value=1.8}
C {devices/vsource.sym} 1100 -630 0 0 {name=V19 value=1.8}
C {devices/vsource.sym} 990 -630 0 0 {name=V20 value=1.8}
C {devices/vsource.sym} 880 -630 0 0 {name=V21 value=1.8}
C {devices/vsource.sym} 770 -630 0 0 {name=V22 value=1.8}
C {devices/vsource.sym} 1540 -570 0 0 {name=V23 value=0}
C {devices/noconn.sym} 770 -660 2 0 {name=l26}
C {devices/noconn.sym} 880 -660 2 0 {name=l27}
C {devices/noconn.sym} 990 -660 2 0 {name=l28}
C {devices/noconn.sym} 1100 -660 2 0 {name=l29}
C {devices/noconn.sym} 1210 -540 2 0 {name=l30}
C {devices/noconn.sym} 1320 -540 2 0 {name=l31}
C {devices/noconn.sym} 1430 -540 2 0 {name=l32}
C {devices/noconn.sym} 1540 -540 2 0 {name=l33}
