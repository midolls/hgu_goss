v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -230 240 -150 {
lab=sw<5>}
N 270 -230 270 -150 {
lab=sw<4>}
N 300 -310 300 -150 {
lab=sw<3>}
N 330 -310 330 -150 {
lab=sw<2>}
N 510 -130 640 -130 {
lab=VSS}
N 510 -210 640 -210 {
lab=VDD}
C {sky130_stdcells/buf_1.sym} 210 -350 1 0 {name=x9 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_4.sym} 210 -270 1 0 {name=x10 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_16.sym} 210 -190 1 0 {name=x11 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} 210 -390 1 0 {name=p15 lab=sar_val<7>}
C {devices/opin.sym} 210 -150 1 0 {name=p35 lab=sw<6>}
C {devices/opin.sym} 240 -150 1 0 {name=p1 lab=sw<5>}
C {devices/opin.sym} 270 -150 1 0 {name=p2 lab=sw<4>}
C {devices/opin.sym} 300 -150 1 0 {name=p3 lab=sw<3>}
C {devices/opin.sym} 330 -150 1 0 {name=p4 lab=sw<2>}
C {devices/ipin.sym} 240 -390 1 0 {name=p7 lab=sar_val<6>}
C {devices/ipin.sym} 270 -390 1 0 {name=p8 lab=sar_val<5>}
C {devices/ipin.sym} 300 -390 1 0 {name=p9 lab=sar_val<4>}
C {devices/ipin.sym} 330 -390 1 0 {name=p10 lab=sar_val<3>}
C {devices/ipin.sym} 510 -210 2 1 {name=p5 lab=VDD}
C {devices/ipin.sym} 510 -130 2 1 {name=p6 lab=VSS}
C {sky130_stdcells/buf_4.sym} 240 -270 1 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_4.sym} 270 -270 1 0 {name=x2 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 240 -350 1 0 {name=x3 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 270 -350 1 0 {name=x4 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 300 -350 1 0 {name=x5 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 330 -350 1 0 {name=x6 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 640 -170 3 0 {name=x7 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 590 -170 3 0 {name=x8 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 540 -170 3 0 {name=x12 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
