v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 -620 120 -580 {
lab=#net1 bus=true}
N 180 -620 180 -580 {
lab=#net2 bus=true}
N 240 -620 240 -580 {
lab=#net3 bus=true}
N 300 -620 300 -580 {
lab=#net4 bus=true}
N 360 -620 360 -580 {
lab=#net5 bus=true}
N 420 -620 420 -580 {
lab=#net6 bus=true}
N 470 -620 470 -580 {
lab=#net7 }
N 1240 -620 1240 -580 {
lab=#net8 bus=true}
N 1180 -620 1180 -580 {
lab=#net9 bus=true}
N 1120 -620 1120 -580 {
lab=#net10 bus=true}
N 1060 -620 1060 -580 {
lab=#net11 bus=true}
N 1000 -620 1000 -580 {
lab=#net12 bus=true}
N 940 -620 940 -580 {
lab=#net13 bus=true}
N 890 -620 890 -580 {
lab=#net14}
N 120 -810 120 -760 {
lab=d<6> bus=true
}
N 180 -810 180 -760 {
lab=d<5> bus=true}
N 240 -810 240 -760 {
lab=d<4> bus=true}
N 300 -810 300 -760 {
lab=d<3> bus=true}
N 360 -810 360 -760 {
lab=d<2> bus=true}
N 420 -810 420 -760 {
lab=d<1> bus=true}
N 470 -810 470 -760 {
lab=d<0>}
N 1240 -810 1240 -760 {
lab=db<6> }
N 1180 -810 1180 -760 {
lab=db<5> bus=true}
N 1120 -810 1120 -760 {
lab=db<4> bus=true}
N 1060 -810 1060 -760 {
lab=db<3> bus=true}
N 1000 -810 1000 -760 { 
lab=db<2> bus=true}
N 940 -810 940 -760 {
lab=db<1> bus=true}
N 890 -810 890 -760 {
lab=db<0>}
N 610 -580 610 -540 {
lab=VSS}
N 610 -580 750 -580 {
lab=VSS}
N 750 -580 750 -540 {
lab=VSS}
N 120 -440 120 -390 {
lab=t<6> bus=true}
N 180 -440 180 -390 {
lab=t<5> bus=true }
N 240 -440 240 -390 {
lab=t<4> bus=true}
N 300 -440 300 -390 {
lab=t<3> bus=true}
N 360 -440 360 -390 {
lab=t<2> bus=true}
N 420 -440 420 -390 {
lab=t<1> bus=true}
N 470 -440 470 -390 {
lab=t<0>}
N 1240 -440 1240 -390 {
lab=tb<6> bus=true}
N 1180 -440 1180 -390 {
lab=tb<5> bus=true}
N 1120 -440 1120 -390 {
lab=tb<4> bus=true}
N 1060 -440 1060 -390 {
lab=tb<3> bus=true}
N 1000 -440 1000 -390 {
lab=tb<2> bus=true}
N 940 -440 940 -390 {
lab=tb<1> bus=true}
N 890 -440 890 -390 {
lab=tb<0>}
C {hgu_cdac_8bit_array.sym} 370 -420 0 0 {name=x1}
C {hgu_cdac_drv.sym} 750 -690 0 0 {name=x2}
C {hgu_cdac_8bit_array.sym} 990 -420 0 1 {name=x3}
C {hgu_cdac_drv.sym} 610 -690 0 1 {name=x4}
C {hgu_cdac_unit.sym} 610 -490 2 0 {name=x9 csize=1}
C {hgu_cdac_unit.sym} 750 -490 2 0 {name=x10 csize=1}
C {devices/iopin.sym} 120 -810 3 0 {name=p2 lab=d<6>}
C {devices/iopin.sym} 180 -810 3 0 {name=p3 lab=d<5>}
C {devices/iopin.sym} 240 -810 3 0 {name=p4 lab=d<4>
}
C {devices/iopin.sym} 300 -810 3 0 {name=p5 lab=d<3>}
C {devices/iopin.sym} 360 -810 3 0 {name=p9 lab=d<2>}
C {devices/iopin.sym} 420 -810 3 0 {name=p10 lab=d<1>}
C {devices/iopin.sym} 470 -810 3 0 {name=p11 lab=d<0>}
C {devices/iopin.sym} 1240 -810 1 1 {name=p6 lab=db<6>}
C {devices/iopin.sym} 1180 -810 1 1 {name=p7 lab=db<5>}
C {devices/iopin.sym} 1120 -810 1 1 {name=p8 lab=db<4>}
C {devices/iopin.sym} 1060 -810 1 1 {name=p12 lab=db<3>}
C {devices/iopin.sym} 1000 -810 1 1 {name=p13 lab=db<2>}
C {devices/iopin.sym} 940 -810 1 1 {name=p14 lab=db<1>}
C {devices/iopin.sym} 890 -810 1 1 {name=p15 lab=db<0>}
C {devices/ipin.sym} -80 -730 0 0 {name=p16 lab=VSS}
C {devices/lab_pin.sym} 500 -760 1 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 90 -760 1 0 {name=p17 sig_type=std_logic lab=VREF}
C {devices/ipin.sym} -80 -700 0 0 {name=p18 lab=VREF}
C {devices/lab_pin.sym} 1270 -760 1 0 {name=p19 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 860 -760 1 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 120 -390 3 1 {name=p21 lab=t<6>}
C {devices/iopin.sym} 180 -390 3 1 {name=p22 lab=t<5>}
C {devices/iopin.sym} 240 -390 3 1 {name=p23 lab=t<4>}
C {devices/iopin.sym} 300 -390 3 1 {name=p24 lab=t<3>}
C {devices/iopin.sym} 360 -390 3 1 {name=p25 lab=t<2>}
C {devices/iopin.sym} 420 -390 3 1 {name=p26 lab=t<1>}
C {devices/iopin.sym} 470 -390 3 1 {name=p27 lab=t<0>}
C {devices/iopin.sym} 1240 -390 1 0 {name=p28 lab=tb<6>}
C {devices/iopin.sym} 1180 -390 1 0 {name=p29 lab=tb<5>}
C {devices/iopin.sym} 1120 -390 1 0 {name=p30 lab=tb<4>
}
C {devices/iopin.sym} 1060 -390 1 0 {name=p31 lab=tb<3>}
C {devices/iopin.sym} 1000 -390 1 0 {name=p32 lab=tb<2>}
C {devices/iopin.sym} 940 -390 1 0 {name=p33 lab=tb<1>}
C {devices/iopin.sym} 890 -390 1 0 {name=p34 lab=tb<0>}
C {devices/lab_pin.sym} 680 -580 1 0 {name=p35 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 610 -440 3 1 {name=p36 lab=tu}
C {devices/iopin.sym} 750 -440 3 1 {name=p37 lab=tub}
