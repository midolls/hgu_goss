v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 340 -70 810 -70 {
lab=VSS}
N 550 -710 680 -710 {
lab=Vout_20n}
N 530 -470 610 -470 {
lab=Vout}
N 1220 -460 1300 -460 {
lab=Vout2}
C {devices/vsource.sym} 420 -340 0 0 {name=V2 value="PULSE(0 1.8 0 5p 5p 2u 4u)"}
C {devices/gnd.sym} 420 -310 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 530 -470 2 0 {name=p8 sig_type=std_logic lab=Vout}
C {devices/gnd.sym} 530 -410 0 0 {name=l2 lab=GND}
C {devices/capa.sym} 530 -440 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/code.sym} 80 -330 0 0 {name=spice1 only_toplevel=false value="

*.tran 100ns 1024us
.tran 1n 70ns

.param unit_cap=2f

.control
	let start_vdd = 1.8
	let stop_vdd = 1.8
	let delta_vdd = 0.18
	let vdd_act = start_vdd

	let start_cap = 2f
	let stop_cap = 2f
	let delta_cap = 0.1
	let cap_act = start_cap

	

	foreach temp_act 27
		option temp=$temp_act

		while vdd_act le stop_vdd
			
			***********************************
			*if you want using alterparam => should reset!! & use in while(or for(?))!!
			alterparam unit_cap= 1f
			reset
			***********************************
		
			alter V1 vdd_act
			run
			plot V(EXT_CLK) V(Vout) V(Vout2) V(Vout_20n)
			let vdd_act = vdd_act + delta_vdd	
	
			let l_vdd = vdd_act * 0.2
			let h_vdd = vdd_act * 0.8
			meas tran rising_s find time when V(Vout)=l_vdd RISE=1 TD=1000p
			meas tran rising_e find time when V(Vout)=h_vdd RISE=1 TD=1000p
			let rising_time = rising_e-rising_s
			meas tran falling_s find time when V(Vout)=h_vdd FALL=1 TD=1000p
			meas tran falling_e find time when V(Vout)=l_vdd FALL=1 TD=1000p
			let falling_time = falling_e-falling_s
			meas tran IN find time when V(EXT_CLK)=0.9 RISE=1 TD=1000p
			meas tran OUT find time when V(Vout)=0.9 RISE=1 TD=1000p
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
C {devices/gnd.sym} 230 -430 1 0 {name=l9 lab=GND}
C {devices/vdd.sym} 230 -470 3 0 {name=l10 lab=VDD}
C {devices/vsource.sym} 260 -290 0 0 {name=V1 value=1.8}
C {devices/lab_pin.sym} 230 -450 0 0 {name=p1 sig_type=std_logic lab=EXT_CLK}
C {devices/vsource.sym} 420 -240 0 0 {name=V12 value="PULSE(0 1.8 1n 5p 5p 30n 50n)"}
C {devices/gnd.sym} 420 -210 0 0 {name=l25 lab=GND}
C {devices/lab_pin.sym} 420 -270 0 0 {name=p3 sig_type=std_logic lab=EXT_CLK}
C {../xschem/hgu_delay_no_code.sym} 380 -440 0 0 {name=x1}
C {devices/vdd.sym} 390 -10 1 0 {name=l11 lab=async_resetb_delay_cap_ctrl_code[3]}
C {devices/vdd.sym} 500 -10 1 0 {name=l12 lab=async_resetb_delay_cap_ctrl_code[2]}
C {devices/vdd.sym} 610 -130 1 0 {name=l13 lab=async_resetb_delay_cap_ctrl_code[1]}
C {devices/vdd.sym} 720 -130 1 0 {name=l14 lab=async_resetb_delay_cap_ctrl_code[0]}
C {devices/vsource.sym} 720 -100 0 0 {name=V3 value=1.8}
C {devices/vsource.sym} 390 -40 0 0 {name=V9 value=0}
C {devices/vsource.sym} 500 -40 0 0 {name=V10 value=0}
C {devices/vsource.sym} 610 -40 0 0 {name=V11 value=0}
C {devices/lab_pin.sym} 340 -70 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 610 -100 0 0 {name=V4 value=1.8}
C {devices/vsource.sym} 500 -100 0 0 {name=V13 value=1.8}
C {devices/vsource.sym} 390 -100 0 0 {name=V14 value=1.8}
C {devices/vsource.sym} 720 -40 0 0 {name=V19 value=0}
C {devices/noconn.sym} 390 -130 2 0 {name=l20}
C {devices/noconn.sym} 500 -130 2 0 {name=l21}
C {devices/noconn.sym} 610 -10 2 0 {name=l22}
C {devices/noconn.sym} 720 -10 2 0 {name=l24}
C {devices/lab_pin.sym} 230 -410 0 0 {name=p12 sig_type=std_logic lab=async_resetb_delay_cap_ctrl_code[0:3]}
C {../xschem/hgu_delay.sym} 400 -650 0 0 {name=x2 DELAY_CAP=8f}
C {devices/lab_pin.sym} 550 -710 2 0 {name=p2 sig_type=std_logic lab=Vout_20n}
C {devices/gnd.sym} 550 -650 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 550 -680 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 250 -650 0 0 {name=p4 sig_type=std_logic lab=async_resetb_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 250 -630 0 0 {name=p6 sig_type=std_logic lab=async_resetb_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 250 -610 0 0 {name=p7 sig_type=std_logic lab=async_resetb_delay_cap_ctrl_code[0:3]}
C {devices/lab_pin.sym} 250 -590 0 0 {name=p9 sig_type=std_logic lab=async_resetb_delay_cap_ctrl_code[0:3]}
C {devices/gnd.sym} 250 -670 1 0 {name=l3 lab=GND}
C {devices/vdd.sym} 250 -690 3 0 {name=l4 lab=VDD}
C {devices/lab_pin.sym} 250 -710 0 0 {name=p10 sig_type=std_logic lab=EXT_CLK}
C {sky130_stdcells/inv_1.sym} 720 -710 0 0 {name=x7 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/gnd.sym} 760 -650 0 0 {name=l6 lab=GND}
C {devices/capa.sym} 760 -680 0 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {sky130_stdcells/inv_1.sym} 650 -470 0 0 {name=x9 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/gnd.sym} 690 -410 0 0 {name=l15 lab=GND}
C {devices/capa.sym} 690 -440 0 0 {name=C4
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
C {devices/simulator_commands_shown.sym} 60 -830 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"}
C {devices/lab_pin.sym} 1220 -460 2 0 {name=p11 sig_type=std_logic lab=Vout2}
C {devices/gnd.sym} 1220 -400 0 0 {name=l16 lab=GND}
C {devices/capa.sym} 1220 -430 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 920 -420 1 0 {name=l17 lab=GND}
C {devices/vdd.sym} 920 -460 3 0 {name=l18 lab=VDD}
C {devices/lab_pin.sym} 920 -440 0 0 {name=p13 sig_type=std_logic lab=EXT_CLK}
C {sky130_stdcells/inv_1.sym} 1340 -460 0 0 {name=x4 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/gnd.sym} 1380 -400 0 0 {name=l19 lab=GND}
C {devices/capa.sym} 1380 -430 0 0 {name=C6
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {/foss/designs/goss_test/module/jh_top/delay_no_code.sym} 1070 -440 0 0 {name=x5}
