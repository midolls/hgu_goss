v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 310 -340 310 -290 {
lab=OUT}
N 270 -370 270 -260 {
lab=IN}
N 310 -370 330 -370 {
lab=VDD}
N 330 -400 330 -370 {
lab=VDD}
N 310 -400 330 -400 {
lab=VDD}
N 310 -260 330 -260 {
lab=VSS}
N 330 -260 330 -230 {
lab=VSS}
N 310 -230 330 -230 {
lab=VSS}
N 200 -420 310 -420 {
lab=VDD}
N 310 -420 310 -400 {
lab=VDD}
N 200 -210 310 -210 {
lab=VSS}
N 200 -310 270 -310 {
lab=IN}
N 310 -310 390 -310 {
lab=OUT}
N 310 -230 310 -210 {}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Stefan Schippers"}
C {devices/ipin.sym} 200 -310 0 0 {name=p4 lab=IN}
C {devices/ipin.sym} 200 -420 0 0 {name=p5 lab=VDD}
C {devices/ipin.sym} 200 -210 0 0 {name=p6 lab=VSS}
C {devices/opin.sym} 390 -310 0 0 {name=p1 lab=OUT}
C {sky130_fd_pr/nfet_01v8.sym} 290 -260 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 290 -370 0 0 {name=M2
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
model=pfet_01v8
spiceprefix=X
}
