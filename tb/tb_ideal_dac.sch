v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {/foss/designs/hgu_goss/hgu/xschem/ideal_dac.sym} -130 10 0 0 {name=x1}
C {devices/gnd.sym} 300 30 0 0 {name=l55 lab=GND}
C {devices/gnd.sym} 380 -30 0 0 {name=l56 lab=GND}
C {devices/vdd.sym} 380 -150 0 0 {name=l15 lab=code[7]}
C {devices/vdd.sym} 300 -90 0 0 {name=l16 lab=code[6]}
C {devices/res.sym} 300 -60 0 0 {name=R7
value=1a
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 380 -120 0 0 {name=R8
value=1a
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 380 -60 0 0 {name=V23 value="PULSE(0 1.8 95n 100p 100p 25600n 51200n)"}
C {devices/vsource.sym} 300 0 0 0 {name=V22 value="PULSE(0 1.8 95n 100p 100p 12800n 25600n)"}
C {devices/gnd.sym} 150 160 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 230 100 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 230 -20 0 0 {name=l3 lab=code[5]}
C {devices/vdd.sym} 150 40 0 0 {name=l4 lab=code[4]}
C {devices/res.sym} 150 70 0 0 {name=R1
value=1a
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 230 10 0 0 {name=R2
value=1a
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 230 70 0 0 {name=V1 value="PULSE(0 1.8 95n 100p 100p 6400n 12800n)"}
C {devices/vsource.sym} 150 130 0 0 {name=V2 value="PULSE(0 1.8 95n 100p 100p 3200n 6400n)"}
C {devices/gnd.sym} 10 280 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 90 220 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 90 100 0 0 {name=l7 lab=code[3]}
C {devices/vdd.sym} 10 160 0 0 {name=l8 lab=code[2]}
C {devices/res.sym} 10 190 0 0 {name=R3
value=1a
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 90 130 0 0 {name=R4
value=1a
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 90 190 0 0 {name=V3 value="PULSE(0 1.8 95n 100p 100p 1600n 3200n)"}
C {devices/vsource.sym} 10 250 0 0 {name=V4 value="PULSE(0 1.8 95n 100p 100p 800n 1600n)"}
C {devices/gnd.sym} -140 410 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} -60 350 0 0 {name=l10 lab=GND}
C {devices/vdd.sym} -60 230 0 0 {name=l11 lab=code[1]}
C {devices/vdd.sym} -140 290 0 0 {name=l12 lab=code[0]}
C {devices/res.sym} -140 320 0 0 {name=R5
value=1a
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -60 260 0 0 {name=R6
value=1a
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -60 320 0 0 {name=V5 value="PULSE(0 1.8 95n 100p 100p 400n 800n)"}
C {devices/vsource.sym} -140 380 0 0 {name=V6 value="PULSE(0 1.8 95n 100p 100p 200n 400n)"}
C {devices/code.sym} -350 280 0 0 {name=spice2 only_toplevel=false value="

.OPTIONS savecurrents
.tran 60ps 103us

.control
	run
	plot \\"code[0]\\" \\"code[1]\\"+2 \\"code[2]\\"+4 \\"code[3]\\"+6 \\"code[4]\\"+8 \\"code[5]\\"+10 \\"code[6]\\"+12 \\"code[7]\\"+14 out-2

.endc

.save all
"}
C {devices/lab_pin.sym} 20 10 2 0 {name=p70 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} -280 10 2 1 {name=p1 sig_type=std_logic lab=code[0:7]}
C {devices/simulator_commands_shown.sym} -550 -120 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"}
C {devices/vdd.sym} -340 140 0 0 {name=l92 lab=VDD}
C {devices/gnd.sym} -340 200 0 0 {name=l93 lab=GND}
C {devices/vsource.sym} -340 170 0 0 {name=V33 value=1.8}
C {devices/vdd.sym} -290 140 0 0 {name=l94 lab=VSS}
C {devices/gnd.sym} -290 200 0 0 {name=l95 lab=GND}
C {devices/vsource.sym} -290 170 0 0 {name=V34 value=0}
