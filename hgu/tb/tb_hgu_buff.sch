v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 5 -172.5 -162.5 -167.5 -157.5 {name=Q dir=out }
N -60 -160 -60 -110 {
lab=Q}
N -290 -160 -250 -160 {
lab=input}
N -170 -160 -60 -160 {
lab=Q}
C {devices/vsource.sym} -290 -130 0 0 {name=V4 value="PULSE(0 1.62 50n 5p 5p 100n 150n)"}
C {devices/gnd.sym} -290 -100 0 0 {name=l4 lab=GND}
C {devices/code.sym} -445 -200 0 0 {name=s1 only_toplevel=false value="
.save all 
.temp = 100
.tran 100p 400n
.OPTIONS savecurrent
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.control
	run
        plot v(input) V(Q) 
	let svdd = 1.62
	let max = svdd*0.8
	let min = svdd*0.2
	let mid = svdd*0.5
	meas tran rising_s find time when V(Q)=min RISE=1 TD=1000p
        meas tran rising_e find time when V(Q)=max RISE=1 TD=1000p
        let rising_time = rising_e-rising_s
        meas tran falling_s find time when V(Q)=max FALL=1 TD=1000p
        meas tran falling_e find time when V(Q)=min FALL=1 TD=1000p
        let falling_time = falling_e-falling_s
        meas tran IN find time when V(input)=mid RISE=1 TD=1000p
        meas tran OUT find time when V(Q)=mid RISE=1 TD=1000p
        let rising_delay = OUT-IN
	meas tran fIN find time when V(input)=mid FALL=1 TD=1000p
        meas tran fOUT find time when V(Q)=mid FALL=1 TD=1000p
        let falling_delay = fOUT-fIN

        print rising_time falling_time rising_delay falling_delay

.endc
"}
C {sky130_fd_pr/corner.sym} -575 -200 0 0 {name=CORNER only_toplevel=false corner=ss}
C {devices/capa.sym} -60 -80 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -60 -50 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} -270 -160 0 0 {name=p1 sig_type=std_logic lab=input}
C {devices/lab_wire.sym} -110 -160 0 0 {name=p3 sig_type=std_logic lab=Q}
C {devices/vdd.sym} -200 20 0 0 {name=l7 lab=VPB}
C {devices/vsource.sym} -200 50 0 0 {name=V5 value=1.62}
C {devices/gnd.sym} -200 80 0 0 {name=l8 lab=GND}
C {devices/vdd.sym} -140 20 0 0 {name=l9 lab=VNB}
C {devices/vsource.sym} -140 50 0 0 {name=V6 value=0}
C {devices/gnd.sym} -140 80 0 0 {name=l10 lab=GND}
C {devices/vdd.sym} -320 20 0 0 {name=l16 lab=VPWR}
C {devices/vsource.sym} -320 50 0 0 {name=V7 value=1.62}
C {devices/gnd.sym} -320 80 0 0 {name=l17 lab=GND}
C {devices/vdd.sym} -260 20 0 0 {name=l18 lab=VGND}
C {devices/vsource.sym} -260 50 0 0 {name=V8 value=0}
C {devices/gnd.sym} -260 80 0 0 {name=l19 lab=GND}
C {sky130_stdcells/buf_1.sym} -210 -160 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
