v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 340 -70 810 -70 {
lab=GND}
N 550 -710 680 -710 {
lab=Vout_20n}
N 530 -470 610 -470 {
lab=Vout}
N 170 -710 250 -710 {
lab=EXT_CLK}
N 150 -450 230 -450 {
lab=EXT_CLK}
N 1400 -480 1480 -480 {
lab=Vout2}
N 1020 -460 1100 -460 {
lab=EXT_CLK}
N 1560 -300 1640 -300 {
lab=Vout3}
N 1180 -280 1260 -280 {
lab=EXT_CLK}
N 1240 -240 1260 -240 {
lab=GND bus=true}
N 890 -70 1350 -70 {
lab=GND}
N 200 -410 230 -410 {
lab=async_resetb_delay_cap_ctrl_code[0:3] bus=true}
N 1080 -420 1100 -420 {
lab=#net1 bus=true}
N 200 -390 230 -390 {
lab=GND}
N 1080 -400 1100 -400 {
lab=#net2}
C {devices/lab_pin.sym} 530 -470 2 0 {name=p8 sig_type=std_logic lab=Vout}
C {devices/code.sym} 80 -330 0 0 {name=spice1 only_toplevel=false value="

*.tran 100ns 1024us
.tran 10p 150ns

.control
	let start_vdd = 1.8
	let stop_vdd = 1.8
	let delta_vdd = 0.36
	let vdd_act = start_vdd

	foreach temp_act 25
		option temp = $temp_act

		while vdd_act le stop_vdd
		
			alter V1 vdd_act
			run
			plot V(EXT_CLK) V(Vout) V(Vout2) V(Vout3)
*V(Vout_20n) \\"async_resetb_delay_cap_ctrl_code[0]\\" \\"async_resetb_delay_cap_ctrl_code[3]\\"
			let vdd_act = vdd_act + delta_vdd	
	
			let l_vdd = vdd_act * 0.2
			let h_vdd = vdd_act * 0.8
			meas tran rising_s find time when V(Vout)=l_vdd RISE=2 TD=1000p
			meas tran rising_e find time when V(Vout)=h_vdd RISE=2 TD=1000p
			let rising_time = rising_e-rising_s
			meas tran falling_s find time when V(Vout)=h_vdd FALL=1 TD=1000p
			meas tran falling_e find time when V(Vout)=l_vdd FALL=1 TD=1000p
			let falling_time = falling_e-falling_s
			meas tran IN find time when V(EXT_CLK)=0.9 RISE=2 TD=1000p
			meas tran OUT find time when V(Vout)=0.9 RISE=2 TD=1000p
			let delay_r = OUT-IN
			meas tran IN find time when V(EXT_CLK)=0.9 FALL=1 TD=1000p
			meas tran OUT find time when V(Vout)=0.9 FALL=1 TD=1000p
			let delay_f = OUT-IN

			print rising_time falling_time delay_r	delay_f
		end
		let vdd_act = start_vdd
	end

	*run
	*plot V(EXT_CLK) V(Vout)+2

.endc
.save all

"}
C {devices/vdd.sym} 260 -320 0 0 {name=l7 lab=VDD}
C {devices/gnd.sym} 260 -260 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 260 -290 0 0 {name=V1 value=1.8}
C {devices/lab_pin.sym} 150 -450 0 0 {name=p1 sig_type=std_logic lab=EXT_CLK}
C {devices/vsource.sym} 420 -240 0 0 {name=V12 value="PULSE(0 1.8 1n 500p 500p 40n 80n)"}
C {devices/gnd.sym} 420 -210 0 0 {name=l25 lab=GND}
C {devices/lab_pin.sym} 420 -270 0 0 {name=p3 sig_type=std_logic lab=EXT_CLK}
C {../xschem/hgu_delay_no_code_RC.sym} 380 -440 0 0 {name=x1}
C {devices/vdd.sym} 390 -10 1 0 {name=l11 lab=async_resetb_delay_cap_ctrl_code[3]}
C {devices/vdd.sym} 500 -10 1 0 {name=l12 lab=async_resetb_delay_cap_ctrl_code[2]}
C {devices/vdd.sym} 610 -10 1 0 {name=l13 lab=async_resetb_delay_cap_ctrl_code[1]}
C {devices/vdd.sym} 720 -10 1 0 {name=l14 lab=async_resetb_delay_cap_ctrl_code[0]}
C {devices/vsource.sym} 720 -100 0 0 {name=V3 value=1.8}
C {devices/vsource.sym} 390 -40 2 0 {name=V9 value=0}
C {devices/vsource.sym} 500 -40 2 0 {name=V10 value=0}
C {devices/vsource.sym} 610 -40 2 0 {name=V11 value=0}
C {devices/vsource.sym} 610 -100 0 0 {name=V4 value=1.8}
C {devices/vsource.sym} 500 -100 0 0 {name=V13 value=1.8}
C {devices/vsource.sym} 390 -100 0 0 {name=V14 value=1.8}
C {devices/vsource.sym} 720 -40 2 0 {name=V19 value=0}
C {devices/noconn.sym} 720 -130 2 1 {name=l20}
C {devices/noconn.sym} 610 -130 2 1 {name=l21}
C {devices/noconn.sym} 500 -130 2 1 {name=l22}
C {devices/noconn.sym} 390 -130 2 1 {name=l24}
C {devices/lab_pin.sym} 200 -410 0 0 {name=p12 sig_type=std_logic lab=async_resetb_delay_cap_ctrl_code[0:3]}
C {../xschem/hgu_delay.sym} 400 -640 0 0 {name=x2 DELAY_CAP=8f}
C {devices/lab_pin.sym} 550 -710 2 0 {name=p2 sig_type=std_logic lab=Vout_20n}
C {devices/gnd.sym} 250 -670 1 0 {name=l3 lab=GND}
C {devices/vdd.sym} 250 -690 3 0 {name=l4 lab=VDD}
C {devices/lab_pin.sym} 170 -710 0 0 {name=p10 sig_type=std_logic lab=EXT_CLK}
C {sky130_stdcells/inv_1.sym} 720 -710 0 0 {name=x7 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/gnd.sym} 760 -650 0 0 {name=l6 lab=GND}
C {devices/capa.sym} 760 -680 0 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 610 -410 0 0 {name=l15 lab=GND}
C {devices/capa.sym} 610 -440 0 0 {name=C4
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 840 -290 0 0 {name=l47 lab=VGND}
C {devices/gnd.sym} 690 -230 0 0 {name=l48 lab=GND}
C {devices/vsource.sym} 690 -260 0 0 {name=V54 value=1.8}
C {devices/vdd.sym} 740 -290 0 0 {name=l49 lab=VNB}
C {devices/gnd.sym} 740 -230 0 0 {name=l50 lab=GND}
C {devices/vsource.sym} 740 -260 0 0 {name=V55 value=0}
C {devices/vdd.sym} 790 -290 0 0 {name=l51 lab=VPB}
C {devices/gnd.sym} 790 -230 0 0 {name=l52 lab=GND}
C {devices/vsource.sym} 790 -260 0 0 {name=V56 value=1.8}
C {devices/vdd.sym} 690 -290 0 0 {name=l53 lab=VPWR}
C {devices/gnd.sym} 840 -230 0 0 {name=l54 lab=GND}
C {devices/vsource.sym} 840 -260 0 0 {name=V57 value=0}
C {devices/simulator_commands_shown.sym} 100 -850 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.include /foss/designs/hgu_goss/hgu/mag/hgu_cdac_unit.spice
.include /foss/designs/hgu_goss/hgu/spice/hgu_delay_no_code_flat.spice
.include /foss/designs/hgu_goss/hgu/spice/hgu_delay_flat.spice
"}
C {devices/gnd.sym} 810 -70 0 0 {name=l23 lab=GND}
C {devices/vdd.sym} 250 -570 3 0 {name=l26 lab=VDD}
C {devices/lab_pin.sym} 1400 -480 2 0 {name=p5 sig_type=std_logic lab=Vout2}
C {devices/lab_pin.sym} 1020 -460 0 0 {name=p11 sig_type=std_logic lab=EXT_CLK}
C {../xschem/hgu_delay_no_code.sym} 1250 -450 0 0 {name=x4}
C {sky130_stdcells/inv_1.sym} 1520 -480 0 0 {name=x5 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/gnd.sym} 1560 -420 0 0 {name=l18 lab=GND}
C {devices/capa.sym} 1560 -450 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 940 -400 3 0 {name=l19 lab=VDD}
C {devices/lab_pin.sym} 1560 -300 2 0 {name=p14 sig_type=std_logic lab=Vout3}
C {devices/gnd.sym} 1260 -260 1 0 {name=l28 lab=GND}
C {devices/vdd.sym} 1260 -300 3 0 {name=l29 lab=VDD}
C {devices/lab_pin.sym} 1180 -280 0 0 {name=p15 sig_type=std_logic lab=EXT_CLK}
C {../xschem/hgu_delay_no_code.sym} 1410 -270 0 0 {name=x8}
C {sky130_stdcells/inv_1.sym} 1680 -300 0 0 {name=x10 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/gnd.sym} 1720 -240 0 0 {name=l30 lab=GND}
C {devices/capa.sym} 1720 -270 0 0 {name=C6
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 1260 -220 3 0 {name=l31 lab=VDD}
C {devices/gnd.sym} 1240 -240 1 0 {name=l32[0:3] lab=GND}
C {devices/vdd.sym} 930 -130 1 0 {name=l34 lab=async_resetb_delay_cap_ctrl_code2[3]}
C {devices/vdd.sym} 1040 -130 1 0 {name=l35 lab=async_resetb_delay_cap_ctrl_code2[2]}
C {devices/vdd.sym} 1150 -130 1 0 {name=l36 lab=async_resetb_delay_cap_ctrl_code2[1]}
C {devices/vdd.sym} 1260 -130 1 0 {name=l37 lab=async_resetb_delay_cap_ctrl_code2[0]}
C {devices/vsource.sym} 1260 -100 0 0 {name=V5 value=1.8}
C {devices/vsource.sym} 930 -40 2 0 {name=V6 value=0}
C {devices/vsource.sym} 1040 -40 2 0 {name=V7 value=0}
C {devices/vsource.sym} 1150 -40 2 0 {name=V8 value=0}
C {devices/vsource.sym} 1150 -100 0 0 {name=V15 value=1.8}
C {devices/vsource.sym} 1040 -100 0 0 {name=V16 value=1.8}
C {devices/vsource.sym} 930 -100 0 0 {name=V17 value=1.8}
C {devices/vsource.sym} 1260 -40 2 0 {name=V18 value=0}
C {devices/noconn.sym} 1260 -10 2 1 {name=l38}
C {devices/noconn.sym} 1150 -10 2 1 {name=l39}
C {devices/noconn.sym} 1040 -10 2 1 {name=l40}
C {devices/noconn.sym} 930 -10 2 1 {name=l41}
C {devices/gnd.sym} 1350 -70 0 0 {name=l42 lab=GND}
C {devices/lab_pin.sym} 1120 -340 0 0 {name=p9 sig_type=std_logic lab=async_resetb_delay_cap_ctrl_code2[0:3]}
C {devices/vdd.sym} 940 -420 3 0 {name=l1 lab=VDD}
C {devices/vsource.sym} 970 -420 3 0 {name=V2[0:3] value=0}
C {sky130_stdcells/buf_1.sym} 1040 -420 0 0 {name=x3[0:3] VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/gnd.sym} 40 -70 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 40 -100 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} 120 -70 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 120 -100 0 0 {name=V20 value=0}
C {devices/lab_pin.sym} 40 -130 0 0 {name=p4 sig_type=std_logic lab=layout_vdd}
C {devices/lab_pin.sym} 120 -130 0 0 {name=p6 sig_type=std_logic lab=layout_vss}
C {devices/gnd.sym} 40 20 0 0 {name=l32 lab=GND}
C {devices/vsource.sym} 40 -10 0 0 {name=V21 value=1.8}
C {devices/gnd.sym} 120 20 0 0 {name=l33 lab=GND}
C {devices/vsource.sym} 120 -10 0 0 {name=V22 value=0}
C {devices/lab_pin.sym} 40 -40 0 0 {name=p7 sig_type=std_logic lab=sch_vdd}
C {devices/lab_pin.sym} 120 -40 0 0 {name=p13 sig_type=std_logic lab=sch_vss}
C {devices/lab_pin.sym} 230 -470 0 0 {name=p16 sig_type=std_logic lab=layout_vdd}
C {devices/lab_pin.sym} 230 -430 0 0 {name=p17 sig_type=std_logic lab=layout_vss}
C {devices/lab_pin.sym} 1100 -480 0 0 {name=p18 sig_type=std_logic lab=sch_vdd}
C {devices/lab_pin.sym} 1100 -440 0 0 {name=p19 sig_type=std_logic lab=sch_vss}
C {devices/vsource.sym} 970 -400 3 0 {name=V4[0:3] value=0}
C {sky130_stdcells/buf_1.sym} 1040 -400 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/gnd.sym} 200 -390 0 0 {name=l9 lab=GND}
