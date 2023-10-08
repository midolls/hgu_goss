v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 490 -320 510 -320 {
lab=#net1}
N 490 -160 510 -160 {
lab=#net2}
N 1060 -210 1140 -270 {
lab=#net3}
N 1140 -320 1140 -280 {
lab=#net3}
N 1060 -270 1140 -210 {
lab=#net4}
N 350 -290 350 -270 {
lab=#net4}
N 350 -200 350 -180 {
lab=#net3}
N 350 -180 370 -180 {
lab=#net3}
N 1140 -210 1140 -160 {
lab=#net4}
N 350 -210 350 -200 {
lab=#net3}
N 310 -140 370 -140 {
lab=#net5}
N 190 -140 230 -140 {
lab=clk}
N 190 -330 190 -150 {
lab=clk}
N 190 -340 190 -330 {
lab=clk}
N 190 -340 370 -340 {
lab=clk}
N 350 -270 1060 -270 {
lab=#net4}
N 350 -210 1060 -210 {
lab=#net3}
N 350 -300 350 -290 {
lab=#net4}
N 350 -300 370 -300 {
lab=#net4}
N 190 -150 190 -140 {
lab=clk}
N 1140 -280 1140 -270 {
lab=#net3}
N 960 -380 960 -320 {
lab=#net6}
N 970 -380 1140 -380 {
lab=#net6}
N 950 -160 950 -100 {
lab=#net7}
N 970 -100 1140 -100 {
lab=#net7}
N 1140 -380 1180 -380 {
lab=#net6}
N 1140 -320 1180 -320 {
lab=#net3}
N 1140 -160 1180 -160 {
lab=#net4}
N 1140 -100 1180 -100 {
lab=#net7}
N 1260 -100 1300 -100 {
lab=phi2}
N 1260 -160 1300 -160 {
lab=phi2_n}
N 1260 -320 1300 -320 {
lab=phi1_n}
N 1260 -380 1300 -380 {
lab=phi1}
N 110 -340 190 -340 {
lab=clk}
N 960 -380 970 -380 {
lab=#net6}
N 950 -100 970 -100 {
lab=#net7}
N 940 -320 960 -320 {
lab=#net6}
N 960 -320 1000 -320 {
lab=#net6}
N 940 -160 950 -160 {
lab=#net7}
N 950 -160 1000 -160 {
lab=#net7}
N 1000 -160 1020 -160 {
lab=#net7}
N 1000 -320 1020 -320 {
lab=#net6}
N 1100 -320 1140 -320 {
lab=#net3}
N 1100 -160 1140 -160 {
lab=#net4}
N 600 -320 620 -320 {
lab=#net8}
N 600 -160 610 -160 {
lab=#net9}
N 730 -320 740 -320 {
lab=#net10}
N 850 -320 860 -320 {
lab=#net11}
N 590 -320 600 -320 {
lab=#net8}
N 700 -320 730 -320 {
lab=#net10}
N 820 -320 850 -320 {
lab=#net11}
N 590 -160 600 -160 {
lab=#net9}
N 820 -160 860 -160 {
lab=#net12}
N 730 -160 740 -160 {
lab=#net13}
N 700 -160 730 -160 {
lab=#net13}
N 610 -160 620 -160 {
lab=#net9}
N 1250 -380 1260 -380 {
lab=phi1}
N 110 -410 130 -410 {
lab=VDD}
N 110 -390 130 -390 {
lab=VSS}
N 330 -280 350 -280 {
lab=#net4}
N 1140 -270 1160 -270 {
lab=#net3}
C {devices/iopin.sym} 110 -410 2 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 110 -390 2 0 {name=p2 lab=VSS}
C {devices/opin.sym} 1300 -160 0 0 {name=p9 lab=phi2_n}
C {devices/opin.sym} 1300 -100 0 0 {name=p10 lab=phi2}
C {devices/opin.sym} 1300 -380 0 0 {name=p5 lab=phi1}
C {devices/opin.sym} 1300 -320 0 0 {name=p4 lab=phi1_n}
C {sky130_stdcells/inv_1.sym} 270 -140 2 1 {name=x23 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_4.sym} 1210 -380 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} 110 -340 0 0 {name=p3 lab=clk}
C {sky130_stdcells/inv_1.sym} 1060 -320 0 0 {name=x5 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 900 -320 0 0 {name=x11 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 1060 -160 0 0 {name=x12 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_4.sym} 1220 -320 0 0 {name=x4 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_4.sym} 1220 -160 0 0 {name=x7 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_4.sym} 1220 -100 0 0 {name=x8 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dlymetal6s6s_1.sym} 550 -320 0 0 {name=x3 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dlymetal6s6s_1.sym} 550 -160 0 0 {name=x10 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dlymetal6s6s_1.sym} 660 -320 0 0 {name=x6 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dlymetal6s6s_1.sym} 660 -160 0 0 {name=x13 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 900 -160 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dlymetal6s6s_1.sym} 780 -320 0 0 {name=x9 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dlymetal6s6s_1.sym} 780 -160 0 0 {name=x14 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 430 -320 0 0 {name=x15 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 430 -160 0 0 {name=x16 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/noconn.sym} 130 -410 0 1 {name=l1}
C {devices/noconn.sym} 130 -390 0 1 {name=l2}
C {sky130_fd_pr/cap_mim_m3_1.sym} 140 -310 0 0 {name=C1 model=cap_mim_m3_1 W=1.405 L=1.4 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 140 -280 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} 330 -250 0 0 {name=C2 model=cap_mim_m3_1 W=1.405 L=1.4 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 330 -220 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1160 -240 0 0 {name=C3 model=cap_mim_m3_1 W=1.405 L=1.4 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 1160 -210 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} 990 -410 2 0 {name=C4 model=cap_mim_m3_1 W=1.405 L=1.4 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 990 -440 2 0 {name=p11 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} 990 -70 0 0 {name=C5 model=cap_mim_m3_1 W=1.405 L=1.4 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 990 -40 0 0 {name=p12 sig_type=std_logic lab=VSS}
