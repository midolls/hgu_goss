v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 970 -400 970 -330 {
lab=#net1}
N 970 -400 1010 -400 {
lab=#net1}
N 560 -310 610 -310 {
lab=#net2}
N 610 -440 610 -310 {
lab=#net2}
N 610 -440 1010 -440 {
lab=#net2}
N 940 -330 970 -330 {
lab=#net1}
N 1170 -450 1170 -390 {
lab=#net3}
N 1210 -480 1210 -450 {
lab=VDD}
N 1210 -390 1210 -360 {
lab=VSS}
N 1130 -420 1170 -420 {
lab=#net3}
N 1130 -420 1130 -320 {
lab=#net3}
N 1160 -300 1160 -240 {
lab=#net3}
N 1200 -330 1200 -300 {
lab=VDD}
N 1200 -240 1200 -210 {
lab=VSS}
N 1130 -320 1130 -270 {
lab=#net3}
N 1130 -270 1160 -270 {
lab=#net3}
N 1270 -300 1270 -240 {
lab=#net4}
N 1310 -330 1310 -300 {
lab=VDD}
N 1310 -240 1310 -210 {
lab=VSS}
N 1200 -270 1270 -270 {
lab=#net4}
N 1310 -270 1340 -270 {
lab=SAMPLE_CLK_b}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="sample_clk_gen"}
C {hgu_clk_div.sym} 410 -290 0 0 {name=x1}
C {hgu_delay.sym} 710 -300 0 0 {name=x2 DELAY_CAP=8f}
C {devices/ipin.sym} 260 -380 0 0 {name=p11 lab=VDD}
C {devices/ipin.sym} 260 -360 0 0 {name=p12 lab=VSS}
C {devices/lab_pin.sym} 560 -330 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 560 -290 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 260 -270 0 0 {name=p9 lab=SET}
C {devices/ipin.sym} 260 -290 0 0 {name=p10 lab=RESET}
C {devices/ipin.sym} 260 -310 0 0 {name=p14 lab=CLK}
C {devices/opin.sym} 1210 -420 0 0 {name=p15 lab=SAMPLE_CLK}
C {devices/lab_pin.sym} 560 -270 0 0 {name=p26 sig_type=std_logic lab=cap_ctrl_code[0:7]}
C {sky130_stdcells/inv_1.sym} 900 -330 0 0 {name=x7 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/capa.sym} 970 -300 0 0 {name=C1
m=1
value=5f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 970 -270 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 820 -470 2 0 {name=C2
m=1
value=5f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 820 -500 2 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 860 -300 0 0 {name=C3
m=1
value=5f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 860 -270 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 260 -220 0 0 {name=p5 lab=cap_ctrl_code[0:7]}
C {sky130_stdcells/nand2_1.sym} 1070 -420 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 1340 -270 0 0 {name=p6 lab=SAMPLE_CLK_b}
C {sky130_fd_pr/nfet_01v8.sym} 1190 -390 0 0 {name=M1
L=0.2
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1190 -450 0 0 {name=M2
L=0.2
W=3.21
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1210 -360 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1210 -480 2 0 {name=p13 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 1180 -240 0 0 {name=M3
L=0.15
W=1.2
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1180 -300 0 0 {name=M4
L=0.15
W=3.2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1200 -210 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1200 -330 2 0 {name=p17 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 1290 -240 0 0 {name=M5
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1290 -300 0 0 {name=M6
L=0.15
W=2.98
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1310 -210 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1310 -330 2 0 {name=p18 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1070 -370 2 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1070 -480 0 0 {name=p20 sig_type=std_logic lab=VDD}
