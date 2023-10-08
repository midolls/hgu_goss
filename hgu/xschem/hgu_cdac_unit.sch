v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 -130 90 -80 {
lab=PLUS}
N 90 -20 90 30 {
lab=MINUS}
C {devices/capa.sym} 90 -50 0 0 {name=C1
m=csize
value=1.5f
footprint=1206
device="ceramic capacitor"}
C {devices/iopin.sym} 90 -130 0 0 {name=p1 lab=PLUS}
C {devices/iopin.sym} 90 30 0 0 {name=p2 lab=MINUS
}
