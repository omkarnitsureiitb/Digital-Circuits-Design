transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/EE214/lab/prob02/Gates.vhdl}
vcom -93 -work work {E:/EE214/lab/prob02/DUT.vhdl}
vcom -93 -work work {E:/EE214/lab/prob02/PRIORITY_ENCODER.vhd}

vcom -93 -work work {E:/EE214/lab/prob02/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
