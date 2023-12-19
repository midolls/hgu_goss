v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 60 -580 170 -580 {lab=vip}
N 60 -560 170 -560 {lab=vin}
N 1160 30 1160 90 {
lab=GND}
N 1100 30 1100 90 {
lab=GND}
N 580 -620 580 -580 {
lab=result[0:7]}
N 1100 -560 1820 -560 {
lab=tie_lo2}
N 1100 -260 1210 -260 {
lab=tie_lo1}
N 880 -580 900 -580 {
lab=#net1}
N 470 -620 580 -620 {
lab=result[0:7]}
N 1100 -860 1210 -860 {
lab=tie_lo3}
N 1540 -860 1650 -860 {
lab=tie_lo4}
N 1980 -860 2090 -860 {
lab=tie_lo5}
N 2420 -860 2530 -860 {
lab=tie_lo6}
C {/foss/designs/hgu_goss/hgu/xschem/hgu_top_block.sym} 320 -500 0 0 {name=x1}
C {devices/lab_pin.sym} 470 -620 2 0 {name=p67 sig_type=std_logic lab=result[0:7]}
C {devices/capa.sym} 960 -550 0 0 {name=C2
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {devices/simulator_commands_shown.sym} 140 -960 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.include /foss/designs/hgu_goss/hgu/mag/hgu_cdac_unit.spice
.include /foss/designs/hgu_goss/hgu/mag/hgu_cdac_half_flat.spice
.include /foss/designs/hgu_goss/hgu/spice/hgu_comp_flat_RC.spice
.include /foss/designs/hgu_goss/hgu/spice/hgu_sarlogic_8bit_logic_flat_RC.spice
.include /foss/designs/hgu_goss/hgu/spice/hgu_tah_route.mag.spice

.include /foss/designs/hgu_goss/hgu/spice/hgu_sarlogic_retimer_flat_RC.spice
.include /foss/designs/hgu_goss/hgu/spice/hgu_sarlogic_sw_ctrl_flat_RC.spice
.include /foss/designs/hgu_goss/hgu/spice/hgu_clk_async_flat_RC.spice
.include /foss/designs/hgu_goss/hgu/spice/hgu_clk_sample_flat.spice
.include /foss/designs/hgu_goss/hgu/spice/hgu_cdac_sw_buffer_flat_RC.spice

.include /foss/designs/hgu_goss/hgu/spice/hgu_sarlogic_flat_RC.spice
.include /foss/designs/hgu_goss/hgu/spice/hgu_cdac_half_flat.mag.spice
"}
C {devices/vdd.sym} 1100 -800 1 0 {name=l4 lab=cap_ctrl_code[15]}
C {devices/vdd.sym} 1210 -800 1 0 {name=l6 lab=cap_ctrl_code[14]}
C {devices/vdd.sym} 1320 -830 1 0 {name=l19 lab=cap_ctrl_code[13]}
C {devices/vdd.sym} 1430 -830 1 0 {name=l29 lab=cap_ctrl_code[12]}
C {devices/vdd.sym} 1540 -800 1 0 {name=l30 lab=cap_ctrl_code[11]}
C {devices/vdd.sym} 1650 -800 1 0 {name=l31 lab=cap_ctrl_code[10]}
C {devices/vdd.sym} 1760 -830 1 0 {name=l32 lab=cap_ctrl_code[9]}
C {devices/vdd.sym} 1870 -830 1 0 {name=l33 lab=cap_ctrl_code[8]}
C {devices/gnd.sym} 1210 90 0 0 {name=l55 lab=GND}
C {devices/gnd.sym} 1270 90 0 0 {name=l56 lab=GND}
C {devices/vdd.sym} 1100 -500 1 0 {name=l11 lab=async_resetb_delay_cap_ctrl_code[3]}
C {devices/vdd.sym} 1210 -500 1 0 {name=l12 lab=async_resetb_delay_cap_ctrl_code[2]}
C {devices/vdd.sym} 1320 -520 1 0 {name=l13 lab=async_resetb_delay_cap_ctrl_code[1]}
C {devices/vdd.sym} 1430 -520 1 0 {name=l14 lab=async_resetb_delay_cap_ctrl_code[0]}
C {devices/vdd.sym} 1100 -200 1 0 {name=l59 lab=async_setb_delay_cap_ctrl_code[3]}
C {devices/vdd.sym} 1210 -200 1 0 {name=l60 lab=async_setb_delay_cap_ctrl_code[2]}
C {devices/vdd.sym} 1310 -280 1 0 {name=l61 lab=async_setb_delay_cap_ctrl_code[1]}
C {devices/vdd.sym} 1420 -280 1 0 {name=l62 lab=async_setb_delay_cap_ctrl_code[0]}
C {devices/vdd.sym} 1980 -800 1 0 {name=l71 lab=cap_ctrl_code[7]}
C {devices/vdd.sym} 2090 -800 1 0 {name=l72 lab=cap_ctrl_code[6]}
C {devices/vdd.sym} 2200 -830 1 0 {name=l73 lab=cap_ctrl_code[5]}
C {devices/vdd.sym} 2310 -830 1 0 {name=l74 lab=cap_ctrl_code[4]}
C {devices/vdd.sym} 2420 -800 1 0 {name=l75 lab=cap_ctrl_code[3]}
C {devices/vdd.sym} 2530 -800 1 0 {name=l76 lab=cap_ctrl_code[2]}
C {devices/vdd.sym} 2640 -830 1 0 {name=l77 lab=cap_ctrl_code[1]}
C {devices/vdd.sym} 2750 -830 1 0 {name=l78 lab=cap_ctrl_code[0]}
C {devices/vdd.sym} 1710 -500 1 0 {name=l2 lab=retimer_delay_cap_ctrl_code[3]}
C {devices/vdd.sym} 1820 -500 1 0 {name=l27 lab=retimer_delay_cap_ctrl_code[2]}
C {devices/vdd.sym} 1930 -520 1 0 {name=l28 lab=retimer_delay_cap_ctrl_code[1]}
C {devices/vdd.sym} 2040 -520 1 0 {name=l35 lab=retimer_delay_cap_ctrl_code[0]}
C {devices/code.sym} 190 -270 0 0 {name=spice2 only_toplevel=false value="

.OPTIONS savecurrents

.tran 70ps 80us 40us

.option ABSTOL=1e-9 RELTOL=1e-2

.control
	run
	plot analog_out

	wrdata sar_dnl_640u_70ps(040u_080u) x1.sample_clk vip vin analog_out

.endc
*.save x1.sample_clk vip vin x1.tah_vp x1.tah_vn \\"result[0]\\" \\"result[1]\\" \\"result[2]\\" \\"result[3]\\" \\"result[4]\\" \\"result[5]\\" \\"result[6]\\" \\"result[7]\\" \\"x1.x1.sar_result_temp[0]\\" \\"x1.x1.sar_result_temp[1]\\" \\"x1.x1.sar_result_temp[2]\\" \\"x1.x1.sar_result_temp[3]\\" \\"x1.x1.sar_result_temp[4]\\" \\"x1.x1.sar_result_temp[5]\\" \\"x1.x1.sar_result_temp[6]\\" \\"x1.x1.sar_result_temp[7]\\"
*.save \\"x1.result_sw[1]\\" \\"x1.result_sw[2]\\" \\"x1.result_sw[3]\\" \\"x1.result_sw[4]\\" \\"x1.result_sw[5]\\" \\"x1.result_sw[6]\\" \\"x1.result_sw[7]\\" 
*.save \\"x1.result2_sw[1]\\" \\"x1.result2_sw[2]\\" \\"x1.result2_sw[3]\\" \\"x1.result2_sw[4]\\" \\"x1.result2_sw[5]\\" \\"x1.result2_sw[6]\\" \\"x1.result2_sw[7]\\" 
*.save \\"x1.result_sw_b[1]\\" \\"x1.result_sw_b[2]\\" \\"x1.result_sw_b[3]\\" \\"x1.result_sw_b[4]\\" \\"x1.result_sw_b[5]\\" \\"x1.result_sw_b[6]\\" \\"x1.result_sw_b[7]\\" 
*.save \\"x1.result2_sw_b[1]\\" \\"x1.result2_sw_b[2]\\" \\"x1.result2_sw_b[3]\\" \\"x1.result2_sw_b[4]\\" \\"x1.result2_sw_b[5]\\" \\"x1.result2_sw_b[6]\\" \\"x1.result2_sw_b[7]\\" 
*.save x1.comp_result
*.save vdd i(v33) i(v58) i(v59)
*.save ext_clk
*.save \\"sel_bit[0]\\" \\"sel_bit[1]\\"

*.save x1.sample_clk vip vin x1.tah_vp x1.tah_vn \\"result[0]\\" \\"result[1]\\" \\"result[2]\\" \\"result[3]\\" \\"result[4]\\" \\"result[5]\\" \\"result[6]\\" \\"result[7]\\"

*.save all

.save x1.sample_clk vip vin analog_out i(v33)
"}
C {devices/vdd.sym} 370 -240 0 0 {name=l92 lab=VDD}
C {devices/gnd.sym} 370 -180 0 0 {name=l93 lab=GND}
C {devices/vsource.sym} 370 -210 0 0 {name=V33 value=1.8}
C {devices/vdd.sym} 420 -240 0 0 {name=l94 lab=VSS}
C {devices/gnd.sym} 420 -180 0 0 {name=l95 lab=GND}
C {devices/lab_pin.sym} 170 -620 0 0 {name=p68 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 170 -600 0 0 {name=p77 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 30 -320 2 0 {name=l90 lab=GND}
C {devices/gnd.sym} 30 -180 0 0 {name=l91 lab=GND}
C {devices/vsource.sym} 30 -210 0 1 {name=V31 value=1.8}
C {devices/vsource.sym} 30 -290 2 0 {name=V32 value=0.9}
C {devices/vsource.sym} 480 -210 0 0 {name=V60 value="PULSE(0 1.8 50p 100p 100p 50n 100n)"}
C {devices/gnd.sym} 480 -180 0 0 {name=l57 lab=GND}
C {devices/lab_pin.sym} 480 -240 2 0 {name=p75 sig_type=std_logic lab=EXT_CLK}
C {devices/lab_pin.sym} 170 -540 2 1 {name=p1 sig_type=std_logic lab=EXT_CLK}
C {devices/lab_pin.sym} 170 -520 0 0 {name=p71 sig_type=std_logic lab=sel_bit[0:1]}
C {devices/lab_pin.sym} 170 -420 0 0 {name=p25 sig_type=std_logic lab=VSS_offset}
C {devices/lab_pin.sym} 170 -400 0 0 {name=p26 sig_type=std_logic lab=VSS_offset}
C {devices/lab_pin.sym} 170 -440 0 0 {name=p15 sig_type=std_logic lab=retimer_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 170 -380 0 0 {name=p79 sig_type=std_logic lab=VDD_offset}
C {devices/lab_pin.sym} 170 -480 0 0 {name=p12 sig_type=std_logic lab=async_resetb_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 170 -460 0 0 {name=p13 sig_type=std_logic lab=async_setb_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 170 -500 0 0 {name=p72 sig_type=std_logic lab=cap_ctrl_code[0:15]}
C {devices/lab_wire.sym} 100 -580 0 0 {name=p29 sig_type=std_logic lab=vip

}
C {devices/lab_wire.sym} 100 -560 0 0 {name=p32 sig_type=std_logic lab=vin

}
C {devices/gnd.sym} 70 -640 2 0 {name=l23 lab=GND}
C {devices/gnd.sym} 70 -500 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 70 -530 0 1 {name=V2 value="PULSE(1.8 0.9 30n 640u 640u 10p 1280u)"}
C {devices/vsource.sym} 70 -610 2 0 {name=V4 value="PULSE(0.9 1.8 30n 640u 640u 10p 1280u)"}
C {devices/vdd.sym} 740 -240 0 0 {name=l1 lab=VDD_offset}
C {devices/gnd.sym} 740 -180 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 740 -210 0 0 {name=V1 value=1.8}
C {devices/vdd.sym} 800 -240 0 0 {name=l7 lab=VSS_offset}
C {devices/gnd.sym} 800 -180 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 800 -210 0 0 {name=V21 value=0}
C {devices/gnd.sym} 1100 90 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 1160 90 0 0 {name=l10 lab=GND}
C {devices/vdd.sym} 1160 -30 0 0 {name=l15 lab=sel_bit[1]}
C {devices/vdd.sym} 1100 -30 0 0 {name=l16 lab=sel_bit[0]}
C {devices/vsource.sym} 1270 60 0 0 {name=V23 value="PULSE(0 1.8 95n 100p 100p 200n 400n)"}
C {devices/vsource.sym} 1210 60 0 0 {name=V22 value="PULSE(0 1.8 95n 100p 100p 400n 800n)"}
C {/foss/designs/hgu_goss/hgu/xschem/ideal_dac.sym} 730 -580 0 0 {name=x2}
C {devices/lab_pin.sym} 960 -580 2 0 {name=p2 sig_type=std_logic lab=analog_out}
C {devices/gnd.sym} -90 -160 2 0 {name=l17 lab=GND}
C {devices/gnd.sym} -90 -20 0 0 {name=l18 lab=GND}
C {devices/vsource.sym} -90 -50 0 1 {name=V24 value="PULSE(1.8 0.9 30n 2.56u 2.56u 10p 5.12u)"}
C {devices/vsource.sym} -90 -130 2 0 {name=V52 value="PULSE(0.9 1.8 30n 2.56u 2.56u 10p 5.12u)"}
C {devices/res.sym} 930 -580 3 0 {name=R61
value=10
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 420 -210 0 0 {name=R62
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1310 -250 0 0 {name=R3
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1420 -250 0 0 {name=R4
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1100 0 0 0 {name=R5
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1160 0 0 0 {name=R6
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1210 0 0 0 {name=R7
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1270 0 0 0 {name=R8
value=1m
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 730 -100 0 0 {name=l25 lab=tie_hi}
C {devices/gnd.sym} 730 -40 0 0 {name=l26 lab=GND}
C {devices/vsource.sym} 730 -70 0 0 {name=V6 value=1.8}
C {devices/vdd.sym} 790 -100 0 0 {name=l43 lab=tie_lo1}
C {devices/gnd.sym} 790 -40 0 0 {name=l44 lab=GND}
C {devices/vsource.sym} 790 -70 0 0 {name=V7 value=0}
C {devices/res.sym} 1100 -230 0 0 {name=R9
value=1m
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1100 -260 0 0 {name=l45 lab=tie_lo1}
C {devices/res.sym} 1210 -230 0 0 {name=R10
value=1m
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 960 -520 0 0 {name=l47 lab=GND}
C {devices/vdd.sym} 1310 -220 2 0 {name=l48 lab=tie_hi}
C {devices/vdd.sym} 1420 -220 2 0 {name=l49 lab=tie_hi}
C {devices/res.sym} 1100 -530 0 0 {name=R1
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1210 -530 0 0 {name=R2
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1320 -490 0 0 {name=R11
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1430 -490 0 0 {name=R12
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1710 -530 0 0 {name=R13
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1820 -530 0 0 {name=R14
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1930 -490 0 0 {name=R15
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 2040 -490 0 0 {name=R16
value=1m
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1100 -560 0 0 {name=l20 lab=tie_lo2}
C {devices/vdd.sym} 1320 -460 2 0 {name=l50 lab=tie_hi}
C {devices/vdd.sym} 1430 -460 2 0 {name=l51 lab=tie_hi}
C {devices/vdd.sym} 1930 -460 2 0 {name=l52 lab=tie_hi}
C {devices/vdd.sym} 2040 -460 2 0 {name=l53 lab=tie_hi}
C {devices/res.sym} 1100 -830 0 0 {name=R17
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1210 -830 0 0 {name=R18
value=1m
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1100 -860 0 0 {name=l34 lab=tie_lo3}
C {devices/res.sym} 1540 -830 0 0 {name=R19
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1650 -830 0 0 {name=R20
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1980 -830 0 0 {name=R21
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 2090 -830 0 0 {name=R22
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 2420 -830 0 0 {name=R23
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 2530 -830 0 0 {name=R24
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1320 -800 0 0 {name=R25
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1430 -800 0 0 {name=R26
value=1m
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1320 -770 2 0 {name=l54 lab=tie_hi}
C {devices/vdd.sym} 1430 -770 2 0 {name=l58 lab=tie_hi}
C {devices/res.sym} 1760 -800 0 0 {name=R27
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1870 -800 0 0 {name=R28
value=1m
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1760 -770 2 0 {name=l63 lab=tie_hi}
C {devices/vdd.sym} 1870 -770 2 0 {name=l64 lab=tie_hi}
C {devices/res.sym} 2200 -800 0 0 {name=R29
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 2310 -800 0 0 {name=R30
value=1m
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 2200 -770 2 0 {name=l65 lab=tie_hi}
C {devices/vdd.sym} 2310 -770 2 0 {name=l66 lab=tie_hi}
C {devices/res.sym} 2640 -800 0 0 {name=R31
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 2750 -800 0 0 {name=R32
value=1m
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 2640 -770 2 0 {name=l67 lab=tie_hi}
C {devices/vdd.sym} 2750 -770 2 0 {name=l68 lab=tie_hi}
C {devices/vdd.sym} 850 -100 0 0 {name=l21 lab=tie_lo2}
C {devices/gnd.sym} 850 -40 0 0 {name=l22 lab=GND}
C {devices/vsource.sym} 850 -70 0 0 {name=V3 value=0}
C {devices/vdd.sym} 910 -100 0 0 {name=l24 lab=tie_lo3}
C {devices/gnd.sym} 910 -40 0 0 {name=l36 lab=GND}
C {devices/vsource.sym} 910 -70 0 0 {name=V5 value=0}
C {devices/vdd.sym} 1980 -860 0 0 {name=l37 lab=tie_lo5}
C {devices/vdd.sym} 1540 -860 0 0 {name=l38 lab=tie_lo4}
C {devices/vdd.sym} 2420 -860 0 0 {name=l39 lab=tie_lo6}
C {devices/vdd.sym} 910 40 0 0 {name=l40 lab=tie_lo4}
C {devices/gnd.sym} 910 100 0 0 {name=l41 lab=GND}
C {devices/vsource.sym} 910 70 0 0 {name=V8 value=0}
C {devices/vdd.sym} 850 40 0 0 {name=l42 lab=tie_lo5}
C {devices/gnd.sym} 850 100 0 0 {name=l46 lab=GND}
C {devices/vsource.sym} 850 70 0 0 {name=V9 value=0}
C {devices/vdd.sym} 790 40 0 0 {name=l69 lab=tie_lo6}
C {devices/gnd.sym} 790 100 0 0 {name=l70 lab=GND}
C {devices/vsource.sym} 790 70 0 0 {name=V10 value=0}
