v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {sky130_stdcells/dfbbp_1.sym} 410 -250 0 0 {name=x27 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/code.sym} 0 -130 0 0 {name=spice1 only_toplevel=false value="

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.tran 10ps 3ns

.control
	run
	plot V(CLK) V(D) V(Q)+2 V(Q_N)+4 V(resetb)-2
.endc
.save all

"}
C {devices/vdd.sym} 700 -100 0 0 {name=l10 lab=VGND}
C {devices/gnd.sym} 550 -40 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 550 -70 0 0 {name=V8 value=1.8}
C {devices/vdd.sym} 600 -100 0 0 {name=l12 lab=VNB}
C {devices/gnd.sym} 600 -40 0 0 {name=l13 lab=GND}
C {devices/vsource.sym} 600 -70 0 0 {name=V9 value=0}
C {devices/vdd.sym} 650 -100 0 0 {name=l14 lab=VPB}
C {devices/gnd.sym} 650 -40 0 0 {name=l15 lab=GND}
C {devices/vsource.sym} 650 -70 0 0 {name=V10 value=1.8}
C {devices/vdd.sym} 550 -100 0 0 {name=l16 lab=VPWR}
C {devices/gnd.sym} 700 -40 0 0 {name=l17 lab=GND}
C {devices/vsource.sym} 700 -70 0 0 {name=V11 value=0}
C {devices/gnd.sym} 170 -50 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 170 -80 0 0 {name=V1 value="PULSE(0 1.8 1n 5p 5p 5n 10n)"}
C {devices/lab_pin.sym} 170 -110 0 0 {name=p1 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 320 -280 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/gnd.sym} 180 -310 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 180 -370 0 0 {name=p3 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 320 -260 0 0 {name=p4 sig_type=std_logic lab=D}
C {devices/vdd.sym} 320 -220 3 0 {name=l4 lab=VPWR}
C {devices/lab_pin.sym} 500 -280 2 0 {name=p5 sig_type=std_logic lab=Q}
C {devices/lab_pin.sym} 500 -260 2 0 {name=p6 sig_type=std_logic lab=Q_N}
C {devices/vsource.sym} 180 -340 0 0 {name=V2 value="PULSE(1.8 0 0.923400n 5p 5p 5n 10n)"}
C {devices/gnd.sym} 610 -210 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 610 -240 0 0 {name=V3 value="PULSE(1.8 0 0 5p 5p 0.5n 10n)"}
C {devices/lab_pin.sym} 320 -240 0 0 {name=p8 sig_type=std_logic lab=resetb}
C {devices/lab_pin.sym} 610 -270 0 0 {name=p7 sig_type=std_logic lab=resetb}
