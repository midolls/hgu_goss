v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {*plot V(EXT_CLK)-2 V(sample_clk) V(sample_clk_b) V(EOB)+2 V(READY)+4 V(sar_clk)+6 V(COMP_RESULT)+8
	*plot V(\\"tempD[0]\\") V(\\"tempD[1]\\")+2 V(\\"tempD[2]\\")+4 V(\\"tempD[3]\\")+6 V(\\"tempD[4]\\")+8 V(\\"tempD[5]\\")+10 V(\\"tempD[6]\\")+12 V(\\"tempD[7]\\")+14 V(sar_clk) V(sar_clk)+2 V(sar_clk)+4 V(sar_clk)+6 V(sar_clk)+8 V(sar_clk)+10 V(sar_clk)+12 V(sar_clk)+14 V(EOB)-2 
	**plot V(\\"result_sw[1]\\")+2 V(\\"result_sw[2]\\")+4 V(\\"result_sw[3]\\")+6 V(\\"result_sw[4]\\")+8 V(\\"result_sw[5]\\")+10 V(\\"result_sw[6]\\")+12 V(\\"result_sw[7]\\")+14 V(\\"result2_sw[1]\\")+2 V(\\"result2_sw[2]\\")+4 V(\\"result2_sw[3]\\")+6 V(\\"result2_sw[4]\\")+8 V(\\"result2_sw[5]\\")+10 V(\\"result2_sw[6]\\")+12 V(\\"result2_sw[7]\\")+14
 	**plot V(vip)-V(vin)+0.9 V(X)+2 V(Y)+2 V(Q)-2 V(P)-2 V(X_drive)+4 V(Y_drive)+4
	*plot V(\\"result_sw[1]\\")+2 V(\\"result_sw[2]\\")+4 V(\\"result_sw[3]\\")+6 V(\\"result_sw[4]\\")+8 V(\\"result_sw[5]\\")+10 V(\\"result_sw[6]\\")+12 V(\\"result_sw[7]\\")+14 V(\\"result2_sw[1]\\")+2 V(\\"result2_sw[2]\\")+4 V(\\"result2_sw[3]\\")+6 V(\\"result2_sw[4]\\")+8 V(\\"result2_sw[5]\\")+10 V(\\"result2_sw[6]\\")+12 V(\\"result2_sw[7]\\")+14 V(\\"result_sw_b[1]\\")+2 V(\\"result_sw_b[2]\\")+4 V(\\"result_sw_b[3]\\")+6 V(\\"result_sw_b[4]\\")+8 V(\\"result_sw_b[5]\\")+10 V(\\"result_sw_b[6]\\")+12 V(\\"result_sw_b[7]\\")+14 V(\\"result2_sw_b[1]\\")+2 V(\\"result2_sw_b[2]\\")+4 V(\\"result2_sw_b[3]\\")+6 V(\\"result2_sw_b[4]\\")+8 V(\\"result2_sw_b[5]\\")+10 V(\\"result2_sw_b[6]\\")+12 V(\\"result2_sw_b[7]\\")+14
	*plot V(result[0]) V(result[1])+2 V(result[2])+4 V(result[3])+6 V(result[4])+8 V(result[5])+10 V(result[6])+12 V(result[7])+14

*plot V(\\"result[0]\\") V(\\"result[1]\\")+2 V(\\"result[2]\\")+4 V(\\"result[3]\\")+6 V(\\"result[4]\\")+8 V(\\"result[5]\\")+10 V(\\"result[6]\\")+12 V(\\"result[7]\\")+14
	

	*write /foss/designs/hgu_goss/hgu/xschem/8bit_sar_adc_800n.raw all} 60 -1790 0 0 0.4 0.4 {}
N 1060 -1010 1060 -950 {
lab=tah_vp}
N 1090 -1010 1090 -950 {
lab=tah_vp}
N 1120 -1010 1120 -950 {
lab=tah_vp}
N 1150 -1010 1150 -950 {
lab=tah_vp}
N 1180 -1010 1180 -950 {
lab=tah_vp}
N 1210 -1010 1210 -950 {
lab=tah_vp}
N 1240 -1010 1240 -950 {
lab=tah_vp}
N 1270 -1010 1270 -950 {
lab=tah_vp}
N 1400 -1010 1400 -950 {
lab=tah_vp}
N 1430 -1010 1430 -950 {
lab=tah_vp}
N 1460 -1010 1460 -950 {
lab=tah_vp}
N 1490 -1010 1490 -950 {
lab=tah_vp}
N 1520 -1010 1520 -950 {
lab=tah_vp}
N 1550 -1010 1550 -950 {
lab=tah_vp}
N 1580 -1010 1580 -950 {
lab=tah_vp}
N 1610 -1010 1610 -950 {
lab=tah_vp}
N 1060 -850 1060 -790 {
lab=tah_vn}
N 1090 -850 1090 -790 {
lab=tah_vn}
N 1120 -850 1120 -790 {
lab=tah_vn}
N 1150 -850 1150 -790 {
lab=tah_vn}
N 1180 -850 1180 -790 {
lab=tah_vn}
N 1210 -850 1210 -790 {
lab=tah_vn}
N 1240 -850 1240 -790 {
lab=tah_vn}
N 1270 -850 1270 -790 {
lab=tah_vn}
N 1400 -850 1400 -790 {
lab=tah_vn}
N 1430 -850 1430 -790 {
lab=tah_vn}
N 1460 -850 1460 -790 {
lab=tah_vn}
N 1490 -850 1490 -790 {
lab=tah_vn}
N 1520 -850 1520 -790 {
lab=tah_vn}
N 1550 -850 1550 -790 {
lab=tah_vn}
N 1580 -850 1580 -790 {
lab=tah_vn}
N 1610 -850 1610 -790 {
lab=tah_vn}
N 910 -950 1610 -950 {
lab=tah_vp}
N 910 -850 1610 -850 {
lab=tah_vn}
N 1610 -950 1740 -950 {
lab=tah_vp}
N 1610 -850 1740 -850 {
lab=tah_vn}
N 1060 -1340 1060 -1250 {
lab=sw6}
N 1090 -1340 1090 -1250 {
lab=sw5}
N 1120 -1340 1120 -1250 {
lab=sw4}
N 1150 -1340 1150 -1250 {
lab=sw3}
N 1180 -1340 1180 -1250 {
lab=sw2}
N 1210 -1340 1210 -1250 {
lab=result2_sw[2]}
N 1240 -1340 1240 -1250 {
lab=result2_sw[1]}
N 1430 -1340 1430 -1250 {
lab=result_sw[1]}
N 1460 -1340 1460 -1250 {
lab=result_sw[2]}
N 1490 -1340 1490 -1250 {
lab=swd2}
N 1520 -1340 1520 -1250 {
lab=swd3}
N 1550 -1340 1550 -1250 {
lab=swd4}
N 1580 -1340 1580 -1250 {
lab=swd5}
N 1610 -1340 1610 -1250 {
lab=swd6}
N 1240 -550 1240 -460 {
lab=result2_sw_b[1]}
N 1210 -550 1210 -460 {
lab=result2_sw_b[2]}
N 1180 -550 1180 -460 {
lab=#net1}
N 1150 -550 1150 -460 {
lab=#net2}
N 1120 -550 1120 -460 {
lab=#net3}
N 1090 -550 1090 -460 {
lab=#net4}
N 1060 -550 1060 -460 {
lab=#net5}
N 1610 -550 1610 -460 {
lab=#net6}
N 1580 -550 1580 -460 {
lab=#net7}
N 1550 -550 1550 -460 {
lab=#net8}
N 1520 -550 1520 -460 {
lab=#net9}
N 1490 -550 1490 -460 {
lab=#net10}
N 1460 -550 1460 -460 {
lab=result_sw_b[2]}
N 1430 -550 1430 -460 {
lab=result_sw_b[1]}
N 1320 -1270 1320 -1250 {
lab=VREF}
N 1350 -1270 1350 -1250 {
lab=VSS}
N 800 -930 880 -930 {
lab=tah_vp}
N 800 -870 840 -870 {
lab=tah_vn}
N 510 -880 580 -880 {
lab=vin}
N 880 -930 890 -930 {
lab=tah_vp}
N 890 -950 890 -930 {
lab=tah_vp}
N 890 -950 910 -950 {
lab=tah_vp}
N 840 -870 890 -870 {
lab=tah_vn}
N 890 -870 890 -850 {
lab=tah_vn}
N 890 -850 910 -850 {
lab=tah_vn}
N 1320 -550 1320 -530 {
lab=VREF}
N 1350 -550 1350 -530 {
lab=VSS}
N 1740 -950 1740 -930 {
lab=tah_vp}
N 1740 -870 1740 -850 {
lab=tah_vn}
N 2760 -980 2890 -980 {
lab=result[0:7]}
N 2070 -920 2460 -920 {
lab=COMP_RESULT}
N 510 -920 580 -920 {
lab=vip}
N 1380 -1270 1380 -1250 {
lab=VDD}
N 1380 -550 1380 -530 {
lab=VDD}
N 1210 -1520 1210 -1340 {
lab=result2_sw[2]}
N 1240 -1520 1240 -1340 {
lab=result2_sw[1]}
N 1430 -1520 1430 -1340 {
lab=result_sw[1]}
N 1460 -1520 1460 -1340 {
lab=result_sw[2]}
N 1430 -460 1430 -280 {
lab=result_sw_b[1]}
N 1460 -460 1460 -280 {
lab=result_sw_b[2]}
N 1210 -460 1210 -280 {
lab=result2_sw_b[2]}
N 1240 -460 1240 -280 {
lab=result2_sw_b[1]}
N 2160 -380 2630 -380 {
lab=VSS}
N 2160 -80 2630 -80 {
lab=VSS}
N 3030 -680 3950 -680 {
lab=VSS}
N 2150 -680 3030 -680 {
lab=VSS}
C {hgu_sarlogic.sym} 2610 -900 0 0 {name=x1}
C {hgu_comp.sym} 1910 -900 0 0 {name=x2}
C {hgu_cdac_half.sym} 510 -890 0 0 {name=x3}
C {hgu_cdac_half.sym} 510 -910 2 1 {name=x4}
C {devices/lab_wire.sym} 1350 -530 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {hgu_tah.sym} 650 -900 0 0 {name=x21}
C {devices/lab_wire.sym} 570 -920 0 0 {name=p29 sig_type=std_logic lab=vip

}
C {devices/lab_wire.sym} 870 -870 0 0 {name=p30 sig_type=std_logic lab=tah_vn
}
C {devices/lab_wire.sym} 870 -930 0 0 {name=p31 sig_type=std_logic lab=tah_vp
}
C {devices/lab_wire.sym} 570 -880 0 0 {name=p32 sig_type=std_logic lab=vin

}
C {devices/gnd.sym} 720 -820 0 0 {name=l25 lab=GND}
C {devices/vdd.sym} 720 -980 0 0 {name=l26 lab=VDD}
C {devices/lab_wire.sym} 1320 -1270 0 0 {name=p1 sig_type=std_logic lab=VREF}
C {devices/lab_wire.sym} 1320 -530 2 1 {name=p3 sig_type=std_logic lab=VREF}
C {devices/lab_wire.sym} 1350 -1270 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 510 -980 2 0 {name=l23 lab=GND}
C {devices/gnd.sym} 510 -820 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 2070 -920 2 0 {name=p2 sig_type=std_logic lab=COMP_RESULT}
C {devices/lab_pin.sym} 1970 -830 2 0 {name=p33 sig_type=std_logic lab=READY}
C {devices/lab_pin.sym} 1870 -790 2 0 {name=p34 sig_type=std_logic lab=sar_clk}
C {devices/lab_pin.sym} 1830 -790 0 0 {name=p39 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1830 -1000 0 0 {name=p40 sig_type=std_logic lab=VDD}
C {devices/noconn.sym} 2070 -880 2 0 {name=l3}
C {devices/lab_pin.sym} 2460 -980 0 0 {name=p41 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2460 -960 0 0 {name=p42 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2460 -940 0 0 {name=p43 sig_type=std_logic lab=EXT_CLK}
C {devices/lab_pin.sym} 2460 -900 0 0 {name=p45 sig_type=std_logic lab=READY}
C {devices/lab_pin.sym} 2760 -1000 2 0 {name=p65 sig_type=std_logic lab=sar_clk}
C {devices/lab_pin.sym} 2760 -980 2 0 {name=p67 sig_type=std_logic lab=result[0:7]}
C {devices/lab_pin.sym} 2760 -960 2 0 {name=p69 sig_type=std_logic lab=sample_clk}
C {devices/capa.sym} 2920 -980 3 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 2950 -980 2 0 {name=p70 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2460 -1000 0 0 {name=p71 sig_type=std_logic lab=sel_bit[0:1]}
C {devices/lab_pin.sym} 2460 -880 0 0 {name=p72 sig_type=std_logic lab=cap_ctrl_code[0:15]}
C {devices/vdd.sym} 2210 -620 1 0 {name=l4 lab=cap_ctrl_code[15]}
C {devices/vdd.sym} 2320 -620 1 0 {name=l6 lab=cap_ctrl_code[14]}
C {devices/vdd.sym} 2430 -740 1 0 {name=l19 lab=cap_ctrl_code[13]}
C {devices/vdd.sym} 2540 -740 1 0 {name=l29 lab=cap_ctrl_code[12]}
C {devices/vdd.sym} 2650 -620 1 0 {name=l30 lab=cap_ctrl_code[11]}
C {devices/vdd.sym} 2760 -620 1 0 {name=l31 lab=cap_ctrl_code[10]}
C {devices/vdd.sym} 2870 -740 1 0 {name=l32 lab=cap_ctrl_code[9]}
C {devices/vdd.sym} 2980 -740 1 0 {name=l33 lab=cap_ctrl_code[8]}
C {devices/vsource.sym} 2980 -710 0 0 {name=V36 value=1.8}
C {devices/vsource.sym} 2210 -650 0 0 {name=V37 value=0}
C {devices/vsource.sym} 2320 -650 0 0 {name=V38 value=0}
C {devices/vsource.sym} 2430 -650 0 0 {name=V39 value=0}
C {devices/vsource.sym} 2540 -650 0 0 {name=V40 value=0}
C {devices/vsource.sym} 2650 -650 0 0 {name=V41 value=0}
C {devices/vsource.sym} 2760 -650 0 0 {name=V42 value=0}
C {devices/vsource.sym} 2870 -650 0 0 {name=V43 value=0}
C {devices/lab_pin.sym} 2150 -680 0 0 {name=p73 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 2870 -710 0 0 {name=V44 value=1.8}
C {devices/vsource.sym} 2760 -710 0 0 {name=V45 value=1.8}
C {devices/vsource.sym} 2650 -710 0 0 {name=V46 value=1.8}
C {devices/vsource.sym} 2540 -710 0 0 {name=V47 value=1.8}
C {devices/vsource.sym} 2430 -710 0 0 {name=V48 value=1.8}
C {devices/vsource.sym} 2320 -710 0 0 {name=V49 value=1.8}
C {devices/vsource.sym} 2210 -710 0 0 {name=V50 value=1.8}
C {devices/vsource.sym} 2980 -650 0 0 {name=V51 value=0}
C {devices/noconn.sym} 2210 -740 2 0 {name=l34}
C {devices/noconn.sym} 2320 -740 2 0 {name=l36}
C {devices/noconn.sym} 2430 -620 2 0 {name=l37}
C {devices/noconn.sym} 2540 -620 2 0 {name=l38}
C {devices/noconn.sym} 2650 -740 2 0 {name=l39}
C {devices/noconn.sym} 2760 -740 2 0 {name=l40}
C {devices/noconn.sym} 2870 -620 2 0 {name=l41}
C {devices/noconn.sym} 2980 -620 2 0 {name=l42}
C {devices/code.sym} 240 -620 0 0 {name=spice1 only_toplevel=false value="

.OPTIONS savecurrents
.tran 10ps 500ns

.control
	run
	plot V(sample_clk) V(vip) V(vin) V(vip)-V(vin)+0.9 V(tah_vp) V(tah_vn) V(tah_vp)-V(tah_vn) V(vip)-V(vin)

	
.endc
.save all

"}
C {devices/vdd.sym} 420 -590 0 0 {name=l43 lab=VDD}
C {devices/gnd.sym} 420 -530 0 0 {name=l44 lab=GND}
C {devices/vsource.sym} 420 -560 0 0 {name=V52 value=1.8}
C {devices/vdd.sym} 470 -590 0 0 {name=l45 lab=VSS}
C {devices/gnd.sym} 470 -530 0 0 {name=l46 lab=GND}
C {devices/vsource.sym} 470 -560 0 0 {name=V53 value=0}
C {devices/vdd.sym} 720 -590 0 0 {name=l47 lab=VGND}
C {devices/gnd.sym} 570 -530 0 0 {name=l48 lab=GND}
C {devices/vsource.sym} 570 -560 0 0 {name=V54 value=1.8}
C {devices/vdd.sym} 620 -590 0 0 {name=l49 lab=VNB}
C {devices/gnd.sym} 620 -530 0 0 {name=l50 lab=GND}
C {devices/vsource.sym} 620 -560 0 0 {name=V55 value=0}
C {devices/vdd.sym} 670 -590 0 0 {name=l51 lab=VPB}
C {devices/gnd.sym} 670 -530 0 0 {name=l52 lab=GND}
C {devices/vsource.sym} 670 -560 0 0 {name=V56 value=1.8}
C {devices/vdd.sym} 570 -590 0 0 {name=l53 lab=VPWR}
C {devices/gnd.sym} 720 -530 0 0 {name=l54 lab=GND}
C {devices/vsource.sym} 720 -560 0 0 {name=V57 value=0}
C {devices/vsource.sym} 800 -560 0 0 {name=V60 value="PULSE(0 1.8 50p 10p 10p 50n 100n)"}
C {devices/gnd.sym} 800 -530 0 0 {name=l57 lab=GND}
C {devices/lab_pin.sym} 800 -590 2 0 {name=p75 sig_type=std_logic lab=EXT_CLK}
C {devices/lab_wire.sym} 1860 -490 0 0 {name=p9 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 2760 -940 2 0 {name=p8 sig_type=std_logic lab=sample_clk_b}
C {devices/lab_pin.sym} 650 -980 1 0 {name=p10 sig_type=std_logic lab=sample_clk}
C {devices/lab_pin.sym} 690 -980 1 0 {name=p11 sig_type=std_logic lab=sample_clk_b}
C {devices/lab_pin.sym} 2200 110 0 0 {name=p120 sig_type=std_logic lab=sel_bit[0]}
C {devices/lab_pin.sym} 2200 140 0 0 {name=p74 sig_type=std_logic lab=sel_bit[1]}
C {devices/vsource.sym} 2230 140 3 0 {name=V58 value=1.8}
C {devices/gnd.sym} 2260 140 0 0 {name=l55 lab=GND}
C {devices/vsource.sym} 2230 110 3 0 {name=V59 value=1.8}
C {devices/gnd.sym} 2260 110 0 0 {name=l56 lab=GND}
C {devices/lab_pin.sym} 2760 -920 2 0 {name=p81 sig_type=std_logic lab=result_sw[1:7]}
C {devices/lab_pin.sym} 2760 -900 2 0 {name=p82 sig_type=std_logic lab=result_sw_b[1:7]}
C {devices/lab_pin.sym} 2760 -880 2 0 {name=p83 sig_type=std_logic lab=result2_sw[1:7]}
C {devices/lab_pin.sym} 2760 -860 2 0 {name=p84 sig_type=std_logic lab=result2_sw_b[1:7]}
C {devices/lab_pin.sym} 1610 -1520 3 1 {name=p36 sig_type=std_logic lab=result_sw[7]}
C {devices/lab_pin.sym} 1580 -1520 3 1 {name=p37 sig_type=std_logic lab=result_sw[6]}
C {devices/lab_pin.sym} 1550 -1520 3 1 {name=p38 sig_type=std_logic lab=result_sw[5]}
C {devices/lab_pin.sym} 1520 -1520 3 1 {name=p44 sig_type=std_logic lab=result_sw[4]}
C {devices/lab_pin.sym} 1490 -1520 3 1 {name=p46 sig_type=std_logic lab=result_sw[3]}
C {devices/lab_pin.sym} 1460 -1520 3 1 {name=p47 sig_type=std_logic lab=result_sw[2]}
C {devices/lab_pin.sym} 1430 -1520 3 1 {name=p48 sig_type=std_logic lab=result_sw[1]}
C {devices/lab_pin.sym} 1060 -1520 1 0 {name=p49 sig_type=std_logic lab=result2_sw[7]}
C {devices/lab_pin.sym} 1090 -1520 1 0 {name=p50 sig_type=std_logic lab=result2_sw[6]}
C {devices/lab_pin.sym} 1120 -1520 1 0 {name=p51 sig_type=std_logic lab=result2_sw[5]}
C {devices/lab_pin.sym} 1150 -1520 1 0 {name=p52 sig_type=std_logic lab=result2_sw[4]}
C {devices/lab_pin.sym} 1180 -1520 1 0 {name=p53 sig_type=std_logic lab=result2_sw[3]}
C {devices/lab_pin.sym} 1210 -1520 1 0 {name=p54 sig_type=std_logic lab=result2_sw[2]}
C {devices/lab_pin.sym} 1240 -1520 1 0 {name=p55 sig_type=std_logic lab=result2_sw[1]}
C {hgu_cdac_sw_buffer.sym} 1150 -1420 0 0 {name=x6}
C {hgu_cdac_sw_buffer.sym} 1520 -1420 0 1 {name=x7}
C {devices/lab_wire.sym} 1060 -1300 0 0 {name=p56 sig_type=std_logic lab=sw6
}
C {devices/lab_wire.sym} 1090 -1300 0 0 {name=p57 sig_type=std_logic lab=sw5
}
C {devices/lab_wire.sym} 1120 -1300 0 0 {name=p58 sig_type=std_logic lab=sw4
}
C {devices/lab_wire.sym} 1150 -1300 0 0 {name=p59 sig_type=std_logic lab=sw3
}
C {devices/lab_wire.sym} 1180 -1300 0 0 {name=p60 sig_type=std_logic lab=sw2
}
C {devices/lab_pin.sym} 1610 -280 1 1 {name=p16 sig_type=std_logic lab=result_sw_b[7]}
C {devices/lab_pin.sym} 1580 -280 1 1 {name=p18 sig_type=std_logic lab=result_sw_b[6]}
C {devices/lab_pin.sym} 1550 -280 1 1 {name=p20 sig_type=std_logic lab=result_sw_b[5]}
C {devices/lab_pin.sym} 1520 -280 1 1 {name=p22 sig_type=std_logic lab=result_sw_b[4]}
C {devices/lab_pin.sym} 1490 -280 1 1 {name=p24 sig_type=std_logic lab=result_sw_b[3]}
C {devices/lab_pin.sym} 1460 -280 1 1 {name=p76 sig_type=std_logic lab=result_sw_b[2]}
C {devices/lab_pin.sym} 1430 -280 1 1 {name=p80 sig_type=std_logic lab=result_sw_b[1]}
C {devices/lab_pin.sym} 1060 -280 3 0 {name=p92 sig_type=std_logic lab=result2_sw_b[7]}
C {devices/lab_pin.sym} 1090 -280 3 0 {name=p93 sig_type=std_logic lab=result2_sw_b[6]}
C {devices/lab_pin.sym} 1120 -280 3 0 {name=p94 sig_type=std_logic lab=result2_sw_b[5]}
C {devices/lab_pin.sym} 1150 -280 3 0 {name=p95 sig_type=std_logic lab=result2_sw_b[4]}
C {devices/lab_pin.sym} 1180 -280 3 0 {name=p96 sig_type=std_logic lab=result2_sw_b[3]}
C {devices/lab_pin.sym} 1210 -280 3 0 {name=p97 sig_type=std_logic lab=result2_sw_b[2]}
C {devices/lab_pin.sym} 1240 -280 3 0 {name=p98 sig_type=std_logic lab=result2_sw_b[1]}
C {hgu_cdac_sw_buffer.sym} 1150 -380 2 1 {name=x8}
C {hgu_cdac_sw_buffer.sym} 1520 -380 2 0 {name=x9}
C {devices/lab_wire.sym} 1380 -1270 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1380 -530 2 1 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1610 -1300 0 1 {name=p19 sig_type=std_logic lab=swd6
}
C {devices/lab_wire.sym} 1580 -1300 0 1 {name=p21 sig_type=std_logic lab=swd5
}
C {devices/lab_wire.sym} 1550 -1300 0 1 {name=p23 sig_type=std_logic lab=swd4
}
C {devices/lab_wire.sym} 1520 -1300 0 1 {name=p28 sig_type=std_logic lab=swd3
}
C {devices/lab_wire.sym} 1490 -1300 0 1 {name=p63 sig_type=std_logic lab=swd2
}
C {devices/gnd.sym} 1860 -430 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 1860 -460 0 0 {name=V1 value=0.9}
C {devices/vsource.sym} 510 -850 0 1 {name=V2 value="PULSE(1.8 0.9 0 250n 250n 10p 500n)"}
C {devices/vsource.sym} 510 -950 2 0 {name=V4 value="PULSE(0.9 1.8 0 250n 250n 10p 500n)"}
C {devices/vdd.sym} 2210 -320 1 0 {name=l11 lab=async_resetb_delay_cap_ctrl_code[3]}
C {devices/vdd.sym} 2320 -320 1 0 {name=l12 lab=async_resetb_delay_cap_ctrl_code[2]}
C {devices/vdd.sym} 2430 -440 1 0 {name=l13 lab=async_resetb_delay_cap_ctrl_code[1]}
C {devices/vdd.sym} 2540 -440 1 0 {name=l14 lab=async_resetb_delay_cap_ctrl_code[0]}
C {devices/vsource.sym} 2540 -410 0 0 {name=V3 value=1.8}
C {devices/vsource.sym} 2210 -350 0 0 {name=V9 value=0}
C {devices/vsource.sym} 2320 -350 0 0 {name=V10 value=0}
C {devices/vsource.sym} 2430 -350 0 0 {name=V11 value=0}
C {devices/lab_pin.sym} 2160 -380 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 2430 -410 0 0 {name=V12 value=1.8}
C {devices/vsource.sym} 2320 -410 0 0 {name=V13 value=1.8}
C {devices/vsource.sym} 2210 -410 0 0 {name=V14 value=1.8}
C {devices/vsource.sym} 2540 -350 0 0 {name=V19 value=0}
C {devices/noconn.sym} 2210 -440 2 0 {name=l20}
C {devices/noconn.sym} 2320 -440 2 0 {name=l21}
C {devices/noconn.sym} 2430 -320 2 0 {name=l22}
C {devices/noconn.sym} 2540 -320 2 0 {name=l24}
C {devices/vdd.sym} 2210 -20 1 0 {name=l59 lab=async_setb_delay_cap_ctrl_code[3]}
C {devices/vdd.sym} 2320 -20 1 0 {name=l60 lab=async_setb_delay_cap_ctrl_code[2]}
C {devices/vdd.sym} 2430 -140 1 0 {name=l61 lab=async_setb_delay_cap_ctrl_code[1]}
C {devices/vdd.sym} 2540 -140 1 0 {name=l62 lab=async_setb_delay_cap_ctrl_code[0]}
C {devices/vsource.sym} 2540 -110 0 0 {name=V20 value=1.8}
C {devices/vsource.sym} 2210 -50 0 0 {name=V25 value=0}
C {devices/vsource.sym} 2320 -50 0 0 {name=V26 value=0}
C {devices/vsource.sym} 2430 -50 0 0 {name=V27 value=0}
C {devices/lab_pin.sym} 2160 -80 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 2430 -110 0 0 {name=V28 value=1.8}
C {devices/vsource.sym} 2320 -110 0 0 {name=V29 value=1.8}
C {devices/vsource.sym} 2210 -110 0 0 {name=V30 value=1.8}
C {devices/vsource.sym} 2540 -50 0 0 {name=V35 value=0}
C {devices/noconn.sym} 2210 -140 2 0 {name=l67}
C {devices/noconn.sym} 2320 -140 2 0 {name=l68}
C {devices/noconn.sym} 2430 -20 2 0 {name=l69}
C {devices/noconn.sym} 2540 -20 2 0 {name=l70}
C {devices/lab_pin.sym} 2460 -860 0 0 {name=p12 sig_type=std_logic lab=async_resetb_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 2460 -840 0 0 {name=p13 sig_type=std_logic lab=async_setb_delay_cap_ctrl_code[0:3]}
C {devices/vdd.sym} 3090 -620 1 0 {name=l71 lab=cap_ctrl_code[7]}
C {devices/vdd.sym} 3200 -620 1 0 {name=l72 lab=cap_ctrl_code[6]}
C {devices/vdd.sym} 3310 -740 1 0 {name=l73 lab=cap_ctrl_code[5]}
C {devices/vdd.sym} 3420 -740 1 0 {name=l74 lab=cap_ctrl_code[4]}
C {devices/vdd.sym} 3530 -620 1 0 {name=l75 lab=cap_ctrl_code[3]}
C {devices/vdd.sym} 3640 -620 1 0 {name=l76 lab=cap_ctrl_code[2]}
C {devices/vdd.sym} 3750 -740 1 0 {name=l77 lab=cap_ctrl_code[1]}
C {devices/vdd.sym} 3860 -740 1 0 {name=l78 lab=cap_ctrl_code[0]}
C {devices/vsource.sym} 3860 -710 0 0 {name=V61 value=1.8}
C {devices/vsource.sym} 3090 -650 0 0 {name=V62 value=0}
C {devices/vsource.sym} 3200 -650 0 0 {name=V63 value=0}
C {devices/vsource.sym} 3310 -650 0 0 {name=V64 value=0}
C {devices/vsource.sym} 3420 -650 0 0 {name=V65 value=0}
C {devices/vsource.sym} 3530 -650 0 0 {name=V66 value=0}
C {devices/vsource.sym} 3640 -650 0 0 {name=V67 value=0}
C {devices/vsource.sym} 3750 -650 0 0 {name=V68 value=0}
C {devices/vsource.sym} 3750 -710 0 0 {name=V69 value=1.8}
C {devices/vsource.sym} 3640 -710 0 0 {name=V70 value=1.8}
C {devices/vsource.sym} 3530 -710 0 0 {name=V71 value=1.8}
C {devices/vsource.sym} 3420 -710 0 0 {name=V72 value=1.8}
C {devices/vsource.sym} 3310 -710 0 0 {name=V73 value=1.8}
C {devices/vsource.sym} 3200 -710 0 0 {name=V74 value=1.8}
C {devices/vsource.sym} 3090 -710 0 0 {name=V75 value=1.8}
C {devices/vsource.sym} 3860 -650 0 0 {name=V76 value=0}
C {devices/noconn.sym} 3090 -740 2 0 {name=l79}
C {devices/noconn.sym} 3200 -740 2 0 {name=l80}
C {devices/noconn.sym} 3310 -620 2 0 {name=l81}
C {devices/noconn.sym} 3420 -620 2 0 {name=l82}
C {devices/noconn.sym} 3530 -740 2 0 {name=l83}
C {devices/noconn.sym} 3640 -740 2 0 {name=l84}
C {devices/noconn.sym} 3750 -620 2 0 {name=l85}
C {devices/noconn.sym} 3860 -620 2 0 {name=l86}
C {devices/simulator_commands_shown.sym} 2280 -1170 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.include /foss/designs/hgu_goss/hgu/mag/hgu_cdac_unit.spice
.include /foss/designs/hgu_goss/hgu/spice/hgu_comp_flat_RC.spice
.include /foss/designs/hgu_goss/hgu/spice/hgu_sarlogic_8bit_logic_flat_RC.spice
"}
C {/foss/designs/goss_test/module/jh_top/delay_no_code.sym} 2670 -1240 0 0 {name=x10}
C {/foss/designs/goss_test/module/jh_top/delay_no_code.sym} 2670 -1330 0 0 {name=x11}
C {devices/noconn.sym} 2820 -1350 2 0 {name=l7}
C {devices/noconn.sym} 2820 -1260 2 0 {name=l8}
C {devices/noconn.sym} 2520 -1350 0 0 {name=l9}
C {devices/noconn.sym} 2520 -1330 0 0 {name=l10}
C {devices/noconn.sym} 2520 -1310 0 0 {name=l15}
C {devices/noconn.sym} 2520 -1260 0 0 {name=l16}
C {devices/noconn.sym} 2520 -1240 0 0 {name=l17}
C {devices/noconn.sym} 2520 -1220 0 0 {name=l18}
C {devices/lab_pin.sym} 2460 -820 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2460 -800 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1030 -1430 0 0 {name=p27 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1030 -1410 0 0 {name=p35 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1640 -1430 0 1 {name=p61 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1640 -1410 0 1 {name=p62 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1640 -370 0 1 {name=p64 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1640 -390 0 1 {name=p66 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1030 -370 0 0 {name=p68 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1030 -390 0 0 {name=p77 sig_type=std_logic lab=VSS}
