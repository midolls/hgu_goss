v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 180 -110 310 -110 {
lab=#net1}
N 250 -110 250 -50 {
lab=#net1}
N 250 10 250 20 {
lab=GND}
N 180 -70 210 -70 {
lab=GND}
N 210 -70 210 20 {
lab=GND}
N 290 -70 310 -70 {
lab=GND}
N 290 -70 290 20 {
lab=GND}
N 140 -60 140 60 {
lab=#net2}
N 140 60 350 60 {
lab=#net2}
N 350 -60 350 60 {
lab=#net2}
N 250 60 250 90 {
lab=#net2}
N 140 -140 140 -120 {
lab=vip}
N 350 -140 350 -120 {
lab=vip}
C {devices/vcvs.sym} 140 -90 0 1 {name=E1 value=0.5
}
C {devices/vcvs.sym} 350 -90 0 0 {name=E2 value=-0.5
}
C {devices/vsource.sym} 250 -20 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 250 20 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 210 20 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 290 20 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 250 120 0 0 {name=V2 value=3}
C {devices/gnd.sym} 250 150 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 140 -140 0 0 {name=p2 sig_type=std_logic lab=vip

}
C {devices/lab_wire.sym} 350 -130 0 0 {name=p1 sig_type=std_logic lab=vin

}
