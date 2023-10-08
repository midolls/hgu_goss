v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -240 140 -240 {
lab=in}
N 110 -240 110 -80 {
lab=in}
N 110 -80 140 -80 {
lab=in}
N 200 -80 230 -80 {
lab=out}
N 230 -240 230 -80 {
lab=out}
N 200 -240 230 -240 {
lab=out}
N 230 -160 260 -160 {
lab=out}
N 80 -160 110 -160 {
lab=in}
N 170 -40 170 -20 {
lab=sw}
N 170 -300 170 -280 {
lab=swb}
N 50 -230 170 -230 {}
N 170 -240 170 -230 {}
N 50 -110 170 -110 {}
N 170 -110 170 -80 {}
C {sky130_fd_pr/nfet_01v8.sym} 170 -60 3 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 170 -260 1 0 {name=M2
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
C {devices/ipin.sym} 80 -160 0 0 {name=p1 lab=in}
C {devices/opin.sym} 260 -160 0 0 {name=p2 lab=out}
C {devices/ipin.sym} 170 -20 0 0 {name=p3 lab=sw}
C {devices/ipin.sym} 170 -300 0 0 {name=p4 lab=swb}
C {devices/ipin.sym} 50 -230 0 0 {name=p5 lab=VDD}
C {devices/ipin.sym} 50 -110 0 0 {name=p6 lab=VSS}
