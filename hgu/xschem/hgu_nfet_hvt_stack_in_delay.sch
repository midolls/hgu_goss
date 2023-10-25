v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 160 -1010 180 -1010 {
lab=VSS}
N 180 -1010 180 -980 {
lab=VSS}
N 120 -1070 120 -1010 {
lab=input_stack}
N 160 -950 180 -950 {
lab=VSS}
N 160 -890 180 -890 {
lab=VSS}
N 180 -890 180 -860 {
lab=VSS}
N 180 -950 180 -890 {
lab=VSS}
N 120 -950 120 -890 {
lab=input_stack}
N 120 -1010 120 -950 {
lab=input_stack}
N 160 -830 180 -830 {
lab=VSS}
N 160 -770 180 -770 {
lab=VSS}
N 180 -770 180 -740 {
lab=VSS}
N 180 -830 180 -770 {
lab=VSS}
N 120 -830 120 -770 {
lab=input_stack}
N 160 -710 180 -710 {
lab=VSS}
N 160 -650 180 -650 {
lab=VSS}
N 180 -650 180 -620 {
lab=VSS}
N 180 -710 180 -650 {
lab=VSS}
N 120 -710 120 -650 {
lab=input_stack}
N 120 -770 120 -710 {
lab=input_stack}
N 120 -890 120 -830 {
lab=input_stack}
N 160 -590 180 -590 {
lab=VSS}
N 160 -530 180 -530 {
lab=VSS}
N 180 -530 180 -500 {
lab=VSS}
N 180 -590 180 -530 {
lab=VSS}
N 120 -590 120 -530 {
lab=input_stack}
N 180 -980 180 -950 {
lab=VSS}
N 180 -860 180 -830 {
lab=VSS}
N 180 -740 180 -710 {
lab=VSS}
N 180 -620 180 -590 {
lab=VSS}
N 120 -650 120 -590 {
lab=input_stack}
N 180 -500 180 -470 {
lab=VSS}
N 160 -500 180 -500 {
lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 140 -1010 0 0 {name=M6
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
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 180 -470 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 120 -1070 0 0 {name=p1 lab=input_stack}
C {devices/iopin.sym} 160 -1040 0 0 {name=p7 lab=output_stack}
C {sky130_fd_pr/nfet_01v8.sym} 140 -950 0 0 {name=M1
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 140 -890 0 0 {name=M2
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 140 -830 0 0 {name=M3
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 140 -770 0 0 {name=M4
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 140 -710 0 0 {name=M5
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 140 -650 0 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8.sym} 140 -590 0 0 {name=M8
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
C {sky130_fd_pr/nfet_01v8.sym} 140 -530 0 0 {name=M9
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
