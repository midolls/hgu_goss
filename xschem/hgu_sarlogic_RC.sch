v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 510 -420 560 -420 {
lab=EOB}
N 530 -440 560 -440 {
lab=sample_clk}
N 940 -480 1060 -480 {
lab=sar_clk}
N 510 -530 1190 -530 {
lab=EOB}
N 510 -510 510 -420 {
lab=EOB}
N 1360 -530 1360 -500 {
lab=EOB}
N 530 -440 530 -250 {
lab=sample_clk}
N 510 -530 510 -510 {
lab=EOB}
N 480 -250 530 -250 {
lab=sample_clk}
N 860 -480 940 -480 {
lab=sar_clk}
N 1190 -530 1360 -530 {
lab=EOB}
N 1360 -480 1530 -480 {
lab=sar_result_temp[0:7] bus=true}
C {../xschem/hgu_clk_async_RC.sym} 710 -410 0 0 {name=x1}
C {../xschem/hgu_clk_sample_RC.sym} 330 -180 0 0 {name=x2}
C {../xschem/hgu_sarlogic_8bit_logic_RC.sym} 1210 -450 0 0 {name=x3}
C {devices/lab_pin.sym} 180 -230 0 0 {name=p1 sig_type=std_logic lab=EXT_CLK}
C {devices/lab_pin.sym} 180 -270 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 180 -250 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 560 -480 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 560 -460 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1060 -420 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1060 -400 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 560 -400 0 0 {name=p8 sig_type=std_logic lab=READY}
C {devices/lab_pin.sym} 1060 -460 0 0 {name=p9 sig_type=std_logic lab=COMP_RESULT}
C {devices/lab_pin.sym} 180 -210 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 180 -190 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1020 -480 0 0 {name=p16 sig_type=std_logic lab=sar_clk}
C {devices/lab_wire.sym} 1030 -530 0 0 {name=p17 sig_type=std_logic lab=EOB}
C {devices/lab_wire.sym} 530 -250 0 0 {name=p18 sig_type=std_logic lab=sample_clk}
C {devices/lab_pin.sym} 1360 -460 2 0 {name=p19 sig_type=std_logic lab=check[0:6]}
C {devices/ipin.sym} 190 -410 0 0 {name=p11 lab=VDD}
C {devices/ipin.sym} 190 -390 0 0 {name=p12 lab=VSS}
C {devices/ipin.sym} 190 -350 0 0 {name=p13 lab=COMP_RESULT}
C {devices/ipin.sym} 190 -330 0 0 {name=p15 lab=READY}
C {devices/ipin.sym} 190 -370 0 0 {name=p20 lab=EXT_CLK}
C {devices/opin.sym} 270 -520 0 0 {name=p21 lab=sar_clk}
C {devices/opin.sym} 270 -480 0 0 {name=p23 lab=sar_result[0:7]}
C {devices/opin.sym} 270 -440 0 0 {name=p26 lab=sample_clk}
C {devices/ipin.sym} 190 -430 0 0 {name=p118 lab=sel_bit[0:1]}
C {devices/lab_pin.sym} 1060 -500 0 0 {name=p120 sig_type=std_logic lab=sel_bit[0:1]}
C {devices/lab_pin.sym} 180 -170 0 0 {name=p30 sig_type=std_logic lab=sample_delay_cap_ctrl_code[0:3]}
C {devices/ipin.sym} 230 -10 0 0 {name=p31 lab=sample_delay_cap_ctrl_code[0:15]}
C {devices/opin.sym} 270 -420 0 0 {name=p32 lab=sample_clk_b}
C {devices/lab_pin.sym} 480 -270 2 0 {name=p33 sig_type=std_logic lab=sample_clk_b}
C {devices/opin.sym} 1360 -340 0 0 {name=p54 lab=vdd_sw[1:7]}
C {devices/opin.sym} 1360 -320 0 0 {name=p55 lab=vdd_sw_b[1:7]}
C {devices/opin.sym} 1360 -300 0 0 {name=p56 lab=vss_sw[1:7]}
C {devices/opin.sym} 1360 -280 0 0 {name=p57 lab=vss_sw_b[1:7]}
C {../xschem/hgu_sarlogic_sw_ctrl_RC.sym} 1210 -290 0 0 {name=x4}
C {devices/lab_pin.sym} 1060 -300 0 0 {name=p36 sig_type=std_logic lab=sar_result_temp[1:7]}
C {devices/lab_pin.sym} 1060 -280 0 0 {name=p37 sig_type=std_logic lab=check[0:6]}
C {devices/lab_pin.sym} 1060 -240 0 0 {name=p39 sig_type=std_logic lab=sample_clk_b}
C {devices/lab_pin.sym} 1060 -340 0 0 {name=p40 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1060 -320 0 0 {name=p41 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1060 -260 0 0 {name=p38 sig_type=std_logic lab=sar_clk}
C {devices/lab_pin.sym} 1060 -440 2 1 {name=p42 sig_type=std_logic lab=sample_clk_b}
C {devices/ipin.sym} 230 40 0 0 {name=p22 lab=async_resetb_delay_cap_ctrl_code[0:3]}
C {devices/ipin.sym} 230 60 0 0 {name=p25 lab=async_setb_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 560 -360 0 0 {name=p34 sig_type=std_logic lab=async_resetb_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 560 -340 0 0 {name=p35 sig_type=std_logic lab=async_setb_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 180 -150 0 0 {name=p43 sig_type=std_logic lab=sample_delay_cap_ctrl_code[4:7]}
C {devices/lab_pin.sym} 180 -130 0 0 {name=p44 sig_type=std_logic lab=sample_delay_cap_ctrl_code[8:11]}
C {devices/lab_pin.sym} 180 -110 0 0 {name=p45 sig_type=std_logic lab=sample_delay_cap_ctrl_code[12:15]}
C {devices/ipin.sym} 230 100 0 0 {name=p46 lab=async_delay_offset}
C {devices/lab_pin.sym} 560 -380 0 0 {name=p47 sig_type=std_logic lab=async_delay_offset}
C {devices/ipin.sym} 230 120 0 0 {name=p48 lab=sample_delay_offset}
C {devices/lab_pin.sym} 180 -90 0 0 {name=p49 sig_type=std_logic lab=sample_delay_offset}
C {/foss/designs/hgu_goss/hgu/xschem/hgu_sarlogic_retimer_RC.sym} 1680 -470 0 0 {name=x5}
C {devices/lab_pin.sym} 1830 -520 2 0 {name=p50 sig_type=std_logic lab=sar_result[0:7]}
C {devices/lab_pin.sym} 1530 -520 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1530 -500 0 0 {name=p51 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1530 -420 0 0 {name=p52 sig_type=std_logic lab=retimer_eob_delay_offset}
C {devices/lab_pin.sym} 1530 -460 0 0 {name=p53 sig_type=std_logic lab=EOB}
C {devices/ipin.sym} 230 170 0 0 {name=p58 lab=retimer_delay_code[0:3]}
C {devices/lab_pin.sym} 1530 -440 0 0 {name=p59 sig_type=std_logic lab=retimer_delay_code[0:3]}
C {devices/lab_pin.sym} 1430 -480 1 0 {name=p60 sig_type=std_logic lab=sar_result_temp[0:7]}
C {devices/ipin.sym} 230 140 0 0 {name=p61 lab=retimer_eob_delay_offset}
