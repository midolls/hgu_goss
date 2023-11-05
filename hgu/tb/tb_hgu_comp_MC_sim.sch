v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 450 -500 530 -500 {
lab=GND}
N 530 -500 530 -490 {
lab=GND}
N 450 -580 450 -560 {
lab=VDD}
N 530 -580 530 -560 {
lab=VSS}
N 530 -500 600 -500 {
lab=GND}
N 600 -580 600 -560 {
lab=clk}
N 620 -700 650 -700 {
lab=ready}
N 720 -790 750 -790 {
lab=outp}
N 720 -750 750 -750 {
lab=outn}
N 470 -870 480 -870 {
lab=VDD}
N 470 -650 480 -660 {
lab=VSS}
N 520 -660 520 -650 {
lab=clk}
N 120 -670 250 -670 {
lab=#net1}
N 120 -630 150 -630 {
lab=VSS}
N 230 -630 250 -630 {
lab=VSS}
N 80 -700 80 -680 {
lab=vip}
N 290 -700 290 -680 {
lab=vin}
N 230 -630 230 -590 {
lab=VSS}
N 150 -630 150 -590 {
lab=VSS}
N 150 -590 230 -590 {
lab=VSS}
N 190 -610 190 -590 {
lab=VSS}
N 190 -590 190 -570 {
lab=VSS}
N 190 -490 190 -470 {
lab=VSS}
N 80 -550 190 -550 {
lab=#net2}
N 190 -550 290 -550 {
lab=#net2}
N 80 -800 80 -700 {
lab=vip}
N 290 -740 290 -700 {
lab=vin}
N 290 -740 390 -740 {
lab=vin}
N 80 -800 390 -800 {
lab=vip}
N 750 -790 820 -790 {
lab=outp}
N 760 -750 820 -750 {
lab=outn}
N 860 -740 860 -710 {
lab=VSS}
N 860 -840 860 -800 {
lab=outd}
N 860 -840 900 -840 {
lab=outd}
N 80 -620 80 -550 {
lab=#net2}
N 290 -620 290 -550 {
lab=#net2}
N 750 -750 760 -750 {
lab=outn}
C {../xschem/hgu_comp.sym} 560 -770 0 0 {name=x1}
C {devices/vsource.sym} 450 -530 0 0 {name=V1 value=1.8}
C {devices/vsource.sym} 530 -530 0 0 {name=V2 value=0}
C {devices/gnd.sym} 530 -490 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 450 -580 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 530 -580 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 470 -870 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 470 -650 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 600 -530 0 0 {name=V3 value="PULSE(0 1.8 0 91p 77p 5n 20n)"}
C {devices/lab_pin.sym} 600 -580 0 0 {name=p5 sig_type=std_logic lab=clk
}
C {devices/lab_pin.sym} 520 -650 0 0 {name=p10 sig_type=std_logic lab=clk
}
C {devices/lab_pin.sym} 650 -700 2 0 {name=p14 sig_type=std_logic lab=ready}
C {devices/lab_pin.sym} 760 -790 1 0 {name=p11 sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 760 -750 3 0 {name=p15 sig_type=std_logic lab=outn}
C {devices/code.sym} 130 -990 0 0 {name=s1 only_toplevel=false value="

.include /foss/designs/hgu_goss/hgu/spice/hgu_comp_flat_RC.spice
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt_mm
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.tran 0.1ns 100ns
.temp 25
.control    
    repeat 20

    tran 0.1ns 100ns
    write test_mc_model.txt
    set appendwrite
    print V(outd)
    reset

    end
    plot all.v(outd)
.endc
.save all
.save all
"}
C {devices/vcvs.sym} 80 -650 0 1 {name=E1 value=0.5
}
C {devices/vcvs.sym} 290 -650 0 0 {name=E2 value=-0.5
}
C {devices/vsource.sym} 190 -640 0 0 {name=V6 value=0}
C {devices/vsource.sym} 190 -520 0 0 {name=V7 value=0.9}
C {devices/lab_wire.sym} 80 -700 0 0 {name=p8 sig_type=std_logic lab=vip

}
C {devices/lab_wire.sym} 290 -690 0 0 {name=p9 sig_type=std_logic lab=vin

}
C {devices/lab_pin.sym} 190 -570 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 190 -470 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/vcvs.sym} 860 -770 0 0 {name=E3 value=0.5555555
}
C {devices/lab_pin.sym} 860 -710 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 900 -840 2 0 {name=p17 sig_type=std_logic lab=outd}
