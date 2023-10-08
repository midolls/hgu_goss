v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 360 -530 360 -440 {
lab=#net1}
N 360 -440 590 -440 {
lab=#net1}
N 360 -440 360 -430 {
lab=#net1}
N 360 -370 360 -300 {
lab=#net2}
N 360 -100 360 -70 {
lab=#net3}
N 350 -70 360 -70 {
lab=#net3}
N 360 -80 600 -80 {
lab=#net3}
N 30 -330 360 -330 {
lab=#net2}
N 30 -330 30 -310 {
lab=#net2}
N 360 -740 360 -730 {
lab=VDD}
N 80 -760 80 -740 {
lab=VDD}
N 80 -760 200 -760 {
lab=VDD}
N 790 -440 840 -440 {
lab=vcm}
N 840 -440 840 -80 {
lab=vcm}
N 800 -80 840 -80 {
lab=vcm}
N 840 -270 850 -270 {
lab=vcm}
N 80 -660 180 -660 {
lab=VSS}
N 80 -680 80 -660 {
lab=VSS}
N 180 -680 180 -660 {
lab=VSS}
N 130 -680 130 -660 {
lab=VSS}
N 290 -630 310 -630 {
lab=phi2}
N 410 -630 430 -630 {
lab=phi2_b}
N 350 -10 350 20 {
lab=VSS}
N 30 20 350 20 {
lab=VSS}
N 30 -110 30 20 {
lab=VSS}
N 180 20 180 40 {
lab=VSS}
N 250 -10 250 20 {
lab=VSS}
N 300 -10 300 20 {
lab=VSS}
N 310 -370 310 -350 {
lab=VSS}
N 260 -350 310 -350 {
lab=VSS}
N 260 -370 260 -350 {
lab=VSS}
N 290 -200 310 -200 {
lab=phi2}
N 410 -200 430 -200 {
lab=phi2_b}
N -40 -210 -20 -210 {
lab=phi1}
N 80 -210 100 -210 {
lab=phi1_b}
N 700 -30 700 -10 {
lab=phi1}
N 700 -150 700 -130 {
lab=phi1_b}
N 690 -390 690 -370 {
lab=phi1}
N 690 -510 690 -490 {
lab=phi1_b}
N 400 -660 430 -680 {
lab=VDD}
N 430 -740 430 -680 {
lab=VDD}
N 360 -740 430 -740 {
lab=VDD}
N -20 -240 -10 -240 {
lab=VSS}
N 70 -240 80 -240 {
lab=VDD}
N 240 -70 250 -70 {
lab=vcm}
N 400 -230 410 -230 {
lab=VDD}
N 300 -230 320 -230 {
lab=VSS}
N 250 -430 260 -430 {
lab=vcm}
N -360 -760 80 -760 {
lab=VDD}
N -360 -760 -360 -510 {
lab=VDD}
N -360 -350 -360 10 {
lab=VSS}
N -160 -470 -130 -470 {
lab=phi1}
N -160 -450 -130 -450 {
lab=phi1_b}
N -160 -410 -130 -410 {
lab=phi2_b}
N -160 -390 -130 -390 {
lab=phi2}
N -360 20 30 20 {
lab=VSS}
N -360 10 -360 20 {
lab=VSS}
N 200 -760 430 -760 {
lab=VDD}
N 430 -760 430 -730 {
lab=VDD}
N 180 -760 180 -740 {
lab=VDD}
N 300 -660 320 -660 {
lab=VSS}
C {/foss/designs/goss_test/module/vref_gen/sw_vref_gen.sym} 30 -160 1 0 {name=x1}
C {/foss/designs/goss_test/module/vref_gen/sw_vref_gen.sym} 360 -150 1 0 {name=x2}
C {/foss/designs/goss_test/module/vref_gen/sw_vref_gen.sym} 750 -80 0 0 {name=x3}
C {/foss/designs/goss_test/module/vref_gen/sw_vref_gen.sym} 740 -440 0 0 {name=x4}
C {/foss/designs/goss_test/module/vref_gen/sw_vref_gen.sym} 360 -580 1 0 {name=x5}
C {/foss/designs/goss_test/module/vref_gen/cap_cell_vref_gen.sym} 30 -570 0 0 {name=x6}
C {/foss/designs/goss_test/module/vref_gen/cap_cell_vref_gen.sym} 200 100 0 0 {name=x7}
C {devices/opin.sym} 850 -270 0 0 {name=p2 lab=vcm
}
C {devices/ipin.sym} -100 -600 0 0 {name=p3 lab=VDD}
C {devices/ipin.sym} -100 -620 0 0 {name=p4 lab=VSS}
C {devices/lab_wire.sym} 130 -760 0 0 {name=l4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 300 -660 0 0 {name=l1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 290 -630 0 0 {name=l3 sig_type=std_logic lab=phi2}
C {devices/lab_wire.sym} 430 -630 2 0 {name=l5 sig_type=std_logic lab=phi2_b}
C {/foss/designs/goss_test/module/vref_gen/cap_cell_vref_gen.sym} 210 -260 0 0 {name=x8}
C {devices/lab_wire.sym} 300 -230 0 0 {name=l6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 410 -230 2 0 {name=l7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -20 -240 0 0 {name=l8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 80 -240 2 0 {name=l9 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 660 -400 3 0 {name=l10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 660 -480 1 0 {name=l11 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 670 -40 3 0 {name=l12 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 670 -120 1 0 {name=l13 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 180 40 2 0 {name=l14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 250 -430 0 0 {name=l15 sig_type=std_logic lab=vcm}
C {devices/lab_wire.sym} 300 -350 2 0 {name=l16 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 240 -70 0 0 {name=l17 sig_type=std_logic lab=vcm}
C {devices/lab_wire.sym} 290 -200 0 0 {name=l18 sig_type=std_logic lab=phi2}
C {devices/lab_wire.sym} 430 -200 2 0 {name=l19 sig_type=std_logic lab=phi2_b}
C {devices/lab_wire.sym} -40 -210 0 0 {name=l20 sig_type=std_logic lab=phi1}
C {devices/lab_wire.sym} 100 -210 2 0 {name=l21 sig_type=std_logic lab=phi1_b}
C {devices/lab_wire.sym} 700 -10 3 0 {name=l22 sig_type=std_logic lab=phi1}
C {devices/lab_wire.sym} 700 -150 1 0 {name=l23 sig_type=std_logic lab=phi1_b}
C {devices/lab_wire.sym} 690 -370 3 0 {name=l24 sig_type=std_logic lab=phi1}
C {devices/lab_wire.sym} 690 -510 1 0 {name=l25 sig_type=std_logic lab=phi1_b}
C {devices/lab_wire.sym} 80 -660 0 0 {name=l26 sig_type=std_logic lab=VSS}
C {/foss/designs/goss_test/module/vref_gen/vcm_clkgen.sym} -310 -430 0 0 {name=x9}
C {devices/lab_wire.sym} -130 -390 0 1 {name=l2 sig_type=std_logic lab=phi2}
C {devices/lab_wire.sym} -130 -410 0 1 {name=l27 sig_type=std_logic lab=phi2_b}
C {devices/lab_wire.sym} -130 -450 2 0 {name=l28 sig_type=std_logic lab=phi1_b}
C {devices/lab_wire.sym} -130 -470 2 0 {name=l29 sig_type=std_logic lab=phi1}
C {devices/ipin.sym} -460 -430 0 0 {name=p1 lab=clk}
C {sky130_fd_pr/cap_mim_m3_1.sym} 530 -50 0 0 {name=C2 model=cap_mim_m3_1 W=1.405 L=1.4 MF=1 spiceprefix=X}
C {devices/lab_wire.sym} 530 -20 2 0 {name=l31 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} 840 -50 0 0 {name=C3 model=cap_mim_m3_1 W=1.405 L=1.4 MF=1 spiceprefix=X}
C {devices/lab_wire.sym} 840 -20 2 0 {name=l32 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} 510 -410 0 0 {name=C4 model=cap_mim_m3_1 W=1.405 L=1.4 MF=1 spiceprefix=X}
C {devices/lab_wire.sym} 510 -380 2 0 {name=l33 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} 160 -300 0 0 {name=C5 model=cap_mim_m3_1 W=1.405 L=1.4 MF=1 spiceprefix=X}
C {devices/lab_wire.sym} 160 -270 2 0 {name=l34 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} -30 50 0 0 {name=C1 model=cap_mim_m3_1 W=1.405 L=1.4 MF=1 spiceprefix=X}
C {devices/lab_wire.sym} -30 80 2 0 {name=l30 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} -140 -500 2 0 {name=C6 model=cap_mim_m3_1 W=1.405 L=1.4 MF=1 spiceprefix=X}
C {devices/lab_wire.sym} -140 -530 0 0 {name=l35 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} -140 -360 0 0 {name=C7 model=cap_mim_m3_1 W=1.405 L=1.4 MF=1 spiceprefix=X}
C {devices/lab_wire.sym} -140 -330 2 0 {name=l36 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} -100 -450 3 0 {name=C8 model=cap_mim_m3_1 W=1.405 L=1.4 MF=1 spiceprefix=X}
C {devices/lab_wire.sym} -70 -450 1 0 {name=l37 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} -100 -410 3 0 {name=C9 model=cap_mim_m3_1 W=1.405 L=1.4 MF=1 spiceprefix=X}
C {devices/lab_wire.sym} -70 -410 1 0 {name=l38 sig_type=std_logic lab=VSS}
