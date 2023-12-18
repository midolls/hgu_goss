v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 450 -500 530 -500 {
lab=GND}
N 530 -500 530 -490 {
lab=GND}
N 450 -580 450 -560 {
lab=VDD}
N 530 -580 530 -560 {
lab=VSS}
N 530 -500 600 -500 {
lab=GND}
N 600 -580 600 -560 {
lab=clk}
N 620 -700 650 -700 {
lab=ready}
N 720 -790 750 -790 {
lab=outp}
N 720 -750 750 -750 {
lab=outn}
N 470 -870 480 -870 {
lab=VDD}
N 470 -650 480 -660 {
lab=VSS}
N 520 -660 520 -650 {
lab=clk}
N 120 -670 250 -670 {
lab=#net1}
N 120 -630 150 -630 {
lab=VSS}
N 230 -630 250 -630 {
lab=VSS}
N 80 -700 80 -680 {
lab=vip}
N 290 -700 290 -680 {
lab=vin}
N 230 -630 230 -590 {
lab=VSS}
N 150 -630 150 -590 {
lab=VSS}
N 150 -590 230 -590 {
lab=VSS}
N 190 -610 190 -590 {
lab=VSS}
N 190 -590 190 -570 {
lab=VSS}
N 190 -490 190 -470 {
lab=VSS}
N 80 -550 190 -550 {
lab=#net2}
N 190 -550 290 -550 {
lab=#net2}
N 80 -800 80 -700 {
lab=vip}
N 290 -740 290 -700 {
lab=vin}
N 290 -740 390 -740 {
lab=vin}
N 80 -800 390 -800 {
lab=vip}
N 750 -790 820 -790 {
lab=outp}
N 760 -750 820 -750 {
lab=outn}
N 860 -740 860 -710 {
lab=VSS}
N 860 -840 860 -800 {
lab=outd}
N 860 -840 900 -840 {
lab=outd}
N 80 -620 80 -550 {
lab=#net2}
N 290 -620 290 -550 {
lab=#net2}
N 750 -750 760 -750 {
lab=outn}
C {../xschem/hgu_comp.sym} 560 -770 0 0 {name=x1}
C {devices/vsource.sym} 450 -530 0 0 {name=V1 value=1.8}
C {devices/vsource.sym} 530 -530 0 0 {name=V2 value=0}
C {devices/gnd.sym} 530 -490 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 450 -580 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 530 -580 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 470 -870 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 470 -650 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 600 -530 0 0 {name=V3 value="PULSE(0 1.8 0 100p 100p 5n 10n)"}
C {devices/lab_pin.sym} 600 -580 0 0 {name=p5 sig_type=std_logic lab=clk
}
C {devices/lab_pin.sym} 520 -650 0 0 {name=p10 sig_type=std_logic lab=clk
}
C {devices/lab_pin.sym} 650 -700 2 0 {name=p14 sig_type=std_logic lab=ready}
C {devices/lab_pin.sym} 760 -790 1 0 {name=p11 sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 760 -750 3 0 {name=p15 sig_type=std_logic lab=outn}
C {devices/code.sym} 130 -990 0 0 {name=s1 only_toplevel=false value="

.include /foss/designs/hgu_goss/hgu/spice/hgu_comp_flat_RC.spice
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt_mm
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.tran 0.1ns 10ns
.temp 25
.control
    repeat 100

    tran 0.1ns 10ns
    print avg V(outd)
    write test_mc_model.txt
    set appendwrite
    reset

    end
	meas tran v1 AVG tran1.v(outd) FROM=2n TO=10n
	meas tran v2 AVG tran2.v(outd) FROM=2n TO=10n
	meas tran v3 AVG tran3.v(outd) FROM=2n TO=10n
	meas tran v4 AVG tran4.v(outd) FROM=2n TO=10n
	meas tran v5 AVG tran5.v(outd) FROM=2n TO=10n
	meas tran v6 AVG tran6.v(outd) FROM=2n TO=10n
	meas tran v7 AVG tran7.v(outd) FROM=2n TO=10n
	meas tran v8 AVG tran8.v(outd) FROM=2n TO=10n
	meas tran v9 AVG tran9.v(outd) FROM=2n TO=10n
	meas tran v10 AVG tran10.v(outd) FROM=2n TO=10n
	let avg_v1 = (v1+v2+v3+v4+v5+v6+v7+v8+v9+v10)/10

	meas tran v11 AVG tran11.v(outd) FROM=2n TO=10n
	meas tran v12 AVG tran12.v(outd) FROM=2n TO=10n
	meas tran v13 AVG tran13.v(outd) FROM=2n TO=10n
	meas tran v14 AVG tran14.v(outd) FROM=2n TO=10n
	meas tran v15 AVG tran15.v(outd) FROM=2n TO=10n
	meas tran v16 AVG tran16.v(outd) FROM=2n TO=10n
	meas tran v17 AVG tran17.v(outd) FROM=2n TO=10n
	meas tran v18 AVG tran18.v(outd) FROM=2n TO=10n
	meas tran v19 AVG tran19.v(outd) FROM=2n TO=10n
	meas tran v20 AVG tran20.v(outd) FROM=2n TO=10n
	let avg_v2 = (v11+v12+v13+v14+v15+v16+v17+v18+v19+v20)/10
	

	meas tran v21 AVG tran21.v(outd) FROM=2n TO=10n
	meas tran v22 AVG tran22.v(outd) FROM=2n TO=10n
	meas tran v23 AVG tran23.v(outd) FROM=2n TO=10n
	meas tran v24 AVG tran24.v(outd) FROM=2n TO=10n
	meas tran v25 AVG tran25.v(outd) FROM=2n TO=10n
	meas tran v26 AVG tran26.v(outd) FROM=2n TO=10n
	meas tran v27 AVG tran27.v(outd) FROM=2n TO=10n
	meas tran v28 AVG tran28.v(outd) FROM=2n TO=10n
	meas tran v29 AVG tran29.v(outd) FROM=2n TO=10n
	meas tran v30 AVG tran30.v(outd) FROM=2n TO=10n
	let avg_v3 = (v21+v22+v23+v24+v25+v26+v27+v28+v29+v30)/10

	meas tran v31 AVG tran31.v(outd) FROM=2n TO=10n
	meas tran v32 AVG tran32.v(outd) FROM=2n TO=10n
	meas tran v33 AVG tran33.v(outd) FROM=2n TO=10n
	meas tran v34 AVG tran34.v(outd) FROM=2n TO=10n
	meas tran v35 AVG tran35.v(outd) FROM=2n TO=10n
	meas tran v36 AVG tran36.v(outd) FROM=2n TO=10n
	meas tran v37 AVG tran37.v(outd) FROM=2n TO=10n
	meas tran v38 AVG tran38.v(outd) FROM=2n TO=10n
	meas tran v39 AVG tran39.v(outd) FROM=2n TO=10n
	meas tran v40 AVG tran40.v(outd) FROM=2n TO=10n
	let avg_v4 = (v31+v32+v33+v34+v35+v36+v37+v38+v39+v40)/10
	
	meas tran v41 AVG tran41.v(outd) FROM=2n TO=10n
	meas tran v42 AVG tran42.v(outd) FROM=2n TO=10n
	meas tran v43 AVG tran43.v(outd) FROM=2n TO=10n
	meas tran v44 AVG tran44.v(outd) FROM=2n TO=10n
	meas tran v45 AVG tran45.v(outd) FROM=2n TO=10n
	meas tran v46 AVG tran46.v(outd) FROM=2n TO=10n
	meas tran v47 AVG tran47.v(outd) FROM=2n TO=10n
	meas tran v48 AVG tran48.v(outd) FROM=2n TO=10n
	meas tran v49 AVG tran49.v(outd) FROM=2n TO=10n
	meas tran v50 AVG tran50.v(outd) FROM=2n TO=10n
	let avg_v5 = (v41+v42+v43+v44+v45+v46+v47+v48+v49+v50)/10

	meas tran v51 AVG tran51.v(outd) FROM=2n TO=10n
	meas tran v52 AVG tran52.v(outd) FROM=2n TO=10n
	meas tran v53 AVG tran53.v(outd) FROM=2n TO=10n
	meas tran v54 AVG tran54.v(outd) FROM=2n TO=10n
	meas tran v55 AVG tran55.v(outd) FROM=2n TO=10n
	meas tran v56 AVG tran56.v(outd) FROM=2n TO=10n
	meas tran v57 AVG tran57.v(outd) FROM=2n TO=10n
	meas tran v58 AVG tran58.v(outd) FROM=2n TO=10n
	meas tran v59 AVG tran59.v(outd) FROM=2n TO=10n
	meas tran v60 AVG tran60.v(outd) FROM=2n TO=10n
	let avg_v6 = (v51+v52+v53+v54+v55+v56+v57+v58+v59+v60)/10

	meas tran v61 AVG tran61.v(outd) FROM=2n TO=10n
	meas tran v62 AVG tran62.v(outd) FROM=2n TO=10n
	meas tran v63 AVG tran63.v(outd) FROM=2n TO=10n
	meas tran v64 AVG tran64.v(outd) FROM=2n TO=10n
	meas tran v65 AVG tran65.v(outd) FROM=2n TO=10n
	meas tran v66 AVG tran66.v(outd) FROM=2n TO=10n
	meas tran v67 AVG tran67.v(outd) FROM=2n TO=10n
	meas tran v68 AVG tran68.v(outd) FROM=2n TO=10n
	meas tran v69 AVG tran69.v(outd) FROM=2n TO=10n
	meas tran v70 AVG tran70.v(outd) FROM=2n TO=10n
	let avg_v7 = (v61+v62+v63+v64+v65+v66+v67+v68+v69+v70)/10

	meas tran v71 AVG tran71.v(outd) FROM=2n TO=10n
	meas tran v72 AVG tran72.v(outd) FROM=2n TO=10n
	meas tran v73 AVG tran73.v(outd) FROM=2n TO=10n
	meas tran v74 AVG tran74.v(outd) FROM=2n TO=10n
	meas tran v75 AVG tran75.v(outd) FROM=2n TO=10n
	meas tran v76 AVG tran76.v(outd) FROM=2n TO=10n
	meas tran v77 AVG tran77.v(outd) FROM=2n TO=10n
	meas tran v78 AVG tran78.v(outd) FROM=2n TO=10n
	meas tran v79 AVG tran79.v(outd) FROM=2n TO=10n
	meas tran v80 AVG tran80.v(outd) FROM=2n TO=10n
	let avg_v8 = (v71+v72+v73+v74+v75+v76+v77+v78+v79+v80)/10

	meas tran v81 AVG tran81.v(outd) FROM=2n TO=10n
	meas tran v82 AVG tran82.v(outd) FROM=2n TO=10n
	meas tran v83 AVG tran83.v(outd) FROM=2n TO=10n
	meas tran v84 AVG tran84.v(outd) FROM=2n TO=10n
	meas tran v85 AVG tran85.v(outd) FROM=2n TO=10n
	meas tran v86 AVG tran86.v(outd) FROM=2n TO=10n
	meas tran v87 AVG tran87.v(outd) FROM=2n TO=10n
	meas tran v88 AVG tran88.v(outd) FROM=2n TO=10n
	meas tran v89 AVG tran89.v(outd) FROM=2n TO=10n
	meas tran v90 AVG tran90.v(outd) FROM=2n TO=10n
	let avg_v9 = (v81+v82+v83+v84+v85+v86+v87+v88+v89+v90)/10

	meas tran v91 AVG tran91.v(outd) FROM=2n TO=10n
	meas tran v92 AVG tran92.v(outd) FROM=2n TO=10n
	meas tran v93 AVG tran93.v(outd) FROM=2n TO=10n
	meas tran v94 AVG tran94.v(outd) FROM=2n TO=10n
	meas tran v95 AVG tran95.v(outd) FROM=2n TO=10n
	meas tran v96 AVG tran96.v(outd) FROM=2n TO=10n
	meas tran v97 AVG tran97.v(outd) FROM=2n TO=10n
	meas tran v98 AVG tran98.v(outd) FROM=2n TO=10n
	meas tran v99 AVG tran99.v(outd) FROM=2n TO=10n
	meas tran v100 AVG tran100.v(outd) FROM=2n TO=10n
	let avg_v10 = (v91+v92+v93+v94+v95+v96+v97+v98+v99+v100)/10

    let final_avg = (avg_v1+avg_v2+avg_v3+avg_v4+avg_v5+avg_v6+avg_v7+avg_v8+avg_v9+avg_v10)/10
    *plot all.v(outd)
    print final_avg
.endc
.save all
"}
C {devices/vcvs.sym} 80 -650 0 1 {name=E1 value=0.5
}
C {devices/vcvs.sym} 290 -650 0 0 {name=E2 value=-0.5
}
C {devices/vsource.sym} 190 -640 0 0 {name=V6 value=0.019}
C {devices/vsource.sym} 190 -520 0 0 {name=V7 value=0.9}
C {devices/lab_wire.sym} 80 -700 0 0 {name=p8 sig_type=std_logic lab=vip

}
C {devices/lab_wire.sym} 290 -690 0 0 {name=p9 sig_type=std_logic lab=vin

}
C {devices/lab_pin.sym} 190 -570 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 190 -470 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/vcvs.sym} 860 -770 0 0 {name=E3 value=0.5555555
}
C {devices/lab_pin.sym} 860 -710 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 900 -840 2 0 {name=p17 sig_type=std_logic lab=outd}
