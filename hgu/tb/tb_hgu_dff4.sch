v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 470 -360 520 -360 {
lab=Voutb}
N 520 -360 550 -360 {
lab=Voutb}
N 110 -300 170 -300 {
lab=GND}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="sample_clk_gen"}
C {devices/vdd.sym} 210 -180 0 0 {name=l7 lab=VDD}
C {devices/gnd.sym} 210 -120 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 340 -170 0 0 {name=V2 value="PULSE(0 1.8 0 5p 5p 5n 10n)"}
C {devices/gnd.sym} 340 -140 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 340 -200 0 0 {name=p4 sig_type=std_logic lab=EXT_CLK}
C {devices/lab_pin.sym} 170 -340 0 0 {name=p5 sig_type=std_logic lab=EXT_CLK}
C {devices/lab_pin.sym} 170 -280 0 0 {name=p6 sig_type=std_logic lab=SET}
C {devices/lab_pin.sym} 170 -260 0 0 {name=p7 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 470 -340 2 0 {name=p8 sig_type=std_logic lab=Vout}
C {devices/gnd.sym} 550 -300 0 0 {name=l2 lab=GND}
C {devices/capa.sym} 550 -330 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/code.sym} 30 -210 0 0 {name=spice1 only_toplevel=false value="

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.dc VDD 1.8 1.8
.dc GND 0 0

.tran 1ps 60ns

.control
	run
	plot V(D) V(Vout) V(SET) V(EXT_CLK)
.endc
.save all

"}
C {/foss/designs/mySAR_SKY130/xschem/dff_4.sym} 320 -310 0 0 {name=x1}
C {devices/lab_pin.sym} 170 -360 0 0 {name=p9 sig_type=std_logic lab=D}
C {devices/gnd.sym} 470 -280 0 0 {name=l3 lab=GND}
C {devices/capa.sym} 470 -310 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 540 -170 0 0 {name=V1 value="PULSE(0 1.8 2.5n 5p 5p 10n 1)"}
C {devices/gnd.sym} 540 -140 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 540 -200 0 0 {name=p10 sig_type=std_logic lab=SET}
C {devices/vsource.sym} 740 -160 0 0 {name=V3 value="PULSE(0 1.8 40.0095n 5p 5p 30n 1)"}
C {devices/gnd.sym} 740 -130 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 740 -190 0 0 {name=p11 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 550 -360 2 0 {name=p12 sig_type=std_logic lab=Voutb}
C {devices/gnd.sym} 110 -300 1 0 {name=l9 lab=GND}
C {devices/vdd.sym} 170 -320 3 0 {name=l10 lab=VDD}
C {devices/vsource.sym} 210 -150 0 0 {name=V4 value=1.8}
