v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 990 -660 1100 -660 {
lab=VDD}
N 1100 -660 2070 -660 {
lab=VDD}
N 1820 -660 1820 -640 {
lab=VDD}
N 1470 -660 1470 -620 {
lab=VDD}
N 1120 -660 1120 -600 {
lab=VDD}
N 2070 -660 2190 -660 {
lab=VDD}
N 1420 -600 1470 -600 {
lab=#net1}
N 1770 -620 1820 -620 {
lab=#net2}
N 2120 -640 2190 -640 {
lab=#net3}
N 1080 -560 1120 -560 {
lab=VSS}
N 1080 -730 1080 -560 {
lab=VSS}
N 1430 -580 1470 -580 {
lab=VSS}
N 1780 -600 1820 -600 {
lab=VSS}
N 2150 -620 2190 -620 {
lab=VSS}
N 1000 -730 2150 -730 {
lab=VSS}
N 1430 -730 1430 -580 {
lab=VSS}
N 1780 -730 1780 -600 {
lab=VSS}
N 2150 -730 2150 -620 {
lab=VSS}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="sample_clk_gen"}
C {devices/ipin.sym} 1190 -470 0 0 {name=p4 lab=IN}
C {devices/ipin.sym} 1190 -450 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 1190 -430 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} 2490 -660 0 0 {name=p3 lab=OUT}
C {devices/ipin.sym} 1190 -370 0 0 {name=p9 lab=SAMPLE_CODE1[0:3]}
C {../xschem/hgu_delay_no_code.sym} 1270 -570 0 0 {name=x4}
C {../xschem/hgu_delay_no_code.sym} 1620 -590 0 0 {name=x1}
C {../xschem/hgu_delay_no_code.sym} 1970 -610 0 0 {name=x2}
C {../xschem/hgu_delay_no_code.sym} 2340 -630 0 0 {name=x3}
C {devices/ipin.sym} 1190 -350 0 0 {name=p5 lab=SAMPLE_CODE2[0:3]}
C {devices/ipin.sym} 1190 -330 0 0 {name=p6 lab=SAMPLE_CODE3[0:3]}
C {devices/ipin.sym} 1190 -390 0 0 {name=p7 lab=SAMPLE_CODE0[0:3]}
C {devices/lab_pin.sym} 990 -660 0 0 {name=p152 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1120 -580 0 0 {name=p8 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 1000 -730 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1120 -540 0 0 {name=p11 sig_type=std_logic lab=SAMPLE_CODE0[0:3]}
C {devices/lab_pin.sym} 1470 -560 0 0 {name=p12 sig_type=std_logic lab=SAMPLE_CODE1[0:3]}
C {devices/lab_pin.sym} 1820 -580 0 0 {name=p13 sig_type=std_logic lab=SAMPLE_CODE2[0:3]}
C {devices/lab_pin.sym} 2190 -600 0 0 {name=p14 sig_type=std_logic lab=SAMPLE_CODE3[0:3]}
C {devices/ipin.sym} 1190 -290 0 0 {name=p15 lab=sample_delay_offset}
C {devices/lab_pin.sym} 1120 -520 0 0 {name=p16 sig_type=std_logic lab=sample_delay_offset}
C {devices/lab_pin.sym} 1470 -540 0 0 {name=p17 sig_type=std_logic lab=sample_delay_offset}
C {devices/lab_pin.sym} 1820 -560 0 0 {name=p18 sig_type=std_logic lab=sample_delay_offset}
C {devices/lab_pin.sym} 2190 -580 0 0 {name=p19 sig_type=std_logic lab=sample_delay_offset}
