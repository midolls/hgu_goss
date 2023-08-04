v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 40 -1090 880 -1090 {}
L 4 880 -1090 880 -510 {}
L 4 40 -510 880 -510 {}
L 4 40 -1090 40 -510 {}
L 4 60 -470 640 -470 {}
L 4 640 -470 640 -90 {}
L 4 40 -90 640 -90 {}
L 4 40 -470 40 -90 {}
L 4 40 -470 60 -470 {}
L 4 1240 -260 1240 -60 {}
L 4 1240 -60 1520 -60 {}
L 4 1520 -260 1520 -60 {}
L 4 1520 -280 1520 -260 {}
L 4 1240 -280 1520 -280 {}
L 4 1240 -280 1240 -260 {}
L 4 1240 -540 1240 -280 {}
L 4 1240 -540 1520 -540 {}
L 4 1520 -540 1520 -280 {}
B 2 1720 -1400 3390 -990 {flags=graph,unlocked
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-8.69706e-08
x2=1.9674e-06
divx=5
subdivx=1
node="clk_vcm
x1.vcm"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1720 -980 3390 -580 {flags=graph
y1=0.669374
y2=1.15124
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.08731e-07
x2=1.77898e-06
divx=5
subdivx=1
node="x1.ctopp
x1.ctopn
conv_finished"
color="4 7 12"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1720 -520 3390 -50 {flags=graph
y1=0
y2=2
ypos1=-0.0626168
ypos2=2.36231
divy=5
subdivy=1
unity=1
x1=1.08731e-07
x2=1.77898e-06
divx=5
subdivx=1
node="x1.clk_dig
x1.clk_comp
x1.decision_finish
x1.comp_latch
x1.clk_ena
start_conv
rst_n
conv_finished
conv_finished_osr
RESULT,result15,result14,result13,result12,result11,result10,result9,result8,result7,result6,result5,result4,result3,result2,result1,result0"
color="6 8 9 9 9 9 9 9 9 6"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
T {   Copyright 2022 Manuel Moser

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.} 470 -1280 0 0 0.2 0.2 {}
T {DELAY1} 170 -1030 0 0 0.4 0.4 {}
T {
80ns  40ns  20ns  10ns  5ns} 180 -840 0 0 0.4 0.4 {}
T {DELAY2} 490 -1030 0 0 0.4 0.4 {}
T {DELAY3} 180 -760 0 0 0.4 0.4 {}
T {DELAY4} 500 -760 0 0 0.4 0.4 {}
T {
160ns  80ns  40ns  20ns  10ns  5ns} 510 -570 0 0 0.4 0.4 {}
T {DELAY SETTINGS OF SELF-CLOCKED LOOP} 50 -1090 0 0 0.7 0.7 {}
T {Averaging Config} 60 -460 0 0 0.4 0.4 {}
T {default: 1 sample
001: 3 samples
010: 7 samples
011: 15 samples
100: 31 samples} 80 -230 0 0 0.4 0.4 {}
T {OSR Config} 400 -460 0 0 0.4 0.4 {}
T {default: 1 sample
001: 4 samples
010: 16 samples
011: 64 samples
100: 256 samples} 430 -230 0 0 0.4 0.4 {}
T {
80ns  40ns  20ns  10ns  5ns} 500 -840 0 0 0.4 0.4 {}
T {
80ns  40ns  20ns  10ns  5ns} 190 -570 0 0 0.4 0.4 {}
T {linting} 750 -200 0 0 0.2 0.2 {}
T {XYCE NEEDS NET '0'} 930 -90 0 0 0.2 0.2 {}
T {Force VCM voltage.
No VCM gen} 1260 -260 0 0 0.3 0.3 {}
T {mpirun -np 12 --use-hwtread-cpus Xyce adc_top_postlayout_tb_conv.spice} 1730 -1440 0 0 0.4 0.4 {}
T {row/col
0=sequential
1=symmetrical} 1350 -500 0 0 0.4 0.4 {}
N 1030 -210 1030 -200 {
lab=VDD}
N 1480 -990 1540 -990 {
lab=result[0..15]  bus=true}
N 1480 -970 1540 -970 {
lab=conv_finished}
N 1330 -1030 1330 -1020 {
lab=VDD}
N 1330 -710 1330 -700 {
lab=GND}
N 1150 -990 1180 -990 {
lab=rst_n}
N 1170 -930 1180 -930 {
lab=inp}
N 1170 -910 1180 -910 {
lab=inn}
N 1150 -890 1180 -890 {
lab=avg_mode[0..2],osr_mode[0..2],row_mode,col_mode,nc[0..1],dlyctrl4_[0..5]}
N 1150 -870 1180 -870 {
lab=dlyctrl1_[0..4],dlyctrl2_[0..4],dlyctrl3_[0..4],en_dly_contr}
N 1010 -760 1010 -750 {
lab=vmid}
N 1010 -690 1010 -680 {
lab=GND}
N 950 -810 950 -790 {
lab=vmid}
N 950 -790 1070 -790 {
lab=vmid}
N 1070 -810 1070 -790 {
lab=vmid}
N 1010 -790 1010 -760 {
lab=vmid}
N 950 -890 950 -870 {
lab=inp}
N 1070 -910 1070 -870 {
lab=inn}
N 1070 -910 1170 -910 {
lab=inn}
N 950 -930 1170 -930 {
lab=inp}
N 950 -930 950 -890 {
lab=inp}
N 720 -440 760 -440 {
lab=start_conv}
N 720 -320 760 -320 {
lab=rst_n}
N 1150 -970 1180 -970 {
lab=start_conv}
N 1400 -120 1400 -110 {
lab=GND}
N 720 -260 720 -250 {
lab=GND}
N 720 -380 720 -370 {
lab=GND}
N 1400 -190 1400 -180 {
lab=clk_vcm}
N 1400 -190 1440 -190 {
lab=clk_vcm}
N 1150 -950 1180 -950 {
lab=clk_vcm}
N 1150 -870 1150 -680 {
lab=dlyctrl1_[0..4],dlyctrl2_[0..4],dlyctrl3_[0..4],en_dly_contr}
N 1150 -660 1200 -660 {
lab=dlyctrl1_[0..4],dlyctrl2_[0..4],dlyctrl3_[0..4],en_dly_contr}
N 1120 -890 1150 -890 {
lab=avg_mode[0..2],osr_mode[0..2],row_mode,col_mode,nc[0..1],dlyctrl4_[0..5]}
N 1120 -890 1120 -620 {
lab=avg_mode[0..2],osr_mode[0..2],row_mode,col_mode,nc[0..1],dlyctrl4_[0..5]}
N 1120 -620 1200 -620 {
lab=avg_mode[0..2],osr_mode[0..2],row_mode,col_mode,nc[0..1],dlyctrl4_[0..5]}
N 1150 -680 1150 -660 {
lab=dlyctrl1_[0..4],dlyctrl2_[0..4],dlyctrl3_[0..4],en_dly_contr}
N 190 -860 190 -840 {
lab=GND}
N 190 -850 250 -850 {
lab=GND}
N 250 -860 250 -850 {
lab=GND}
N 190 -930 190 -920 {
lab=dlyctrl1_4}
N 250 -930 250 -920 {
lab=dlyctrl1_3}
N 310 -850 370 -850 {
lab=GND}
N 370 -860 370 -850 {
lab=GND}
N 310 -930 310 -920 {
lab=dlyctrl1_2}
N 370 -930 370 -920 {
lab=dlyctrl1_1}
N 430 -860 430 -850 {
lab=GND}
N 430 -930 430 -920 {
lab=dlyctrl1_0}
N 250 -850 310 -850 {
lab=GND}
N 310 -860 310 -850 {
lab=GND}
N 370 -850 430 -850 {
lab=GND}
N 510 -860 510 -840 {
lab=GND}
N 510 -850 570 -850 {
lab=GND}
N 570 -860 570 -850 {
lab=GND}
N 510 -930 510 -920 {
lab=dlyctrl2_4}
N 570 -930 570 -920 {
lab=dlyctrl2_3}
N 630 -850 690 -850 {
lab=GND}
N 690 -860 690 -850 {
lab=GND}
N 630 -930 630 -920 {
lab=dlyctrl2_2}
N 690 -930 690 -920 {
lab=dlyctrl2_1}
N 750 -860 750 -850 {
lab=GND}
N 750 -930 750 -920 {
lab=dlyctrl2_0}
N 570 -850 630 -850 {
lab=GND}
N 630 -860 630 -850 {
lab=GND}
N 690 -850 750 -850 {
lab=GND}
N 200 -590 200 -570 {
lab=GND}
N 200 -580 260 -580 {
lab=GND}
N 260 -590 260 -580 {
lab=GND}
N 200 -660 200 -650 {
lab=dlyctrl3_4}
N 260 -660 260 -650 {
lab=dlyctrl3_3}
N 320 -580 380 -580 {
lab=GND}
N 380 -590 380 -580 {
lab=GND}
N 320 -660 320 -650 {
lab=dlyctrl3_2}
N 380 -660 380 -650 {
lab=dlyctrl3_1}
N 440 -590 440 -580 {
lab=GND}
N 440 -660 440 -650 {
lab=dlyctrl3_0}
N 260 -580 320 -580 {
lab=GND}
N 320 -590 320 -580 {
lab=GND}
N 380 -580 440 -580 {
lab=GND}
N 520 -590 520 -570 {
lab=GND}
N 520 -580 580 -580 {
lab=GND}
N 580 -590 580 -580 {
lab=GND}
N 520 -660 520 -650 {
lab=dlyctrl4_5}
N 580 -660 580 -650 {
lab=dlyctrl4_4}
N 640 -580 700 -580 {
lab=GND}
N 700 -590 700 -580 {
lab=GND}
N 640 -660 640 -650 {
lab=dlyctrl4_3}
N 700 -660 700 -650 {
lab=dlyctrl4_2}
N 760 -590 760 -580 {
lab=GND}
N 760 -660 760 -650 {
lab=dlyctrl4_1}
N 580 -580 640 -580 {
lab=GND}
N 640 -590 640 -580 {
lab=GND}
N 700 -580 760 -580 {
lab=GND}
N 820 -590 820 -580 {
lab=GND}
N 820 -660 820 -650 {
lab=dlyctrl4_0}
N 760 -580 820 -580 {
lab=GND}
N 90 -280 90 -260 {
lab=GND}
N 90 -270 150 -270 {
lab=GND}
N 150 -280 150 -270 {
lab=GND}
N 90 -350 90 -340 {
lab=avg_mode2}
N 150 -350 150 -340 {
lab=avg_mode1}
N 210 -350 210 -340 {
lab=avg_mode0}
N 150 -270 210 -270 {
lab=GND}
N 210 -280 210 -270 {
lab=GND}
N 80 -930 80 -920 {
lab=en_dly_contr}
N 80 -860 80 -850 {
lab=GND}
N 80 -850 190 -850 {
lab=GND}
N 440 -280 440 -260 {
lab=GND}
N 440 -270 500 -270 {
lab=GND}
N 500 -280 500 -270 {
lab=GND}
N 440 -350 440 -340 {
lab=osr_mode2}
N 500 -350 500 -340 {
lab=osr_mode1}
N 560 -350 560 -340 {
lab=osr_mode0}
N 500 -270 560 -270 {
lab=GND}
N 560 -280 560 -270 {
lab=GND}
N 720 -130 720 -110 {
lab=GND}
N 720 -200 740 -200 {
lab=nc[0..1]}
N 720 -200 720 -190 {
lab=nc[0..1]}
N 1030 -140 1030 -120 {
lab=GND}
N 1480 -950 1540 -950 {
lab=#net1 bus=true}
N 940 -140 940 -110 {
lab=0}
N 940 -220 940 -200 {
lab=GND}
N 1480 -890 1540 -890 {
lab=ctopp}
N 1480 -870 1540 -870 {
lab=ctopn}
N 1480 -850 1540 -850 {
lab=vcm}
N 1480 -830 1540 -830 {
lab=clk_dig}
N 1480 -810 1540 -810 {
lab=clk_comp}
N 1480 -790 1540 -790 {
lab=clk_ena}
N 1480 -770 1540 -770 {
lab=ndecision_finish}
N 1480 -750 1540 -750 {
lab=comp_latch}
N 1260 -190 1260 -180 {
lab=vcm}
N 1260 -120 1260 -110 {
lab=GND}
N 940 -220 990 -220 {
lab=GND}
N 990 -220 990 -130 {
lab=GND}
N 990 -130 1030 -130 {
lab=GND}
N 1480 -930 1540 -930 {
lab=conv_finished_osr}
N 1260 -360 1260 -340 {
lab=GND}
N 1260 -350 1320 -350 {
lab=GND}
N 1320 -360 1320 -350 {
lab=GND}
N 1260 -430 1260 -420 {
lab=row_mode}
N 1320 -430 1320 -420 {
lab=col_mode}
C {devices/title.sym} 170 -40 0 0 {name=l1 author="Manuel Moser"}
C {devices/vsource.sym} 1030 -170 0 0 {name=V_VDD_1 value="pwl 0 0 \{boot\} 1.8"}
C {devices/vdd.sym} 1030 -210 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 1030 -120 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 1330 -1030 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 1330 -700 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 1540 -990 0 1 {name=l3 sig_type=std_logic lab=result[0..15]}
C {devices/code.sym} 320 -1230 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/vsource.sym} 1010 -720 0 0 {name=V_VCM_2 value="pwl 0 0 \{boot\} 0.9"}
C {devices/gnd.sym} 1010 -680 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 1010 -760 0 0 {name=l33 sig_type=std_logic lab=vmid}
C {devices/noconn.sym} 1540 -990 0 1 {name=l1[0..15]}
C {devices/noconn.sym} 1540 -970 0 1 {name=l2}
C {devices/vsource.sym} 950 -840 0 0 {name=V_VCM_1 value="pwl 0 0 \{boot\} \{vdiff/2\}"}
C {devices/vsource.sym} 1070 -840 2 1 {name=V_VCM_3 value="pwl 0 0 \{boot\} \{vdiff/2\}"}
C {devices/vsource.sym} 1400 -150 0 0 {name=V_VCM value=0}
C {devices/gnd.sym} 1400 -110 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 1540 -970 0 1 {name=l3 sig_type=std_logic lab=conv_finished}
C {devices/lab_wire.sym} 950 -890 0 1 {name=l3 sig_type=std_logic lab=inp}
C {devices/lab_wire.sym} 1070 -890 0 0 {name=l3 sig_type=std_logic lab=inn}
C {devices/vsource.sym} 720 -290 0 0 {name=V1 value="pwl 0 0 400n 0 401n 1.8"}
C {devices/vsource.sym} 720 -410 0 0 {name=V31 value="pwl 0 0 410n 0 411n 1.8 600n 1.8 601n 0"}
C {devices/gnd.sym} 720 -370 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 720 -250 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 760 -440 0 1 {name=l3 sig_type=std_logic lab=start_conv}
C {devices/lab_wire.sym} 760 -320 0 1 {name=l3 sig_type=std_logic lab=rst_n}
C {devices/lab_wire.sym} 1150 -990 0 0 {name=l3 sig_type=std_logic lab=rst_n}
C {devices/lab_wire.sym} 1150 -970 0 0 {name=l3 sig_type=std_logic lab=start_conv}
C {devices/lab_wire.sym} 1440 -190 0 1 {name=l3 sig_type=std_logic lab=clk_vcm}
C {devices/lab_wire.sym} 1150 -950 0 0 {name=l3 sig_type=std_logic lab=clk_vcm}
C {devices/lab_wire.sym} 1200 -620 0 1 {name=l52 sig_type=std_logic lab=avg_mode[0..2],osr_mode[0..2],row_mode,col_mode,nc[0..1],dlyctrl4_[0..5]}
C {devices/lab_wire.sym} 1200 -660 0 1 {name=l3 sig_type=std_logic lab=dlyctrl1_[0..4],dlyctrl2_[0..4],dlyctrl3_[0..4],en_dly_contr}
C {devices/vsource.sym} 190 -890 0 0 {name=V4 value="pwl 0 0 \{boot\} \{bit4\}"}
C {devices/gnd.sym} 190 -840 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 250 -890 0 0 {name=V5 value="pwl 0 0 \{boot\} \{bit3\}"}
C {devices/lab_wire.sym} 190 -930 1 0 {name=l3 sig_type=std_logic lab=dlyctrl1_4}
C {devices/lab_wire.sym} 250 -930 1 0 {name=l4 sig_type=std_logic lab=dlyctrl1_3}
C {devices/vsource.sym} 310 -890 0 0 {name=V6 value="pwl 0 0 \{boot\} \{bit2\}"}
C {devices/vsource.sym} 370 -890 0 0 {name=V7 value="pwl 0 0 \{boot\} \{bit1\}"}
C {devices/lab_wire.sym} 310 -930 1 0 {name=l5 sig_type=std_logic lab=dlyctrl1_2}
C {devices/lab_wire.sym} 370 -930 1 0 {name=l8 sig_type=std_logic lab=dlyctrl1_1}
C {devices/vsource.sym} 430 -890 0 0 {name=V8 value="pwl 0 0 \{boot\} \{bit0\}"}
C {devices/lab_wire.sym} 430 -930 1 0 {name=l6 sig_type=std_logic lab=dlyctrl1_0}
C {devices/gnd.sym} 510 -840 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 510 -930 1 0 {name=l10 sig_type=std_logic lab=dlyctrl2_4}
C {devices/lab_wire.sym} 570 -930 1 0 {name=l11 sig_type=std_logic lab=dlyctrl2_3}
C {devices/lab_wire.sym} 630 -930 1 0 {name=l12 sig_type=std_logic lab=dlyctrl2_2}
C {devices/lab_wire.sym} 690 -930 1 0 {name=l13 sig_type=std_logic lab=dlyctrl2_1}
C {devices/lab_wire.sym} 750 -930 1 0 {name=l14 sig_type=std_logic lab=dlyctrl2_0}
C {devices/gnd.sym} 200 -570 0 0 {name=l15 lab=GND}
C {devices/lab_wire.sym} 200 -660 1 0 {name=l16 sig_type=std_logic lab=dlyctrl3_4}
C {devices/lab_wire.sym} 260 -660 1 0 {name=l17 sig_type=std_logic lab=dlyctrl3_3}
C {devices/lab_wire.sym} 320 -660 1 0 {name=l18 sig_type=std_logic lab=dlyctrl3_2}
C {devices/lab_wire.sym} 380 -660 1 0 {name=l19 sig_type=std_logic lab=dlyctrl3_1}
C {devices/lab_wire.sym} 440 -660 1 0 {name=l20 sig_type=std_logic lab=dlyctrl3_0}
C {devices/gnd.sym} 520 -570 0 0 {name=l21 lab=GND}
C {devices/lab_wire.sym} 520 -660 1 0 {name=l22 sig_type=std_logic lab=dlyctrl4_5}
C {devices/lab_wire.sym} 580 -660 1 0 {name=l23 sig_type=std_logic lab=dlyctrl4_4}
C {devices/lab_wire.sym} 640 -660 1 0 {name=l24 sig_type=std_logic lab=dlyctrl4_3}
C {devices/lab_wire.sym} 700 -660 1 0 {name=l25 sig_type=std_logic lab=dlyctrl4_2}
C {devices/lab_wire.sym} 760 -660 1 0 {name=l26 sig_type=std_logic lab=dlyctrl4_1}
C {devices/lab_wire.sym} 820 -660 1 0 {name=l27 sig_type=std_logic lab=dlyctrl4_0}
C {devices/vsource.sym} 90 -310 0 0 {name=V2 value="pwl 0 0 \{boot\} \{avg2\}"}
C {devices/gnd.sym} 90 -260 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 150 -310 0 0 {name=V3 value="pwl 0 0 \{boot\} \{avg1\}"}
C {devices/lab_wire.sym} 90 -350 1 0 {name=l3 sig_type=std_logic lab=avg_mode2}
C {devices/lab_wire.sym} 150 -350 1 0 {name=l4 sig_type=std_logic lab=avg_mode1}
C {devices/vsource.sym} 210 -310 0 0 {name=V25 value="pwl 0 0 \{boot\} \{avg0\}"}
C {devices/lab_wire.sym} 210 -350 1 0 {name=l5 sig_type=std_logic lab=avg_mode0}
C {devices/vsource.sym} 520 -620 0 0 {name=V19 value="pwl 0 0 \{boot\} \{ed_bit5\}"}
C {devices/vsource.sym} 580 -620 0 0 {name=V20 value="pwl 0 0 \{boot\} \{ed_bit4\}"}
C {devices/vsource.sym} 640 -620 0 0 {name=V21 value="pwl 0 0 \{boot\} \{ed_bit3\}"}
C {devices/vsource.sym} 700 -620 0 0 {name=V22 value="pwl 0 0 \{boot\} \{ed_bit2\}"}
C {devices/vsource.sym} 760 -620 0 0 {name=V23 value="pwl 0 0 \{boot\} \{ed_bit1\}"}
C {devices/vsource.sym} 820 -620 0 0 {name=V24 value="pwl 0 0 \{boot\} \{ed_bit0\}"}
C {devices/vsource.sym} 80 -890 0 0 {name=V26 value="pwl 0 0 \{boot\} \{dlyctrl\}"}
C {devices/lab_wire.sym} 80 -930 1 0 {name=l3 sig_type=std_logic lab=en_dly_contr}
C {devices/vsource.sym} 440 -310 0 0 {name=V27 value="pwl 0 0 \{boot\} \{osr2\}"}
C {devices/gnd.sym} 440 -260 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 500 -310 0 0 {name=V28 value="pwl 0 0 \{boot\} \{osr1\}"}
C {devices/lab_wire.sym} 440 -350 1 0 {name=l3 sig_type=std_logic lab=osr_mode2}
C {devices/lab_wire.sym} 500 -350 1 0 {name=l4 sig_type=std_logic lab=osr_mode1}
C {devices/vsource.sym} 560 -310 0 0 {name=V29 value="pwl 0 0 \{boot\} \{osr0\}"}
C {devices/lab_wire.sym} 560 -350 1 0 {name=l5 sig_type=std_logic lab=osr_mode0}
C {devices/gnd.sym} 720 -110 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 740 -200 0 1 {name=l3 sig_type=std_logic lab=nc[0..1]}
C {devices/vsource.sym} 720 -160 0 0 {name=V30 value=0}
C {adc_top_postlayout.sym} 1330 -930 0 0 {name=x1}
C {devices/noconn.sym} 1540 -950 0 1 {name=l28[0..15]}
C {devices/simulator_commands.sym} 40 -1230 0 0 {name=COMMANDS
simulator=xyce
only_toplevel=false 
value="
* xyce commands
*.include /foss/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__diode_pw2nd_05v5.model.spice
.include ../../spice/adc_top.gds.C.noD.merge.postlayout.spice
*.include ../../spice/adc_top.gds.RC.postlayout.spice
*.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice


****************
* Misc
****************
.param fclk=32768
.param vdiff=200m
.param boot=100n

****************
* Delay Config
****************
.param dlyctrl = 1.8

* delay 1-3
.param bit0 = 0
.param bit1 = 1.8
.param bit2 = 0
.param bit3 = 0
.param bit4 = 0

* edgedetect pulse
.param ed_bit0 = 0
.param ed_bit1 = 0
.param ed_bit2 = 1.8
.param ed_bit3 = 1.8
.param ed_bit4 = 0
.param ed_bit5 = 0

****************
* Averaging Config
****************
.param avg0 = 0
.param avg1 = 0
.param avg2 = 0

****************
* OSR Config
****************
.param osr0 = 0
.param osr1 = 0
.param osr2 = 0

****************
* Row Column
* sequential or symmetric
****************
.param rowmode = 0
.param colmode = 0

****************
* XYCE Simulation Control
****************

*.OPTIONS TIMEINT reltol=1.0e-3 abstol=1e-6

*For problems to 100k unknowns its likely that parallel load serial solve is faster
*.options linsol type=klu


.tran 1n 3u uic

.print tran format=raw file=adc_top_postlayout_tb_conv.raw         v(x1:ctopp) v(x1:ctopn) v(x1:vcm) v(x1:clk_ena) v(x1:ndecision_finish) v(x1:comp_latch) v(VDD) v(rst_n) v(start_conv) v(clk_vcm) v(inp) v(inn) v(conv_finished) v(conv_finished_osr) v(x1:clk_dig) v(x1:clk_comp) v(result*) v(dlyctrl*) v(avg_mode*) v(osr_mode*) v(en_dly_contr) i(v_vdd_1) \{((v(result0)*0.0625+v(result1)*0.125+v(result2)*0.25+v(result3)*0.5+v(result4)+v(result5)*2+v(result6)*4+v(result7)*8+v(result8)*16+v(result9)*32+v(result10)*64+v(result11)*128+v(result12)*256+v(result13)*512+v(result14)*1024+v(result15)*2048)-2048*1.8)/2048\} 
.print tran format=std file=adc_top_postlayout_tb_conv.ascii       v(x1:ctopp) v(x1:ctopn) v(x1:vcm) v(x1:clk_ena) v(x1:ndecision_finish) v(x1:comp_latch) v(VDD) v(rst_n) v(start_conv) v(clk_vcm) v(inp) v(inn) v(conv_finished) v(conv_finished_osr) v(x1:clk_dig) v(x1:clk_comp) v(result*) v(dlyctrl*) v(avg_mode*) v(osr_mode*) v(en_dly_contr) i(v_vdd_1) \{((v(result0)*0.0625+v(result1)*0.125+v(result2)*0.25+v(result3)*0.5+v(result4)+v(result5)*2+v(result6)*4+v(result7)*8+v(result8)*16+v(result9)*32+v(result10)*64+v(result11)*128+v(result12)*256+v(result13)*512+v(result14)*1024+v(result15)*2048)-2048*1.8)/2048\}
.print tran format=csv file=adc_top_postlayout_tb_conv.csv         v(x1:ctopp) v(x1:ctopn) v(x1:vcm) v(x1:clk_ena) v(x1:ndecision_finish) v(x1:comp_latch) v(VDD) v(rst_n) v(start_conv) v(clk_vcm) v(inp) v(inn) v(conv_finished) v(conv_finished_osr) v(x1:clk_dig) v(x1:clk_comp) v(result*) v(dlyctrl*) v(avg_mode*) v(osr_mode*) v(en_dly_contr) i(v_vdd_1) \{((v(result0)*0.0625+v(result1)*0.125+v(result2)*0.25+v(result3)*0.5+v(result4)+v(result5)*2+v(result6)*4+v(result7)*8+v(result8)*16+v(result9)*32+v(result10)*64+v(result11)*128+v(result12)*256+v(result13)*512+v(result14)*1024+v(result15)*2048)-2048*1.8)/2048\} 
.print tran format=gnuplot file=adc_top_postlayout_tb_conv.gnu.dat v(x1:ctopp) v(x1:ctopn) v(x1:vcm) v(x1:clk_ena) v(x1:ndecision_finish) v(x1:comp_latch) v(VDD) v(rst_n) v(start_conv) v(clk_vcm) v(inp) v(inn) v(conv_finished) v(conv_finished_osr) v(x1:clk_dig) v(x1:clk_comp) v(result*) v(dlyctrl*) v(avg_mode*) v(osr_mode*) v(en_dly_contr) i(v_vdd_1) \{((v(result0)*0.0625+v(result1)*0.125+v(result2)*0.25+v(result3)*0.5+v(result4)+v(result5)*2+v(result6)*4+v(result7)*8+v(result8)*16+v(result9)*32+v(result10)*64+v(result11)*128+v(result12)*256+v(result13)*512+v(result14)*1024+v(result15)*2048)-2048*1.8)/2048\} 


"
}
C {devices/simulator_commands.sym} 180 -1230 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.include ../../spice/adc_top.gds.C.postlayout.spice
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

****************
* Misc
****************
.param fclk=32768
.param vdiff=200m
.param boot=1u

****************
* Delay Config
****************
.param dlyctrl = 1.8

* delay 1-3
.param bit0 = 0
.param bit1 = 1.8
.param bit2 = 0
.param bit3 = 0
.param bit4 = 0

* edgedetect pulse
.param ed_bit0 = 0
.param ed_bit1 = 0
.param ed_bit2 = 1.8
.param ed_bit3 = 1.8
.param ed_bit4 = 0
.param ed_bit5 = 0

****************
* Averaging Config
****************
.param avg0 = 0
.param avg1 = 0
.param avg2 = 0

****************
* OSR Config
****************
.param osr0 = 0
.param osr1 = 0
.param osr2 = 0


****************
* Row Column
* sequential or symmetric
****************
.param rowmode = 0
.param colmode = 0

.save all
.control
set num_threads=11
tran 50n 650u
plot inp inn rst_n start_conv conv_finished
plot start_conv x1.clk_dig x1.clk_comp 
plot x1.pctop x1.nctop x1.comparator_result
plot x1.pctop-x1.nctop

let k = length(time) - 1

* Print the result vector at the end of tran
print result15[k] result14[k] result13[k] result12[k] result11[k] result10[k] result9[k] result8[k] result7[k] result6[k] result5[k] result4[k] result3[k] result2[k] result1[k] result0[k]
* Print the result diff-voltage at the end of tran
print ((result15[k]*2048+result14[k]*1024+result13[k]*512+result12[k]*256+result11[k]*128+result10[k]*64+result9[k]*32+result8[k]*16+result7[k]*8+result6[k]*4+result5[k]*2+result4[k]*1+result3[k]*0.5+result2[k]*0.25+result1[k]*0.125+result0[k]*0.0625)-2048*1.8)/2048
.endc
"}
C {devices/vsource.sym} 510 -890 0 0 {name=V9 value="pwl 0 0 \{boot\} \{bit4\}"}
C {devices/vsource.sym} 570 -890 0 0 {name=V10 value="pwl 0 0 \{boot\} \{bit3\}"}
C {devices/vsource.sym} 630 -890 0 0 {name=V11 value="pwl 0 0 \{boot\} \{bit2\}"}
C {devices/vsource.sym} 690 -890 0 0 {name=V12 value="pwl 0 0 \{boot\} \{bit1\}"}
C {devices/vsource.sym} 750 -890 0 0 {name=V13 value="pwl 0 0 \{boot\} \{bit0\}"}
C {devices/vsource.sym} 200 -620 0 0 {name=V14 value="pwl 0 0 \{boot\} \{bit4\}"}
C {devices/vsource.sym} 260 -620 0 0 {name=V15 value="pwl 0 0 \{boot\} \{bit3\}"}
C {devices/vsource.sym} 320 -620 0 0 {name=V16 value="pwl 0 0 \{boot\} \{bit2\}"}
C {devices/vsource.sym} 380 -620 0 0 {name=V17 value="pwl 0 0 \{boot\} \{bit1\}"}
C {devices/vsource.sym} 440 -620 0 0 {name=V18 value="pwl 0 0 \{boot\} \{bit0\}"}
C {devices/launcher.sym} 1500 -1220 0 0 {name=h2 
descr="Load/unload
TRAN waveforms" 
tclcommand="
xschem raw_read $netlist_dir/adc_top_postlayout_tb_conv.raw tran
"
}
C {devices/vsource.sym} 940 -170 0 0 {name=V32 value=0}
C {devices/lab_wire.sym} 940 -110 0 1 {name=l28 sig_type=std_logic lab=0}
C {devices/noconn.sym} 1540 -890 0 1 {name=l29}
C {devices/lab_wire.sym} 1540 -890 0 1 {name=l30 sig_type=std_logic lab=ctopp}
C {devices/noconn.sym} 1540 -870 0 1 {name=l31}
C {devices/lab_wire.sym} 1540 -870 0 1 {name=l32 sig_type=std_logic lab=ctopn}
C {devices/lab_wire.sym} 1540 -830 0 1 {name=l35 sig_type=std_logic lab=clk_dig}
C {devices/lab_wire.sym} 1540 -850 0 1 {name=l34 sig_type=std_logic lab=vcm}
C {devices/lab_wire.sym} 1540 -810 0 1 {name=l36 sig_type=std_logic lab=clk_comp}
C {devices/lab_wire.sym} 1540 -790 0 1 {name=l37 sig_type=std_logic lab=clk_ena}
C {devices/lab_wire.sym} 1540 -770 0 1 {name=l38 sig_type=std_logic lab=ndecision_finish}
C {devices/lab_wire.sym} 1540 -750 0 1 {name=l39 sig_type=std_logic lab=comp_latch}
C {devices/noconn.sym} 1540 -830 0 1 {name=l41}
C {devices/noconn.sym} 1540 -810 0 1 {name=l42}
C {devices/noconn.sym} 1540 -790 0 1 {name=l43}
C {devices/noconn.sym} 1540 -770 0 1 {name=l44}
C {devices/noconn.sym} 1540 -750 0 1 {name=l45}
C {devices/vsource.sym} 1260 -150 0 0 {name=V_VCM_4 value="pwl 0 0 \{boot\} 0.9"}
C {devices/gnd.sym} 1260 -110 0 0 {name=l46 lab=GND}
C {devices/lab_pin.sym} 1260 -190 0 1 {name=l47 sig_type=std_logic lab=vcm}
C {devices/noconn.sym} 1540 -930 0 1 {name=l40}
C {devices/lab_wire.sym} 1540 -930 0 1 {name=l48 sig_type=std_logic lab=conv_finished_osr}
C {devices/vsource.sym} 1260 -390 0 0 {name=V33 value="pwl 0 0 \{boot\} \{rowmode\}"}
C {devices/gnd.sym} 1260 -340 0 0 {name=l49 lab=GND}
C {devices/vsource.sym} 1320 -390 0 0 {name=V34 value="pwl 0 0 \{boot\} \{colmode\}"}
C {devices/lab_wire.sym} 1260 -430 1 0 {name=l50 sig_type=std_logic lab=row_mode}
C {devices/lab_wire.sym} 1320 -430 1 0 {name=l51 sig_type=std_logic lab=col_mode}
