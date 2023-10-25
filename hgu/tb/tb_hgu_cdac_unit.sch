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
N 370 -60 380 -60 {
lab=GND}
N 370 -60 370 -40 {
lab=GND}
N 370 -60 370 -40 {
lab=GND}
N 370 -40 400 -40 {
lab=GND}
C {devices/gnd.sym} 400 -40 0 0 {name=l1 lab=GND}
C {devices/code.sym} 55 -170 0 0 {name=s1 only_toplevel=false value="
.save all 
.temp = 100
.tran 100p 400n
.OPTIONS savecurrent
.include /foss/designs/hgu_goss/hgu/mag/hgu_cdac_unit.spice

.control
	run
        plot v(a)

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
C {../xschem/hgu_vpp_cap.sym} 400 -70 0 0 {name=hgu_cdac_unit
}
