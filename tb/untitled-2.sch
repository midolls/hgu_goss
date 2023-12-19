v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -330 -100 -210 -100 {
lab=#net1}
N 10 -100 120 -100 {
lab=out}
C {../xschem/hgu_inverter.sym} -170 -100 0 0 {name=x8
}
C {../xschem/hgu_cdac_unit.sym} 120 -50 2 0 {name=x4 csize=1}
C {devices/lab_pin.sym} 170 -100 1 0 {name=p36 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 120 0 0 0 {name=l13 lab=GND}
C {devices/vsource.sym} -330 -70 0 0 {name=V8 value="PULSE(0 0.9 0 50p 50p 10n 23n)"}
C {devices/gnd.sym} -330 -40 0 0 {name=l14 lab=GND}
C {devices/gnd.sym} -170 -60 0 0 {name=l15 lab=GND}
C {devices/lab_wire.sym} -100 -100 0 0 {name=p37 sig_type=std_logic lab=in}
C {devices/lab_wire.sym} 60 -100 0 0 {name=p38 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} -180 -140 1 0 {name=p39 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -160 -130 1 0 {name=p40 sig_type=std_logic lab=VREF}
C {devices/vsource.sym} -500 -100 0 0 {name=V2 value=0}
C {devices/lab_pin.sym} -500 -130 1 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -500 -70 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -560 -100 0 0 {name=V3 value=0.9}
C {devices/lab_pin.sym} -560 -130 1 0 {name=p7 sig_type=std_logic lab=VREF}
C {devices/gnd.sym} -560 -70 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -620 -100 0 0 {name=V4 value=1.8}
C {devices/lab_pin.sym} -620 -130 1 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} -620 -70 0 0 {name=l6 lab=GND}
C {devices/code.sym} -570 40 0 0 {name=spice1 only_toplevel=false value="

.OPTIONS savecurrents
.tran 10ps 20ns
.include /foss/designs/hgu_goss/hgu/mag/hgu_cdac_unit.spice
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.control
	run
	let svdd = 0.9
	let max = svdd*0.8
	let min = svdd*0.2
	let mid = svdd*0.5
	meas tran rising_s1 find time when V(out)=min RISE=1 TD=0.1p
        meas tran rising_e1 find time when V(out)=max RISE=1 TD=0.1p
        let rising_time1 = rising_e1-rising_s1
        meas tran falling_s1 find time when V(out)=max FALL=1 TD=0.1p
        meas tran falling_e1 find time when V(out)=min FALL=1 TD=0.1p
        let falling_time1 = falling_e1-falling_s1

        print rising_time1 falling_time1 
	plot v(in) v(out)
.endc
.save all

"}
C {../xschem/hgu_inverter.sym} -60 -100 0 0 {name=x1

}
C {devices/gnd.sym} -60 -60 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -70 -140 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -50 -130 1 0 {name=p2 sig_type=std_logic lab=VREF}
