v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 230 -110 230 -90 {
lab=VSS}
N 230 -190 230 -170 {
lab=VSS}
N 230 -170 260 -170 {}
N 260 -170 260 -110 {}
N 230 -110 260 -110 {}
C {devices/lab_pin.sym} 230 -220 2 0 {name=p32 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 210 -220 0 0 {name=M14
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
C {devices/lab_pin.sym} 230 -250 2 0 {name=p1 sig_type=std_logic lab=DELAY_SIGNAL}
C {devices/lab_pin.sym} 230 -90 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 190 -220 0 0 {name=p3 sig_type=std_logic lab=SW}
C {devices/ipin.sym} 130 -120 0 0 {name=p4 lab=SW}
C {devices/ipin.sym} 130 -60 0 0 {name=p6 lab=VSS}
C {devices/iopin.sym} 130 -90 2 0 {name=p7 lab=DELAY_SIGNAL}
C {devices/lab_pin.sym} 210 -130 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {../xschem/hgu_vpp_cap.sym} 230 -140 0 0 {symname=hgu_cdac_unit
name=x2}
