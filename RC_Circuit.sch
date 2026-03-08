v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -460 -690 340 -290 {flags=graph
y1=0
y2=1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="7 4"
node="vout
vin"}
N 120 -170 120 -150 {lab=vin}
N 120 -180 120 -170 {lab=vin}
N 120 -180 200 -180 {lab=vin}
N 260 -180 290 -180 {lab=vout}
N 290 -180 290 -130 {lab=vout}
C {res.sym} 230 -180 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 120 -120 0 0 {name=V1 value="PULSE(0 1 0.5n 100p 100p 1n 2n)" savecurrent=false}
C {gnd.sym} 290 -70 0 0 {name=l1 lab=0}
C {gnd.sym} 120 -90 0 0 {name=l2 lab=0}
C {capa.sym} 290 -100 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 160 -180 1 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_pin.sym} 280 -180 1 0 {name=p2 sig_type=std_logic lab=vout}
C {code_shown.sym} -50 -230 0 0 {name=s1 only_toplevel=false 
value=
"
.tran 100p 10n
.save all
"}
C {launcher.sym} -470 -170 0 0 {name=h5
descr="load waves (press ctrl + left click)"
tclcommand="xschem raw_read $netlist_dir/RC_Circuit.raw tran"
}
