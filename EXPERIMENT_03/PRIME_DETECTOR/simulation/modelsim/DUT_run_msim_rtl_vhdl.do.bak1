transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/EE214/EXPERIMENT_03/PRIME_DETECTOR/Gates.vhdl}
vcom -93 -work work {E:/EE214/EXPERIMENT_03/PRIME_DETECTOR/DUT.vhdl}
vcom -93 -work work {E:/EE214/EXPERIMENT_03/PRIME_DETECTOR/PRIME_DETECTOR.vhd}

vcom -93 -work work {E:/EE214/EXPERIMENT_03/PRIME_DETECTOR/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
