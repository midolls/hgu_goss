v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
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

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

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
			plot V(EXT_CLK) V(Vout)
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
C {/foss/designs/goss_test/module/jh_top/delay_no_code.sym} 380 -450 0 0 {name=x1}
