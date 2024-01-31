v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 -180 130 -180 {
lab=en_in}
N -90 -180 50 -180 {
lab=en_in}
N 60 -160 130 -160 {
lab=#net1}
N -170 -180 -90 -180 {
lab=en_in}
N 60 100 140 100 {
lab=en_in_rc}
N -80 100 60 100 {
lab=en_in_rc}
N 70 120 140 120 {
lab=#net2}
N -160 100 -80 100 {
lab=en_in_rc}
C {/foss/designs/hgu_goss/hgu/tutorial_jh/ring.sym} 280 -160 0 0 {name=x1}
C {devices/gnd.sym} 130 -140 1 0 {name=l1 lab=GND}
C {devices/vsource.sym} 60 -130 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} 60 -100 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 430 -180 2 0 {name=p1 sig_type=std_logic lab=ring_osil}
C {devices/vsource.sym} -170 -150 0 0 {name=V2 value="PULSE(0 1.8 1n 100p 100p 1n 2n)"}
C {devices/gnd.sym} -170 -120 0 0 {name=l3 lab=GND}
C {devices/code.sym} -110 -50 0 0 {name=s1 only_toplevel=false value="
.tran 1p 10n
.save all
.control
	option temp = 100
	run
	plot ring_osil en_in
	plot ring_osil_rc en_in_rc 
.endc
"}
C {devices/simulator_commands_shown.sym} -110 -320 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.include /foss/designs/hgu_goss/hgu/tutorial_jh/ring_layout_flat.spice
"}
C {devices/lab_pin.sym} 50 -180 1 0 {name=p2 sig_type=std_logic lab=en_in}
C {devices/gnd.sym} 140 140 1 0 {name=l4 lab=GND}
C {devices/vsource.sym} 70 150 0 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} 70 180 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 440 100 2 0 {name=p3 sig_type=std_logic lab=ring_osil_rc}
C {devices/vsource.sym} -160 130 0 0 {name=V4 value="PULSE(0 1.8 1n 100p 100p 1n 2n)"}
C {devices/gnd.sym} -160 160 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 60 100 1 0 {name=p4 sig_type=std_logic lab=en_in_rc}
C {/foss/designs/hgu_goss/hgu/tutorial_jh/ring_rc.sym} 290 120 0 0 {name=x2}
