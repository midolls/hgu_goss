v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -170 180 -170 {
lab=#net1}
N 260 -170 290 -170 {
lab=#net2}
N 370 -170 400 -170 {
lab=#net3}
N 480 -170 510 -170 {
lab=#net4}
N 590 -170 640 -170 {
lab=out}
N 640 -170 640 -150 {
lab=out}
N 640 -150 640 -100 {
lab=out}
N -20 -100 640 -100 {
lab=out}
N -20 -150 -20 -100 {
lab=out}
N -20 -150 20 -150 {
lab=out}
N -20 -190 20 -190 {
lab=xxx}
C {sky130_stdcells/inv_2.sym} 220 -170 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_2.sym} 330 -170 0 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_2.sym} 440 -170 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_2.sym} 550 -170 0 0 {name=x4 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 80 -170 0 0 {name=x5 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} -20 -190 0 0 {name=p1 lab=enable}
C {devices/opin.sym} 640 -170 0 0 {name=p2 lab=out}
