v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 230 -200 230 -180 {
lab=OUT}
N 230 -180 440 -180 {
lab=OUT}
N 410 -200 410 -180 {
lab=OUT}
N 230 -180 230 -160 {
lab=OUT}
N 230 -270 230 -260 {
lab=VDD}
N 410 -280 410 -260 {
lab=VDD}
N 230 -280 380 -280 {
lab=VDD}
N 230 -280 230 -270 {
lab=VDD}
N 170 -230 190 -230 {
lab=B}
N 170 -230 170 -130 {
lab=B}
N 170 -130 190 -130 {
lab=B}
N 150 -180 170 -180 {
lab=B}
N 450 -300 450 -230 {
lab=A}
N 80 -300 420 -300 {
lab=A}
N 80 -300 80 -70 {
lab=A}
N 80 -70 190 -70 {
lab=A}
N 380 -280 410 -280 {
lab=VDD}
N 420 -300 450 -300 {
lab=A}
N 440 -180 470 -180 {
lab=OUT}
N 230 -230 250 -230 {
lab=VDD}
N 250 -280 250 -230 {
lab=VDD}
N 390 -230 410 -230 {
lab=VDD}
N 390 -280 390 -230 {
lab=VDD}
N 230 -130 250 -130 {
lab=VSS}
N 250 -130 250 -100 {
lab=VSS}
N 230 -70 250 -70 {
lab=VSS}
N 250 -70 250 -40 {
lab=VSS}
N 230 -40 250 -40 {
lab=VSS}
N 250 -100 250 -70 {
lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 210 -230 0 0 {name=M2
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 210 -130 0 0 {name=M1
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
C {devices/ipin.sym} 150 -180 0 0 {name=p1 lab=B}
C {devices/opin.sym} 470 -180 0 0 {name=p3 lab=OUT}
C {sky130_fd_pr/nfet_01v8.sym} 210 -70 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 430 -230 0 1 {name=M4
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
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 80 -180 0 0 {name=p4 lab=A}
C {devices/ipin.sym} 230 -280 0 0 {name=p2 lab=VDD}
C {devices/ipin.sym} 230 -40 0 0 {name=p5 lab=VSS}
