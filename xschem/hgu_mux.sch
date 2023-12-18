v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 530 -260 530 -240 {
lab=VDD}
N 500 -260 500 -120 {
lab=b}
N 560 -260 560 -120 {
lab=#net1}
N 530 -150 530 -120 {
lab=VSS}
N 530 -530 530 -510 {
lab=VDD}
N 500 -530 500 -390 {
lab=a}
N 560 -530 560 -390 {
lab=#net1}
N 530 -420 530 -390 {
lab=VSS}
N 560 -390 560 -260 {
lab=#net1}
N 360 -460 500 -460 {
lab=a}
N 360 -190 500 -190 {
lab=b}
N 560 -320 700 -320 {
lab=#net1}
C {sky130_fd_pr/pfet_01v8.sym} 530 -280 3 1 {name=M2
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
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 530 -240 1 1 {name=p5 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 530 -100 3 0 {name=M10
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
C {devices/lab_pin.sym} 530 -150 1 0 {name=p15 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 530 -550 3 1 {name=M1
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
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 530 -510 1 1 {name=p1 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 530 -370 3 0 {name=M3
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
C {devices/lab_pin.sym} 530 -420 1 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 360 -460 0 0 {name=p36 lab=a}
C {devices/ipin.sym} 190 -190 0 0 {name=p40 lab=VDD}
C {devices/ipin.sym} 190 -160 0 0 {name=p41 lab=VSS}
C {devices/ipin.sym} 360 -190 0 0 {name=p42 lab=b}
C {devices/ipin.sym} 190 -130 0 0 {name=p43 lab=SEL}
C {devices/lab_pin.sym} 530 -570 0 0 {name=p2 sig_type=std_logic lab=SEL}
C {devices/lab_pin.sym} 530 -350 0 0 {name=p4 sig_type=std_logic lab=SELb}
C {devices/lab_pin.sym} 530 -300 0 0 {name=p6 sig_type=std_logic lab=SELb}
C {devices/lab_pin.sym} 530 -80 0 0 {name=p7 sig_type=std_logic lab=SEL}
C {inverter.sym} 280 -320 0 0 {name=x1}
C {devices/lab_pin.sym} 280 -280 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 280 -360 1 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 350 -320 0 1 {name=p37 sig_type=std_logic lab=SELb}
C {devices/lab_pin.sym} 240 -320 0 0 {name=p39 sig_type=std_logic lab=SEL}
C {devices/opin.sym} 920 -320 0 0 {name=p31 lab=Q}
C {inverter.sym} 740 -320 0 0 {name=x2}
C {devices/lab_pin.sym} 740 -280 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 740 -360 1 0 {name=p9 sig_type=std_logic lab=VDD}
C {inverter.sym} 850 -320 0 0 {name=x3}
C {devices/lab_pin.sym} 850 -280 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 850 -360 1 0 {name=p11 sig_type=std_logic lab=VDD}
