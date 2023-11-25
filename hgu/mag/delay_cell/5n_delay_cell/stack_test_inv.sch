v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -100 -40 -100 -0 {
lab=INput}
N 60 -60 60 0 {
lab=OUTput}
N 60 -30 110 -30 {
lab=OUTput}
C {/foss/designs/hgu_goss/hgu/xschem/hgu_pfet_hvt_stack_in_delay.sym} -30 -50 0 0 {name=x1}
C {/foss/designs/hgu_goss/hgu/xschem/hgu_nfet_hvt_stack_in_delay.sym} -40 10 0 0 {name=x2}
C {devices/ipin.sym} -100 -20 0 0 {name=p4 lab=INput}
C {devices/ipin.sym} -100 -60 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} -100 20 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} 110 -30 0 0 {name=p3 lab=OUTput}
