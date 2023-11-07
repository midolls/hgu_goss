v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {5.11e-15 F} 360 -270 2 0 0.2 0.2 {}
N 280 -330 280 -310 {
lab=VDD}
N 280 -250 280 -230 {
lab=floating}
C {devices/lab_pin.sym} 280 -200 0 0 {name=p32 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 280 -170 0 0 {name=p1 sig_type=std_logic lab=DELAY_SIGNAL}
C {devices/lab_pin.sym} 280 -330 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 320 -200 2 0 {name=p3 sig_type=std_logic lab=SW}
C {devices/ipin.sym} 130 -120 0 0 {name=p4 lab=SW}
C {devices/ipin.sym} 130 -60 0 0 {name=p6 lab=VDD}
C {devices/iopin.sym} 130 -90 2 0 {name=p7 lab=DELAY_SIGNAL}
C {sky130_fd_pr/pfet_01v8.sym} 300 -200 2 0 {name=M16
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
C {../xschem/hgu_vpp_cap.sym} 280 -280 0 0 {symname=hgu_cdac_unit
name=x1}
C {devices/lab_pin.sym} 260 -270 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 280 -240 2 0 {name=p8 lab=floating}
