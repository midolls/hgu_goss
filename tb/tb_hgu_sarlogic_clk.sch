v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1190 -400 1320 -400 {
lab=result[0:7]}
N 830 -880 1300 -880 {
lab=VSS}
N 830 -580 1300 -580 {
lab=VSS}
N 1700 -1180 2620 -1180 {
lab=VSS}
N 820 -1180 1700 -1180 {
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
C {../xschem/hgu_sarlogic.sym} 1040 -340 0 0 {name=x4}
C {devices/lab_pin.sym} 890 -400 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 890 -380 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 890 -360 0 0 {name=p22 sig_type=std_logic lab=EXT_CLK}
C {devices/lab_pin.sym} 890 -340 0 0 {name=p23 sig_type=std_logic lab=COMP_RESULT}
C {devices/lab_pin.sym} 890 -320 0 0 {name=p24 sig_type=std_logic lab=READY}
C {devices/lab_pin.sym} 1190 -420 2 0 {name=p25 sig_type=std_logic lab=sar_clk}
C {devices/lab_pin.sym} 1190 -400 2 0 {name=p27 sig_type=std_logic lab=result[0:7]}
C {devices/lab_pin.sym} 1190 -380 2 0 {name=p29 sig_type=std_logic lab=sample_clk}
C {devices/capa.sym} 1320 -370 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1320 -340 3 0 {name=p30 sig_type=std_logic lab=VSS}
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
C {devices/vdd.sym} 880 -1120 1 0 {name=l18 lab=cap_ctrl_code[15]}
C {devices/vdd.sym} 990 -1120 1 0 {name=l19 lab=cap_ctrl_code[14]}
C {devices/vdd.sym} 1100 -1240 1 0 {name=l20 lab=cap_ctrl_code[13]}
C {devices/vdd.sym} 1210 -1240 1 0 {name=l29 lab=cap_ctrl_code[12]}
C {devices/vdd.sym} 1320 -1120 1 0 {name=l30 lab=cap_ctrl_code[11]}
C {devices/vdd.sym} 1430 -1120 1 0 {name=l31 lab=cap_ctrl_code[10]}
C {devices/vdd.sym} 1540 -1240 1 0 {name=l32 lab=cap_ctrl_code[9]}
C {devices/vdd.sym} 1650 -1240 1 0 {name=l33 lab=cap_ctrl_code[8]}
C {devices/vsource.sym} 1650 -1210 0 0 {name=V36 value=1.8}
C {devices/vsource.sym} 880 -1150 0 0 {name=V37 value=0}
C {devices/vsource.sym} 990 -1150 0 0 {name=V38 value=0}
C {devices/vsource.sym} 1100 -1150 0 0 {name=V39 value=0}
C {devices/vsource.sym} 1210 -1150 0 0 {name=V40 value=0}
C {devices/vsource.sym} 1320 -1150 0 0 {name=V41 value=0}
C {devices/vsource.sym} 1430 -1150 0 0 {name=V42 value=0}
C {devices/vsource.sym} 1540 -1150 0 0 {name=V43 value=0}
C {devices/lab_pin.sym} 820 -1180 0 0 {name=p73 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1540 -1210 0 0 {name=V44 value=1.8}
C {devices/vsource.sym} 1430 -1210 0 0 {name=V45 value=1.8}
C {devices/vsource.sym} 1320 -1210 0 0 {name=V46 value=1.8}
C {devices/vsource.sym} 1210 -1210 0 0 {name=V47 value=1.8}
C {devices/vsource.sym} 1100 -1210 0 0 {name=V48 value=1.8}
C {devices/vsource.sym} 990 -1210 0 0 {name=V49 value=1.8}
C {devices/vsource.sym} 880 -1210 0 0 {name=V50 value=1.8}
C {devices/vsource.sym} 1650 -1150 0 0 {name=V51 value=0}
C {devices/noconn.sym} 880 -1240 2 0 {name=l34}
C {devices/noconn.sym} 990 -1240 2 0 {name=l36}
C {devices/noconn.sym} 1100 -1120 2 0 {name=l37}
C {devices/noconn.sym} 1210 -1120 2 0 {name=l38}
C {devices/noconn.sym} 1320 -1240 2 0 {name=l39}
C {devices/noconn.sym} 1430 -1240 2 0 {name=l40}
C {devices/noconn.sym} 1540 -1120 2 0 {name=l41}
C {devices/noconn.sym} 1650 -1120 2 0 {name=l42}
C {devices/vdd.sym} 880 -820 1 0 {name=l21 lab=async_resetb_delay_cap_ctrl_code[3]}
C {devices/vdd.sym} 990 -820 1 0 {name=l22 lab=async_resetb_delay_cap_ctrl_code[2]}
C {devices/vdd.sym} 1100 -940 1 0 {name=l23 lab=async_resetb_delay_cap_ctrl_code[1]}
C {devices/vdd.sym} 1210 -940 1 0 {name=l24 lab=async_resetb_delay_cap_ctrl_code[0]}
C {devices/vsource.sym} 1210 -910 0 0 {name=V12 value=1.8}
C {devices/vsource.sym} 880 -850 0 0 {name=V13 value=0}
C {devices/vsource.sym} 990 -850 0 0 {name=V14 value=0}
C {devices/vsource.sym} 1100 -850 0 0 {name=V15 value=0}
C {devices/lab_pin.sym} 830 -880 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1100 -910 0 0 {name=V16 value=1.8}
C {devices/vsource.sym} 990 -910 0 0 {name=V17 value=1.8}
C {devices/vsource.sym} 880 -910 0 0 {name=V18 value=1.8}
C {devices/vsource.sym} 1210 -850 0 0 {name=V19 value=0}
C {devices/noconn.sym} 880 -940 2 0 {name=l25}
C {devices/noconn.sym} 990 -940 2 0 {name=l26}
C {devices/noconn.sym} 1100 -820 2 0 {name=l27}
C {devices/noconn.sym} 1210 -820 2 0 {name=l28}
C {devices/vdd.sym} 880 -520 1 0 {name=l59 lab=async_setb_delay_cap_ctrl_code[3]}
C {devices/vdd.sym} 990 -520 1 0 {name=l60 lab=async_setb_delay_cap_ctrl_code[2]}
C {devices/vdd.sym} 1100 -640 1 0 {name=l61 lab=async_setb_delay_cap_ctrl_code[1]}
C {devices/vdd.sym} 1210 -640 1 0 {name=l62 lab=async_setb_delay_cap_ctrl_code[0]}
C {devices/vsource.sym} 1210 -610 0 0 {name=V20 value=1.8}
C {devices/vsource.sym} 880 -550 0 0 {name=V25 value=0}
C {devices/vsource.sym} 990 -550 0 0 {name=V26 value=0}
C {devices/vsource.sym} 1100 -550 0 0 {name=V27 value=0}
C {devices/lab_pin.sym} 830 -580 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1100 -610 0 0 {name=V28 value=1.8}
C {devices/vsource.sym} 990 -610 0 0 {name=V29 value=1.8}
C {devices/vsource.sym} 880 -610 0 0 {name=V30 value=1.8}
C {devices/vsource.sym} 1210 -550 0 0 {name=V35 value=0}
C {devices/noconn.sym} 880 -640 2 0 {name=l67}
C {devices/noconn.sym} 990 -640 2 0 {name=l68}
C {devices/noconn.sym} 1100 -520 2 0 {name=l69}
C {devices/noconn.sym} 1210 -520 2 0 {name=l70}
C {devices/vdd.sym} 1760 -1120 1 0 {name=l71 lab=cap_ctrl_code[7]}
C {devices/vdd.sym} 1870 -1120 1 0 {name=l72 lab=cap_ctrl_code[6]}
C {devices/vdd.sym} 1980 -1240 1 0 {name=l73 lab=cap_ctrl_code[5]}
C {devices/vdd.sym} 2090 -1240 1 0 {name=l74 lab=cap_ctrl_code[4]}
C {devices/vdd.sym} 2200 -1120 1 0 {name=l75 lab=cap_ctrl_code[3]}
C {devices/vdd.sym} 2310 -1120 1 0 {name=l76 lab=cap_ctrl_code[2]}
C {devices/vdd.sym} 2420 -1240 1 0 {name=l77 lab=cap_ctrl_code[1]}
C {devices/vdd.sym} 2530 -1240 1 0 {name=l78 lab=cap_ctrl_code[0]}
C {devices/vsource.sym} 2530 -1210 0 0 {name=V61 value=1.8}
C {devices/vsource.sym} 1760 -1150 0 0 {name=V62 value=0}
C {devices/vsource.sym} 1870 -1150 0 0 {name=V63 value=0}
C {devices/vsource.sym} 1980 -1150 0 0 {name=V64 value=0}
C {devices/vsource.sym} 2090 -1150 0 0 {name=V65 value=0}
C {devices/vsource.sym} 2200 -1150 0 0 {name=V66 value=0}
C {devices/vsource.sym} 2310 -1150 0 0 {name=V67 value=0}
C {devices/vsource.sym} 2420 -1150 0 0 {name=V68 value=0}
C {devices/vsource.sym} 2420 -1210 0 0 {name=V69 value=1.8}
C {devices/vsource.sym} 2310 -1210 0 0 {name=V70 value=1.8}
C {devices/vsource.sym} 2200 -1210 0 0 {name=V71 value=1.8}
C {devices/vsource.sym} 2090 -1210 0 0 {name=V72 value=1.8}
C {devices/vsource.sym} 1980 -1210 0 0 {name=V73 value=1.8}
C {devices/vsource.sym} 1870 -1210 0 0 {name=V74 value=1.8}
C {devices/vsource.sym} 1760 -1210 0 0 {name=V75 value=1.8}
C {devices/vsource.sym} 2530 -1150 0 0 {name=V76 value=0}
C {devices/noconn.sym} 1760 -1240 2 0 {name=l79}
C {devices/noconn.sym} 1870 -1240 2 0 {name=l80}
C {devices/noconn.sym} 1980 -1120 2 0 {name=l81}
C {devices/noconn.sym} 2090 -1120 2 0 {name=l82}
C {devices/noconn.sym} 2200 -1240 2 0 {name=l83}
C {devices/noconn.sym} 2310 -1240 2 0 {name=l84}
C {devices/noconn.sym} 2420 -1120 2 0 {name=l85}
C {devices/noconn.sym} 2530 -1120 2 0 {name=l86}
C {devices/lab_pin.sym} 890 -300 0 0 {name=p72 sig_type=std_logic lab=cap_ctrl_code[0:15]}
C {devices/lab_pin.sym} 890 -280 0 0 {name=p3 sig_type=std_logic lab=async_resetb_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 890 -260 0 0 {name=p4 sig_type=std_logic lab=async_setb_delay_cap_ctrl_code[0:3]}
