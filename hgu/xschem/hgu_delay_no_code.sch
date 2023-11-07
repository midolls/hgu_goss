v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {W = 0.42} 1400 -720 0 0 0.4 0.4 {}
N 300 -570 300 -460 {
lab=IN}
N 230 -670 340 -670 {
lab=VDD}
N 230 -510 300 -510 {
lab=IN}
N 1310 -540 1310 -490 {
lab=OUT}
N 1270 -570 1270 -460 {
lab=#net1}
N 1310 -570 1330 -570 {
lab=VDD}
N 1310 -460 1330 -460 {
lab=VSS}
N 1310 -510 1390 -510 {
lab=OUT}
N 1310 -400 1330 -400 {
lab=VSS}
N 1330 -400 1330 -370 {
lab=VSS}
N 1310 -630 1330 -630 {
lab=VDD}
N 1330 -660 1330 -630 {
lab=VDD}
N 1330 -460 1330 -400 {
lab=VSS}
N 1330 -630 1330 -570 {
lab=VDD}
N 1310 -600 1410 -600 {
lab=#net2}
N 1310 -430 1410 -430 {
lab=#net3}
N 1470 -430 1480 -430 {
lab=VDD}
N 1480 -490 1480 -430 {
lab=VDD}
N 1480 -490 1510 -530 {
lab=VDD}
N 1510 -670 1510 -530 {
lab=VDD}
N 1470 -600 1480 -600 {
lab=VSS}
N 1480 -600 1480 -530 {
lab=VSS}
N 1480 -530 1510 -490 {
lab=VSS}
N 1510 -490 1510 -350 {
lab=VSS}
N 1440 -560 1440 -470 {
lab=OUT}
N 1390 -510 1440 -510 {
lab=OUT}
N 1440 -510 1540 -510 {
lab=OUT}
N 1270 -630 1270 -570 {
lab=#net1}
N 1270 -460 1270 -400 {
lab=#net1}
N 1440 -430 1440 -350 {
lab=VSS}
N 1440 -670 1440 -600 {
lab=VDD}
N 870 -510 870 -470 {
lab=#net1}
N 1010 -510 1010 -470 {
lab=#net1}
N 1150 -510 1150 -470 {
lab=#net1}
N 1240 -510 1270 -510 {
lab=#net1}
N 460 -590 460 -510 {
lab=#net1}
N 460 -510 460 -460 {
lab=#net1}
N 340 -670 1510 -670 {
lab=VDD}
N 1310 -670 1310 -660 {
lab=VDD}
N 1330 -670 1330 -660 {
lab=VDD}
N 300 -670 300 -590 {
lab=VDD}
N 230 -350 1510 -350 {
lab=VSS}
N 300 -440 300 -350 {
lab=VSS}
N 1310 -370 1310 -350 {
lab=VSS}
N 1330 -370 1330 -350 {
lab=VSS}
N 460 -510 1240 -510 {
lab=#net1}
N 870 -550 870 -510 {
lab=#net1}
N 940 -740 940 -610 {
lab=#net4}
N 800 -410 800 -280 {
lab=code[2]}
N 940 -410 940 -280 {
lab=code[1]}
N 1080 -410 1080 -280 {
lab=code[0]}
N 710 -550 710 -510 {
lab=#net1}
N 710 -510 710 -470 {
lab=#net1}
N 780 -730 780 -610 {
lab=#net5}
N 730 -730 780 -730 {
lab=#net5}
N 630 -730 630 -410 {
lab=code_offset}
N 640 -730 650 -730 {
lab=code_offset}
N 630 -730 640 -730 {
lab=code_offset}
N 630 -410 640 -410 {
lab=code_offset}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="sample_clk_gen"}
C {devices/ipin.sym} 230 -510 0 0 {name=p4 lab=IN}
C {devices/ipin.sym} 230 -670 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 230 -350 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} 1540 -510 0 0 {name=p3 lab=OUT}
C {sky130_fd_pr/nfet_01v8.sym} 1290 -460 0 0 {name=M13
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
C {sky130_fd_pr/nfet_01v8.sym} 1290 -400 0 0 {name=M15
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 1290 -570 0 0 {name=M46
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 1290 -630 0 0 {name=M47
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
C {/foss/designs/hgu_goss/hgu/xschem/hgu_sw_cap.sym} 1150 -410 0 0 {name=x2 DELAY_CAP=5f m_num=1}
C {/foss/designs/hgu_goss/hgu/xschem/hgu_sw_cap.sym} 1010 -410 0 0 {name=x3[1:0] DELAY_CAP=5f m_num=1}
C {/foss/designs/hgu_goss/hgu/xschem/hgu_sw_cap.sym} 870 -410 0 0 {name=x4[3:0] DELAY_CAP=5f m_num=1}
C {/foss/designs/hgu_goss/hgu/xschem/hgu_sw_cap_pmos.sym} 870 -610 2 0 {name=x5[7:0] DELAY_CAP=5f m_num=1}
C {devices/ipin.sym} 220 -210 0 0 {name=p5 lab=code[0:3]}
C {devices/lab_pin.sym} 800 -280 0 0 {name=p188 sig_type=std_logic lab=code[2]}
C {devices/lab_pin.sym} 940 -280 0 0 {name=p7 sig_type=std_logic lab=code[1]}
C {devices/lab_pin.sym} 1080 -280 0 0 {name=p8 sig_type=std_logic lab=code[0]}
C {devices/lab_pin.sym} 860 -740 0 0 {name=p9 sig_type=std_logic lab=code[3]}
C {sky130_stdcells/inv_1.sym} 900 -740 0 0 {name=x10 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {/foss/designs/hgu_goss/hgu/xschem/hgu_sw_cap.sym} 710 -410 0 0 {name=x7 DELAY_CAP=5f m_num=1}
C {/foss/designs/hgu_goss/hgu/xschem/hgu_sw_cap_pmos.sym} 710 -610 2 0 {name=x6 DELAY_CAP=5f m_num=1}
C {sky130_stdcells/inv_1.sym} 690 -730 0 0 {name=x11 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 630 -410 0 0 {name=p6 sig_type=std_logic lab=code_offset}
C {devices/ipin.sym} 220 -190 0 0 {name=p10 lab=code_offset}
C {/foss/designs/hgu_goss/hgu/xschem/../../../hgu_goss/hgu/xschem/hgu_pfet_hvt_stack_in_delay.sym} 370 -580 0 0 {name=x8}
C {/foss/designs/hgu_goss/hgu/xschem/../../../hgu_goss/hgu/xschem/hgu_nfet_hvt_stack_in_delay.sym} 360 -450 0 0 {name=x9}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 1440 -580 3 0 {name=M48
L=0.15
W=0.84
nf=2
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
C {sky130_fd_pr/nfet_01v8.sym} 1440 -450 1 0 {name=M1
L=0.15
W=0.84
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
C {devices/noconn.sym} 640 -600 0 0 {name=l2}
C {devices/noconn.sym} 800 -600 0 0 {name=l3}
C {devices/noconn.sym} 780 -420 2 0 {name=l4}
C {devices/noconn.sym} 940 -420 2 0 {name=l5}
C {devices/noconn.sym} 1080 -420 2 0 {name=l6}
C {devices/noconn.sym} 1220 -420 2 0 {name=l7}
