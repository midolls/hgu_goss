v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1050 -620 1520 -620 {
lab=VSS}
N 1050 -320 1520 -320 {
lab=VSS}
N 1920 -920 2840 -920 {
lab=VSS}
N 1040 -920 1920 -920 {
lab=VSS}
N 1660 -620 2130 -620 {
lab=VSS}
N 60 -580 170 -580 {
lab=vip}
N 60 -560 170 -560 {
lab=vin}
N 750 -500 790 -500 {
lab=out}
C {/foss/designs/hgu_goss/hgu/xschem/hgu_top_block.sym} 320 -500 0 0 {name=x1}
C {devices/lab_pin.sym} 470 -620 2 0 {name=p67 sig_type=std_logic lab=result[0:7]}
C {devices/simulator_commands_shown.sym} 150 -890 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.include /foss/designs/hgu_goss/hgu/mag/hgu_cdac_unit.spice
.include /foss/designs/hgu_goss/hgu/spice/hgu_comp_flat_RC.spice
.include /foss/designs/hgu_goss/hgu/spice/hgu_sarlogic_8bit_logic_flat_RC.spice

.include /foss/designs/hgu_goss/hgu/spice/hgu_sarlogic_retimer_flat_RC.spice
.include /foss/designs/hgu_goss/hgu/spice/hgu_sarlogic_sw_ctrl_flat_RC.spice
.include /foss/designs/hgu_goss/hgu/spice/hgu_clk_async_flat_RC.spice
.include /foss/designs/hgu_goss/hgu/spice/hgu_clk_sample_flat_RC.spice
.include /foss/designs/hgu_goss/hgu/spice/hgu_cdac_sw_buffer_flat_RC.spice
"}
C {devices/vdd.sym} 1100 -860 1 0 {name=l4 lab=cap_ctrl_code[15]}
C {devices/vdd.sym} 1210 -860 1 0 {name=l6 lab=cap_ctrl_code[14]}
C {devices/vdd.sym} 1320 -980 1 0 {name=l19 lab=cap_ctrl_code[13]}
C {devices/vdd.sym} 1430 -980 1 0 {name=l29 lab=cap_ctrl_code[12]}
C {devices/vdd.sym} 1540 -860 1 0 {name=l30 lab=cap_ctrl_code[11]}
C {devices/vdd.sym} 1650 -860 1 0 {name=l31 lab=cap_ctrl_code[10]}
C {devices/vdd.sym} 1760 -980 1 0 {name=l32 lab=cap_ctrl_code[9]}
C {devices/vdd.sym} 1870 -980 1 0 {name=l33 lab=cap_ctrl_code[8]}
C {devices/vsource.sym} 1870 -950 0 0 {name=V36 value=1.8}
C {devices/vsource.sym} 1100 -890 0 0 {name=V37 value=0}
C {devices/vsource.sym} 1210 -890 0 0 {name=V38 value=0}
C {devices/vsource.sym} 1320 -890 0 0 {name=V39 value=0}
C {devices/vsource.sym} 1430 -890 0 0 {name=V40 value=0}
C {devices/vsource.sym} 1540 -890 0 0 {name=V41 value=0}
C {devices/vsource.sym} 1650 -890 0 0 {name=V42 value=0}
C {devices/vsource.sym} 1760 -890 0 0 {name=V43 value=0}
C {devices/lab_pin.sym} 1040 -920 0 0 {name=p73 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1760 -950 0 0 {name=V44 value=1.8}
C {devices/vsource.sym} 1650 -950 0 0 {name=V45 value=1.8}
C {devices/vsource.sym} 1540 -950 0 0 {name=V46 value=1.8}
C {devices/vsource.sym} 1430 -950 0 0 {name=V47 value=1.8}
C {devices/vsource.sym} 1320 -950 0 0 {name=V48 value=1.8}
C {devices/vsource.sym} 1210 -950 0 0 {name=V49 value=1.8}
C {devices/vsource.sym} 1100 -950 0 0 {name=V50 value=1.8}
C {devices/vsource.sym} 1870 -890 0 0 {name=V51 value=0}
C {devices/noconn.sym} 1100 -980 2 0 {name=l34}
C {devices/noconn.sym} 1210 -980 2 0 {name=l36}
C {devices/noconn.sym} 1320 -860 2 0 {name=l37}
C {devices/noconn.sym} 1430 -860 2 0 {name=l38}
C {devices/noconn.sym} 1540 -980 2 0 {name=l39}
C {devices/noconn.sym} 1650 -980 2 0 {name=l40}
C {devices/noconn.sym} 1760 -860 2 0 {name=l41}
C {devices/noconn.sym} 1870 -860 2 0 {name=l42}
C {devices/lab_pin.sym} 1090 -130 0 0 {name=p120 sig_type=std_logic lab=sel_bit[0]}
C {devices/lab_pin.sym} 1090 -100 0 0 {name=p74 sig_type=std_logic lab=sel_bit[1]}
C {devices/vsource.sym} 1120 -100 3 0 {name=V58 value=1.8}
C {devices/gnd.sym} 1150 -100 0 0 {name=l55 lab=GND}
C {devices/vsource.sym} 1120 -130 3 0 {name=V59 value=1.8}
C {devices/gnd.sym} 1150 -130 0 0 {name=l56 lab=GND}
C {devices/vdd.sym} 1100 -560 1 0 {name=l11 lab=async_resetb_delay_cap_ctrl_code[3]}
C {devices/vdd.sym} 1210 -560 1 0 {name=l12 lab=async_resetb_delay_cap_ctrl_code[2]}
C {devices/vdd.sym} 1320 -680 1 0 {name=l13 lab=async_resetb_delay_cap_ctrl_code[1]}
C {devices/vdd.sym} 1430 -680 1 0 {name=l14 lab=async_resetb_delay_cap_ctrl_code[0]}
C {devices/vsource.sym} 1430 -650 0 0 {name=V3 value=1.8}
C {devices/vsource.sym} 1100 -590 0 0 {name=V9 value=0}
C {devices/vsource.sym} 1210 -590 0 0 {name=V10 value=0}
C {devices/vsource.sym} 1320 -590 0 0 {name=V11 value=0}
C {devices/lab_pin.sym} 1050 -620 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1320 -650 0 0 {name=V12 value=1.8}
C {devices/vsource.sym} 1210 -650 0 0 {name=V13 value=1.8}
C {devices/vsource.sym} 1100 -650 0 0 {name=V14 value=1.8}
C {devices/vsource.sym} 1430 -590 0 0 {name=V19 value=0}
C {devices/noconn.sym} 1100 -680 2 0 {name=l20}
C {devices/noconn.sym} 1210 -680 2 0 {name=l21}
C {devices/noconn.sym} 1320 -560 2 0 {name=l22}
C {devices/noconn.sym} 1430 -560 2 0 {name=l24}
C {devices/vdd.sym} 1100 -260 1 0 {name=l59 lab=async_setb_delay_cap_ctrl_code[3]}
C {devices/vdd.sym} 1210 -260 1 0 {name=l60 lab=async_setb_delay_cap_ctrl_code[2]}
C {devices/vdd.sym} 1320 -380 1 0 {name=l61 lab=async_setb_delay_cap_ctrl_code[1]}
C {devices/vdd.sym} 1430 -380 1 0 {name=l62 lab=async_setb_delay_cap_ctrl_code[0]}
C {devices/vsource.sym} 1430 -350 0 0 {name=V20 value=1.8}
C {devices/vsource.sym} 1100 -290 0 0 {name=V25 value=0}
C {devices/vsource.sym} 1210 -290 0 0 {name=V26 value=0}
C {devices/vsource.sym} 1320 -290 0 0 {name=V27 value=0}
C {devices/lab_pin.sym} 1050 -320 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1320 -350 0 0 {name=V28 value=1.8}
C {devices/vsource.sym} 1210 -350 0 0 {name=V29 value=1.8}
C {devices/vsource.sym} 1100 -350 0 0 {name=V30 value=1.8}
C {devices/vsource.sym} 1430 -290 0 0 {name=V35 value=0}
C {devices/noconn.sym} 1100 -380 2 0 {name=l67}
C {devices/noconn.sym} 1210 -380 2 0 {name=l68}
C {devices/noconn.sym} 1320 -260 2 0 {name=l69}
C {devices/noconn.sym} 1430 -260 2 0 {name=l70}
C {devices/vdd.sym} 1980 -860 1 0 {name=l71 lab=cap_ctrl_code[7]}
C {devices/vdd.sym} 2090 -860 1 0 {name=l72 lab=cap_ctrl_code[6]}
C {devices/vdd.sym} 2200 -980 1 0 {name=l73 lab=cap_ctrl_code[5]}
C {devices/vdd.sym} 2310 -980 1 0 {name=l74 lab=cap_ctrl_code[4]}
C {devices/vdd.sym} 2420 -860 1 0 {name=l75 lab=cap_ctrl_code[3]}
C {devices/vdd.sym} 2530 -860 1 0 {name=l76 lab=cap_ctrl_code[2]}
C {devices/vdd.sym} 2640 -980 1 0 {name=l77 lab=cap_ctrl_code[1]}
C {devices/vdd.sym} 2750 -980 1 0 {name=l78 lab=cap_ctrl_code[0]}
C {devices/vsource.sym} 2750 -950 0 0 {name=V61 value=1.8}
C {devices/vsource.sym} 1980 -890 0 0 {name=V62 value=0}
C {devices/vsource.sym} 2090 -890 0 0 {name=V63 value=0}
C {devices/vsource.sym} 2200 -890 0 0 {name=V64 value=0}
C {devices/vsource.sym} 2310 -890 0 0 {name=V65 value=0}
C {devices/vsource.sym} 2420 -890 0 0 {name=V66 value=0}
C {devices/vsource.sym} 2530 -890 0 0 {name=V67 value=0}
C {devices/vsource.sym} 2640 -890 0 0 {name=V68 value=0}
C {devices/vsource.sym} 2640 -950 0 0 {name=V69 value=1.8}
C {devices/vsource.sym} 2530 -950 0 0 {name=V70 value=1.8}
C {devices/vsource.sym} 2420 -950 0 0 {name=V71 value=1.8}
C {devices/vsource.sym} 2310 -950 0 0 {name=V72 value=1.8}
C {devices/vsource.sym} 2200 -950 0 0 {name=V73 value=1.8}
C {devices/vsource.sym} 2090 -950 0 0 {name=V74 value=1.8}
C {devices/vsource.sym} 1980 -950 0 0 {name=V75 value=1.8}
C {devices/vsource.sym} 2750 -890 0 0 {name=V76 value=0}
C {devices/noconn.sym} 1980 -980 2 0 {name=l79}
C {devices/noconn.sym} 2090 -980 2 0 {name=l80}
C {devices/noconn.sym} 2200 -860 2 0 {name=l81}
C {devices/noconn.sym} 2310 -860 2 0 {name=l82}
C {devices/noconn.sym} 2420 -980 2 0 {name=l83}
C {devices/noconn.sym} 2530 -980 2 0 {name=l84}
C {devices/noconn.sym} 2640 -860 2 0 {name=l85}
C {devices/noconn.sym} 2750 -860 2 0 {name=l86}
C {devices/vdd.sym} 1710 -560 1 0 {name=l2 lab=retimer_delay_cap_ctrl_code[3]}
C {devices/vdd.sym} 1820 -560 1 0 {name=l27 lab=retimer_delay_cap_ctrl_code[2]}
C {devices/vdd.sym} 1930 -680 1 0 {name=l28 lab=retimer_delay_cap_ctrl_code[1]}
C {devices/vdd.sym} 2040 -680 1 0 {name=l35 lab=retimer_delay_cap_ctrl_code[0]}
C {devices/vsource.sym} 2040 -650 0 0 {name=V5 value=1.8}
C {devices/vsource.sym} 1710 -590 0 0 {name=V6 value=0}
C {devices/vsource.sym} 1820 -590 0 0 {name=V7 value=0}
C {devices/vsource.sym} 1930 -590 0 0 {name=V8 value=0}
C {devices/lab_pin.sym} 1660 -620 0 0 {name=p78 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1930 -650 0 0 {name=V15 value=1.8}
C {devices/vsource.sym} 1820 -650 0 0 {name=V16 value=1.8}
C {devices/vsource.sym} 1710 -650 0 0 {name=V17 value=1.8}
C {devices/vsource.sym} 2040 -590 0 0 {name=V18 value=0}
C {devices/noconn.sym} 1710 -680 2 0 {name=l58}
C {devices/noconn.sym} 1820 -680 2 0 {name=l63}
C {devices/noconn.sym} 1930 -560 2 0 {name=l64}
C {devices/noconn.sym} 2040 -560 2 0 {name=l65}
C {devices/code.sym} 190 -270 0 0 {name=spice2 only_toplevel=false value="

.OPTIONS savecurrents
.tran 40ps 500ns
.save all
.control
	run
	*setplot tran1
	*linearize V(out)
	*set specwindow=blackman
	*fft V(out)
	*plot db(V(out))
	*plot mag(V(out))
	plot V(x1.sample_clk) V(vip) V(vin) V(vip)-V(vin)+0.9 V(x1.tah_vp) V(x1.tah_vn) V(x1.tah_vp)-V(x1.tah_vn)
	plot V(vip) V(vin) V(out) 
	plot V(\\"result[0]\\")-4 V(\\"result[1]\\")-2 V(\\"result[2]\\") V(\\"result[3]\\")+2 V(\\"result[4]\\")+4 V(\\"result[5]\\")+6 V(\\"result[6]\\")+8 V(\\"result[7]\\")+10
.endc
"}
C {devices/vdd.sym} 370 -240 0 0 {name=l92 lab=VDD}
C {devices/gnd.sym} 370 -180 0 0 {name=l93 lab=GND}
C {devices/vsource.sym} 370 -210 0 0 {name=V33 value=1.8}
C {devices/vdd.sym} 420 -240 0 0 {name=l94 lab=VSS}
C {devices/gnd.sym} 420 -180 0 0 {name=l95 lab=GND}
C {devices/vsource.sym} 420 -210 0 0 {name=V34 value=0}
C {devices/lab_pin.sym} 170 -620 0 0 {name=p68 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 170 -600 0 0 {name=p77 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 60 -640 2 0 {name=l90 lab=GND}
C {devices/gnd.sym} 60 -500 0 0 {name=l91 lab=GND}
C {devices/vsource.sym} 60 -530 0 1 {name=V31 value="sin(0.9 -0.9 2451171 0 0 0)"}
C {devices/vsource.sym} 60 -610 2 0 {name=V32 value="sin(0.9 0.9 2451171 0 0 0)"}
C {devices/vsource.sym} 480 -210 0 0 {name=V60 value="PULSE(0 1.8 50p 10p 10p 50n 100n)"}
C {devices/gnd.sym} 480 -180 0 0 {name=l57 lab=GND}
C {devices/lab_pin.sym} 480 -240 2 0 {name=p75 sig_type=std_logic lab=EXT_CLK}
C {devices/lab_pin.sym} 170 -540 2 1 {name=p1 sig_type=std_logic lab=EXT_CLK}
C {devices/lab_pin.sym} 170 -520 0 0 {name=p71 sig_type=std_logic lab=sel_bit[0:1]}
C {devices/lab_pin.sym} 170 -420 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 170 -400 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 170 -440 0 0 {name=p15 sig_type=std_logic lab=retimer_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 170 -380 0 0 {name=p79 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 170 -480 0 0 {name=p12 sig_type=std_logic lab=async_resetb_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 170 -460 0 0 {name=p13 sig_type=std_logic lab=async_setb_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 170 -500 0 0 {name=p72 sig_type=std_logic lab=cap_ctrl_code[0:15]}
C {/foss/designs/hgu_goss/hgu/xschem/hgu_DAC.sym} 770 -490 0 0 {name=x2}
C {devices/lab_pin.sym} 620 -560 0 0 {name=p2 sig_type=std_logic lab=result[7]}
C {devices/lab_pin.sym} 620 -540 0 0 {name=p3 sig_type=std_logic lab=result[6]}
C {devices/lab_pin.sym} 620 -520 0 0 {name=p4 sig_type=std_logic lab=result[5]}
C {devices/lab_pin.sym} 620 -500 0 0 {name=p7 sig_type=std_logic lab=result[4]}
C {devices/lab_pin.sym} 620 -480 0 0 {name=p8 sig_type=std_logic lab=result[3]}
C {devices/lab_pin.sym} 620 -460 0 0 {name=p9 sig_type=std_logic lab=result[2]}
C {devices/lab_pin.sym} 620 -440 0 0 {name=p10 sig_type=std_logic lab=result[1]}
C {devices/lab_pin.sym} 620 -420 0 0 {name=p11 sig_type=std_logic lab=result[0]}
C {devices/lab_pin.sym} 680 -370 3 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 620 -580 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 790 -500 1 0 {name=p17 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 130 -580 0 0 {name=p18 sig_type=std_logic lab=vip}
C {devices/lab_pin.sym} 130 -560 0 0 {name=p19 sig_type=std_logic lab=vin}
