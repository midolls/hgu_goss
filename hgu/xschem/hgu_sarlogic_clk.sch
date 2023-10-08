v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 510 -330 560 -330 {
lab=EOB}
N 530 -350 560 -350 {
lab=sample_clk}
N 870 -350 980 -350 {
lab=sample_clk}
N 860 -390 980 -390 {
lab=sar_clk}
N 510 -440 1280 -440 {
lab=EOB}
N 510 -420 510 -330 {
lab=EOB}
N 1280 -440 1280 -410 {
lab=EOB}
N 480 -270 870 -270 {
lab=sample_clk}
N 870 -350 870 -270 {
lab=sample_clk}
N 530 -350 530 -270 {
lab=sample_clk}
N 510 -440 510 -420 {
lab=EOB}
C {async_clk_gen.sym} 710 -350 0 0 {name=x1}
C {sample_clk_gen.sym} 330 -220 0 0 {name=x2}
C {8bit_sar_logic.sym} 1130 -360 0 0 {name=x3 csize=0.001}
C {devices/lab_pin.sym} 180 -230 0 0 {name=p1 sig_type=std_logic lab=EXT_CLK}
C {devices/lab_pin.sym} 180 -270 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 180 -250 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 560 -390 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 560 -370 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 980 -330 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 980 -310 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 560 -310 0 0 {name=p8 sig_type=std_logic lab=READY}
C {devices/lab_pin.sym} 980 -370 0 0 {name=p9 sig_type=std_logic lab=COMP_RESULT}
C {devices/lab_pin.sym} 180 -210 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 180 -190 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 940 -390 0 0 {name=p16 sig_type=std_logic lab=sar_clk}
C {devices/lab_wire.sym} 950 -440 0 0 {name=p17 sig_type=std_logic lab=EOB}
C {devices/lab_wire.sym} 710 -270 0 0 {name=p18 sig_type=std_logic lab=sample_clk}
C {devices/lab_pin.sym} 1280 -370 2 0 {name=p19 sig_type=std_logic lab=tempD[0:7]}
C {devices/ipin.sym} 240 -410 0 0 {name=p11 lab=VDD}
C {devices/ipin.sym} 240 -390 0 0 {name=p12 lab=VSS}
C {devices/ipin.sym} 240 -350 0 0 {name=p13 lab=COMP_RESULT}
C {devices/ipin.sym} 240 -330 0 0 {name=p15 lab=READY}
C {devices/ipin.sym} 240 -370 0 0 {name=p20 lab=EXT_CLK}
C {devices/opin.sym} 270 -410 0 0 {name=p21 lab=sar_clk}
C {devices/opin.sym} 270 -390 0 0 {name=p22 lab=EOB}
C {devices/opin.sym} 270 -370 0 0 {name=p23 lab=sar_result[0:7]}
C {devices/lab_pin.sym} 1280 -390 2 0 {name=p24 sig_type=std_logic lab=sar_result[0:7]}
C {devices/opin.sym} 270 -350 0 0 {name=p25 lab=tempD[0:7]}
C {devices/opin.sym} 270 -330 0 0 {name=p26 lab=sample_clk}
C {devices/ipin.sym} 240 -430 0 0 {name=p118 lab=sel_bit[0:1]}
C {devices/lab_pin.sym} 980 -410 0 0 {name=p120 sig_type=std_logic lab=sel_bit[0:1]}
C {devices/capa.sym} 760 -240 0 0 {name=C1
m=1
value=5f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 760 -210 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 870 -420 2 0 {name=C2
m=1
value=5f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 870 -450 2 0 {name=p28 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 720 -470 2 0 {name=C3
m=1
value=5f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 720 -500 2 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 180 -170 0 0 {name=p30 sig_type=std_logic lab=cap_ctrl_code[0:7]}
C {devices/ipin.sym} 230 -110 0 0 {name=p31 lab=cap_ctrl_code[0:7]}
