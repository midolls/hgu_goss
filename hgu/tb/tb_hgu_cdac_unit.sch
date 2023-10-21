v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -50 240 -40 {
lab=GND}
N 240 -140 240 -110 {
lab=#net1}
N 240 -140 280 -140 {
lab=#net1}
N 340 -140 350 -140 {
lab=a}
N 350 -140 400 -140 {
lab=a}
N 400 -140 400 -100 {
lab=a}
N 240 60 240 70 {
lab=GND}
C {devices/gnd.sym} 400 -40 0 0 {name=l1 lab=GND}
C {devices/code.sym} 55 -170 0 0 {name=s1 only_toplevel=false value="
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
C {sky130_fd_pr/corner.sym} -75 -170 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/vsource.sym} 240 -80 0 0 {name=V2 value="PULSE(0 1.8 0 5p 5p 50n 100n)"}
C {devices/gnd.sym} 240 -40 0 0 {name=l3 lab=GND}
C {devices/res.sym} 310 -140 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 400 -130 0 0 {name=p1 sig_type=std_logic lab=a}
C {devices/vsource.sym} 240 30 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 240 70 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 240 0 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/capa.sym} 400 -70 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/vpp_cap.sym} 530 -70 0 0 {name=C2
model=cap_vpp_11p5x11p7_l1m1m2m3m4_shieldm5
W=1
L=1 
mult=1 
spiceprefix=X}
