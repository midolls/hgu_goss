v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 450 -60 450 -40 {
lab=GND}
N 580 -60 580 -40 {
lab=GND}
N 510 -60 510 -40 {
lab=GND}
N 480 -40 480 -10 {
lab=GND}
N 450 -140 450 -120 {
lab=VDD}
N 510 -140 510 -120 {
lab=VSS}
N 580 -140 580 -120 {
lab=clk}
N 450 -40 510 -40 {
lab=GND}
N 280 -250 300 -250 {
lab=vcm}
N 510 -40 580 -40 {
lab=GND}
N 210 -200 210 -190 {
lab=VSS}
N 210 -190 300 -190 {
lab=VSS}
N 250 -190 300 -190 {
lab=VSS}
N 250 -190 250 -160 {
lab=VSS}
C {/foss/designs/goss_test/module/vref_gen/vref_gen.sym} 140 -190 0 0 {name=x1}
C {devices/vsource.sym} 450 -90 0 0 {name=V1 value=1.8}
C {devices/vsource.sym} 510 -90 0 0 {name=V2 value=0}
C {devices/vsource.sym} 580 -90 0 0 {name=V3 value="PULSE(0 1.8 0 50p 50p 50n 100n)"}
C {devices/lab_wire.sym} 450 -140 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 510 -140 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 300 -250 0 1 {name=p3 sig_type=std_logic lab=vcm}
C {devices/gnd.sym} 480 -10 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 210 -300 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 250 -160 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 580 -140 0 0 {name=p13 sig_type=std_logic lab=clk
}
C {devices/code.sym} 510 -340 0 0 {name=s1 only_toplevel=false value="

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice


.tran 1ns 5000ns
.control
    run
    plot V(clk)+2 V(vcm)
.endc
.save all

"
}
C {devices/capa.sym} 300 -220 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 150 -250 0 0 {name=p4 sig_type=std_logic lab=clk
}
