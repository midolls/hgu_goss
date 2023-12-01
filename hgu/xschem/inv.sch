v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2610 -1990 2620 -1990 {
lab=IN}
N 2610 -1990 2610 -1890 {
lab=IN}
N 2610 -1890 2620 -1890 {
lab=IN}
N 2660 -1960 2660 -1920 {
lab=OUT}
N 2660 -2050 2660 -2020 {
lab=VDD}
N 2660 -1860 2660 -1840 {
lab=VSS}
N 2660 -1890 2690 -1890 {
lab=VSS}
N 2690 -1890 2690 -1840 {
lab=VSS}
N 2660 -1840 2690 -1840 {
lab=VSS}
N 2660 -2050 2690 -2050 {
lab=VDD}
N 2690 -2050 2690 -1990 {
lab=VDD}
N 2660 -1990 2690 -1990 {
lab=VDD}
N 2660 -2060 2660 -2050 {
lab=VDD}
N 2660 -1840 2660 -1830 {
lab=VSS}
N 2660 -1940 2690 -1940 {
lab=OUT}
C {sky130_fd_pr/nfet_01v8.sym} 2640 -1890 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 2640 -1990 0 0 {name=M2
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
C {devices/vsource.sym} 2420 -2030 0 0 {name=V1 value=1.8}
C {devices/vsource.sym} 2490 -2030 0 0 {name=V2 value=0}
C {devices/gnd.sym} 2490 -2000 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 2420 -2000 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 2420 -2060 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2490 -2060 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2660 -2050 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2660 -1840 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/opin.sym} 2690 -1940 0 0 {name=p4 lab=OUT}
C {devices/ipin.sym} 2610 -1940 0 0 {name=p6 lab=IN}
