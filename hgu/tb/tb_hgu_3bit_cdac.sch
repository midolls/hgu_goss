v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 570 -560 570 -520 {
lab=#net1}
N 450 -560 450 -520 {
lab=#net2}
N 570 -420 570 -380 {
lab=tah_vp}
N 450 -420 450 -380 {
lab=tah_vp}
N 690 -420 690 -380 {
lab=tah_vp}
N 990 -560 990 -520 {
lab=#net3}
N 1110 -560 1110 -520 {
lab=#net4}
N 990 -420 990 -380 {
lab=tah_vp}
N 1110 -420 1110 -380 {
lab=tah_vp}
N 870 -420 870 -380 {
lab=tah_vp}
N 570 -110 570 -70 {
lab=#net5}
N 450 -110 450 -70 {
lab=#net6}
N 570 -250 570 -210 {
lab=tah_vn}
N 450 -250 450 -210 {
lab=tah_vn}
N 690 -250 690 -210 {
lab=tah_vn}
N 990 -110 990 -70 {
lab=#net7}
N 1110 -110 1110 -70 {
lab=#net8}
N 990 -250 990 -210 {
lab=tah_vn}
N 1110 -250 1110 -210 {
lab=tah_vn}
N 870 -250 870 -210 {
lab=tah_vn}
N 340 -380 1220 -380 {
lab=tah_vp}
N 340 -250 1220 -250 {
lab=tah_vn}
N 1070 -760 1070 -630 {
lab=VREF}
N 950 -760 950 -630 {
lab=VREF}
N 1110 -690 1110 -670 {
lab=DN2}
N 990 -690 990 -670 {
lab=DN1}
N 950 -760 1220 -760 {
lab=VREF}
N 490 -760 490 -630 {
lab=VREF}
N 610 -760 610 -630 {
lab=VREF}
N 450 -690 450 -670 {
lab=UP2}
N 570 -690 570 -670 {
lab=UP1}
N 340 -760 610 -760 {
lab=VREF}
N 1110 40 1110 60 {
lab=DNb2}
N 990 40 990 60 {
lab=DNb1}
N 450 40 450 60 {
lab=UPb2}
N 570 40 570 60 {
lab=UPb1}
N 150 -390 150 -380 {
lab=#net9}
N -110 -340 10 -340 {
lab=vip}
N -110 -340 -110 -280 {
lab=vip}
N 120 -420 120 -400 {
lab=sw_n}
N 50 -400 80 -400 {
lab=sw}
N 50 -470 50 -400 {
lab=sw}
N 230 -350 310 -350 {
lab=tah_vp}
N 230 -290 270 -290 {
lab=tah_vn}
N -60 -300 10 -300 {
lab=vin}
N -60 -300 -60 -270 {
lab=vin}
N -390 -670 -390 -640 {
lab=VDD}
N 270 -290 340 -290 {
lab=tah_vn}
N 340 -290 340 -250 {
lab=tah_vn}
N 310 -350 340 -350 {
lab=tah_vp}
N 340 -380 340 -350 {
lab=tah_vp}
N -110 -280 -110 -240 {
lab=vip}
N -60 -270 -60 -240 {
lab=vin}
C {/foss/designs/goss_test/module/cdac/cdac_unit.sym} 570 -470 2 0 {name=x3 csize=1}
C {/foss/designs/goss_test/module/cdac/cdac_unit.sym} 450 -470 2 0 {name=x4[1:0] csize=1}
C {/foss/designs/goss_test/module/cdac/cdac_unit.sym} 690 -470 2 0 {name=x5 csize=1}
C {devices/gnd.sym} 690 -520 2 0 {name=l1 lab=GND}
C {/foss/designs/goss_test/module/cdac/cdac_unit.sym} 990 -470 2 1 {name=x8 csize=1}
C {/foss/designs/goss_test/module/cdac/cdac_unit.sym} 1110 -470 2 1 {name=x9[1:0] csize=1}
C {/foss/designs/goss_test/module/cdac/cdac_unit.sym} 870 -470 2 1 {name=x10 csize=1}
C {devices/gnd.sym} 870 -520 2 1 {name=l2 lab=GND}
C {/foss/designs/goss_test/module/cdac/var_mult_inv.sym} 510 -140 1 1 {name=x11 multp=1 multn=1}
C {/foss/designs/goss_test/module/cdac/var_mult_inv.sym} 390 -140 1 1 {name=x12[1:0] multp=1 multn=1 }
C {/foss/designs/goss_test/module/cdac/cdac_unit.sym} 570 -160 0 1 {name=x13 csize=1}
C {/foss/designs/goss_test/module/cdac/cdac_unit.sym} 450 -160 0 1 {name=x14[1:0] csize=1}
C {/foss/designs/goss_test/module/cdac/cdac_unit.sym} 690 -160 0 1 {name=x15 csize=1}
C {devices/gnd.sym} 690 -110 0 1 {name=l3 lab=GND}
C {/foss/designs/goss_test/module/cdac/cdac_unit.sym} 990 -160 0 0 {name=x18 csize=1}
C {/foss/designs/goss_test/module/cdac/cdac_unit.sym} 1110 -160 0 0 {name=x19[1:0] csize=1}
C {/foss/designs/goss_test/module/cdac/cdac_unit.sym} 870 -160 0 0 {name=x20 csize=1}
C {devices/gnd.sym} 870 -110 0 0 {name=l4 lab=GND}
C {/foss/designs/goss_test/module/cdac/var_mult_inv.sym} 1050 -140 3 0 {name=x16 multp=1 multn=1}
C {/foss/designs/goss_test/module/cdac/var_mult_inv.sym} 1170 -140 3 0 {name=x17[1:0] multp=1 multn=1}
C {/foss/designs/goss_test/module/cdac/var_mult_inv.sym} 1050 -490 3 1 {name=x1 multp=1 multn=1}
C {/foss/designs/goss_test/module/cdac/var_mult_inv.sym} 1170 -490 3 1 {name=x2[1:0] multp=1 multn=1 }
C {/foss/designs/goss_test/module/cdac/var_mult_inv.sym} 510 -490 1 0 {name=x6 multp=1 multn=1}
C {/foss/designs/goss_test/module/cdac/var_mult_inv.sym} 390 -490 1 0 {name=x7[1:0] multp=1 multn=1}
C {devices/capa.sym} 1220 -350 0 0 {name=C1
m=1
value=0.01f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1220 -220 0 0 {name=C2
m=1
value=0.01f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1220 -320 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 1220 -190 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 450 -720 2 0 {name=V3 value="PULSE(0 1.8 80n 1p 1p 120n 200n)"}
C {devices/gnd.sym} 450 -750 2 0 {name=l9 lab=GND}
C {devices/vsource.sym} 570 -720 2 0 {name=V4 value="PULSE(0 1.8 140n 1p 1p 60n 200n)"0}
C {devices/gnd.sym} 570 -750 2 0 {name=l10 lab=GND}
C {devices/vsource.sym} 990 -720 2 0 {name=V5 value=1.8}
C {devices/gnd.sym} 990 -750 2 0 {name=l11 lab=GND}
C {devices/vsource.sym} 1110 -720 2 0 {name=V6 value=1.8}
C {devices/gnd.sym} 1110 -750 2 0 {name=l12 lab=GND}
C {devices/vsource.sym} 1110 90 0 0 {name=V7 value=0}
C {devices/gnd.sym} 1110 120 0 0 {name=l13 lab=GND}
C {devices/vsource.sym} 990 90 0 0 {name=V8 value=0}
C {devices/gnd.sym} 990 120 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} 570 90 0 0 {name=V9 value="PULSE(0 1.8 0 1p 1p 140n 200n)"}
C {devices/gnd.sym} 570 120 0 0 {name=l15 lab=GND}
C {devices/vsource.sym} 450 90 0 0 {name=V10 value="PULSE(0 1.8 0 1p 1p 80n 200n)"}
C {devices/gnd.sym} 450 120 0 0 {name=l16 lab=GND}
C {devices/lab_wire.sym} 450 -680 0 0 {name=p1 sig_type=std_logic lab=UP2}
C {devices/lab_wire.sym} 570 -680 0 0 {name=p2 sig_type=std_logic lab=UP1}
C {devices/lab_wire.sym} 990 -680 0 0 {name=p6 sig_type=std_logic lab=DN1}
C {devices/lab_wire.sym} 1110 -680 0 0 {name=p7 sig_type=std_logic lab=DN2
}
C {devices/code.sym} 25 -680 0 0 {name=s1 only_toplevel=false value="
.save all 
.temp = 25
.tran 100p 200n
.OPTIONS savecurrents

.control
	run
        plot v(up2)+14 v(up1)+12 v(dn2)+10 v(dn1)+8 v(upb2)+6 v(upb1)+4 v(dnb2)+2 v(dnb1)
	plot tah_vp-tah_vn vip-vin
.endc
"
}
C {sky130_fd_pr/corner.sym} -105 -680 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/lab_wire.sym} 990 50 0 0 {name=p12 sig_type=std_logic lab=DNb1}
C {devices/lab_wire.sym} 1110 50 0 0 {name=p13 sig_type=std_logic lab=DNb2
}
C {devices/lab_wire.sym} 450 50 0 0 {name=p23 sig_type=std_logic lab=UPb2}
C {devices/lab_wire.sym} 570 50 0 0 {name=p24 sig_type=std_logic lab=UPb1}
C {devices/vsource.sym} -210 -610 0 0 {name=V11 value=0.9}
C {devices/gnd.sym} -210 -580 0 0 {name=l17 lab=GND}
C {devices/vsource.sym} -290 -610 0 0 {name=V12 value=0}
C {devices/gnd.sym} -290 -580 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} 410 0 1 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 530 0 1 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 410 -630 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 530 -630 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1150 -630 0 1 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1030 -630 0 1 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1150 0 3 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1030 0 3 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -290 -640 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -210 -640 0 0 {name=p8 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 350 -760 0 0 {name=p10 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 490 0 3 0 {name=p3 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 1220 -760 0 1 {name=p11 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 610 0 3 0 {name=p14 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 950 0 1 0 {name=p16 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 1070 0 1 0 {name=p27 sig_type=std_logic lab=VREF}
C {/foss/designs/goss_test/module/tah/tah.sym} 80 -320 0 0 {name=x21}
C {devices/vsource.sym} 50 -500 2 0 {name=V13 value="0 pulse(0 1.8 0 80p 80p 20n 200n)"
}
C {devices/vsource.sym} 120 -450 2 1 {name=V14 value="0 pulse(1.8 0 0 80p 80p 20n 200n)"
}
C {devices/gnd.sym} 50 -530 2 0 {name=l20 lab=GND}
C {devices/gnd.sym} 120 -480 2 0 {name=l21 lab=GND}
C {devices/lab_wire.sym} 50 -410 0 0 {name=p9 sig_type=std_logic lab=sw
}
C {devices/lab_wire.sym} 120 -410 0 0 {name=p28 sig_type=std_logic lab=sw_n

}
C {devices/lab_wire.sym} 0 -340 0 0 {name=p29 sig_type=std_logic lab=vip

}
C {devices/lab_wire.sym} 300 -290 0 0 {name=p30 sig_type=std_logic lab=tah_vn
}
C {devices/lab_wire.sym} 300 -350 0 0 {name=p31 sig_type=std_logic lab=tah_vp
}
C {devices/lab_wire.sym} 0 -300 0 0 {name=p32 sig_type=std_logic lab=vin

}
C {devices/gnd.sym} 150 -240 0 0 {name=l25 lab=GND}
C {devices/vdd.sym} 150 -400 0 0 {name=l26 lab=VDD}
C {devices/vsource.sym} -390 -610 0 0 {name=V17 value=1.8
}
C {devices/gnd.sym} -390 -580 0 0 {name=l27 lab=GND}
C {devices/vdd.sym} -390 -670 0 0 {name=l28 lab=VDD}
C {devices/vsource.sym} -110 -210 0 0 {name=V1 value=1.35}
C {devices/gnd.sym} -110 -180 0 0 {name=l23 lab=GND}
C {devices/vsource.sym} -60 -210 0 0 {name=V2 value=0.45}
C {devices/gnd.sym} -60 -180 0 0 {name=l5 lab=GND}
