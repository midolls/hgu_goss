v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 250 -110 270 -110 {
lab=VDD}
N 250 -170 270 -170 {
lab=VDD}
N 270 -200 270 -170 {
lab=VDD}
N 270 -170 270 -110 {
lab=VDD}
N 210 -170 210 -110 {
lab=input_stack}
N 270 -230 270 -200 {
lab=VDD}
N 270 -300 270 -270 {
lab=VDD}
N 210 -230 210 -170 {
lab=input_stack}
N 250 -230 270 -230 {
lab=VDD}
N 270 -340 270 -300 {
lab=VDD}
N 160 -110 210 -110 {
lab=input_stack}
N 250 -80 250 -50 {
lab=output_stack}
N 250 -260 270 -260 {
lab=VDD}
N 270 -270 270 -230 {
lab=VDD}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 230 -110 0 0 {name=M49
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 230 -170 0 0 {name=M41
L=0.15
W=0.43
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 230 -230 0 0 {name=M51
L=0.15
W=0.43
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/ipin.sym} 270 -340 1 0 {name=p2 lab=VDD}
C {devices/ipin.sym} 160 -110 0 0 {name=p1 lab=input_stack}
C {devices/iopin.sym} 250 -50 0 0 {name=p7 lab=output_stack}