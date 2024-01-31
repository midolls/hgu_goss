v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 320 -110 320 -60 {
lab=OSIL}
N 320 -60 760 -60 {
lab=OSIL}
N 760 -130 760 -60 {
lab=OSIL}
C {devices/ipin.sym} 140 -160 0 0 {name=p1 lab=EN}
C {devices/opin.sym} 180 -160 0 0 {name=p3 lab=OSIL}
C {sky130_stdcells/inv_1.sym} 480 -130 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 380 -130 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 560 -130 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 640 -130 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 720 -130 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 320 -150 0 0 {name=p4 sig_type=std_logic lab=EN}
C {devices/ipin.sym} 140 -80 0 0 {name=p7 lab=GND}
C {devices/ipin.sym} 140 -100 0 0 {name=p9 lab=VDD}
C {devices/lab_pin.sym} 760 -130 2 0 {name=p2 sig_type=std_logic lab=OSIL}
