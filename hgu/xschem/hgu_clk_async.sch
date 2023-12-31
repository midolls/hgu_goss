v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 830 -480 880 -480 {
lab=#net2}
N 530 -420 570 -420 {
lab=#net1}
N 530 -440 570 -440 {
lab=#net3}
N 530 -530 530 -440 {
lab=#net3}
C {devices/ipin.sym} 160 -650 0 0 {name=p1 lab=VDD}
C {devices/opin.sym} 210 -650 0 0 {name=p2 lab=ASYNC_CLK_SAR}
C {devices/ipin.sym} 160 -630 0 0 {name=p4 lab=VSS}
C {devices/lab_pin.sym} 230 -420 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 230 -380 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 230 -530 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 230 -490 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 160 -610 0 0 {name=p15 lab=sample_clk}
C {devices/lab_pin.sym} 650 -480 0 0 {name=p16 sig_type=std_logic lab=sample_clk}
C {devices/lab_pin.sym} 880 -440 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 960 -420 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 880 -400 0 0 {name=p19 sig_type=std_logic lab=sample_clk}
C {devices/lab_pin.sym} 960 -380 0 0 {name=p20 sig_type=std_logic lab=EOB}
C {devices/ipin.sym} 160 -590 0 0 {name=p21 lab=EOB}
C {devices/lab_pin.sym} 1040 -440 2 0 {name=p22 sig_type=std_logic lab=ASYNC_CLK_SAR}
C {devices/lab_pin.sym} 230 -510 0 0 {name=p23 sig_type=std_logic lab=ASYNC_CLK_SAR}
C {devices/ipin.sym} 160 -570 0 0 {name=p24 lab=READY}
C {devices/lab_pin.sym} 230 -400 0 0 {name=p25 sig_type=std_logic lab=READY}
C {devices/lab_pin.sym} 230 -360 0 0 {name=p26 sig_type=std_logic lab=async_setb_delay_ctrl_code[0:3]}
C {devices/lab_pin.sym} 230 -470 0 0 {name=p27 sig_type=std_logic lab=async_resetb_delay_ctrl_code[0:3]}
C {sky130_stdcells/mux2_1.sym} 920 -460 0 0 {name=x3 VGND=VSS VNB=VSS VPB=vDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/mux2_1.sym} 1000 -440 0 0 {name=x8 VGND=VSS VNB=VSS VPB=vDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfbbp_1.sym} 740 -450 0 0 {name=x27 VGND=VSS VNB=VSS VPB=vDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 610 -420 0 0 {name=x9 VGND=VSS VNB=VSS VPB=vDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 610 -440 0 0 {name=x10 VGND=VSS VNB=VSS VPB=vDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/noconn.sym} 830 -460 2 0 {name=l30}
C {devices/lab_pin.sym} 650 -460 0 0 {name=p29 sig_type=std_logic lab=VDD}
C {../xschem/hgu_delay_no_code.sym} 380 -390 0 0 {name=x2}
C {../xschem/hgu_delay_no_code.sym} 380 -500 0 0 {name=x4}
C {devices/ipin.sym} 230 -310 0 0 {name=p12 lab=async_resetb_delay_ctrl_code[0:3]}
C {devices/ipin.sym} 230 -290 0 0 {name=p13 lab=async_setb_delay_ctrl_code[0:3]}
C {devices/ipin.sym} 160 -550 0 0 {name=p14 lab=delay_offset}
C {devices/lab_pin.sym} 230 -450 0 0 {name=p28 sig_type=std_logic lab=delay_offset}
C {devices/lab_pin.sym} 230 -340 0 0 {name=p30 sig_type=std_logic lab=delay_offset}
C {devices/capa.sym} 530 -560 2 0 {name=C3
m=1
value=5f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 530 -590 2 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 550 -390 0 0 {name=C1
m=1
value=5f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 550 -360 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 960 -490 2 0 {name=C2
m=1
value=5f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 960 -520 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 850 -510 2 0 {name=C4
m=1
value=5f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 850 -540 2 0 {name=p11 sig_type=std_logic lab=VSS}
