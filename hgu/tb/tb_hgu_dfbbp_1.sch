v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 5 -242.5 -112.5 -237.5 -107.5 {name=CLK dir=in }
B 5 -242.5 -92.5 -237.5 -87.5 {name=D dir=in }
B 5 -242.5 -72.5 -237.5 -67.5 {name=RESET_B dir=in }
B 5 -242.5 -52.5 -237.5 -47.5 {name=SET_B dir=in }
B 5 -62.5 -112.5 -57.5 -107.5 {name=Q dir=out }
B 5 -62.5 -92.5 -57.5 -87.5 {name=Q_N dir=out }
N -360 -50 -320 -50 {
lab=#net1}
N -410 -70 -410 -50 {
lab=#net2}
N -410 -70 -320 -70 {
lab=#net2}
N 30 -110 30 -60 {
lab=#net3}
N -30 -90 -30 -50 {
lab=Q_N}
N -410 -50 -410 -30 {
lab=#net2}
N -290 -110 -240 -110 {
lab=CLK}
N -290 -90 -240 -90 {
lab=D}
N -350 -90 -290 -90 {
lab=D}
N -290 -130 -290 -110 {
lab=CLK}
N -60 -90 -30 -90 {
lab=Q_N}
N -60 -110 30 -110 {}
C {sky130_stdcells/inv_1.sym} -280 -70 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} -280 -50 0 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/vsource.sym} -360 -20 0 0 {name=V1 value=0}
C {devices/vsource.sym} -410 0 0 0 {name=V3 value="PULSE(0 1.62 1n 5p 5p 2n 400n)"}
C {devices/gnd.sym} -410 30 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -360 10 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -350 -150 2 0 {name=l3 lab=GND}
C {devices/vsource.sym} -290 -160 2 0 {name=V4 value="PULSE(0 1.62 50n 5p 5p 100n 150n)"}
C {devices/gnd.sym} -290 -190 2 0 {name=l4 lab=GND}
C {devices/code.sym} -715 -130 0 0 {name=s1 only_toplevel=false value="
.save all 
.temp = 100
.tran 100p 400n
.OPTIONS savecurrent
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.control
	run
	let svdd = 1.62
	let max = svdd*0.8
	let min = svdd*0.2
	let mid = svdd*0.5
	meas tran rising_s find time when V(q)=min RISE=1 TD=1000p
        meas tran rising_e find time when V(q)=max RISE=1 TD=1000p
        let rising_time = rising_e-rising_s
        meas tran falling_s find time when V(q)=max FALL=1 TD=1000p
        meas tran falling_e find time when V(q)=min FALL=1 TD=1000p
        let falling_time = falling_e-falling_s
        meas tran IN find time when V(clk)=mid RISE=1 TD=1000p
        meas tran OUT find time when V(q)=mid RISE=1 TD=1000p
        let rising_delay = OUT-IN
	meas tran fIN find time when V(clk)=mid RISE=1 TD=100n
        meas tran fOUT find time when V(q)=mid FALL=1 TD=100n
        let falling_delay = fOUT-fIN

        print rising_time falling_time rising_delay falling_delay

	plot v(CLK)+4 V(D)+2 V(Q) 
.endc
"}
C {sky130_fd_pr/corner.sym} -845 -130 0 0 {name=CORNER only_toplevel=false corner=ss}
C {devices/capa.sym} -30 -20 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 30 -30 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -30 10 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 30 0 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} -250 -110 0 0 {name=p1 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -260 -90 0 0 {name=p2 sig_type=std_logic lab=D}
C {devices/lab_wire.sym} 0 -110 0 0 {name=p3 sig_type=std_logic lab=Q}
C {devices/lab_wire.sym} -30 -90 0 0 {name=p4 sig_type=std_logic lab=Q_N}
C {sky130_stdcells/dfbbp_1.sym} -150 -80 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/vdd.sym} -510 100 0 0 {name=l7 lab=VPB}
C {devices/vsource.sym} -510 130 0 0 {name=V5 value=1.62}
C {devices/gnd.sym} -510 160 0 0 {name=l8 lab=GND}
C {devices/vdd.sym} -450 100 0 0 {name=l9 lab=VNB}
C {devices/vsource.sym} -450 130 0 0 {name=V6 value=0}
C {devices/gnd.sym} -450 160 0 0 {name=l10 lab=GND}
C {devices/vdd.sym} -630 100 0 0 {name=l16 lab=VPWR}
C {devices/vsource.sym} -630 130 0 0 {name=V7 value=1.62}
C {devices/gnd.sym} -630 160 0 0 {name=l17 lab=GND}
C {devices/vdd.sym} -570 100 0 0 {name=l18 lab=VGND}
C {devices/vsource.sym} -570 130 0 0 {name=V8 value=0}
C {devices/gnd.sym} -570 160 0 0 {name=l19 lab=GND}
C {devices/vsource.sym} -350 -120 2 0 {name=V9 value="PULSE(0 1.62 0 5p 5p 80n 400n)"}
