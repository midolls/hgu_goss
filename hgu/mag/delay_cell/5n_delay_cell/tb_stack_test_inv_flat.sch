v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {/foss/designs/hgu_goss/hgu/mag/delay_cell/5n_delay_cell/stack_test_inv_flat.sym} 30 -10 0 0 {name=x1}
C {devices/gnd.sym} -30 120 0 0 {name=l32 lab=GND}
C {devices/vsource.sym} -30 90 0 0 {name=V21 value=1.8}
C {devices/gnd.sym} 50 120 0 0 {name=l33 lab=GND}
C {devices/vsource.sym} 50 90 0 0 {name=V22 value=0}
C {devices/lab_pin.sym} -30 60 0 0 {name=p7 sig_type=std_logic lab=sch_vdd}
C {devices/lab_pin.sym} 50 60 0 0 {name=p13 sig_type=std_logic lab=sch_vss}
C {devices/vsource.sym} 160 90 0 0 {name=V12 value="PULSE(0 1.8 1n 5p 5p 40n 80n)"}
C {devices/gnd.sym} 160 120 0 0 {name=l25 lab=GND}
C {devices/lab_pin.sym} 160 60 0 0 {name=p3 sig_type=std_logic lab=EXT_CLK}
C {devices/lab_pin.sym} -120 -10 0 0 {name=p1 sig_type=std_logic lab=EXT_CLK}
C {devices/lab_pin.sym} 180 -30 2 0 {name=p8 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} -120 -30 0 0 {name=p2 sig_type=std_logic lab=sch_vdd}
C {devices/lab_pin.sym} -120 10 0 0 {name=p4 sig_type=std_logic lab=sch_vss}
C {devices/code.sym} 80 -330 0 0 {name=spice1 only_toplevel=false value="

*.tran 100ns 1024us
.tran 10p 50ns

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
			plot V(EXT_CLK) V(Vout)
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
C {devices/simulator_commands_shown.sym} -300 -180 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.include /foss/designs/hgu_goss/hgu/mag/hgu_cdac_unit.spice
.include /foss/designs/hgu_goss/hgu/spice/hgu_delay_no_code_flat.spice
*.include /foss/designs/hgu_goss/hgu/spice/hgu_delay_no_code_flat_no_cap.spice

.include /foss/designs/hgu_goss/hgu/mag/delay_cell/5n_delay_cell/stack_test_inv_flat.spice
.include /foss/designs/hgu_goss/hgu/mag/delay_cell/5n_delay_cell/test.spice
"}
