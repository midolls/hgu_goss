v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {   Copyright 2022 Manuel Moser

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.} 760 -230 0 0 0.2 0.2 {}
N 490 -350 540 -350 {
lab=cbot}
N 380 -470 380 -420 {
lab=VDD}
N 340 -470 340 -420 {
lab=vcom}
N 380 -520 380 -470 {
lab=VDD}
N 190 -230 360 -230 {
lab=VSS}
N 190 -520 380 -520 {
lab=VDD}
N 190 -470 340 -470 {
lab=vcom}
N 190 -390 250 -390 {
lab=col_n}
N 190 -370 250 -370 {
lab=row_n}
N 190 -350 250 -350 {
lab=rowon_n}
N 190 -330 250 -330 {
lab=sample_n}
N 190 -310 250 -310 {
lab=sample}
N 540 -350 590 -350 {
lab=cbot}
N 580 -510 590 -510 {
lab=ctop}
N 360 -240 360 -230 {
lab=VSS}
N 190 -270 250 -270 {
lab=col}
N 190 -290 250 -290 {
lab=rowoff_n}
C {devices/iopin.sym} 190 -470 0 1 {name=p3 lab=vcom}
C {devices/iopin.sym} 190 -520 0 1 {name=p7 lab=VDD}
C {devices/iopin.sym} 590 -510 2 1 {name=p9 lab=ctop}
C {devices/iopin.sym} 190 -230 0 1 {name=p10 lab=VSS}
C {devices/title.sym} 170 -40 0 0 {name=l1 author="Manuel Moser"}
C {devices/lab_wire.sym} 590 -350 0 0 {name=l2 sig_type=std_logic lab=cbot}
C {devices/ipin.sym} 190 -370 0 0 {name=p1 lab=row_n}
C {devices/ipin.sym} 190 -390 0 0 {name=p2 lab=col_n}
C {devices/ipin.sym} 190 -350 0 0 {name=p4 lab=rowon_n}
C {devices/ipin.sym} 190 -330 0 0 {name=p5 lab=sample_n}
C {devices/ipin.sym} 190 -310 0 0 {name=p6 lab=sample}
C {devices/noconn.sym} 580 -510 0 0 {name=l4}
C {adc_array_circuit_8.sym} 360 -350 0 0 {name=x1}
C {devices/ipin.sym} 190 -290 0 0 {name=p8 lab=rowoff_n}
C {devices/ipin.sym} 190 -270 0 0 {name=p11 lab=col}
