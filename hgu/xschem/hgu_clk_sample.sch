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
N 560 -330 610 -330 {
lab=#net2}
N 610 -440 610 -330 {
lab=#net2}
N 610 -440 1010 -440 {
lab=#net2}
N 940 -330 970 -330 {
lab=#net1}
N 1280 -450 1280 -390 {
lab=#net3}
N 1320 -480 1320 -450 {
lab=VDD}
N 1320 -390 1320 -360 {
lab=VSS}
N 1130 -420 1170 -420 {
lab=#net4}
N 1130 -420 1130 -320 {
lab=#net4}
N 1160 -300 1160 -240 {
lab=#net4}
N 1200 -330 1200 -300 {
lab=VDD}
N 1200 -240 1200 -210 {
lab=VSS}
N 1130 -320 1130 -270 {
lab=#net4}
N 1130 -270 1160 -270 {
lab=#net4}
N 1280 -300 1280 -240 {
lab=#net5}
N 1320 -330 1320 -300 {
lab=VDD}
N 1320 -240 1320 -210 {
lab=VSS}
N 1200 -270 1270 -270 {
lab=#net5}
N 1320 -270 1350 -270 {
lab=#net6}
N 1170 -570 1170 -420 {
lab=#net4}
N 1230 -570 1230 -420 {
lab=#net3}
N 1230 -420 1280 -420 {
lab=#net3}
N 1350 -270 1490 -270 {
lab=#net6}
N 1320 -420 1490 -420 {
lab=#net7}
N 1490 -450 1490 -390 {
lab=#net7}
N 1530 -480 1530 -450 {
lab=VDD}
N 1530 -390 1530 -360 {
lab=VSS}
N 1490 -300 1490 -240 {
lab=#net6}
N 1530 -330 1530 -300 {
lab=VDD}
N 1530 -240 1530 -210 {
lab=VSS}
N 1530 -270 1560 -270 {
lab=SAMPLE_CLK}
N 1530 -420 1560 -420 {
lab=SAMPLE_CLK_b}
N 1270 -270 1280 -270 {
lab=#net5}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="sample_clk_gen"}
C {../xschem/hgu_clk_div.sym} 410 -290 0 0 {name=x1}
C {../xschem/hgu_delay.sym} 710 -260 0 0 {name=x2}
C {devices/ipin.sym} 260 -330 0 0 {name=p11 lab=VDD}
C {devices/ipin.sym} 260 -310 0 0 {name=p12 lab=VSS}
C {devices/lab_pin.sym} 560 -310 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 560 -290 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 260 -250 0 0 {name=p9 lab=SET}
C {devices/ipin.sym} 260 -270 0 0 {name=p10 lab=RESET}
C {devices/ipin.sym} 260 -290 0 0 {name=p14 lab=CLK}
C {sky130_stdcells/inv_1.sym} 900 -330 0 0 {name=x7 VGND=VSS VNB=VSS VPB=vDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
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
C {sky130_stdcells/nand2_1.sym} 1070 -420 0 0 {name=x3 VGND=VSS VNB=VSS VPB=vDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 1560 -270 0 0 {name=p21 lab=SAMPLE_CLK}
C {devices/opin.sym} 1560 -420 0 0 {name=p22 lab=SAMPLE_CLK_b}
C {sky130_fd_pr/nfet_01v8.sym} 1300 -390 0 0 {name=M7
L=0.15
W=0.42
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
C {sky130_fd_pr/pfet_01v8.sym} 1300 -450 0 0 {name=M8
L=0.15
W=1.26
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
C {devices/lab_pin.sym} 1320 -360 2 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1320 -480 2 0 {name=p24 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 1180 -240 0 0 {name=M9
L=0.15
W=0.42
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
C {sky130_fd_pr/pfet_01v8.sym} 1180 -300 0 0 {name=M10
L=0.15
W=1.4
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
C {devices/lab_pin.sym} 1200 -210 2 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1200 -330 2 0 {name=p28 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 1300 -240 0 0 {name=M11
L=0.15
W=0.42
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
C {sky130_fd_pr/pfet_01v8.sym} 1300 -300 0 0 {name=M12
L=0.15
W=1.26
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
C {devices/lab_pin.sym} 1320 -210 2 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1320 -330 2 0 {name=p30 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 1200 -590 1 0 {name=M13
L=0.15
W=1.9
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
C {sky130_fd_pr/nfet_01v8.sym} 1200 -400 3 0 {name=M14
L=0.15
W=0.42
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
C {devices/lab_pin.sym} 1200 -380 2 0 {name=p31 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1200 -570 3 0 {name=p32 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1200 -610 2 0 {name=p33 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1200 -420 1 0 {name=p34 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1530 -360 2 0 {name=p35 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1530 -480 2 0 {name=p36 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1530 -210 2 0 {name=p37 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1530 -330 2 0 {name=p38 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 260 -210 0 0 {name=p5 lab=CAP_CTRL_CODE1[0:3]}
C {devices/ipin.sym} 260 -190 0 0 {name=p6 lab=CAP_CTRL_CODE2[0:3]}
C {devices/ipin.sym} 260 -170 0 0 {name=p7 lab=CAP_CTRL_CODE3[0:3]}
C {devices/ipin.sym} 260 -230 0 0 {name=p8 lab=CAP_CTRL_CODE0[0:3]}
C {devices/lab_pin.sym} 560 -270 0 0 {name=p13 sig_type=std_logic lab=CAP_CTRL_CODE0[0:3]}
C {devices/lab_pin.sym} 560 -250 0 0 {name=p15 sig_type=std_logic lab=CAP_CTRL_CODE1[0:3]}
C {devices/lab_pin.sym} 560 -230 0 0 {name=p16 sig_type=std_logic lab=CAP_CTRL_CODE2[0:3]}
C {devices/lab_pin.sym} 560 -210 0 0 {name=p17 sig_type=std_logic lab=CAP_CTRL_CODE3[0:3]}
C {devices/ipin.sym} 260 -130 0 0 {name=p18 lab=sample_delay_offset}
C {devices/lab_pin.sym} 560 -190 0 0 {name=p19 sig_type=std_logic lab=sample_delay_offset}
C {sky130_fd_pr/nfet_01v8.sym} 1510 -390 0 0 {name=M18
L=0.15
W=1.26
nf=3 
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
C {sky130_fd_pr/pfet_01v8.sym} 1510 -450 0 0 {name=M17
L=0.15
W=3.78
nf=3
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
C {sky130_fd_pr/nfet_01v8.sym} 1510 -240 0 0 {name=M15
L=0.15
W=1.26
nf=3 
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
C {sky130_fd_pr/pfet_01v8.sym} 1510 -300 0 0 {name=M16
L=0.15
W=3.78
nf=3
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
