v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 500 -520 560 -520 {
lab=Vout}
N 150 -700 620 -700 {
lab=GND}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="sample_clk_gen"}
C {devices/vsource.sym} 350 -170 0 0 {name=V2 value="PULSE(0 1.8 0 500p 500p 50n 100n)"}
C {devices/gnd.sym} 350 -140 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 350 -200 0 0 {name=p4 sig_type=std_logic lab=EXT_CLK}
C {devices/code.sym} 30 -210 0 0 {name=spice1 only_toplevel=false value="

.tran 40ps 250ns

.control
	option temp = 25
	let vdd_act = 1.8
      
	alter V1 vdd_act

	run
	plot V(Vout) V(Vout_b) V(EXT_CLK)+2
	
	let l_vdd = vdd_act * 0.2
        let h_vdd = vdd_act * 0.8
        let m_vdd = vdd_act * 0.5
        meas tran rising_s find time when V(Vout)=l_vdd RISE=1 TD=90n
        meas tran rising_e find time when V(Vout)=h_vdd RISE=1 TD=90n
        let rising_time = rising_e-rising_s
        meas tran falling_s find time when V(Vout)=h_vdd FALL=1 TD=90n
        meas tran falling_e find time when V(Vout)=l_vdd FALL=1 TD=90n
        let falling_time = falling_e-falling_s
        meas tran IN find time when V(ext_clk)=m_vdd RISE=1 TD=90n
        meas tran OUT find time when V(Vout)=m_vdd RISE=1 TD=90n
        let rising_delay = OUT-IN
	
	meas tran IN find time when V(Vout)=m_vdd RISE=1 TD=90n
        meas tran OUT find time when V(Vout)=m_vdd FALL=1 TD=90n
        let on_time = OUT-IN

	print rising_time falling_time rising_delay on_time
.endc
.save all

"}
C {devices/vdd.sym} 210 -200 0 0 {name=l7 lab=VDD}
C {devices/gnd.sym} 210 -140 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 200 -500 1 0 {name=l9 lab=GND}
C {devices/vdd.sym} 200 -520 3 0 {name=l10 lab=VDD}
C {devices/vsource.sym} 210 -170 0 0 {name=V1 value=1.8}
C {../xschem/hgu_clk_sample_RC.sym} 350 -430 0 0 {name=x1}
C {devices/gnd.sym} 200 -440 1 0 {name=l2 lab=GND}
C {devices/gnd.sym} 200 -460 1 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 200 -480 0 0 {name=p1 sig_type=std_logic lab=EXT_CLK}
C {devices/lab_pin.sym} 560 -520 2 0 {name=p8 sig_type=std_logic lab=Vout}
C {devices/gnd.sym} 560 -460 0 0 {name=l4 lab=GND}
C {devices/capa.sym} 560 -490 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 710 -180 0 0 {name=l15 lab=VGND}
C {devices/gnd.sym} 560 -120 0 0 {name=l16 lab=GND}
C {devices/vsource.sym} 560 -150 0 0 {name=V8 value=1.8}
C {devices/vdd.sym} 610 -180 0 0 {name=l17 lab=VNB}
C {devices/gnd.sym} 610 -120 0 0 {name=l18 lab=GND}
C {devices/vsource.sym} 610 -150 0 0 {name=V9 value=0}
C {devices/vdd.sym} 660 -180 0 0 {name=l19 lab=VPB}
C {devices/gnd.sym} 660 -120 0 0 {name=l20 lab=GND}
C {devices/vsource.sym} 660 -150 0 0 {name=V10 value=1.8}
C {devices/vdd.sym} 560 -180 0 0 {name=l21 lab=VPWR}
C {devices/gnd.sym} 710 -120 0 0 {name=l22 lab=GND}
C {devices/vsource.sym} 710 -150 0 0 {name=V11 value=0}
C {devices/vdd.sym} 200 -640 1 0 {name=l14 lab=cap_ctrl_code[3]}
C {devices/vdd.sym} 310 -640 1 0 {name=l23 lab=cap_ctrl_code[2]}
C {devices/vdd.sym} 420 -760 1 0 {name=l25 lab=cap_ctrl_code[1]}
C {devices/vdd.sym} 530 -760 1 0 {name=l26 lab=cap_ctrl_code[0]}
C {devices/vsource.sym} 530 -730 0 0 {name=V12 value=1.8}
C {devices/vsource.sym} 200 -670 0 0 {name=V29 value=0}
C {devices/vsource.sym} 310 -670 0 0 {name=V30 value=0}
C {devices/vsource.sym} 420 -670 0 0 {name=V31 value=0}
C {devices/vsource.sym} 420 -730 0 0 {name=V16 value=1.8}
C {devices/vsource.sym} 310 -730 0 0 {name=V17 value=1.8}
C {devices/vsource.sym} 200 -730 0 0 {name=V18 value=1.8}
C {devices/vsource.sym} 530 -670 0 0 {name=V23 value=0}
C {devices/noconn.sym} 200 -760 2 0 {name=l31}
C {devices/noconn.sym} 310 -760 2 0 {name=l32}
C {devices/noconn.sym} 420 -640 2 0 {name=l33}
C {devices/noconn.sym} 530 -640 2 0 {name=l34}
C {devices/lab_pin.sym} 200 -420 0 0 {name=p17 sig_type=std_logic lab=cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 500 -500 2 0 {name=p2 sig_type=std_logic lab=Vout_b}
C {devices/gnd.sym} 500 -440 0 0 {name=l24 lab=GND}
C {devices/capa.sym} 500 -470 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 200 -340 3 0 {name=l35 lab=VDD}
C {devices/lab_pin.sym} 200 -400 0 0 {name=p3 sig_type=std_logic lab=cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 200 -380 0 0 {name=p5 sig_type=std_logic lab=cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 200 -360 0 0 {name=p6 sig_type=std_logic lab=cap_ctrl_code[0:3]}
C {devices/simulator_commands_shown.sym} 110 -960 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.include /foss/designs/hgu_goss/hgu/mag/hgu_cdac_unit.spice
.include /foss/designs/hgu_goss/hgu/spice/hgu_delay_no_code_flat.spice
.include /foss/designs/hgu_goss/hgu/spice/hgu_clk_sample_flat_RC.spice
"}
C {devices/gnd.sym} 150 -700 1 0 {name=l6 lab=GND}
