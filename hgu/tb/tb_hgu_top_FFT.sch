v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 380 -1020 490 -1020 {lab=vip}
N 380 -1000 490 -1000 {lab=vin}
N 1480 -410 1480 -350 {
lab=GND}
N 1420 -410 1420 -350 {
lab=GND}
N 900 -1060 900 -1020 {
lab=result[0:7]}
N 1420 -1000 2140 -1000 {
lab=tie_lo2}
N 1420 -700 1530 -700 {
lab=tie_lo1}
N 1200 -1020 1220 -1020 {
lab=#net1}
N 790 -1060 900 -1060 {
lab=result[0:7]}
N 1420 -1300 1530 -1300 {
lab=tie_lo3}
N 1860 -1300 1970 -1300 {
lab=tie_lo4}
N 2300 -1300 2410 -1300 {
lab=tie_lo5}
N 2740 -1300 2850 -1300 {
lab=tie_lo6}
C {devices/code.sym} 520 -550 0 0 {name=spice2 only_toplevel=false value="

.OPTIONS savecurrents
.tran 40ps 500ns
.save vip vin out \\"result[0]"\\ \\"result[1]"\\ \\"result[2]"\\ \\"result[3]"\\ \\"result[4]"\\ \\"result[5]"\\ \\"result[6]"\\ \\"result[7]"\\
.control
	run
	plot V(\\"result[0]\\")-4 V(\\"result[1]\\")-2 V(\\"result[2]\\") V(\\"result[3]\\")+2 V(\\"result[4]\\")+4 V(\\"result[5]\\")+6 V(\\"result[6]\\")+8 V(\\"result[7]\\")+10
	plot V(vip) V(vin) V(out) 
	setplot tran1
	linearize V(out)
	set specwindow=hanning
	fft V(out)

	plot mag(V(out))
	plot db(V(out))
	
	*plot V(x1.sample_clk) V(vip) V(vin) V(vip)-V(vin)+0.9 V(x1.tah_vp) V(x1.tah_vn) V(x1.tah_vp)-V(x1.tah_vn)
	*plot V(\\"result[0]\\")-4 V(\\"result[1]\\")-2 V(\\"result[2]\\") V(\\"result[3]\\")+2 V(\\"result[4]\\")+4 V(\\"result[5]\\")+6 V(\\"result[6]\\")+8 V(\\"result[7]\\")+10
.endc
"}
C {/foss/designs/hgu_goss/hgu/xschem/hgu_top_block.sym} 640 -940 0 0 {name=x1}
C {devices/lab_pin.sym} 790 -1060 2 0 {name=p67 sig_type=std_logic lab=result[0:7]}
C {devices/capa.sym} 1280 -990 0 0 {name=C2
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {devices/simulator_commands_shown.sym} 460 -1400 0 0 {name=COMMANDS
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
.include /foss/designs/hgu_goss/hgu/spice/hgu_clk_sample_flat.spice
.include /foss/designs/hgu_goss/hgu/spice/hgu_cdac_sw_buffer_flat_RC.spice

.include /foss/designs/hgu_goss/hgu/spice/hgu_sarlogic_flat_RC.spice
.include /foss/designs/hgu_goss/hgu/spice/hgu_cdac_half_flat.mag.spice
"}
C {devices/vdd.sym} 1420 -1240 1 0 {name=l4 lab=cap_ctrl_code[15]}
C {devices/vdd.sym} 1530 -1240 1 0 {name=l6 lab=cap_ctrl_code[14]}
C {devices/vdd.sym} 1640 -1270 1 0 {name=l19 lab=cap_ctrl_code[13]}
C {devices/vdd.sym} 1750 -1270 1 0 {name=l29 lab=cap_ctrl_code[12]}
C {devices/vdd.sym} 1860 -1240 1 0 {name=l30 lab=cap_ctrl_code[11]}
C {devices/vdd.sym} 1970 -1240 1 0 {name=l31 lab=cap_ctrl_code[10]}
C {devices/vdd.sym} 2080 -1270 1 0 {name=l32 lab=cap_ctrl_code[9]}
C {devices/vdd.sym} 2190 -1270 1 0 {name=l33 lab=cap_ctrl_code[8]}
C {devices/gnd.sym} 1530 -350 0 0 {name=l55 lab=GND}
C {devices/gnd.sym} 1590 -350 0 0 {name=l56 lab=GND}
C {devices/vdd.sym} 1420 -940 1 0 {name=l11 lab=async_resetb_delay_cap_ctrl_code[3]}
C {devices/vdd.sym} 1530 -940 1 0 {name=l12 lab=async_resetb_delay_cap_ctrl_code[2]}
C {devices/vdd.sym} 1640 -960 1 0 {name=l13 lab=async_resetb_delay_cap_ctrl_code[1]}
C {devices/vdd.sym} 1750 -960 1 0 {name=l14 lab=async_resetb_delay_cap_ctrl_code[0]}
C {devices/vdd.sym} 1420 -640 1 0 {name=l59 lab=async_setb_delay_cap_ctrl_code[3]}
C {devices/vdd.sym} 1530 -640 1 0 {name=l60 lab=async_setb_delay_cap_ctrl_code[2]}
C {devices/vdd.sym} 1630 -720 1 0 {name=l61 lab=async_setb_delay_cap_ctrl_code[1]}
C {devices/vdd.sym} 1740 -720 1 0 {name=l62 lab=async_setb_delay_cap_ctrl_code[0]}
C {devices/vdd.sym} 2300 -1240 1 0 {name=l71 lab=cap_ctrl_code[7]}
C {devices/vdd.sym} 2410 -1240 1 0 {name=l72 lab=cap_ctrl_code[6]}
C {devices/vdd.sym} 2520 -1270 1 0 {name=l73 lab=cap_ctrl_code[5]}
C {devices/vdd.sym} 2630 -1270 1 0 {name=l74 lab=cap_ctrl_code[4]}
C {devices/vdd.sym} 2740 -1240 1 0 {name=l75 lab=cap_ctrl_code[3]}
C {devices/vdd.sym} 2850 -1240 1 0 {name=l76 lab=cap_ctrl_code[2]}
C {devices/vdd.sym} 2960 -1270 1 0 {name=l77 lab=cap_ctrl_code[1]}
C {devices/vdd.sym} 3070 -1270 1 0 {name=l78 lab=cap_ctrl_code[0]}
C {devices/vdd.sym} 2030 -940 1 0 {name=l2 lab=retimer_delay_cap_ctrl_code[3]}
C {devices/vdd.sym} 2140 -940 1 0 {name=l27 lab=retimer_delay_cap_ctrl_code[2]}
C {devices/vdd.sym} 2250 -960 1 0 {name=l28 lab=retimer_delay_cap_ctrl_code[1]}
C {devices/vdd.sym} 2360 -960 1 0 {name=l35 lab=retimer_delay_cap_ctrl_code[0]}
C {devices/vdd.sym} 690 -680 0 0 {name=l92 lab=VDD}
C {devices/gnd.sym} 690 -620 0 0 {name=l93 lab=GND}
C {devices/vsource.sym} 690 -650 0 0 {name=V33 value=1.8}
C {devices/vdd.sym} 740 -680 0 0 {name=l94 lab=VSS}
C {devices/gnd.sym} 740 -620 0 0 {name=l95 lab=GND}
C {devices/lab_pin.sym} 490 -1060 0 0 {name=p68 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 490 -1040 0 0 {name=p77 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 350 -760 2 0 {name=l90 lab=GND}
C {devices/gnd.sym} 350 -620 0 0 {name=l91 lab=GND}
C {devices/vsource.sym} 350 -650 0 1 {name=V31 value=1.8}
C {devices/vsource.sym} 350 -730 2 0 {name=V32 value=0.9}
C {devices/vsource.sym} 800 -650 0 0 {name=V60 value="PULSE(0 1.8 50p 100p 100p 50n 100n)"}
C {devices/gnd.sym} 800 -620 0 0 {name=l57 lab=GND}
C {devices/lab_pin.sym} 800 -680 2 0 {name=p75 sig_type=std_logic lab=EXT_CLK}
C {devices/lab_pin.sym} 490 -980 2 1 {name=p1 sig_type=std_logic lab=EXT_CLK}
C {devices/lab_pin.sym} 490 -960 0 0 {name=p71 sig_type=std_logic lab=sel_bit[0:1]}
C {devices/lab_pin.sym} 490 -860 0 0 {name=p25 sig_type=std_logic lab=VSS_offset}
C {devices/lab_pin.sym} 490 -840 0 0 {name=p26 sig_type=std_logic lab=VSS_offset}
C {devices/lab_pin.sym} 490 -880 0 0 {name=p15 sig_type=std_logic lab=retimer_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 490 -820 0 0 {name=p79 sig_type=std_logic lab=VDD_offset}
C {devices/lab_pin.sym} 490 -920 0 0 {name=p12 sig_type=std_logic lab=async_resetb_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 490 -900 0 0 {name=p13 sig_type=std_logic lab=async_setb_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 490 -940 0 0 {name=p72 sig_type=std_logic lab=cap_ctrl_code[0:15]}
C {devices/lab_wire.sym} 420 -1020 0 0 {name=p29 sig_type=std_logic lab=vip

}
C {devices/lab_wire.sym} 420 -1000 0 0 {name=p32 sig_type=std_logic lab=vin

}
C {devices/gnd.sym} 390 -1080 2 0 {name=l23 lab=GND}
C {devices/gnd.sym} 390 -940 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 390 -970 0 1 {name=V2 value="sin(0.9 -0.45 2451171 0 0 0)"}
C {devices/vsource.sym} 390 -1050 2 0 {name=V4 value="sin(0.9 0.45 2451171 0 0 0)"}
C {devices/vdd.sym} 1060 -680 0 0 {name=l1 lab=VDD_offset}
C {devices/gnd.sym} 1060 -620 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 1060 -650 0 0 {name=V1 value=1.8}
C {devices/vdd.sym} 1120 -680 0 0 {name=l7 lab=VSS_offset}
C {devices/gnd.sym} 1120 -620 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 1120 -650 0 0 {name=V21 value=0}
C {devices/gnd.sym} 1420 -350 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 1480 -350 0 0 {name=l10 lab=GND}
C {devices/vdd.sym} 1480 -470 0 0 {name=l15 lab=sel_bit[1]}
C {devices/vdd.sym} 1420 -470 0 0 {name=l16 lab=sel_bit[0]}
C {devices/vsource.sym} 1590 -380 0 0 {name=V23 value="PULSE(0 1.8 95n 100p 100p 200n 400n)"}
C {devices/vsource.sym} 1530 -380 0 0 {name=V22 value="PULSE(0 1.8 95n 100p 100p 400n 800n)"}
C {/foss/designs/hgu_goss/hgu/xschem/ideal_dac.sym} 1050 -1020 0 0 {name=x2}
C {devices/lab_pin.sym} 1280 -1020 2 0 {name=p2 sig_type=std_logic lab=out}
C {devices/gnd.sym} 230 -600 2 0 {name=l17 lab=GND}
C {devices/gnd.sym} 230 -460 0 0 {name=l18 lab=GND}
C {devices/vsource.sym} 230 -490 0 1 {name=V24 value="PULSE(1.8 0.9 30n 2.56u 2.56u 10p 5.12u)"}
C {devices/vsource.sym} 230 -570 2 0 {name=V52 value="PULSE(0.9 1.8 30n 2.56u 2.56u 10p 5.12u)"}
C {devices/res.sym} 1250 -1020 3 0 {name=R61
value=10
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 740 -650 0 0 {name=R62
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1630 -690 0 0 {name=R3
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1740 -690 0 0 {name=R4
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1420 -440 0 0 {name=R5
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1480 -440 0 0 {name=R6
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1530 -440 0 0 {name=R7
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1590 -440 0 0 {name=R8
value=1m
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1050 -540 0 0 {name=l25 lab=tie_hi}
C {devices/gnd.sym} 1050 -480 0 0 {name=l26 lab=GND}
C {devices/vsource.sym} 1050 -510 0 0 {name=V6 value=1.8}
C {devices/vdd.sym} 1110 -540 0 0 {name=l43 lab=tie_lo1}
C {devices/gnd.sym} 1110 -480 0 0 {name=l44 lab=GND}
C {devices/vsource.sym} 1110 -510 0 0 {name=V7 value=0}
C {devices/res.sym} 1420 -670 0 0 {name=R9
value=1m
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1420 -700 0 0 {name=l45 lab=tie_lo1}
C {devices/res.sym} 1530 -670 0 0 {name=R10
value=1m
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1280 -960 0 0 {name=l47 lab=GND}
C {devices/vdd.sym} 1630 -660 2 0 {name=l48 lab=tie_hi}
C {devices/vdd.sym} 1740 -660 2 0 {name=l49 lab=tie_hi}
C {devices/res.sym} 1420 -970 0 0 {name=R1
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1530 -970 0 0 {name=R2
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1640 -930 0 0 {name=R11
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1750 -930 0 0 {name=R12
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 2030 -970 0 0 {name=R13
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 2140 -970 0 0 {name=R14
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 2250 -930 0 0 {name=R15
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 2360 -930 0 0 {name=R16
value=1m
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1420 -1000 0 0 {name=l20 lab=tie_lo2}
C {devices/vdd.sym} 1640 -900 2 0 {name=l50 lab=tie_hi}
C {devices/vdd.sym} 1750 -900 2 0 {name=l51 lab=tie_hi}
C {devices/vdd.sym} 2250 -900 2 0 {name=l52 lab=tie_hi}
C {devices/vdd.sym} 2360 -900 2 0 {name=l53 lab=tie_hi}
C {devices/res.sym} 1420 -1270 0 0 {name=R17
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1530 -1270 0 0 {name=R18
value=1m
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1420 -1300 0 0 {name=l34 lab=tie_lo3}
C {devices/res.sym} 1860 -1270 0 0 {name=R19
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1970 -1270 0 0 {name=R20
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 2300 -1270 0 0 {name=R21
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 2410 -1270 0 0 {name=R22
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 2740 -1270 0 0 {name=R23
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 2850 -1270 0 0 {name=R24
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1640 -1240 0 0 {name=R25
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1750 -1240 0 0 {name=R26
value=1m
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1640 -1210 2 0 {name=l54 lab=tie_hi}
C {devices/vdd.sym} 1750 -1210 2 0 {name=l58 lab=tie_hi}
C {devices/res.sym} 2080 -1240 0 0 {name=R27
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 2190 -1240 0 0 {name=R28
value=1m
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 2080 -1210 2 0 {name=l63 lab=tie_hi}
C {devices/vdd.sym} 2190 -1210 2 0 {name=l64 lab=tie_hi}
C {devices/res.sym} 2520 -1240 0 0 {name=R29
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 2630 -1240 0 0 {name=R30
value=1m
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 2520 -1210 2 0 {name=l65 lab=tie_hi}
C {devices/vdd.sym} 2630 -1210 2 0 {name=l66 lab=tie_hi}
C {devices/res.sym} 2960 -1240 0 0 {name=R31
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 3070 -1240 0 0 {name=R32
value=1m
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 2960 -1210 2 0 {name=l67 lab=tie_hi}
C {devices/vdd.sym} 3070 -1210 2 0 {name=l68 lab=tie_hi}
C {devices/vdd.sym} 1170 -540 0 0 {name=l21 lab=tie_lo2}
C {devices/gnd.sym} 1170 -480 0 0 {name=l22 lab=GND}
C {devices/vsource.sym} 1170 -510 0 0 {name=V3 value=0}
C {devices/vdd.sym} 1230 -540 0 0 {name=l24 lab=tie_lo3}
C {devices/gnd.sym} 1230 -480 0 0 {name=l36 lab=GND}
C {devices/vsource.sym} 1230 -510 0 0 {name=V5 value=0}
C {devices/vdd.sym} 2300 -1300 0 0 {name=l37 lab=tie_lo5}
C {devices/vdd.sym} 1860 -1300 0 0 {name=l38 lab=tie_lo4}
C {devices/vdd.sym} 2740 -1300 0 0 {name=l39 lab=tie_lo6}
C {devices/vdd.sym} 1230 -400 0 0 {name=l40 lab=tie_lo4}
C {devices/gnd.sym} 1230 -340 0 0 {name=l41 lab=GND}
C {devices/vsource.sym} 1230 -370 0 0 {name=V8 value=0}
C {devices/vdd.sym} 1170 -400 0 0 {name=l42 lab=tie_lo5}
C {devices/gnd.sym} 1170 -340 0 0 {name=l46 lab=GND}
C {devices/vsource.sym} 1170 -370 0 0 {name=V9 value=0}
C {devices/vdd.sym} 1110 -400 0 0 {name=l69 lab=tie_lo6}
C {devices/gnd.sym} 1110 -340 0 0 {name=l70 lab=GND}
C {devices/vsource.sym} 1110 -370 0 0 {name=V10 value=0}
