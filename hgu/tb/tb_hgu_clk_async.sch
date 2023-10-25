v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 320 -380 350 -380 {
lab=sample_clk}
N 940 -700 1410 -700 {
lab=VSS}
N 940 -400 1410 -400 {
lab=VSS}
C {devices/vsource.sym} 430 -100 0 0 {name=V3 value="PULSE(1.8 0 20n 5p 5p 12n 20n)"}
C {devices/gnd.sym} 430 -70 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 430 -130 0 0 {name=p13 sig_type=std_logic lab=READY}
C {../xschem/hgu_clk_async.sym} 500 -360 0 0 {name=x1}
C {devices/lab_pin.sym} 350 -420 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 350 -400 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 350 -340 0 0 {name=p8 sig_type=std_logic lab=READY}
C {devices/lab_pin.sym} 650 -420 2 0 {name=p22 sig_type=std_logic lab=sar_clk}
C {devices/lab_pin.sym} 350 -360 0 0 {name=p23 sig_type=std_logic lab=EOC}
C {devices/vdd.sym} 270 -130 0 0 {name=l7 lab=VDD}
C {devices/gnd.sym} 270 -70 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 270 -100 0 0 {name=V4 value=1.8}
C {devices/vdd.sym} 320 -130 0 0 {name=l6 lab=VSS}
C {devices/gnd.sym} 320 -70 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 320 -100 0 0 {name=V5 value=0}
C {devices/code.sym} 120 -160 0 0 {name=spice1 only_toplevel=false value="

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice ss
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice


.tran 10ps 150ns

.control
	option temp = 100
	let vdd_act = 1.62
      
	alter V1 vdd_act

	run
	plot V(READY)-2 V(sample_clk) V(EOC)+2 V(sar_clk)+4 V(sar_clk)-2 V(sar_clk)
   
        let l_vdd = vdd_act * 0.2
        let h_vdd = vdd_act * 0.8
        let m_vdd = vdd_act * 0.5
        meas tran rising_s find time when V(sar_clk)=l_vdd RISE=1 TD=10n
        meas tran rising_e find time when V(sar_clk)=h_vdd RISE=1 TD=10n
        let rising_time = rising_e-rising_s
        meas tran falling_s find time when V(sar_clk)=h_vdd FALL=1 TD=10n
        meas tran falling_e find time when V(sar_clk)=l_vdd FALL=1 TD=10n
        let falling_time = falling_e-falling_s
        meas tran IN find time when V(sample_clk)=m_vdd FALL=1 TD=10n
        meas tran OUT find time when V(sar_clk)=m_vdd RISE=1 TD=10n
        let rising_delay_1 = OUT-IN
        meas tran IN find time when V(ready)=m_vdd RISE=1 TD=24n
        meas tran OUT find time when V(sar_clk)=m_vdd RISE=1 TD=24n
        let rising_delay_2 = OUT-IN

	print rising_time falling_time rising_delay_1 rising_delay_2

 .endc
.save all

"}
C {devices/lab_pin.sym} 320 -380 0 0 {name=p1 sig_type=std_logic lab=sample_clk}
C {devices/vsource.sym} 650 -100 0 0 {name=V1 value="PULSE(0 1.8 0 5p 5p 18n 200n)"}
C {devices/gnd.sym} 650 -70 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 650 -130 0 0 {name=p2 sig_type=std_logic lab=sample_clk}
C {devices/vsource.sym} 860 -100 0 0 {name=V2 value="PULSE(0 1.8 116n 5p 5p 80n 160n)"}
C {devices/gnd.sym} 860 -70 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 860 -130 0 0 {name=p6 sig_type=std_logic lab=EOC}
C {devices/vdd.sym} 930 -250 0 0 {name=l10 lab=VGND}
C {devices/gnd.sym} 780 -190 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 780 -220 0 0 {name=V8 value=1.8}
C {devices/vdd.sym} 830 -250 0 0 {name=l12 lab=VNB}
C {devices/gnd.sym} 830 -190 0 0 {name=l13 lab=GND}
C {devices/vsource.sym} 830 -220 0 0 {name=V9 value=0}
C {devices/vdd.sym} 880 -250 0 0 {name=l14 lab=VPB}
C {devices/gnd.sym} 880 -190 0 0 {name=l15 lab=GND}
C {devices/vsource.sym} 880 -220 0 0 {name=V10 value=1.8}
C {devices/vdd.sym} 780 -250 0 0 {name=l16 lab=VPWR}
C {devices/gnd.sym} 930 -190 0 0 {name=l17 lab=GND}
C {devices/vsource.sym} 930 -220 0 0 {name=V11 value=0}
C {devices/vdd.sym} 990 -640 1 0 {name=l3 lab=async_resetb_delay_cap_ctrl_code[3]}
C {devices/vdd.sym} 1100 -640 1 0 {name=l5 lab=async_resetb_delay_cap_ctrl_code[2]}
C {devices/vdd.sym} 1210 -760 1 0 {name=l18 lab=async_resetb_delay_cap_ctrl_code[1]}
C {devices/vdd.sym} 1320 -760 1 0 {name=l19 lab=async_resetb_delay_cap_ctrl_code[0]}
C {devices/vsource.sym} 1320 -730 0 0 {name=V6 value=1.8}
C {devices/vsource.sym} 990 -670 0 0 {name=V7 value=0}
C {devices/vsource.sym} 1100 -670 0 0 {name=V12 value=0}
C {devices/vsource.sym} 1210 -670 0 0 {name=V13 value=0}
C {devices/lab_pin.sym} 940 -700 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1210 -730 0 0 {name=V14 value=1.8}
C {devices/vsource.sym} 1100 -730 0 0 {name=V15 value=1.8}
C {devices/vsource.sym} 990 -730 0 0 {name=V16 value=1.8}
C {devices/vsource.sym} 1320 -670 0 0 {name=V19 value=0}
C {devices/noconn.sym} 990 -760 2 0 {name=l20}
C {devices/noconn.sym} 1100 -760 2 0 {name=l21}
C {devices/noconn.sym} 1210 -640 2 0 {name=l22}
C {devices/noconn.sym} 1320 -640 2 0 {name=l24}
C {devices/vdd.sym} 990 -340 1 0 {name=l59 lab=async_setb_delay_cap_ctrl_code[3]}
C {devices/vdd.sym} 1100 -340 1 0 {name=l60 lab=async_setb_delay_cap_ctrl_code[2]}
C {devices/vdd.sym} 1210 -460 1 0 {name=l61 lab=async_setb_delay_cap_ctrl_code[1]}
C {devices/vdd.sym} 1320 -460 1 0 {name=l62 lab=async_setb_delay_cap_ctrl_code[0]}
C {devices/vsource.sym} 1320 -430 0 0 {name=V20 value=1.8}
C {devices/vsource.sym} 990 -370 0 0 {name=V25 value=0}
C {devices/vsource.sym} 1100 -370 0 0 {name=V26 value=0}
C {devices/vsource.sym} 1210 -370 0 0 {name=V27 value=0}
C {devices/lab_pin.sym} 940 -400 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1210 -430 0 0 {name=V28 value=1.8}
C {devices/vsource.sym} 1100 -430 0 0 {name=V29 value=1.8}
C {devices/vsource.sym} 990 -430 0 0 {name=V30 value=1.8}
C {devices/vsource.sym} 1320 -370 0 0 {name=V35 value=0}
C {devices/noconn.sym} 990 -460 2 0 {name=l67}
C {devices/noconn.sym} 1100 -460 2 0 {name=l68}
C {devices/noconn.sym} 1210 -340 2 0 {name=l69}
C {devices/noconn.sym} 1320 -340 2 0 {name=l70}
C {devices/lab_pin.sym} 350 -320 0 0 {name=p12 sig_type=std_logic lab=async_resetb_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 350 -300 0 0 {name=p9 sig_type=std_logic lab=async_setb_delay_cap_ctrl_code[0:3]}
