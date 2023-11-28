v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {
	*plot V(sample_clk) V(vip) V(vin) V(vip)-V(vin)+0.9 V(tah_vp) V(tah_vn) V(tah_vp)-V(tah_vn) V(vip)-V(vin)
	*plot V(x1.sample_clk) V(vip) V(vin) V(vip)-V(vin)+0.9 V(x1.tah_vp) V(x1.tah_vn) V(x1.tah_vp)-V(x1.tah_vn) V(vip)-V(vin)
	** plot vdd/(1k+a*1k/(vdd-a))} -260 -670 0 0 0.4 0.4 {}
N 90 420 560 420 {
lab=VSS}
N 90 720 560 720 {
lab=VSS}
N 960 120 1880 120 {
lab=VSS}
N 80 120 960 120 {
lab=VSS}
N 700 420 1170 420 {
lab=VSS}
N -210 -260 150 -260 {
lab=vip}
N -210 -240 150 -240 {
lab=vin}
C {/foss/designs/hgu_goss/hgu/xschem/hgu_top_block.sym} 300 -180 0 0 {name=x1}
C {devices/vdd.sym} 140 180 1 0 {name=l4 lab=cap_ctrl_code[15]}
C {devices/vdd.sym} 250 180 1 0 {name=l6 lab=cap_ctrl_code[14]}
C {devices/vdd.sym} 360 60 1 0 {name=l19 lab=cap_ctrl_code[13]}
C {devices/vdd.sym} 470 60 1 0 {name=l29 lab=cap_ctrl_code[12]}
C {devices/vdd.sym} 580 180 1 0 {name=l30 lab=cap_ctrl_code[11]}
C {devices/vdd.sym} 690 180 1 0 {name=l31 lab=cap_ctrl_code[10]}
C {devices/vdd.sym} 800 60 1 0 {name=l32 lab=cap_ctrl_code[9]}
C {devices/vdd.sym} 910 60 1 0 {name=l33 lab=cap_ctrl_code[8]}
C {devices/vsource.sym} 910 90 0 0 {name=V36 value=1.8}
C {devices/vsource.sym} 140 150 0 0 {name=V37 value=0}
C {devices/vsource.sym} 250 150 0 0 {name=V38 value=0}
C {devices/vsource.sym} 360 150 0 0 {name=V39 value=0}
C {devices/vsource.sym} 470 150 0 0 {name=V40 value=0}
C {devices/vsource.sym} 580 150 0 0 {name=V41 value=0}
C {devices/vsource.sym} 690 150 0 0 {name=V42 value=0}
C {devices/vsource.sym} 800 150 0 0 {name=V43 value=0}
C {devices/lab_pin.sym} 80 120 0 0 {name=p73 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 800 90 0 0 {name=V44 value=1.8}
C {devices/vsource.sym} 690 90 0 0 {name=V45 value=1.8}
C {devices/vsource.sym} 580 90 0 0 {name=V46 value=1.8}
C {devices/vsource.sym} 470 90 0 0 {name=V47 value=1.8}
C {devices/vsource.sym} 360 90 0 0 {name=V48 value=1.8}
C {devices/vsource.sym} 250 90 0 0 {name=V49 value=1.8}
C {devices/vsource.sym} 140 90 0 0 {name=V50 value=1.8}
C {devices/vsource.sym} 910 150 0 0 {name=V51 value=0}
C {devices/noconn.sym} 140 60 2 0 {name=l34}
C {devices/noconn.sym} 250 60 2 0 {name=l36}
C {devices/noconn.sym} 360 180 2 0 {name=l37}
C {devices/noconn.sym} 470 180 2 0 {name=l38}
C {devices/noconn.sym} 580 60 2 0 {name=l39}
C {devices/noconn.sym} 690 60 2 0 {name=l40}
C {devices/noconn.sym} 800 180 2 0 {name=l41}
C {devices/noconn.sym} 910 180 2 0 {name=l42}
C {devices/vdd.sym} 480 -170 0 0 {name=l43 lab=VDD}
C {devices/gnd.sym} 480 -110 0 0 {name=l44 lab=GND}
C {devices/vsource.sym} 480 -140 0 0 {name=V52 value=1.8}
C {devices/vdd.sym} 530 -170 0 0 {name=l45 lab=VSS}
C {devices/gnd.sym} 530 -110 0 0 {name=l46 lab=GND}
C {devices/vsource.sym} 530 -140 0 0 {name=V53 value=0}
C {devices/lab_pin.sym} 130 910 0 0 {name=p120 sig_type=std_logic lab=sel_bit[0]}
C {devices/lab_pin.sym} 130 940 0 0 {name=p74 sig_type=std_logic lab=sel_bit[1]}
C {devices/vsource.sym} 160 940 3 0 {name=V58 value=1.8}
C {devices/gnd.sym} 190 940 0 0 {name=l55 lab=GND}
C {devices/vsource.sym} 160 910 3 0 {name=V59 value=1.8}
C {devices/gnd.sym} 190 910 0 0 {name=l56 lab=GND}
C {devices/vdd.sym} 140 480 1 0 {name=l11 lab=async_resetb_delay_cap_ctrl_code[3]}
C {devices/vdd.sym} 250 480 1 0 {name=l12 lab=async_resetb_delay_cap_ctrl_code[2]}
C {devices/vdd.sym} 360 360 1 0 {name=l13 lab=async_resetb_delay_cap_ctrl_code[1]}
C {devices/vdd.sym} 470 360 1 0 {name=l14 lab=async_resetb_delay_cap_ctrl_code[0]}
C {devices/vsource.sym} 470 390 0 0 {name=V3 value=1.8}
C {devices/vsource.sym} 140 450 0 0 {name=V9 value=0}
C {devices/vsource.sym} 250 450 0 0 {name=V10 value=0}
C {devices/vsource.sym} 360 450 0 0 {name=V11 value=0}
C {devices/lab_pin.sym} 90 420 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 360 390 0 0 {name=V12 value=1.8}
C {devices/vsource.sym} 250 390 0 0 {name=V13 value=1.8}
C {devices/vsource.sym} 140 390 0 0 {name=V14 value=1.8}
C {devices/vsource.sym} 470 450 0 0 {name=V19 value=0}
C {devices/noconn.sym} 140 360 2 0 {name=l20}
C {devices/noconn.sym} 250 360 2 0 {name=l21}
C {devices/noconn.sym} 360 480 2 0 {name=l22}
C {devices/noconn.sym} 470 480 2 0 {name=l24}
C {devices/vdd.sym} 140 780 1 0 {name=l59 lab=async_setb_delay_cap_ctrl_code[3]}
C {devices/vdd.sym} 250 780 1 0 {name=l60 lab=async_setb_delay_cap_ctrl_code[2]}
C {devices/vdd.sym} 360 660 1 0 {name=l61 lab=async_setb_delay_cap_ctrl_code[1]}
C {devices/vdd.sym} 470 660 1 0 {name=l62 lab=async_setb_delay_cap_ctrl_code[0]}
C {devices/vsource.sym} 470 690 0 0 {name=V20 value=1.8}
C {devices/vsource.sym} 140 750 0 0 {name=V25 value=0}
C {devices/vsource.sym} 250 750 0 0 {name=V26 value=0}
C {devices/vsource.sym} 360 750 0 0 {name=V27 value=0}
C {devices/lab_pin.sym} 90 720 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 360 690 0 0 {name=V28 value=1.8}
C {devices/vsource.sym} 250 690 0 0 {name=V29 value=1.8}
C {devices/vsource.sym} 140 690 0 0 {name=V30 value=1.8}
C {devices/vsource.sym} 470 750 0 0 {name=V35 value=0}
C {devices/noconn.sym} 140 660 2 0 {name=l67}
C {devices/noconn.sym} 250 660 2 0 {name=l68}
C {devices/noconn.sym} 360 780 2 0 {name=l69}
C {devices/noconn.sym} 470 780 2 0 {name=l70}
C {devices/vdd.sym} 1020 180 1 0 {name=l71 lab=cap_ctrl_code[7]}
C {devices/vdd.sym} 1130 180 1 0 {name=l72 lab=cap_ctrl_code[6]}
C {devices/vdd.sym} 1240 60 1 0 {name=l73 lab=cap_ctrl_code[5]}
C {devices/vdd.sym} 1350 60 1 0 {name=l74 lab=cap_ctrl_code[4]}
C {devices/vdd.sym} 1460 180 1 0 {name=l75 lab=cap_ctrl_code[3]}
C {devices/vdd.sym} 1570 180 1 0 {name=l76 lab=cap_ctrl_code[2]}
C {devices/vdd.sym} 1680 60 1 0 {name=l77 lab=cap_ctrl_code[1]}
C {devices/vdd.sym} 1790 60 1 0 {name=l78 lab=cap_ctrl_code[0]}
C {devices/vsource.sym} 1790 90 0 0 {name=V61 value=1.8}
C {devices/vsource.sym} 1020 150 0 0 {name=V62 value=0}
C {devices/vsource.sym} 1130 150 0 0 {name=V63 value=0}
C {devices/vsource.sym} 1240 150 0 0 {name=V64 value=0}
C {devices/vsource.sym} 1350 150 0 0 {name=V65 value=0}
C {devices/vsource.sym} 1460 150 0 0 {name=V66 value=0}
C {devices/vsource.sym} 1570 150 0 0 {name=V67 value=0}
C {devices/vsource.sym} 1680 150 0 0 {name=V68 value=0}
C {devices/vsource.sym} 1680 90 0 0 {name=V69 value=1.8}
C {devices/vsource.sym} 1570 90 0 0 {name=V70 value=1.8}
C {devices/vsource.sym} 1460 90 0 0 {name=V71 value=1.8}
C {devices/vsource.sym} 1350 90 0 0 {name=V72 value=1.8}
C {devices/vsource.sym} 1240 90 0 0 {name=V73 value=1.8}
C {devices/vsource.sym} 1130 90 0 0 {name=V74 value=1.8}
C {devices/vsource.sym} 1020 90 0 0 {name=V75 value=1.8}
C {devices/vsource.sym} 1790 150 0 0 {name=V76 value=0}
C {devices/noconn.sym} 1020 60 2 0 {name=l79}
C {devices/noconn.sym} 1130 60 2 0 {name=l80}
C {devices/noconn.sym} 1240 180 2 0 {name=l81}
C {devices/noconn.sym} 1350 180 2 0 {name=l82}
C {devices/noconn.sym} 1460 60 2 0 {name=l83}
C {devices/noconn.sym} 1570 60 2 0 {name=l84}
C {devices/noconn.sym} 1680 180 2 0 {name=l85}
C {devices/noconn.sym} 1790 180 2 0 {name=l86}
C {devices/vdd.sym} 750 480 1 0 {name=l2 lab=retimer_delay_cap_ctrl_code[3]}
C {devices/vdd.sym} 860 480 1 0 {name=l27 lab=retimer_delay_cap_ctrl_code[2]}
C {devices/vdd.sym} 970 360 1 0 {name=l28 lab=retimer_delay_cap_ctrl_code[1]}
C {devices/vdd.sym} 1080 360 1 0 {name=l35 lab=retimer_delay_cap_ctrl_code[0]}
C {devices/vsource.sym} 1080 390 0 0 {name=V5 value=1.8}
C {devices/vsource.sym} 750 450 0 0 {name=V6 value=0}
C {devices/vsource.sym} 860 450 0 0 {name=V7 value=0}
C {devices/vsource.sym} 970 450 0 0 {name=V8 value=0}
C {devices/lab_pin.sym} 700 420 0 0 {name=p78 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 970 390 0 0 {name=V15 value=1.8}
C {devices/vsource.sym} 860 390 0 0 {name=V16 value=1.8}
C {devices/vsource.sym} 750 390 0 0 {name=V17 value=1.8}
C {devices/vsource.sym} 1080 450 0 0 {name=V18 value=0}
C {devices/noconn.sym} 750 360 2 0 {name=l58}
C {devices/noconn.sym} 860 360 2 0 {name=l63}
C {devices/noconn.sym} 970 480 2 0 {name=l64}
C {devices/noconn.sym} 1080 480 2 0 {name=l65}
C {devices/lab_pin.sym} 150 -180 0 0 {name=p72 sig_type=std_logic lab=cap_ctrl_code[0:15]}
C {devices/lab_pin.sym} 150 -160 0 0 {name=p12 sig_type=std_logic lab=async_resetb_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 150 -140 0 0 {name=p13 sig_type=std_logic lab=async_setb_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 150 -100 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 150 -80 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 150 -120 0 0 {name=p15 sig_type=std_logic lab=retimer_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 150 -60 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} -170 30 0 0 {name=l57 lab=GND}
C {devices/lab_pin.sym} -170 -30 2 0 {name=p75 sig_type=std_logic lab=EXT_CLK}
C {devices/lab_pin.sym} 150 -220 2 1 {name=p2 sig_type=std_logic lab=EXT_CLK}
C {devices/lab_pin.sym} 150 -200 0 0 {name=p71 sig_type=std_logic lab=sel_bit[0:1]}
C {devices/lab_pin.sym} 150 -300 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 150 -280 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -210 -320 2 0 {name=l90 lab=GND}
C {devices/gnd.sym} -210 -180 0 0 {name=l91 lab=GND}
C {devices/vsource.sym} -210 -210 0 1 {name=V31 value=0.9}
C {devices/vsource.sym} -210 -290 2 0 {name=V32 value=0.9}
C {devices/lab_pin.sym} 450 -300 2 0 {name=p67 sig_type=std_logic lab=result[0:7]}
C {devices/code.sym} -210 340 0 0 {name=spice1 only_toplevel=false value="

.tran 10ps 250ns

.control
	run
	let pow = i(v52) \\* v(vdd) \\* -1
	meas tran sar_adc_avg_pow avg pow from=150n to=250n
.endc
.save all

"}
C {devices/simulator_commands_shown.sym} 10 -480 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.include /foss/designs/hgu_goss/hgu/mag/hgu_cdac_unit.spice
"}
C {devices/lab_pin.sym} -210 -260 0 0 {name=p7 sig_type=std_logic lab=vip}
C {devices/lab_pin.sym} -210 -240 0 0 {name=p8 sig_type=std_logic lab=vin}
C {devices/vsource.sym} -170 0 0 0 {name=V1 value="PULSE(1.8 0 50p 10p 10p 50n 100n)"}
