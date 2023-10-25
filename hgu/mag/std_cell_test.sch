v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {sky130_stdcells/inv_1.sym} 80 -50 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 40 -50 0 0 {name=p1 sig_type=std_logic lab=input}
C {devices/lab_pin.sym} 120 -50 0 1 {name=p2 sig_type=std_logic lab=output}
C {devices/vdd.sym} 220 -180 0 0 {name=l47 lab=VGND}
C {devices/gnd.sym} 70 -120 0 0 {name=l48 lab=GND}
C {devices/vsource.sym} 70 -150 0 0 {name=V54 value=1.8}
C {devices/vdd.sym} 120 -180 0 0 {name=l49 lab=VNB}
C {devices/gnd.sym} 120 -120 0 0 {name=l50 lab=GND}
C {devices/vsource.sym} 120 -150 0 0 {name=V55 value=0}
C {devices/vdd.sym} 170 -180 0 0 {name=l51 lab=VPB}
C {devices/gnd.sym} 170 -120 0 0 {name=l52 lab=GND}
C {devices/vsource.sym} 170 -150 0 0 {name=V56 value=1.8}
C {devices/vdd.sym} 70 -180 0 0 {name=l53 lab=VPWR}
C {devices/gnd.sym} 220 -120 0 0 {name=l54 lab=GND}
C {devices/vsource.sym} 220 -150 0 0 {name=V57 value=0}
C {devices/code.sym} -40 0 0 0 {name=spice1 only_toplevel=false value="

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice


"}
