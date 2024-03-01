transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/GITEA/GitHub/ES/pcbteach/TestBench01/or_gate.vhd}

vcom -93 -work work {D:/GITEA/GitHub/ES/pcbteach/TestBench01/simulation/modelsim/or_gate.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
