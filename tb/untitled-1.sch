v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 410 -320 530 -320 {
lab=#net1}
N 470 -160 1220 -160 {
lab=out}
N 470 -280 470 -160 {
lab=out}
N 470 -280 530 -280 {
lab=out}
N 1220 -160 1810 -160 {
lab=out}
N 1810 -300 1810 -160 {
lab=out}
N 1750 -300 1810 -300 {
lab=out}
N 1810 -160 1880 -160 {
lab=out}
N 760 -300 760 -230 {
lab=#net2}
N 870 -300 870 -230 {
lab=#net3}
N 980 -300 980 -230 {
lab=#net4}
N 1090 -300 1090 -230 {
lab=#net5}
N 1200 -300 1200 -230 {
lab=#net6}
N 1310 -300 1310 -220 {
lab=#net7}
N 1420 -300 1420 -220 {
lab=#net8}
N 1530 -300 1530 -220 {
lab=#net9}
N 1640 -300 1640 -220 {
lab=en}
C {devices/vsource.sym} -50 -160 0 0 {name=V1 value=0}
C {devices/lab_pin.sym} -50 -190 1 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -50 -130 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -110 -160 0 0 {name=V3 value=0.9}
C {devices/lab_pin.sym} -110 -190 1 0 {name=p2 sig_type=std_logic lab=VREF}
C {devices/gnd.sym} -110 -130 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -170 -160 0 0 {name=V4 value=1.8}
C {devices/lab_pin.sym} -170 -190 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} -170 -130 0 0 {name=l6 lab=GND}
C {devices/code.sym} -120 -20 0 0 {name=spice1 only_toplevel=false value="

.OPTIONS savecurrents
.tran 10ps 200ns
.include /foss/designs/hgu_goss/hgu/mag/hgu_cdac_unit.spice
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.control
	run
	let svdd = 0.9
	let max = svdd*0.8
	let min = svdd*0.2
	let mid = svdd*0.5
	meas tran rising_s1 find time when V(out)=min RISE=1 TD=1p
        meas tran rising_e1 find time when V(out)=max RISE=1 TD=1p
        let rising_time1 = rising_e1-rising_s1
        meas tran falling_s1 find time when V(out)=max FALL=1 TD=1p
        meas tran falling_e1 find time when V(out)=min FALL=1 TD=1p
        let falling_time1 = falling_e1-falling_s1


        print rising_time1 falling_time1 
	plot v(en) v(out)
.endc
.save all

"}
C {devices/vsource.sym} 410 -290 0 0 {name=V8 value="PULSE(0 0.9 10n 50p 50p 220n 250n)"}
C {devices/gnd.sym} 410 -260 0 0 {name=l14 lab=GND}
C {devices/gnd.sym} 1020 -260 0 0 {name=l15 lab=GND}
C {devices/lab_wire.sym} 1640 -300 0 0 {name=p37 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 1010 -340 1 0 {name=p39 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1030 -330 1 0 {name=p40 sig_type=std_logic lab=VREF}
C {sky130_stdcells/nand2_1.sym} 590 -300 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {../xschem/hgu_inverter.sym} 690 -300 0 0 {name=x2}
C {../xschem/hgu_inverter.sym} 800 -300 0 0 {name=x3}
C {../xschem/hgu_inverter.sym} 910 -300 0 0 {name=x4}
C {../xschem/hgu_inverter.sym} 1020 -300 0 0 {name=x6}
C {devices/gnd.sym} 910 -260 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 900 -340 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 920 -330 1 0 {name=p8 sig_type=std_logic lab=VREF}
C {devices/gnd.sym} 720 -190 1 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 800 -200 2 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 790 -180 2 0 {name=p10 sig_type=std_logic lab=VREF}
C {devices/gnd.sym} 690 -260 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 680 -340 1 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 700 -330 1 0 {name=p12 sig_type=std_logic lab=VREF}
C {../xschem/hgu_inverter.sym} 1130 -300 0 0 {name=x5}
C {../xschem/hgu_inverter.sym} 1240 -300 0 0 {name=x7}
C {../xschem/hgu_inverter.sym} 1350 -300 0 0 {name=x8}
C {../xschem/hgu_inverter.sym} 1460 -300 0 0 {name=x9}
C {../xschem/hgu_inverter.sym} 1570 -300 0 0 {name=x11}
C {../xschem/hgu_inverter.sym} 1680 -300 0 0 {name=x12}
C {devices/gnd.sym} 1130 -260 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 1120 -340 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1140 -330 1 0 {name=p14 sig_type=std_logic lab=VREF}
C {devices/gnd.sym} 1240 -260 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 1230 -340 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1250 -330 1 0 {name=p16 sig_type=std_logic lab=VREF}
C {devices/gnd.sym} 1350 -260 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 1340 -340 1 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1360 -330 1 0 {name=p18 sig_type=std_logic lab=VREF}
C {devices/gnd.sym} 1460 -260 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 1450 -340 1 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1470 -330 1 0 {name=p20 sig_type=std_logic lab=VREF}
C {devices/gnd.sym} 1570 -260 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 1560 -340 1 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1580 -330 1 0 {name=p22 sig_type=std_logic lab=VREF}
C {devices/gnd.sym} 1680 -260 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 1670 -340 1 0 {name=p23 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1690 -330 1 0 {name=p24 sig_type=std_logic lab=VREF}
C {../xschem/hgu_inverter.sym} 760 -190 1 0 {name=x13[1:0]}
C {../xschem/hgu_inverter.sym} 870 -190 1 0 {name=x14[1:0]}
C {../xschem/hgu_inverter.sym} 980 -190 1 0 {name=x15[1:0]}
C {../xschem/hgu_inverter.sym} 1090 -190 1 0 {name=x16[1:0]}
C {../xschem/hgu_inverter.sym} 1200 -190 1 0 {name=x17[1:0]}
C {../xschem/hgu_inverter.sym} 1310 -180 1 0 {name=x18[1:0]}
C {../xschem/hgu_inverter.sym} 1420 -180 1 0 {name=x19[1:0]}
C {../xschem/hgu_inverter.sym} 1530 -180 1 0 {name=x20[1:0]}
C {../xschem/hgu_inverter.sym} 1640 -180 1 0 {name=x21[1:0]}
C {../xschem/hgu_inverter.sym} 1920 -160 0 0 {name=x23[1:0]}
C {devices/gnd.sym} 830 -190 1 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 910 -200 2 0 {name=p25 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 900 -180 2 0 {name=p26 sig_type=std_logic lab=VREF}
C {devices/gnd.sym} 940 -190 1 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} 1020 -200 2 0 {name=p27 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1010 -180 2 0 {name=p28 sig_type=std_logic lab=VREF}
C {devices/gnd.sym} 1050 -190 1 0 {name=l21 lab=GND}
C {devices/lab_pin.sym} 1130 -200 2 0 {name=p29 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1120 -180 2 0 {name=p30 sig_type=std_logic lab=VREF}
C {devices/gnd.sym} 1160 -190 1 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 1240 -200 2 0 {name=p31 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1230 -180 2 0 {name=p32 sig_type=std_logic lab=VREF}
C {devices/gnd.sym} 1270 -180 1 0 {name=l23 lab=GND}
C {devices/lab_pin.sym} 1350 -190 2 0 {name=p33 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1340 -170 2 0 {name=p34 sig_type=std_logic lab=VREF}
C {devices/gnd.sym} 1380 -180 1 0 {name=l24 lab=GND}
C {devices/lab_pin.sym} 1460 -190 2 0 {name=p35 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1450 -170 2 0 {name=p36 sig_type=std_logic lab=VREF}
C {devices/gnd.sym} 1490 -180 1 0 {name=l25 lab=GND}
C {devices/lab_pin.sym} 1570 -190 2 0 {name=p38 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1560 -170 2 0 {name=p43 sig_type=std_logic lab=VREF}
C {devices/gnd.sym} 1600 -180 1 0 {name=l26 lab=GND}
C {devices/lab_pin.sym} 1680 -190 2 0 {name=p46 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1670 -170 2 0 {name=p47 sig_type=std_logic lab=VREF}
C {devices/gnd.sym} 1920 -120 0 0 {name=l27 lab=GND}
C {devices/lab_pin.sym} 1910 -200 1 0 {name=p48 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1930 -190 1 0 {name=p49 sig_type=std_logic lab=VREF}
C {devices/lab_wire.sym} 1800 -300 0 0 {name=p4 sig_type=std_logic lab=out}
C {devices/vdd.sym} 140 -200 0 0 {name=l2 lab=VPB}
C {devices/vsource.sym} 140 -170 0 0 {name=V5 value=1.62}
C {devices/gnd.sym} 140 -140 0 0 {name=l17 lab=GND}
C {devices/vdd.sym} 200 -200 0 0 {name=l18 lab=VNB}
C {devices/vsource.sym} 200 -170 0 0 {name=V6 value=0}
C {devices/gnd.sym} 200 -140 0 0 {name=l19 lab=GND}
C {devices/vdd.sym} 20 -200 0 0 {name=l28 lab=VPWR}
C {devices/vsource.sym} 20 -170 0 0 {name=V7 value=1.62}
C {devices/gnd.sym} 20 -140 0 0 {name=l29 lab=GND}
C {devices/vdd.sym} 80 -200 0 0 {name=l30 lab=VGND}
C {devices/vsource.sym} 80 -170 0 0 {name=V2 value=0}
C {devices/gnd.sym} 80 -140 0 0 {name=l31 lab=GND}
C {devices/gnd.sym} 800 -260 0 0 {name=l32 lab=GND}
C {devices/lab_pin.sym} 790 -340 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 810 -330 1 0 {name=p6 sig_type=std_logic lab=VREF}
C {devices/gnd.sym} 760 -120 0 0 {name=l33 lab=GND}
C {devices/gnd.sym} 870 -120 0 0 {name=l34 lab=GND}
C {devices/gnd.sym} 980 -120 0 0 {name=l35 lab=GND}
C {devices/gnd.sym} 1090 -120 0 0 {name=l36 lab=GND}
C {devices/gnd.sym} 1200 -120 0 0 {name=l37 lab=GND}
C {devices/gnd.sym} 1310 -110 0 0 {name=l38 lab=GND}
C {devices/gnd.sym} 1420 -110 0 0 {name=l39 lab=GND}
C {devices/gnd.sym} 1530 -110 0 0 {name=l40 lab=GND}
C {devices/gnd.sym} 1640 -110 0 0 {name=l41 lab=GND}
