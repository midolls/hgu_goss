v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 890 -690 890 -640 {
lab=#net1}
N 850 -720 850 -610 {
lab=IN}
N 890 -720 910 -720 {
lab=VDD}
N 910 -750 910 -720 {
lab=VDD}
N 890 -750 910 -750 {
lab=VDD}
N 890 -610 910 -610 {
lab=VSS}
N 910 -610 910 -580 {
lab=VSS}
N 890 -580 910 -580 {
lab=VSS}
N 780 -820 890 -820 {
lab=VDD}
N 890 -770 890 -750 {
lab=VDD}
N 780 -500 890 -500 {
lab=VSS}
N 780 -660 850 -660 {
lab=IN}
N 890 -660 970 -660 {
lab=#net1}
N 890 -580 890 -560 {
lab=VSS}
N 890 -820 890 -770 {
lab=VDD}
N 890 -560 890 -500 {
lab=VSS}
N 2300 -690 2300 -640 {
lab=OUT}
N 2260 -720 2260 -610 {
lab=#net1}
N 2300 -720 2320 -720 {
lab=VDD}
N 2300 -610 2320 -610 {
lab=VSS}
N 2300 -660 2380 -660 {
lab=OUT}
N 2300 -550 2320 -550 {
lab=VSS}
N 2320 -550 2320 -520 {
lab=VSS}
N 2300 -520 2300 -500 {
lab=VSS}
N 2300 -780 2320 -780 {
lab=VDD}
N 2320 -810 2320 -780 {
lab=VDD}
N 1010 -580 1010 -500 {
lab=VSS}
N 980 -580 980 -500 {
lab=VSS}
N 1040 -580 1040 -500 {
lab=VSS}
N 2320 -610 2320 -550 {
lab=VSS}
N 2320 -780 2320 -720 {
lab=VDD}
N 2300 -820 2300 -810 {
lab=VDD}
N 2300 -750 2400 -750 {
lab=#net2}
N 2300 -580 2400 -580 {
lab=#net3}
N 2460 -580 2470 -580 {
lab=VDD}
N 2470 -640 2470 -580 {
lab=VDD}
N 2470 -640 2500 -680 {
lab=VDD}
N 2500 -820 2500 -680 {
lab=VDD}
N 2460 -750 2470 -750 {
lab=VSS}
N 2470 -750 2470 -680 {
lab=VSS}
N 2470 -680 2500 -640 {
lab=VSS}
N 2500 -640 2500 -500 {
lab=VSS}
N 1010 -660 1010 -620 {
lab=#net1}
N 2430 -710 2430 -620 {
lab=OUT}
N 2380 -660 2430 -660 {
lab=OUT}
N 2430 -660 2530 -660 {
lab=OUT}
N 2320 -820 2320 -810 {
lab=VDD}
N 2320 -520 2320 -500 {
lab=VSS}
N 2260 -780 2260 -720 {
lab=#net1}
N 2260 -610 2260 -550 {
lab=#net1}
N 2430 -580 2430 -500 {
lab=VSS}
N 2430 -820 2430 -750 {
lab=VDD}
N 2490 -820 2500 -820 {
lab=VDD}
N 2220 -660 2260 -660 {
lab=#net1}
N 970 -660 1110 -660 {
lab=#net1}
N 2220 -500 2500 -500 {
lab=VSS}
N 2220 -820 2490 -820 {
lab=VDD}
N 890 -820 1110 -820 {
lab=VDD}
N 890 -500 1110 -500 {
lab=VSS}
N 1110 -660 2220 -660 {
lab=#net1}
N 1110 -500 2220 -500 {
lab=VSS}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="sample_clk_gen"}
C {devices/ipin.sym} 780 -660 0 0 {name=p4 lab=IN}
C {devices/ipin.sym} 780 -820 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 780 -500 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} 2530 -660 0 0 {name=p3 lab=OUT}
C {sky130_fd_pr/nfet_01v8.sym} 870 -610 0 0 {name=M1
L=3.69
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
C {sky130_fd_pr/pfet_01v8.sym} 870 -720 0 0 {name=M2
L=1.5
W=0.8
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
C {sky130_fd_pr/nfet_01v8.sym} 1010 -600 1 0 {name=M3
L=2.045
W=1.375
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
C {sky130_fd_pr/nfet_01v8.sym} 2280 -610 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 2280 -720 0 0 {name=M5
L=0.15
W=0.8
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
C {sky130_fd_pr/nfet_01v8.sym} 2280 -550 0 0 {name=M6
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
C {sky130_fd_pr/pfet_01v8.sym} 2280 -780 0 0 {name=M7
L=0.15
W=0.8
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
C {sky130_fd_pr/nfet_01v8.sym} 2430 -600 1 0 {name=M8
L=0.15
W=0.84
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
C {sky130_fd_pr/pfet_01v8.sym} 2430 -730 3 0 {name=M9
L=0.15
W=1.6
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
C {devices/lab_pin.sym} 2220 -820 0 0 {name=p10 sig_type=std_logic lab=VDD}
