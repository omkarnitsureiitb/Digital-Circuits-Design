transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/EE214/lab/prob01/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {E:/EE214/lab/prob01/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {E:/EE214/lab/prob01/TopLevel.vhdl}
vcom -93 -work work {E:/EE214/lab/prob01/Gates.vhdl}
vcom -93 -work work {E:/EE214/lab/prob01/DUT.vhdl}
vcom -93 -work work {E:/EE214/lab/prob01/SEQUENCE_GENERATOR.vhd}

vcom -93 -work work {E:/EE214/lab/prob01/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
