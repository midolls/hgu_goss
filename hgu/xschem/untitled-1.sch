v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 510 -880 580 -880 {
lab=vin}
N 510 -920 580 -920 {
lab=vip}
N 1660 -610 2130 -610 {
lab=VSS}
N 1660 -310 2130 -310 {
lab=VSS}
N 2530 -910 3450 -910 {
lab=VSS}
N 1650 -910 2530 -910 {
lab=VSS}
N 2270 -610 2740 -610 {
lab=VSS}
C {devices/lab_wire.sym} 570 -920 0 0 {name=p29 sig_type=std_logic lab=vip

}
C {devices/lab_wire.sym} 570 -880 0 0 {name=p32 sig_type=std_logic lab=vin

}
C {devices/gnd.sym} 270 -980 2 0 {name=l23 lab=GND}
C {devices/gnd.sym} 270 -820 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 1250 -950 2 0 {name=p67 sig_type=std_logic lab=result[0:7]}
C {devices/vdd.sym} 1710 -850 1 0 {name=l4 lab=cap_ctrl_code[15]}
C {devices/vdd.sym} 1820 -850 1 0 {name=l6 lab=cap_ctrl_code[14]}
C {devices/vdd.sym} 1930 -970 1 0 {name=l19 lab=cap_ctrl_code[13]}
C {devices/vdd.sym} 2040 -970 1 0 {name=l29 lab=cap_ctrl_code[12]}
C {devices/vdd.sym} 2150 -850 1 0 {name=l30 lab=cap_ctrl_code[11]}
C {devices/vdd.sym} 2260 -850 1 0 {name=l31 lab=cap_ctrl_code[10]}
C {devices/vdd.sym} 2370 -970 1 0 {name=l32 lab=cap_ctrl_code[9]}
C {devices/vdd.sym} 2480 -970 1 0 {name=l33 lab=cap_ctrl_code[8]}
C {devices/vsource.sym} 2480 -940 0 0 {name=V36 value=1.8}
C {devices/vsource.sym} 1710 -880 0 0 {name=V37 value=0}
C {devices/vsource.sym} 1820 -880 0 0 {name=V38 value=0}
C {devices/vsource.sym} 1930 -880 0 0 {name=V39 value=0}
C {devices/vsource.sym} 2040 -880 0 0 {name=V40 value=0}
C {devices/vsource.sym} 2150 -880 0 0 {name=V41 value=0}
C {devices/vsource.sym} 2260 -880 0 0 {name=V42 value=0}
C {devices/vsource.sym} 2370 -880 0 0 {name=V43 value=0}
C {devices/lab_pin.sym} 1650 -910 0 0 {name=p73 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 2370 -940 0 0 {name=V44 value=1.8}
C {devices/vsource.sym} 2260 -940 0 0 {name=V45 value=1.8}
C {devices/vsource.sym} 2150 -940 0 0 {name=V46 value=1.8}
C {devices/vsource.sym} 2040 -940 0 0 {name=V47 value=1.8}
C {devices/vsource.sym} 1930 -940 0 0 {name=V48 value=1.8}
C {devices/vsource.sym} 1820 -940 0 0 {name=V49 value=1.8}
C {devices/vsource.sym} 1710 -940 0 0 {name=V50 value=1.8}
C {devices/vsource.sym} 2480 -880 0 0 {name=V51 value=0}
C {devices/noconn.sym} 1710 -970 2 0 {name=l34}
C {devices/noconn.sym} 1820 -970 2 0 {name=l36}
C {devices/noconn.sym} 1930 -850 2 0 {name=l37}
C {devices/noconn.sym} 2040 -850 2 0 {name=l38}
C {devices/noconn.sym} 2150 -970 2 0 {name=l39}
C {devices/noconn.sym} 2260 -970 2 0 {name=l40}
C {devices/noconn.sym} 2370 -850 2 0 {name=l41}
C {devices/noconn.sym} 2480 -850 2 0 {name=l42}
C {devices/code.sym} 100 -250 0 0 {name=spice1 only_toplevel=false value="

.OPTIONS savecurrents
.tran 10ps 250ns

.control
	run
	plot V(sample_clk) V(vip) V(vin) V(vip)-V(vin)+0.9 V(tah_vp) V(tah_vn) V(tah_vp)-V(tah_vn) V(vip)-V(vin)

	
.endc
.save all

"}
C {devices/vdd.sym} 280 -220 0 0 {name=l43 lab=VDD}
C {devices/gnd.sym} 280 -160 0 0 {name=l44 lab=GND}
C {devices/vsource.sym} 280 -190 0 0 {name=V52 value=1.8}
C {devices/vdd.sym} 330 -220 0 0 {name=l45 lab=VSS}
C {devices/gnd.sym} 330 -160 0 0 {name=l46 lab=GND}
C {devices/vsource.sym} 330 -190 0 0 {name=V53 value=0}
C {devices/vsource.sym} 410 -190 0 0 {name=V60 value="PULSE(0 1.8 50p 10p 10p 50n 100n)"}
C {devices/gnd.sym} 410 -160 0 0 {name=l57 lab=GND}
C {devices/lab_pin.sym} 410 -220 2 0 {name=p75 sig_type=std_logic lab=EXT_CLK}
C {devices/lab_pin.sym} 1700 -120 0 0 {name=p120 sig_type=std_logic lab=sel_bit[0]}
C {devices/lab_pin.sym} 1700 -90 0 0 {name=p74 sig_type=std_logic lab=sel_bit[1]}
C {devices/vsource.sym} 1730 -90 3 0 {name=V58 value=1.8}
C {devices/gnd.sym} 1760 -90 0 0 {name=l55 lab=GND}
C {devices/vsource.sym} 1730 -120 3 0 {name=V59 value=1.8}
C {devices/gnd.sym} 1760 -120 0 0 {name=l56 lab=GND}
C {devices/vsource.sym} 270 -850 0 1 {name=V2 value="PULSE(1.8 0.9 0 114n 114n 10p 228n)"}
C {devices/vsource.sym} 270 -950 2 0 {name=V4 value="PULSE(0.9 1.8 0 114n 114n 10p 228n)"}
C {devices/vdd.sym} 1710 -550 1 0 {name=l11 lab=async_resetb_delay_cap_ctrl_code[3]}
C {devices/vdd.sym} 1820 -550 1 0 {name=l12 lab=async_resetb_delay_cap_ctrl_code[2]}
C {devices/vdd.sym} 1930 -670 1 0 {name=l13 lab=async_resetb_delay_cap_ctrl_code[1]}
C {devices/vdd.sym} 2040 -670 1 0 {name=l14 lab=async_resetb_delay_cap_ctrl_code[0]}
C {devices/vsource.sym} 2040 -640 0 0 {name=V3 value=1.8}
C {devices/vsource.sym} 1710 -580 0 0 {name=V9 value=0}
C {devices/vsource.sym} 1820 -580 0 0 {name=V10 value=0}
C {devices/vsource.sym} 1930 -580 0 0 {name=V11 value=0}
C {devices/lab_pin.sym} 1660 -610 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1930 -640 0 0 {name=V12 value=1.8}
C {devices/vsource.sym} 1820 -640 0 0 {name=V13 value=1.8}
C {devices/vsource.sym} 1710 -640 0 0 {name=V14 value=1.8}
C {devices/vsource.sym} 2040 -580 0 0 {name=V19 value=0}
C {devices/noconn.sym} 1710 -670 2 0 {name=l20}
C {devices/noconn.sym} 1820 -670 2 0 {name=l21}
C {devices/noconn.sym} 1930 -550 2 0 {name=l22}
C {devices/noconn.sym} 2040 -550 2 0 {name=l24}
C {devices/vdd.sym} 1710 -250 1 0 {name=l59 lab=async_setb_delay_cap_ctrl_code[3]}
C {devices/vdd.sym} 1820 -250 1 0 {name=l60 lab=async_setb_delay_cap_ctrl_code[2]}
C {devices/vdd.sym} 1930 -370 1 0 {name=l61 lab=async_setb_delay_cap_ctrl_code[1]}
C {devices/vdd.sym} 2040 -370 1 0 {name=l62 lab=async_setb_delay_cap_ctrl_code[0]}
C {devices/vsource.sym} 2040 -340 0 0 {name=V20 value=1.8}
C {devices/vsource.sym} 1710 -280 0 0 {name=V25 value=0}
C {devices/vsource.sym} 1820 -280 0 0 {name=V26 value=0}
C {devices/vsource.sym} 1930 -280 0 0 {name=V27 value=0}
C {devices/lab_pin.sym} 1660 -310 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1930 -340 0 0 {name=V28 value=1.8}
C {devices/vsource.sym} 1820 -340 0 0 {name=V29 value=1.8}
C {devices/vsource.sym} 1710 -340 0 0 {name=V30 value=1.8}
C {devices/vsource.sym} 2040 -280 0 0 {name=V35 value=0}
C {devices/noconn.sym} 1710 -370 2 0 {name=l67}
C {devices/noconn.sym} 1820 -370 2 0 {name=l68}
C {devices/noconn.sym} 1930 -250 2 0 {name=l69}
C {devices/noconn.sym} 2040 -250 2 0 {name=l70}
C {devices/vdd.sym} 2590 -850 1 0 {name=l71 lab=cap_ctrl_code[7]}
C {devices/vdd.sym} 2700 -850 1 0 {name=l72 lab=cap_ctrl_code[6]}
C {devices/vdd.sym} 2810 -970 1 0 {name=l73 lab=cap_ctrl_code[5]}
C {devices/vdd.sym} 2920 -970 1 0 {name=l74 lab=cap_ctrl_code[4]}
C {devices/vdd.sym} 3030 -850 1 0 {name=l75 lab=cap_ctrl_code[3]}
C {devices/vdd.sym} 3140 -850 1 0 {name=l76 lab=cap_ctrl_code[2]}
C {devices/vdd.sym} 3250 -970 1 0 {name=l77 lab=cap_ctrl_code[1]}
C {devices/vdd.sym} 3360 -970 1 0 {name=l78 lab=cap_ctrl_code[0]}
C {devices/vsource.sym} 3360 -940 0 0 {name=V61 value=1.8}
C {devices/vsource.sym} 2590 -880 0 0 {name=V62 value=0}
C {devices/vsource.sym} 2700 -880 0 0 {name=V63 value=0}
C {devices/vsource.sym} 2810 -880 0 0 {name=V64 value=0}
C {devices/vsource.sym} 2920 -880 0 0 {name=V65 value=0}
C {devices/vsource.sym} 3030 -880 0 0 {name=V66 value=0}
C {devices/vsource.sym} 3140 -880 0 0 {name=V67 value=0}
C {devices/vsource.sym} 3250 -880 0 0 {name=V68 value=0}
C {devices/vsource.sym} 3250 -940 0 0 {name=V69 value=1.8}
C {devices/vsource.sym} 3140 -940 0 0 {name=V70 value=1.8}
C {devices/vsource.sym} 3030 -940 0 0 {name=V71 value=1.8}
C {devices/vsource.sym} 2920 -940 0 0 {name=V72 value=1.8}
C {devices/vsource.sym} 2810 -940 0 0 {name=V73 value=1.8}
C {devices/vsource.sym} 2700 -940 0 0 {name=V74 value=1.8}
C {devices/vsource.sym} 2590 -940 0 0 {name=V75 value=1.8}
C {devices/vsource.sym} 3360 -880 0 0 {name=V76 value=0}
C {devices/noconn.sym} 2590 -970 2 0 {name=l79}
C {devices/noconn.sym} 2700 -970 2 0 {name=l80}
C {devices/noconn.sym} 2810 -850 2 0 {name=l81}
C {devices/noconn.sym} 2920 -850 2 0 {name=l82}
C {devices/noconn.sym} 3030 -970 2 0 {name=l83}
C {devices/noconn.sym} 3140 -970 2 0 {name=l84}
C {devices/noconn.sym} 3250 -850 2 0 {name=l85}
C {devices/noconn.sym} 3360 -850 2 0 {name=l86}
C {devices/simulator_commands_shown.sym} 790 -510 0 0 {name=COMMANDS
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
C {devices/vdd.sym} 2320 -550 1 0 {name=l2 lab=retimer_delay_cap_ctrl_code[3]}
C {devices/vdd.sym} 2430 -550 1 0 {name=l27 lab=retimer_delay_cap_ctrl_code[2]}
C {devices/vdd.sym} 2540 -670 1 0 {name=l28 lab=retimer_delay_cap_ctrl_code[1]}
C {devices/vdd.sym} 2650 -670 1 0 {name=l35 lab=retimer_delay_cap_ctrl_code[0]}
C {devices/vsource.sym} 2650 -640 0 0 {name=V5 value=1.8}
C {devices/vsource.sym} 2320 -580 0 0 {name=V6 value=0}
C {devices/vsource.sym} 2430 -580 0 0 {name=V7 value=0}
C {devices/vsource.sym} 2540 -580 0 0 {name=V8 value=0}
C {devices/lab_pin.sym} 2270 -610 0 0 {name=p78 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 2540 -640 0 0 {name=V15 value=1.8}
C {devices/vsource.sym} 2430 -640 0 0 {name=V16 value=1.8}
C {devices/vsource.sym} 2320 -640 0 0 {name=V17 value=1.8}
C {devices/vsource.sym} 2650 -580 0 0 {name=V18 value=0}
C {devices/noconn.sym} 2320 -670 2 0 {name=l58}
C {devices/noconn.sym} 2430 -670 2 0 {name=l63}
C {devices/noconn.sym} 2540 -550 2 0 {name=l64}
C {devices/noconn.sym} 2650 -550 2 0 {name=l65}
C {devices/gnd.sym} 350 -980 2 0 {name=l66 lab=GND}
C {devices/gnd.sym} 350 -820 0 0 {name=l87 lab=GND}
C {devices/vsource.sym} 350 -850 0 1 {name=V21 value=1.125}
C {devices/vsource.sym} 350 -950 2 0 {name=V22 value=1.575}
C {devices/gnd.sym} 430 -980 2 0 {name=l88 lab=GND}
C {devices/gnd.sym} 430 -820 0 0 {name=l89 lab=GND}
C {devices/vsource.sym} 430 -850 0 1 {name=V23 value=0.675}
C {devices/vsource.sym} 430 -950 2 0 {name=V24 value=1.125}
C {devices/gnd.sym} 510 -980 2 0 {name=l90 lab=GND}
C {devices/gnd.sym} 510 -820 0 0 {name=l91 lab=GND}
C {devices/vsource.sym} 510 -850 0 1 {name=V31 value=0.9}
C {devices/vsource.sym} 510 -950 2 0 {name=V32 value=0.9}
C {/foss/designs/hgu_goss/hgu/xschem/hgu_top_block.sym} 1100 -830 0 0 {name=x1}
C {devices/lab_pin.sym} 950 -830 0 0 {name=p72 sig_type=std_logic lab=cap_ctrl_code[0:15]}
C {devices/lab_pin.sym} 950 -810 0 0 {name=p12 sig_type=std_logic lab=async_resetb_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 950 -790 0 0 {name=p13 sig_type=std_logic lab=async_setb_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 950 -770 0 0 {name=p15 sig_type=std_logic lab=retimer_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 950 -750 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 950 -730 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 950 -710 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 950 -950 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 950 -930 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 950 -870 2 1 {name=p8 sig_type=std_logic lab=EXT_CLK}
C {devices/lab_pin.sym} 950 -850 0 0 {name=p71 sig_type=std_logic lab=sel_bit[0:1]}
C {devices/lab_pin.sym} 950 -910 0 0 {name=p10 sig_type=std_logic lab=vip}
C {devices/lab_pin.sym} 950 -890 0 0 {name=p11 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 410 -510 2 0 {name=p9 sig_type=std_logic lab=VREF}
C {/foss/designs/hgu_goss/hgu/xschem/hgu_vgen_vref.sym} 270 -450 0 0 {name=x5}
C {devices/lab_pin.sym} 280 -510 2 1 {name=p14 sig_type=std_logic lab=EXT_CLK}
C {devices/lab_pin.sym} 340 -560 0 0 {name=p70 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 340 -460 0 0 {name=p16 sig_type=std_logic lab=VSS}
