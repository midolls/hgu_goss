v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -50 180 -50 {
lab=GND}
N 180 -50 180 -40 {
lab=GND}
N 100 -130 100 -110 {
lab=VDD}
N 180 -130 180 -110 {
lab=VSS}
N 180 -50 250 -50 {
lab=GND}
N 370 -120 580 -120 {
lab=GND}
N 480 -120 480 -110 {
lab=GND}
N 250 -130 250 -110 {
lab=clk}
N 370 -220 370 -200 {
lab=inp}
N 580 -200 580 -180 {
lab=inn}
N 240 -430 260 -430 {
lab=inp}
N 240 -370 260 -370 {
lab=inn}
N 490 -510 520 -510 {
lab=X}
N 490 -490 520 -490 {
lab=Y}
N 490 -330 520 -330 {
lab=ready}
N 590 -420 620 -420 {
lab=outp}
N 590 -380 620 -380 {
lab=outn}
N 490 -550 520 -550 {
lab=P}
N 490 -530 520 -530 {
lab=Q}
N 370 -140 370 -120 {
lab=GND}
N 340 -500 350 -500 {
lab=VDD}
N 340 -280 350 -290 {
lab=VSS}
N 490 -470 520 -470 {
lab=X_drive}
N 490 -450 520 -450 {
lab=Y_drive}
N 390 -290 390 -280 {
lab=clk}
N 620 -460 620 -420 {
lab=outp}
N 620 -470 620 -460 {
lab=outp}
N 620 -470 770 -470 {
lab=outp}
N 620 -380 620 -360 {
lab=outn}
N 620 -360 770 -360 {
lab=outn}
C {/foss/designs/goss_test/module/comparator/comp.sym} 430 -400 0 0 {name=x1}
C {devices/vsource.sym} 100 -80 0 0 {name=V1 value=1.8}
C {devices/vsource.sym} 180 -80 0 0 {name=V2 value=0}
C {devices/gnd.sym} 180 -40 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 100 -130 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 180 -130 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 340 -500 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 340 -280 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 250 -80 0 0 {name=V3 value="PULSE(0 1.8 0 100p 100p 5n 20n)"}
C {devices/vsource.sym} 370 -170 0 0 {name=V4 value="PULSE(0.9017578125 0.8982421875 0 5p 5p 25n 50n)"}
C {devices/vsource.sym} 580 -150 0 0 {name=V5 value="PULSE(0.8982421875 0.9017578125 0 5p 5p 25n 50n)"}
C {devices/gnd.sym} 480 -110 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 250 -130 0 0 {name=p5 sig_type=std_logic lab=clk
}
C {devices/lab_pin.sym} 370 -220 0 0 {name=p6 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 580 -200 0 0 {name=p7 sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 240 -430 0 0 {name=p8 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 240 -370 0 0 {name=p9 sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 390 -280 0 0 {name=p10 sig_type=std_logic lab=clk
}
C {devices/lab_pin.sym} 520 -510 2 0 {name=p12 sig_type=std_logic lab=X}
C {devices/lab_pin.sym} 520 -490 2 0 {name=p13 sig_type=std_logic lab=Y}
C {devices/lab_pin.sym} 520 -330 2 0 {name=p14 sig_type=std_logic lab=ready}
C {devices/lab_pin.sym} 620 -420 2 0 {name=p11 sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 620 -380 2 0 {name=p15 sig_type=std_logic lab=outn}
C {devices/code.sym} 60 -280 0 0 {name=s1 only_toplevel=false value="

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.tran 1ns 100ns

.temp 25
.control
    run
     let svdd = 1.98
     let max = svdd*0.8
     let min = svdd*0.2
     let mid = svdd*0.5

	meas tran rising_s_d find time when V(clk)=mid RISE=1 TD=30n
	meas tran rising_e_d find time when V(outp)=mid RISE=1 TD=1000p
	let rising_delay = rising_e_d-rising_s_d

	meas tran falling_s_d find time when V(clk)=mid RISE=1 TD=50n
	meas tran falling_e_d find time when V(outp)=mid FALL=1 TD=50n
	let falling_delay = falling_e_d-falling_s_d

	meas tran rising_s find time when V(outp)=min RISE=1 TD=30n
   	meas tran rising_e find time when V(outp)=max RISE=1 TD=30n
   	let rising_time = rising_e-rising_s

   	meas tran falling_s find time when V(outp)=max FALL=1 TD=50n
  	meas tran falling_e find time when V(outp)=min FALL=1 TD=50n
   	let falling_time = falling_e-falling_s

    print rising_time falling_time rising_delay falling_delay
    plot V(outp)+6 V(P)-2  V(X)+2  V(clk) V(inn) V(inp) V(Y)+2  V(outn)+6 V(Q)-2 V(ready) V(X_drive)+4 V(Y_drive)+4
.endc
.save all

"}
C {devices/lab_pin.sym} 520 -550 2 0 {name=p16 sig_type=std_logic lab=P}
C {devices/lab_pin.sym} 520 -530 2 0 {name=p17 sig_type=std_logic lab=Q}
C {devices/lab_pin.sym} 520 -470 2 0 {name=p18 sig_type=std_logic lab=X_drive}
C {devices/lab_pin.sym} 520 -450 2 0 {name=p19 sig_type=std_logic lab=Y_drive}
C {sky130_stdcells/dfbbp_1.sym} 860 -460 0 0 {name=x2[7:0] VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfbbp_1.sym} 860 -350 0 0 {name=x1[7:0] VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 770 -380 0 0 {name=p20 sig_type=std_logic lab=clk
}
C {devices/lab_pin.sym} 770 -490 0 0 {name=p21 sig_type=std_logic lab=clk
}
C {devices/capa.sym} 680 -330 0 0 {name=C1
m=1
value=5f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 680 -500 2 1 {name=C2
m=1
value=5f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 680 -300 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 680 -530 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/noconn.sym} 950 -490 0 1 {name=l7}
C {devices/noconn.sym} 950 -470 0 1 {name=l8}
C {devices/noconn.sym} 950 -380 0 1 {name=l3}
C {devices/noconn.sym} 950 -360 0 1 {name=l4}
C {devices/lab_pin.sym} 770 -340 0 0 {name=p24 sig_type=std_logic lab=clk
}
C {devices/lab_pin.sym} 770 -320 0 0 {name=p25 sig_type=std_logic lab=clk
}
C {devices/lab_pin.sym} 770 -450 0 0 {name=p26 sig_type=std_logic lab=clk
}
C {devices/lab_pin.sym} 770 -430 0 0 {name=p27 sig_type=std_logic lab=clk
}
