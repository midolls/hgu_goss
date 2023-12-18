v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 270 -840 270 -800 {
lab=#net1}
N 270 -740 270 -700 {
lab=#net2}
N 270 -640 270 -600 {
lab=#net3}
N 270 -540 270 -500 {
lab=#net4}
N 270 -440 270 -400 {
lab=#net5}
N 270 -340 270 -290 {
lab=#net6}
N 270 -230 270 -190 {
lab=#net7}
N 270 -130 270 -90 {
lab=GND}
N 200 -850 200 -40 {
lab=GND}
N 200 -850 230 -850 {
lab=GND}
N 200 -140 230 -140 {
lab=GND}
N 200 -240 230 -240 {
lab=GND}
N 200 -350 230 -350 {
lab=GND}
N 200 -450 230 -450 {
lab=GND}
N 200 -550 230 -550 {
lab=GND}
N 200 -650 230 -650 {
lab=GND}
N 200 -750 230 -750 {
lab=GND}
N 270 -950 270 -900 {
lab=#net8}
N 270 -950 320 -950 {
lab=#net8}
N 380 -950 420 -950 {
lab=dac_out}
C {devices/vcvs.sym} 270 -260 0 0 {name=E19 value=0.0078125}
C {devices/vcvs.sym} 270 -160 0 0 {name=E20 value=0.00390625}
C {devices/vcvs.sym} 270 -570 0 0 {name=E22 value=0.0625}
C {devices/vcvs.sym} 270 -470 0 0 {name=E23 value=0.03125}
C {devices/vcvs.sym} 270 -370 0 0 {name=E24 value=0.015625}
C {devices/vcvs.sym} 270 -870 0 0 {name=E25 value=0.5}
C {devices/vcvs.sym} 270 -770 0 0 {name=E26 value=0.25}
C {devices/vcvs.sym} 270 -670 0 0 {name=E27 value=0.125}
C {devices/gnd.sym} 270 -90 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} 200 -40 0 0 {name=l14 lab=GND}
C {devices/ipin.sym} 220 -1000 0 0 {name=p11 lab=code[0:7]}
C {devices/opin.sym} 270 -1000 0 0 {name=p12 lab=dac_out}
C {devices/lab_pin.sym} 230 -180 2 1 {name=p13 sig_type=std_logic lab=code[0]}
C {devices/lab_pin.sym} 230 -280 2 1 {name=p14 sig_type=std_logic lab=code[1]}
C {devices/lab_pin.sym} 230 -390 2 1 {name=p15 sig_type=std_logic lab=code[2]}
C {devices/lab_pin.sym} 230 -490 2 1 {name=p16 sig_type=std_logic lab=code[3]}
C {devices/lab_pin.sym} 230 -590 2 1 {name=p17 sig_type=std_logic lab=code[4]}
C {devices/lab_pin.sym} 230 -690 2 1 {name=p18 sig_type=std_logic lab=code[5]}
C {devices/lab_pin.sym} 230 -790 2 1 {name=p19 sig_type=std_logic lab=code[6]}
C {devices/lab_pin.sym} 230 -890 2 1 {name=p20 sig_type=std_logic lab=code[7]}
C {devices/lab_pin.sym} 420 -950 2 0 {name=p22 sig_type=std_logic lab=dac_out}
C {devices/gnd.sym} 420 -890 0 0 {name=l15 lab=GND}
C {devices/res.sym} 350 -950 1 0 {name=R2
value=10
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 420 -920 0 0 {name=C1
m=1
value=3.2099p
footprint=1206
device="ceramic capacitor"}
