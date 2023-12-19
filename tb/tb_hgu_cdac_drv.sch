v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -10 300 -10 {
lab=fo1}
N -100 -10 20 -10 {
lab=fi1}
N 240 -230 320 -230 {
lab=fo2}
N -140 -230 -90 -230 {
lab=fi2}
N 240 -470 320 -470 {
lab=fo3}
N -140 -470 -90 -470 {
lab=fi3}
N 800 -470 880 -470 {
lab=o1}
N 640 -470 690 -470 {
lab=i1}
N 130 -230 240 -230 {
lab=fo2}
N 130 160 300 160 {
lab=out}
N -100 160 20 160 {
lab=in}
N 880 190 1050 190 {
lab=out2}
N 500 190 620 190 {
lab=in2}
N 840 190 880 190 {
lab=out2}
C {../xschem/hgu_inverter.sym} 60 -10 0 0 {name=x1[0:15]}
C {../xschem/hgu_cdac_unit.sym} 300 40 2 0 {name=x2[0:63] csize=1}
C {devices/lab_pin.sym} 350 -10 1 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -230 -80 0 0 {name=V1 value=0}
C {devices/lab_pin.sym} -230 -110 1 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -230 -50 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 300 90 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -100 20 0 0 {name=V2 value="PULSE(0 0.9 0 10n 10n 250n 500n)"}
C {devices/gnd.sym} -100 50 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 60 30 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -290 -80 0 0 {name=V3 value=0.9}
C {devices/lab_pin.sym} -290 -110 1 0 {name=p2 sig_type=std_logic lab=VREF}
C {devices/gnd.sym} -290 -50 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -350 -80 0 0 {name=V4 value=1.8}
C {devices/lab_pin.sym} -350 -110 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} -350 -50 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} -30 -10 0 0 {name=p4 sig_type=std_logic lab=fi1}
C {devices/lab_wire.sym} 210 -10 0 0 {name=p5 sig_type=std_logic lab=fo1}
C {devices/lab_pin.sym} 50 -50 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 70 -40 1 0 {name=p7 sig_type=std_logic lab=VREF}
C {devices/code.sym} -300 60 0 0 {name=spice1 only_toplevel=false value="

.OPTIONS savecurrents
.tran 10ps 350ns
.include /foss/designs/hgu_goss/hgu/mag/hgu_cdac_unit.spice
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.control
	run
	let svdd = 0.9
	let max = svdd*0.8
	let min = svdd*0.2
	let mid = svdd*0.5
	meas tran rising_sx1 find time when V(out)=min RISE=1 TD=1p
        meas tran rising_ex1 find time when V(out)=max RISE=1 TD=1p
        let rising_time_x1 = rising_ex1-rising_sx1
        meas tran falling_sx1 find time when V(out)=max FALL=1 TD=1p
        meas tran falling_ex1 find time when V(out)=min FALL=1 TD=1p
	let falling_time_x1 = falling_ex1-falling_sx1
	meas tran rising_sx3 find time when V(out2)=min RISE=1 TD=1p
        meas tran rising_ex3 find time when V(out2)=max RISE=1 TD=1p
        let rising_time_x3 = rising_ex1-rising_sx3
        meas tran falling_sx3 find time when V(out2)=max FALL=1 TD=1p
        meas tran falling_ex3 find time when V(out2)=min FALL=1 TD=1p
	let falling_time_x3 = falling_ex3-falling_sx3
	meas tran rising_s find time when V(o1)=min RISE=1 TD=1p
        meas tran rising_e find time when V(o1)=max RISE=1 TD=1p
        let rising_time = rising_e-rising_s
        meas tran falling_s find time when V(o1)=max FALL=1 TD=1p
        meas tran falling_e find time when V(o1)=min FALL=1 TD=1p
	let falling_time = falling_e-falling_s
	meas tran rising_s1 find time when V(fo1)=min RISE=1 TD=1p
        meas tran rising_e1 find time when V(fo1)=max RISE=1 TD=1p
        let rising_time1 = rising_e1-rising_s1
        meas tran falling_s1 find time when V(fo1)=max FALL=1 TD=1p
        meas tran falling_e1 find time when V(fo1)=min FALL=1 TD=1p
        let falling_time1 = falling_e1-falling_s1
	meas tran rising_s2 find time when V(fo2)=min RISE=1 TD=1p
        meas tran rising_e2 find time when V(fo2)=max RISE=1 TD=1p
        let rising_time2 = rising_e2-rising_s2
        meas tran falling_s2 find time when V(fo2)=max FALL=1 TD=1p
        meas tran falling_e2 find time when V(fo2)=min FALL=1 TD=1p
        let falling_time2 = falling_e2-falling_s2
	meas tran rising_s3 find time when V(fo1)=min RISE=1 TD=1p
        meas tran rising_e3 find time when V(fo1)=max RISE=1 TD=1p
        let rising_time3 = rising_e3-rising_s3
        meas tran falling_s3 find time when V(fo3)=max FALL=1 TD=1p
        meas tran falling_e3 find time when V(fo3)=min FALL=1 TD=1p
        let falling_time3 = falling_e3-falling_s3

        print rising_time_x1 falling_time_x1 rising_time_x3 falling_time_x3 rising_time falling_time rising_time1 falling_time1 rising_time2 falling_time2 rising_time3 falling_time3
	plot V(fi1) V(fo1) 
	plot V(fi2) V(fo2) 
	plot V(fi3) V(fo3) 
	plot V(i1) V(o1) 
	plot V(in) V(out) 
	
.endc
.save all

"}
C {../xschem/hgu_inverter.sym} 60 -230 0 0 {name=x3[0:3]}
C {../xschem/hgu_cdac_unit.sym} 320 -180 2 0 {name=x3[0:63] csize=1}
C {devices/gnd.sym} 320 -130 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 370 -230 1 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 60 -190 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -50 -190 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -140 -200 0 1 {name=V5 value="PULSE(0 0.9 0 10n 10n 250n 500n)"}
C {devices/gnd.sym} -140 -170 0 1 {name=l8 lab=GND}
C {../xschem/hgu_inverter.sym} 60 -470 0 0 {name=x5[0:3]}
C {../xschem/hgu_inverter.sym} -50 -470 0 0 {name=x2}
C {../xschem/hgu_inverter.sym} 170 -470 0 0 {name=x4[0:15]}
C {../xschem/hgu_cdac_unit.sym} 320 -420 2 0 {name=x1[0:63] csize=1}
C {devices/gnd.sym} 320 -370 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 370 -470 1 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 170 -430 3 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 60 -430 3 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -50 -430 3 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -140 -440 0 1 {name=V6 value="PULSE(0 0.9 0 10n 10n 250n 500n)"}
C {devices/gnd.sym} -140 -410 0 1 {name=l10 lab=GND}
C {../xschem/hgu_inverter.sym} 730 -470 0 0 {name=x6[0:63]}
C {../xschem/hgu_cdac_unit.sym} 880 -420 2 0 {name=x7[0:63] csize=1}
C {devices/gnd.sym} 880 -370 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 930 -470 1 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 730 -430 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 640 -440 0 1 {name=V7 value="PULSE(0 0.9 0 10n 10n 250n 500n)"}
C {devices/gnd.sym} 640 -410 0 1 {name=l12 lab=GND}
C {devices/lab_pin.sym} -60 -270 1 0 {name=p18 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -40 -260 1 0 {name=p19 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 50 -270 1 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 70 -260 1 0 {name=p22 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 160 -510 1 0 {name=p25 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 180 -500 1 0 {name=p26 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 50 -510 1 0 {name=p27 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 70 -500 1 0 {name=p28 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} -60 -510 1 0 {name=p29 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -40 -500 1 0 {name=p30 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 720 -510 1 0 {name=p31 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 740 -500 1 0 {name=p32 sig_type=std_logic lab=VREF}
C {devices/lab_wire.sym} -110 -230 0 0 {name=p9 sig_type=std_logic lab=fi2}
C {devices/lab_wire.sym} 200 -230 0 0 {name=p23 sig_type=std_logic lab=fo2}
C {devices/lab_wire.sym} -110 -470 0 0 {name=p24 sig_type=std_logic lab=fi3}
C {devices/lab_wire.sym} 290 -470 0 0 {name=p33 sig_type=std_logic lab=fo3}
C {devices/lab_wire.sym} 670 -470 0 0 {name=p34 sig_type=std_logic lab=i1}
C {devices/lab_wire.sym} 860 -470 0 0 {name=p35 sig_type=std_logic lab=o1}
C {/foss/designs/hgu_goss/hgu/xschem/hgu_inverter.sym} -50 -230 0 0 {name=x7}
C {../xschem/hgu_inverter.sym} 60 160 0 0 {name=x8}
C {../xschem/hgu_cdac_unit.sym} 300 210 2 0 {name=x4 csize=1}
C {devices/lab_pin.sym} 350 160 1 0 {name=p36 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 300 260 0 0 {name=l13 lab=GND}
C {devices/vsource.sym} -100 190 0 0 {name=V8 value="PULSE(0 0.9 0 10n 10n 250n 500n)"}
C {devices/gnd.sym} -100 220 0 0 {name=l14 lab=GND}
C {devices/gnd.sym} 60 200 0 0 {name=l15 lab=GND}
C {devices/lab_wire.sym} -30 160 0 0 {name=p37 sig_type=std_logic lab=in}
C {devices/lab_wire.sym} 210 160 0 0 {name=p38 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 50 120 1 0 {name=p39 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 70 130 1 0 {name=p40 sig_type=std_logic lab=VREF}
C {../xschem/hgu_inverter.sym} 660 190 0 0 {name=x1}
C {../xschem/hgu_cdac_unit.sym} 1050 240 2 0 {name=x3 csize=1}
C {devices/lab_pin.sym} 1100 190 1 0 {name=p41 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 1050 290 0 0 {name=l17 lab=GND}
C {devices/vsource.sym} 500 220 0 0 {name=V9 value="PULSE(0 0.9 0 10n 10n 250n 500n)"}
C {devices/gnd.sym} 500 250 0 0 {name=l18 lab=GND}
C {devices/gnd.sym} 660 230 0 0 {name=l19 lab=GND}
C {devices/lab_wire.sym} 570 190 0 0 {name=p42 sig_type=std_logic lab=in2}
C {devices/lab_wire.sym} 960 190 0 0 {name=p43 sig_type=std_logic lab=out2}
C {devices/lab_pin.sym} 650 150 1 0 {name=p44 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 670 160 1 0 {name=p45 sig_type=std_logic lab=VREF}
C {../xschem/hgu_inverter.sym} 770 190 0 0 {name=x5[0:2]}
