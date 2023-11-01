v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 510 -420 560 -420 {
lab=EOB}
N 530 -440 560 -440 {
lab=sample_clk}
N 1030 -480 1150 -480 {
lab=sar_clk}
N 510 -530 1280 -530 {
lab=EOB}
N 510 -510 510 -420 {
lab=EOB}
N 1450 -530 1450 -500 {
lab=EOB}
N 530 -440 530 -250 {
lab=sample_clk}
N 510 -530 510 -510 {
lab=EOB}
N 480 -250 530 -250 {
lab=sample_clk}
N 860 -480 1030 -480 {
lab=sar_clk}
N 1280 -530 1450 -530 {
lab=EOB}
C {../xschem/hgu_clk_async.sym} 710 -410 0 0 {name=x1}
C {../xschem/hgu_clk_sample.sym} 330 -180 0 0 {name=x2}
C {../xschem/hgu_sarlogic_8bit_logic.sym} 1300 -450 0 0 {name=x3 csize=0.001}
C {devices/lab_pin.sym} 180 -230 0 0 {name=p1 sig_type=std_logic lab=EXT_CLK}
C {devices/lab_pin.sym} 180 -270 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 180 -250 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 560 -480 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 560 -460 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1150 -420 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1150 -400 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 560 -400 0 0 {name=p8 sig_type=std_logic lab=READY}
C {devices/lab_pin.sym} 1150 -460 0 0 {name=p9 sig_type=std_logic lab=COMP_RESULT}
C {devices/lab_pin.sym} 180 -210 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 180 -190 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1110 -480 0 0 {name=p16 sig_type=std_logic lab=sar_clk}
C {devices/lab_wire.sym} 1120 -530 0 0 {name=p17 sig_type=std_logic lab=EOB}
C {devices/lab_wire.sym} 530 -250 0 0 {name=p18 sig_type=std_logic lab=sample_clk}
C {devices/lab_pin.sym} 1450 -460 2 0 {name=p19 sig_type=std_logic lab=check[0:6]}
C {devices/ipin.sym} 190 -410 0 0 {name=p11 lab=VDD}
C {devices/ipin.sym} 190 -390 0 0 {name=p12 lab=VSS}
C {devices/ipin.sym} 190 -350 0 0 {name=p13 lab=COMP_RESULT}
C {devices/ipin.sym} 190 -330 0 0 {name=p15 lab=READY}
C {devices/ipin.sym} 190 -370 0 0 {name=p20 lab=EXT_CLK}
C {devices/opin.sym} 270 -520 0 0 {name=p21 lab=sar_clk}
C {devices/opin.sym} 270 -480 0 0 {name=p23 lab=sar_result[0:7]}
C {devices/lab_pin.sym} 1450 -480 2 0 {name=p24 sig_type=std_logic lab=sar_result[0:7]}
C {devices/opin.sym} 270 -440 0 0 {name=p26 lab=sample_clk}
C {devices/ipin.sym} 190 -430 0 0 {name=p118 lab=sel_bit[0:1]}
C {devices/lab_pin.sym} 1150 -500 0 0 {name=p120 sig_type=std_logic lab=sel_bit[0:1]}
C {devices/capa.sym} 560 -250 3 0 {name=C1
m=1
value=5f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 590 -250 2 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 1040 -510 2 0 {name=C2
m=1
value=5f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1040 -540 2 0 {name=p28 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 720 -560 2 0 {name=C3
m=1
value=5f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 720 -590 2 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 180 -170 0 0 {name=p30 sig_type=std_logic lab=sample_delay_cap_ctrl_code[0:3]}
C {devices/ipin.sym} 230 -10 0 0 {name=p31 lab=sample_delay_cap_ctrl_code[0:15]}
C {devices/opin.sym} 270 -420 0 0 {name=p32 lab=sample_clk_b}
C {devices/lab_pin.sym} 480 -270 2 0 {name=p33 sig_type=std_logic lab=sample_clk_b}
C {devices/opin.sym} 1460 -260 0 0 {name=p54 lab=vdd_sw[1:7]}
C {devices/opin.sym} 1460 -240 0 0 {name=p55 lab=vdd_sw_b[1:7]}
C {devices/opin.sym} 1460 -220 0 0 {name=p56 lab=vss_sw[1:7]}
C {devices/opin.sym} 1460 -200 0 0 {name=p57 lab=vss_sw_b[1:7]}
C {../xschem/hgu_sarlogic_sw_ctrl.sym} 1310 -210 0 0 {name=x4}
C {devices/lab_pin.sym} 1160 -220 0 0 {name=p36 sig_type=std_logic lab=sar_result[1:7]}
C {devices/lab_pin.sym} 1160 -200 0 0 {name=p37 sig_type=std_logic lab=check[0:6]}
C {devices/lab_pin.sym} 1160 -160 0 0 {name=p39 sig_type=std_logic lab=sample_clk_b}
C {devices/lab_pin.sym} 1160 -260 0 0 {name=p40 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1160 -240 0 0 {name=p41 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1160 -180 0 0 {name=p38 sig_type=std_logic lab=sar_clk}
C {devices/lab_pin.sym} 1150 -440 2 1 {name=p42 sig_type=std_logic lab=sample_clk_b}
C {devices/ipin.sym} 230 40 0 0 {name=p22 lab=async_resetb_delay_cap_ctrl_code[0:3]}
C {devices/ipin.sym} 230 60 0 0 {name=p25 lab=async_setb_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 560 -360 0 0 {name=p34 sig_type=std_logic lab=async_resetb_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 560 -340 0 0 {name=p35 sig_type=std_logic lab=async_setb_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 180 -150 0 0 {name=p43 sig_type=std_logic lab=sample_delay_cap_ctrl_code[4:7]}
C {devices/lab_pin.sym} 180 -130 0 0 {name=p44 sig_type=std_logic lab=sample_delay_cap_ctrl_code[8:11]}
C {devices/lab_pin.sym} 180 -110 0 0 {name=p45 sig_type=std_logic lab=sample_delay_cap_ctrl_code[12:15]}
C {devices/ipin.sym} 230 100 0 0 {name=p46 lab=async_delay_offset}
C {devices/lab_pin.sym} 560 -380 0 0 {name=p47 sig_type=std_logic lab=async_delay_offset}
C {devices/ipin.sym} 230 120 0 0 {name=p48 lab=sample_delay_offset}
C {devices/lab_pin.sym} 180 -90 0 0 {name=p49 sig_type=std_logic lab=sample_delay_offset}
