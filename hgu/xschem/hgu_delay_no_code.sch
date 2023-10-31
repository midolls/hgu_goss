v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 300 -570 300 -460 {
lab=IN}
N 230 -670 340 -670 {
lab=VDD}
N 230 -510 300 -510 {
lab=IN}
N 1180 -540 1180 -490 {
lab=OUT}
N 1140 -570 1140 -460 {
lab=Uc}
N 1180 -570 1200 -570 {
lab=VDD}
N 1180 -460 1200 -460 {
lab=VSS}
N 1180 -510 1260 -510 {
lab=OUT}
N 1180 -400 1200 -400 {
lab=VSS}
N 1200 -400 1200 -370 {
lab=VSS}
N 1180 -630 1200 -630 {
lab=VDD}
N 1200 -660 1200 -630 {
lab=VDD}
N 1200 -460 1200 -400 {
lab=VSS}
N 1200 -630 1200 -570 {
lab=VDD}
N 1180 -600 1280 -600 {
lab=#net1}
N 1180 -430 1280 -430 {
lab=#net2}
N 1340 -430 1350 -430 {
lab=VDD}
N 1350 -490 1350 -430 {
lab=VDD}
N 1350 -490 1380 -530 {
lab=VDD}
N 1380 -670 1380 -530 {
lab=VDD}
N 1340 -600 1350 -600 {
lab=VSS}
N 1350 -600 1350 -530 {
lab=VSS}
N 1350 -530 1380 -490 {
lab=VSS}
N 1380 -490 1380 -350 {
lab=VSS}
N 1310 -560 1310 -470 {
lab=OUT}
N 1260 -510 1310 -510 {
lab=OUT}
N 1310 -510 1410 -510 {
lab=OUT}
N 1140 -630 1140 -570 {
lab=Uc}
N 1140 -460 1140 -400 {
lab=Uc}
N 1310 -430 1310 -350 {
lab=VSS}
N 1310 -670 1310 -600 {
lab=VDD}
N 580 -470 580 -350 {
lab=VSS}
N 550 -470 550 -350 {
lab=VSS}
N 520 -470 520 -350 {
lab=VSS}
N 740 -510 740 -470 {
lab=Uc}
N 880 -510 880 -470 {
lab=Uc}
N 1020 -510 1020 -470 {
lab=Uc}
N 1110 -510 1140 -510 {
lab=Uc}
N 460 -590 460 -510 {
lab=Uc}
N 460 -510 460 -460 {
lab=Uc}
N 340 -670 1380 -670 {
lab=VDD}
N 1180 -670 1180 -660 {
lab=VDD}
N 1200 -670 1200 -660 {
lab=VDD}
N 300 -670 300 -590 {
lab=VDD}
N 230 -350 1380 -350 {
lab=VSS}
N 300 -440 300 -350 {
lab=VSS}
N 1180 -370 1180 -350 {
lab=VSS}
N 1200 -370 1200 -350 {
lab=VSS}
N 460 -510 1110 -510 {
lab=Uc}
N 740 -550 740 -510 {
lab=Uc}
N 810 -740 810 -610 {
lab=#net3}
N 670 -410 670 -280 {
lab=code[2]}
N 810 -410 810 -280 {
lab=code[1]}
N 950 -410 950 -280 {
lab=code[0]}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="sample_clk_gen"}
C {devices/ipin.sym} 230 -510 0 0 {name=p4 lab=IN}
C {devices/ipin.sym} 230 -670 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 230 -350 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} 1410 -510 0 0 {name=p3 lab=OUT}
C {sky130_fd_pr/nfet_01v8.sym} 1160 -460 0 0 {name=M13
L=0.15
W=0.8
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
C {sky130_fd_pr/nfet_01v8.sym} 1160 -400 0 0 {name=M15
L=0.15
W=0.8
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
C {sky130_fd_pr/nfet_01v8_nf.sym} 1310 -450 1 0 {name=M1
L=0.15
W=0.42
nf=2 
mult=1
ad="'int((nf+1)/2) * W / nf * 0.29'"
pd="'2*int((nf+1)/2) * (W / nf + 0.29)'"
as="'int((nf+2)/2) * W / nf * 0.29'"
ps="'2*int((nf+2)/2) * (W / nf + 0.29)'"
nrd="'0.29 / W '" nrs="'0.29 / W '"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 1160 -570 0 0 {name=M46
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 1160 -630 0 0 {name=M47
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
C {sky130_fd_pr/pfet_01v8_hvt_nf.sym} 1310 -580 3 0 {name=M48
L=0.15
W=0.42
nf=2
mult=1
ad="'int((nf+1)/2) * W / nf * 0.29'"
pd="'2*int((nf+1)/2) * (W / nf + 0.29)'"
as="'int((nf+2)/2) * W / nf * 0.29'"
ps="'2*int((nf+2)/2) * (W / nf + 0.29)'"
nrd="'0.29 / W '" nrs="'0.29 / W '"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {/foss/designs/hgu_goss/hgu/xschem/hgu_sw_cap.sym} 1020 -410 0 0 {name=x2 DELAY_CAP=5f m_num=1}
C {/foss/designs/hgu_goss/hgu/xschem/hgu_sw_cap.sym} 880 -410 0 0 {name=x3[1:0] DELAY_CAP=5f m_num=1}
C {/foss/designs/hgu_goss/hgu/xschem/hgu_sw_cap.sym} 740 -410 0 0 {name=x4[3:0] DELAY_CAP=5f m_num=1}
C {/foss/designs/hgu_goss/hgu/xschem/hgu_sw_cap_pmos.sym} 740 -610 2 0 {name=x5[7:0] DELAY_CAP=5f m_num=1}
C {/foss/designs/hgu_goss/hgu/xschem/../../../hgu_goss/hgu/xschem/hgu_pfet_hvt_stack_in_delay.sym} 370 -580 0 0 {name=x3}
C {/foss/designs/hgu_goss/hgu/xschem/../../../hgu_goss/hgu/xschem/hgu_nfet_hvt_stack_in_delay.sym} 360 -450 0 0 {name=x4}
C {devices/ipin.sym} 220 -210 0 0 {name=p5 lab=code[0:3]}
C {devices/lab_pin.sym} 670 -280 0 0 {name=p188 sig_type=std_logic lab=code[2]}
C {devices/lab_pin.sym} 810 -280 0 0 {name=p7 sig_type=std_logic lab=code[1]}
C {devices/lab_pin.sym} 950 -280 0 0 {name=p8 sig_type=std_logic lab=code[0]}
C {devices/lab_pin.sym} 730 -740 0 0 {name=p9 sig_type=std_logic lab=code[3]}
C {devices/lab_pin.sym} 610 -510 3 0 {name=p6 sig_type=std_logic lab=Uc}
C {sky130_fd_pr/nfet_01v8.sym} 550 -490 1 0 {name=M2
L=0.42
W=6
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
C {sky130_stdcells/inv_1.sym} 770 -740 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
