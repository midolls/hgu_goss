v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -240 -110 -240 -80 {
lab=VDD}
N 190 -70 190 -60 {
lab=#net1}
N 310 30 310 70 {
lab=tah_vn}
N 160 -100 160 -80 {
lab=sw_n}
N 90 -80 120 -80 {
lab=sw}
N 90 -150 90 -80 {
lab=sw}
N 270 -30 350 -30 {
lab=tah_vp}
N 270 30 310 30 {
lab=tah_vn}
N 350 -30 350 -10 {
lab=tah_vp}
N -70 -20 50 -20 {
lab=vip}
N -70 -20 -70 40 {
lab=vip}
N -70 40 -70 100 {
lab=vip}
N -20 20 50 20 {
lab=vin}
N -20 20 -20 50 {
lab=vin}
N -20 50 -20 70 {
lab=vin}
N -20 70 -20 80 {
lab=vin}
N -20 80 -20 90 {
lab=vin}
N -20 90 -20 100 {
lab=vin}
N -20 100 -20 110 {
lab=vin}
N -20 110 -20 140 {
lab=vin}
N -20 140 -20 160 {
lab=vin}
N -90 270 40 270 {
lab=#net2}
N -20 270 -20 330 {
lab=#net2}
N -20 390 -20 400 {
lab=GND}
N -90 310 -60 310 {
lab=GND}
N -60 310 -60 400 {
lab=GND}
N 20 310 40 310 {
lab=GND}
N 20 310 20 400 {
lab=GND}
N -130 320 -130 440 {
lab=#net3}
N -130 440 80 440 {
lab=#net3}
N 80 320 80 440 {
lab=#net3}
N -20 440 -20 470 {
lab=#net3}
N -130 240 -130 260 {
lab=vip}
N 80 240 80 260 {
lab=vin}
N -20 180 80 180 {
lab=vin}
N 80 180 80 240 {
lab=vin}
N -130 180 -70 180 {
lab=vip}
N -130 180 -130 240 {
lab=vip}
N -70 100 -70 180 {
lab=vip}
N -20 160 -20 180 {
lab=vin}
C {../xschem/hgu_tah.sym} 120 0 0 0 {name=x1}
C {devices/vsource.sym} -240 -50 0 0 {name=V2 value=1.62
}
C {devices/gnd.sym} -240 -20 0 0 {name=l1 lab=GND}
C {devices/code.sym} -235 40 0 0 {name=s1 only_toplevel=false value="
.save all 
.temp = 100
.tran 100p 600n
.OPTIONS savecurrents

.control
run
plot v(sw) vip vin vip-vin+0.9 tah_vp-tah_vn+0.9

        let svdd = 1.62
        let max = svdd*0.8
        let min = svdd*0.2
        let mid = svdd*0.5
	let q = tah_vp-tah_vn
        meas tran rising_s find time when V(q)=min RISE=1 TD=100n
        meas tran rising_e find time when V(q)=max RISE=1 TD=100n
        let rising_time = rising_e-rising_s
        meas tran falling_s find time when V(q)=max FALL=1 TD=1000p
        meas tran falling_e find time when V(q)=min FALL=1 TD=1000p
        let falling_time = falling_e-falling_s
        meas tran IN find time when V(sw)=mid RISE=1 TD=350n
        meas tran OUT find time when V(q)=mid RISE=1 TD=350n
        let rising_delay = OUT-IN
        meas tran fIN find time when V(sw)=mid RISE=1 TD=100n
        meas tran fOUT find time when V(q)=mid FALL=1 TD=100n
        let falling_delay = fOUT-fIN

        print rising_time falling_time rising_delay falling_delay


plot v(sw) vip-vin tah_vp-tah_vn
.endc
"
}
C {sky130_fd_pr/corner.sym} -365 40 0 0 {name=CORNER only_toplevel=false corner=ss}
C {devices/vdd.sym} -240 -110 0 0 {name=l3 lab=VDD}
C {devices/capa.sym} 310 100 0 0 {name=C2
m=1
<<<<<<< HEAD
value=0.4p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 310 130 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 90 -180 2 0 {name=V3 value="0 pulse(0 1.62 0 1p 1p 20n 200n)"
}
C {devices/vsource.sym} 160 -130 2 1 {name=V4 value="0 pulse(1.62 0 0 1p 1p 20n 200n)"
}
C {devices/gnd.sym} 90 -210 2 0 {name=l6 lab=GND}
C {devices/gnd.sym} 160 -160 2 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 90 -90 0 0 {name=p3 sig_type=std_logic lab=sw
}
C {devices/lab_wire.sym} 160 -90 0 0 {name=p5 sig_type=std_logic lab=sw_n

}
C {devices/lab_wire.sym} 310 50 0 0 {name=p7 sig_type=std_logic lab=tah_vn
}
C {devices/capa.sym} 350 20 0 0 {name=C1
m=1
<<<<<<< HEAD
value=0.4p
=======
value=10f
>>>>>>> 4f231f2f9f1129b750284bfaff4a6bab59eecdd6
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 350 50 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 340 -30 0 0 {name=p8 sig_type=std_logic lab=tah_vp
}
C {devices/gnd.sym} 190 80 0 0 {name=l10 lab=GND}
C {devices/vdd.sym} 190 -80 0 0 {name=l2 lab=VDD}
C {devices/lab_wire.sym} 40 -20 0 0 {name=p6 sig_type=std_logic lab=vip

}
C {devices/lab_wire.sym} 40 20 0 0 {name=p9 sig_type=std_logic lab=vin

}
C {devices/vsource.sym} -20 360 0 0 {name=V1 value="SIN(0 0.9 2.5MEG 0n)"}
C {devices/vcvs.sym} -130 290 0 1 {name=E1 value=0.5
}
C {devices/vcvs.sym} 80 290 0 0 {name=E2 value=-0.5
}
C {devices/gnd.sym} -20 400 0 0 {name=l14 lab=GND}
C {devices/gnd.sym} -60 400 0 0 {name=l15 lab=GND}
C {devices/gnd.sym} 20 400 0 0 {name=l16 lab=GND}
C {devices/vsource.sym} -20 500 0 0 {name=V6 value=0.9
}
C {devices/gnd.sym} -20 530 0 0 {name=l17 lab=GND}
C {devices/lab_wire.sym} -130 240 0 0 {name=p2 sig_type=std_logic lab=vip

}
C {devices/lab_wire.sym} 80 250 0 0 {name=p10 sig_type=std_logic lab=vin

}
