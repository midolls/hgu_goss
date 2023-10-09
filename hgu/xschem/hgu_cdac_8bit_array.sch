v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1300 -840 1300 -800 {
lab=drv<0>}
N 1130 -840 1130 -800 {
lab=drv<1:0>}
N 970 -840 970 -800 {
lab=drv<3:0>}
N 800 -840 800 -800 {
lab=drv<7:0>}
N 640 -840 640 -800 {
lab=drv<15:0>}
N 470 -840 470 -800 {
lab=drv<31:0>}
N 290 -840 290 -800 {
lab=drv<63:0>}
N 1300 -700 1300 -660 {
lab=tah<0>}
N 1130 -700 1130 -660 {
lab=tah<1:0>}
N 970 -700 970 -660 {
lab=tah<3:0>}
N 800 -700 800 -660 {
lab=tah<7:0>}
N 640 -700 640 -660 {
lab=tah<15:0>}
N 470 -700 470 -660 {
lab=tah<31:0>}
N 290 -700 290 -660 {
lab=tah<63:0>}
C {hgu_cdac_unit.sym} 1300 -750 2 0 {name=x1 csize=1}
C {hgu_cdac_unit.sym} 1130 -750 2 0 {name=x2[1:0] csize=1}
C {hgu_cdac_unit.sym} 970 -750 2 0 {name=x3[3:0] csize=1}
C {hgu_cdac_unit.sym} 800 -750 2 0 {name=x4[7:0] csize=1}
C {hgu_cdac_unit.sym} 640 -750 2 0 {name=x5[15:0] csize=1}
C {hgu_cdac_unit.sym} 470 -750 2 0 {name=x6[31:0] csize=1}
C {hgu_cdac_unit.sym} 290 -750 2 0 {name=x7[63:0] csize=1}
C {devices/iopin.sym} 1300 -840 0 0 {name=p1 lab=drv<0>
}
C {devices/iopin.sym} 1130 -840 0 0 {name=p2 lab=drv<1:0>}
C {devices/iopin.sym} 970 -840 0 0 {name=p3 lab=drv<3:0>}
C {devices/iopin.sym} 800 -840 0 0 {name=p4 lab=drv<7:0>}
C {devices/iopin.sym} 640 -840 0 0 {name=p5 lab=drv<15:0>
}
C {devices/iopin.sym} 470 -840 0 0 {name=p6 lab=drv<31:0>
}
C {devices/iopin.sym} 290 -840 0 0 {name=p7 lab=drv<63:0>
}
C {devices/iopin.sym} 1300 -660 0 0 {name=p8 lab=tah<0>
}
C {devices/iopin.sym} 1130 -660 0 0 {name=p9 lab=tah<1:0>
}
C {devices/iopin.sym} 970 -660 0 0 {name=p10 lab=tah<3:0>
}
C {devices/iopin.sym} 800 -660 0 0 {name=p11 lab=tah<7:0>
}
C {devices/iopin.sym} 640 -660 0 0 {name=p12 lab=tah<15:0>
}
C {devices/iopin.sym} 470 -660 0 0 {name=p13 lab=tah<31:0>
}
C {devices/iopin.sym} 290 -660 0 0 {name=p14 lab=tah<63:0>}
