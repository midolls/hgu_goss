v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 -130 90 -80 {
lab=CTOP}
N 90 -20 90 30 {
lab=CBOT}
C {devices/iopin.sym} 90 -130 0 0 {name=p1 lab=CTOP}
C {devices/iopin.sym} 90 30 0 0 {name=p2 lab=CBOT
}
C {devices/iopin.sym} 70 -40 0 1 {name=p3 lab=SUB
}
C {../xschem/hgu_vpp_cap.sym} 90 -50 0 0 {symname=hgu_cdac_unit
name=x1}
