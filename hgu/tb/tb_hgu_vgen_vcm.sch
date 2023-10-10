v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 600 -80 680 -80 {
lab=GND}
N 640 -80 640 -60 {
lab=GND}
N 600 -160 600 -140 {
lab=VDD}
N 680 -160 680 -140 {
lab=VSS}
N 680 -80 770 -80 {
lab=GND}
N 770 -160 770 -140 {
lab=clk}
C {../xschem/hgu_vgen_vcm_clkgen.sym} 310 -150 0 0 {name=x1}
C {devices/lab_wire.sym} 260 -70 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 160 -150 0 0 {name=p1 sig_type=std_logic lab=clk
}
C {devices/lab_wire.sym} 260 -230 0 0 {name=p2 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 460 -190 0 1 {name=p3 sig_type=std_logic lab=phi1
}
C {devices/lab_wire.sym} 460 -170 0 1 {name=p4 sig_type=std_logic lab=phi1_n
}
C {devices/lab_wire.sym} 460 -130 0 1 {name=p5 sig_type=std_logic lab=phi2
}
C {devices/lab_wire.sym} 460 -110 0 1 {name=p6 sig_type=std_logic lab=phi2_n
}
C {devices/vsource.sym} 600 -110 0 0 {name=V1 value=1.8}
C {devices/vsource.sym} 680 -110 0 0 {name=V2 value=0}
C {devices/gnd.sym} 640 -60 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 600 -160 0 0 {name=p7 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 680 -160 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 770 -110 0 0 {name=V3 value="PULSE(0 1.8 0 5p 5p 10n 20n)"}
C {devices/lab_wire.sym} 770 -160 0 0 {name=p10 sig_type=std_logic lab=clk
}
C {devices/code.sym} 540 -310 0 0 {name=spice1 only_toplevel=false value="

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.tran 1ns 200ns
.control
    run
    plot V(phi1)+2 V(phi1_n)+2  V(phi2)+4  V(phi2_n)+4 V(clk)
.endc
.save all

"
}
