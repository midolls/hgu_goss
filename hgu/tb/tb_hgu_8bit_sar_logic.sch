v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {devices/vdd.sym} 250 -120 0 0 {name=l7 lab=VDD}
C {devices/gnd.sym} 250 -60 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 250 -90 0 0 {name=V4 value=1.8}
C {devices/vdd.sym} 300 -120 0 0 {name=l6 lab=VSS}
C {devices/gnd.sym} 300 -60 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 300 -90 0 0 {name=V5 value=0}
C {devices/vdd.sym} 790 -120 0 0 {name=l15 lab=VGND}
C {devices/gnd.sym} 640 -60 0 0 {name=l16 lab=GND}
C {devices/vsource.sym} 640 -90 0 0 {name=V8 value=1.8}
C {devices/vdd.sym} 690 -120 0 0 {name=l17 lab=VNB}
C {devices/gnd.sym} 690 -60 0 0 {name=l18 lab=GND}
C {devices/vsource.sym} 690 -90 0 0 {name=V9 value=0}
C {devices/vdd.sym} 740 -120 0 0 {name=l19 lab=VPB}
C {devices/gnd.sym} 740 -60 0 0 {name=l20 lab=GND}
C {devices/vsource.sym} 740 -90 0 0 {name=V10 value=1.8}
C {devices/vdd.sym} 640 -120 0 0 {name=l21 lab=VPWR}
C {devices/gnd.sym} 790 -60 0 0 {name=l22 lab=GND}
C {devices/vsource.sym} 790 -90 0 0 {name=V11 value=0}
C {devices/lab_pin.sym} 480 -110 0 0 {name=p120 sig_type=std_logic lab=sel_bit[0]}
C {devices/lab_pin.sym} 480 -80 0 0 {name=p15 sig_type=std_logic lab=sel_bit[1]}
C {devices/vsource.sym} 510 -80 3 0 {name=V6 value=0}
C {devices/gnd.sym} 540 -80 0 0 {name=l23 lab=GND}
C {devices/vsource.sym} 510 -110 3 0 {name=V7 value=0}
C {devices/gnd.sym} 540 -110 0 0 {name=l24 lab=GND}
C {devices/vsource.sym} 90 -250 0 0 {name=V2 value="PULSE(0 1.8 100n 5p 5p 17n 31n)"}
C {devices/gnd.sym} 90 -220 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 90 -280 0 0 {name=p4 sig_type=std_logic lab=comp}
C {devices/vsource.sym} 90 -340 0 0 {name=V3 value="PULSE(0 1.8 0 5p 5p 5n 10n)"}
C {devices/gnd.sym} 90 -310 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 90 -370 0 0 {name=p1 sig_type=std_logic lab=clk}
C {devices/vsource.sym} 90 -430 0 0 {name=V12 value="PULSE(0 1.8 0 5p 5p 10n 100n)"}
C {devices/gnd.sym} 90 -400 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 90 -460 0 0 {name=p7 sig_type=std_logic lab=reset}
C {8bit_sar_logic.sym} 590 -310 0 0 {name=x3 csize=0.001}
C {devices/capa.sym} 770 -360 3 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 800 -360 3 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 740 -360 1 0 {name=p3 sig_type=std_logic lab=EOB}
C {devices/lab_pin.sym} 740 -340 2 0 {name=p9 sig_type=std_logic lab=D[0:7]}
C {devices/vdd.sym} 440 -280 3 0 {name=l3 lab=VDD}
C {devices/lab_pin.sym} 440 -340 0 0 {name=p10 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 440 -320 0 0 {name=p11 sig_type=std_logic lab=comp}
C {devices/lab_pin.sym} 440 -300 0 0 {name=p12 sig_type=std_logic lab=reset}
C {devices/vdd.sym} 440 -260 3 0 {name=l13 lab=VSS}
C {devices/lab_pin.sym} 440 -360 0 0 {name=p13 sig_type=std_logic lab=sel_bit[0:1]}
C {devices/code.sym} 50 -160 0 0 {name=spice1 only_toplevel=false value="

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice


*.tran 10ps 310ns
.tran 10ps 300ns

.control
	option temp = 25
	let vdd_act = 1.8
      
	alter V1 vdd_act

	run
	plot V(\\"tempD[0]\\") V(\\"tempD[1]\\")+2 V(\\"tempD[2]\\")+4 V(\\"tempD[3]\\")+6 V(\\"tempD[4]\\")+8 V(\\"tempD[5]\\")+10 V(\\"tempD[6]\\")+12 V(\\"tempD[7]\\")+14 V(clk)-4 V(EOB)-2 
	plot V(comp) V(clk)+2 V(EOB)+4 V(\\"D[0]\\")+6 V(\\"D[1]\\")+8 V(\\"D[2]\\")+10 V(\\"D[3]\\")+12  V(\\"D[4]\\")+14 V(\\"D[5]\\")+16 V(\\"D[6]\\")+18 V(\\"D[7]\\")+20 V(reset)-2

 .endc
.save all

"}
C {devices/capa.sym} 740 -290 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 740 -260 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 740 -320 2 0 {name=p2 sig_type=std_logic lab=tempD[0:7]}
