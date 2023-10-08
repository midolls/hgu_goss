v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -420 -190 340 -190 {
lab=VSS}
N -300 -450 -300 -320 {
lab=VREF}
N -180 -450 -180 -320 {
lab=VREF}
N -60 -450 -60 -320 {
lab=VREF}
N 60 -450 60 -320 {
lab=VREF}
N 180 -450 180 -320 {
lab=VREF}
N 300 -450 300 -320 {
lab=VREF}
N 420 -450 420 -320 {
lab=VREF}
N -420 -450 420 -450 {
lab=VREF}
N -340 -380 -340 -360 {
lab=SAR<6>}
N -220 -380 -220 -360 {
lab=SAR<5>}
N -100 -380 -100 -360 {
lab=SAR<4>}
N 20 -380 20 -360 {
lab=SAR<3>}
N 140 -380 140 -360 {
lab=SAR<2>}
N 260 -380 260 -360 {
lab=SAR<1>}
N 380 -380 380 -360 {
lab=SAR<0>}
N 340 -320 340 -190 {
lab=VSS}
N 220 -320 220 -190 {
lab=VSS}
N 100 -320 100 -190 {
lab=VSS}
N -20 -320 -20 -190 {
lab=VSS}
N -140 -320 -140 -190 {
lab=VSS}
N -260 -320 -260 -190 {
lab=VSS}
N -380 -320 -380 -190 {
lab=VSS}
C {/foss/designs/goss_test/module/cdac/var_mult_inv.sym} 320 -180 1 0 {name=x1 multp=1 multn=1}
C {/foss/designs/goss_test/module/cdac/var_mult_inv.sym} 200 -180 1 0 {name=x2[1:0] multp=1 multn=1}
C {/foss/designs/goss_test/module/cdac/var_mult_inv.sym} 80 -180 1 0 {name=x3[3:0] multp=1 multn=1}
C {/foss/designs/goss_test/module/cdac/var_mult_inv.sym} -40 -180 1 0 {name=x4[7:0] multp=1 multn=1}
C {/foss/designs/goss_test/module/cdac/var_mult_inv.sym} -160 -180 1 0 {name=x5[15:0] multp=1 multn=1}
C {/foss/designs/goss_test/module/cdac/var_mult_inv.sym} -280 -180 1 0 {name=x6[31:0] multp=1 multn=1}
C {/foss/designs/goss_test/module/cdac/var_mult_inv.sym} -400 -180 1 0 {name=x7[63:0] multp=1 multn=1}
C {devices/ipin.sym} -420 -450 0 0 {name=p1 lab=VREF}
C {devices/ipin.sym} -420 -190 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -340 -380 1 0 {name=p3 lab=SAR<6>}
C {devices/ipin.sym} -220 -380 1 0 {name=p4 lab=SAR<5>}
C {devices/ipin.sym} -100 -380 1 0 {name=p5 lab=SAR<4>}
C {devices/ipin.sym} 20 -380 1 0 {name=p6 lab=SAR<3>}
C {devices/ipin.sym} 140 -380 1 0 {name=p7 lab=SAR<2>}
C {devices/ipin.sym} 260 -380 1 0 {name=p8 lab=SAR<1>}
C {devices/ipin.sym} 380 -380 1 0 {name=p9 lab=SAR<0>}
C {devices/opin.sym} -340 -250 1 0 {name=p17 lab=C<63:0>
}
C {devices/opin.sym} -220 -250 1 0 {name=p10 lab=C<31:0>
}
C {devices/opin.sym} -100 -250 1 0 {name=p11 lab=C<15:0>
}
C {devices/opin.sym} 20 -250 1 0 {name=p12 lab=C<7:0>
}
C {devices/opin.sym} 140 -250 1 0 {name=p13 lab=C<3:0>
}
C {devices/opin.sym} 260 -250 1 0 {name=p14 lab=C<1:0>
}
C {devices/opin.sym} 380 -250 1 0 {name=p15 lab=C<0>
}
