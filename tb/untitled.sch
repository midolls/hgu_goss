v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 180 -30 200 -30 {
lab=#net1}
N 280 -30 300 -30 {
lab=#net2}
N 50 -30 100 -30 {
lab=i1}
N 380 -30 430 -30 {
lab=o1}
N 180 -210 200 -210 {
lab=#net3}
N 280 -210 300 -210 {
lab=#net4}
N 50 -210 100 -210 {
lab=i2}
N 380 -210 430 -210 {
lab=o2}
N 180 -720 200 -720 {
lab=#net5}
N 50 -720 100 -720 {
lab=i3}
N 420 -720 470 -720 {
lab=o3}
N 200 -720 200 -600 {
lab=#net5}
N 200 -600 200 -540 {
lab=#net5}
N 280 -720 300 -720 {
lab=#net6}
N 300 -1100 300 -720 {
lab=#net6}
N 300 -1100 340 -1100 {
lab=#net6}
N 280 -660 320 -660 {
lab=#net7}
N 320 -860 320 -660 {
lab=#net7}
N 320 -860 340 -860 {
lab=#net7}
N 340 -1200 340 -1020 {
lab=#net6}
N 340 -960 340 -780 {
lab=#net7}
N 340 -720 340 -540 {
lab=#net8}
N 280 -600 340 -600 {
lab=#net8}
N 280 -540 310 -540 {
lab=#net9}
N 310 -540 310 -380 {
lab=#net9}
N 340 -480 340 -300 {
lab=#net9}
N 310 -380 340 -380 {
lab=#net9}
C {sky130_stdcells/inv_1.sym} 140 -30 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_4.sym} 240 -30 0 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_8.sym} 340 -30 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/capa.sym} 430 0 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 430 30 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -70 -130 0 0 {name=V1 value=0}
C {devices/lab_pin.sym} -70 -160 1 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -70 -100 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -130 -130 0 0 {name=V3 value=0.9}
C {devices/lab_pin.sym} -130 -160 1 0 {name=p2 sig_type=std_logic lab=VREF}
C {devices/gnd.sym} -130 -100 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -190 -130 0 0 {name=V4 value=1.8}
C {devices/lab_pin.sym} -190 -160 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} -190 -100 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -340 -130 0 0 {name=V2 value=1.8}
C {devices/lab_pin.sym} -340 -160 1 0 {name=p4 sig_type=std_logic lab=VPB}
C {devices/gnd.sym} -340 -100 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -400 -130 0 0 {name=V5 value=0}
C {devices/lab_pin.sym} -400 -160 1 0 {name=p5 sig_type=std_logic lab=VNB}
C {devices/gnd.sym} -400 -100 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -460 -130 0 0 {name=V6 value=1.8}
C {devices/lab_pin.sym} -460 -160 1 0 {name=p6 sig_type=std_logic lab=VPWR}
C {devices/gnd.sym} -460 -100 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} -280 -130 0 0 {name=V7 value=0}
C {devices/lab_pin.sym} -280 -160 1 0 {name=p7 sig_type=std_logic lab=VGND}
C {devices/gnd.sym} -280 -100 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 50 0 0 0 {name=V8 value="PULSE(0 1.8 0 10n 10n 250n 500n)"}
C {devices/gnd.sym} 50 30 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 80 -30 0 0 {name=p8 sig_type=std_logic lab=i1}
C {devices/lab_wire.sym} 410 -30 0 0 {name=p9 sig_type=std_logic lab=o1}
C {devices/code.sym} -280 0 0 0 {name=spice1 only_toplevel=false value="

.OPTIONS savecurrents
.tran 10ps 350ns
.include /foss/designs/hgu_goss/hgu/mag/hgu_cdac_unit.spice
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.control
	run
	plot V(i1) V(o1) 
	plot V(i2) V(o2) 
	plot V(i3) V(o3) 
	
.endc
.save all

"}
C {sky130_stdcells/inv_1.sym} 140 -210 0 0 {name=x4 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/capa.sym} 430 -180 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 430 -150 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 50 -180 0 0 {name=V9 value="PULSE(0 1.8 0 10n 10n 250n 500n)"}
C {devices/gnd.sym} 50 -150 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 80 -210 0 0 {name=p10 sig_type=std_logic lab=i2}
C {devices/lab_wire.sym} 410 -210 0 0 {name=p11 sig_type=std_logic lab=o2}
C {sky130_stdcells/inv_1.sym} 240 -210 0 0 {name=x5[0:3] VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 340 -210 0 0 {name=x6[0:15] VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 140 -720 0 0 {name=x5 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/capa.sym} 470 -690 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 470 -660 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} 50 -690 0 1 {name=V10 value="PULSE(0 1.8 0 10n 10n 250n 500n)"}
C {devices/gnd.sym} 50 -660 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 80 -720 0 0 {name=p12 sig_type=std_logic lab=i3}
C {devices/lab_wire.sym} 450 -720 0 0 {name=p13 sig_type=std_logic lab=o3}
C {sky130_stdcells/inv_1.sym} 240 -720 0 0 {name=x6 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 240 -660 0 0 {name=x7 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 240 -600 0 0 {name=x8 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 240 -540 0 0 {name=x9 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 380 -720 0 0 {name=x10 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 380 -660 0 0 {name=x11 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 380 -600 0 0 {name=x12 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 380 -540 0 0 {name=x13 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 380 -480 0 0 {name=x14 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 380 -420 0 0 {name=x15 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 380 -360 0 0 {name=x16 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 380 -300 0 0 {name=x17 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 380 -960 0 0 {name=x18 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 380 -900 0 0 {name=x19 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 380 -840 0 0 {name=x20 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 380 -780 0 0 {name=x21 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 380 -1200 0 0 {name=x22 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 380 -1140 0 0 {name=x23 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 380 -1080 0 0 {name=x24 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 380 -1020 0 0 {name=x25 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
