v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -140 -20 20 -20 {
lab=tah_vp}
N -420 60 -170 60 {
lab=VDD}
N -170 130 -170 210 {
lab=VSS}
N -420 130 -170 130 {
lab=VSS}
N -270 210 -200 210 {
lab=vip}
N -270 -20 -270 210 {
lab=vip}
N -270 -20 -200 -20 {
lab=vip}
N 80 -20 150 -20 {
lab=tah_vp}
N 150 -20 150 210 {
lab=tah_vp}
N 80 210 150 210 {
lab=tah_vp}
N 150 100 200 100 {
lab=tah_vp}
N -320 100 -270 100 {
lab=vip}
N -140 210 20 210 {
lab=tah_vp}
N -170 -80 -170 -60 {
lab=sw_n}
N 50 -80 50 -60 {
lab=sw}
N -170 250 -170 280 {
lab=sw}
N 50 250 50 280 {
lab=sw_n}
N 20 -30 20 -20 {
lab=tah_vp}
N 80 -30 80 -20 {
lab=tah_vp}
N 20 -20 80 -20 {
lab=tah_vp}
N 20 210 20 220 {
lab=tah_vp}
N 80 210 80 220 {
lab=tah_vp}
N 20 210 80 210 {
lab=tah_vp}
N -200 -30 -200 -20 {
lab=vip}
N -140 -30 -140 -20 {
lab=tah_vp}
N -170 -30 -170 60 {
lab=VDD}
N 50 -30 50 50 {
lab=VDD}
N 50 50 50 60 {
lab=VDD}
N -170 60 50 60 {
lab=VDD}
N 50 130 50 220 {
lab=VSS}
N -170 130 50 130 {
lab=VSS}
N -140 390 20 390 {
lab=tah_vn}
N -420 470 -170 470 {
lab=VDD}
N -170 540 -170 620 {
lab=VSS}
N -420 540 -170 540 {
lab=VSS}
N -270 620 -200 620 {
lab=vin}
N -270 390 -270 620 {
lab=vin}
N -270 390 -200 390 {
lab=vin}
N 80 390 150 390 {
lab=tah_vn}
N 150 390 150 620 {
lab=tah_vn}
N 80 620 150 620 {
lab=tah_vn}
N 150 510 200 510 {
lab=tah_vn}
N -320 510 -270 510 {
lab=vin}
N -140 620 20 620 {
lab=tah_vn}
N -170 330 -170 350 {
lab=sw_n}
N 50 330 50 350 {
lab=sw}
N -170 660 -170 690 {
lab=sw}
N 50 660 50 690 {
lab=sw_n}
N 20 380 20 390 {
lab=tah_vn}
N 80 380 80 390 {
lab=tah_vn}
N 20 390 80 390 {
lab=tah_vn}
N 20 620 20 630 {
lab=tah_vn}
N 80 620 80 630 {
lab=tah_vn}
N 20 620 80 620 {
lab=tah_vn}
N -200 380 -200 390 {
lab=vin}
N -140 380 -140 390 {
lab=tah_vn}
N -170 380 -170 470 {
lab=VDD}
N 50 380 50 460 {
lab=VDD}
N 50 460 50 470 {
lab=VDD}
N -170 470 50 470 {
lab=VDD}
N 50 540 50 630 {
lab=VSS}
N -170 540 50 540 {
lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 50 -50 1 0 {name=M1
L=0.15
W=11
nf=2
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
C {sky130_fd_pr/nfet_01v8.sym} -170 230 1 1 {name=M4
L=0.15
W=11
nf=4
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
C {devices/lab_wire.sym} -170 -80 0 0 {name=p1 sig_type=std_logic lab=sw_n
}
C {devices/lab_wire.sym} 50 280 0 0 {name=p2 sig_type=std_logic lab=sw_n
}
C {devices/lab_wire.sym} 50 -80 0 0 {name=p3 sig_type=std_logic lab=sw
}
C {devices/lab_wire.sym} -170 280 0 0 {name=p4 sig_type=std_logic lab=sw

}
C {devices/iopin.sym} 200 100 0 0 {name=p5 lab=tah_vp
}
C {devices/iopin.sym} -320 100 0 1 {name=p6 lab=vip
}
C {devices/iopin.sym} -460 -30 0 1 {name=p7 lab=VDD
}
C {devices/iopin.sym} -460 0 0 1 {name=p8 lab=VSS
}
C {devices/ipin.sym} -370 -30 0 0 {name=p9 lab=sw
}
C {devices/ipin.sym} -370 0 0 0 {name=p10 lab=sw_n

}
C {sky130_fd_pr/pfet_01v8.sym} -170 -50 1 0 {name=M2
L=0.15
W=22
nf=4
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
C {sky130_fd_pr/nfet_01v8.sym} 50 240 1 1 {name=M3
L=0.15
W=5.5
nf=2
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
C {devices/lab_wire.sym} -170 330 0 0 {name=p11 sig_type=std_logic lab=sw_n
}
C {devices/lab_wire.sym} 50 690 0 0 {name=p12 sig_type=std_logic lab=sw_n
}
C {devices/lab_wire.sym} 50 330 0 0 {name=p13 sig_type=std_logic lab=sw
}
C {devices/lab_wire.sym} -170 690 0 0 {name=p14 sig_type=std_logic lab=sw

}
C {devices/iopin.sym} 200 510 0 0 {name=p15 lab=tah_vn}
C {devices/iopin.sym} -320 510 0 1 {name=p16 lab=vin
}
C {devices/lab_wire.sym} -410 60 0 0 {name=p19 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} -410 130 0 0 {name=p20 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -410 470 0 0 {name=p17 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} -410 540 0 0 {name=p18 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/pfet_01v8.sym} -170 360 1 0 {name=M9
L=0.15
W=22
nf=4
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
C {sky130_fd_pr/pfet_01v8.sym} 50 360 1 0 {name=M7
L=0.15
W=11
nf=2
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
C {sky130_fd_pr/nfet_01v8.sym} -170 640 1 1 {name=M5
L=0.15
W=11
nf=4
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
C {sky130_fd_pr/nfet_01v8.sym} 50 650 1 1 {name=M6
L=0.15
W=5.5
nf=2
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
