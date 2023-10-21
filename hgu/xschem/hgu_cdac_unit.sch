v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 -130 90 -80 {
lab=PLUS}
N 90 -20 90 30 {
lab=MINUS}
C {devices/iopin.sym} 90 -130 0 0 {name=p1 lab=PLUS}
C {devices/iopin.sym} 90 30 0 0 {name=p2 lab=MINUS
}
C {sky130_fd_pr/vpp_cap.sym} 90 -50 0 0 {name=C2
model=cap_vpp_02p4x04p6_m1m2_noshield
W=1
L=1 
mult=1 
spiceprefix=X}
C {devices/iopin.sym} 70 -40 0 1 {name=p3 lab=SUB
}
C {devices/noconn.sym} 70 -60 0 0 {name=l1}
