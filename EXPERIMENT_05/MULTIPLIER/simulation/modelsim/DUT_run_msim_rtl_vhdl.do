transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib v_jtag
vmap v_jtag v_jtag
vcom -93 -work v_jtag {E:/EE214/lab/prob01/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {E:/EE214/lab/prob01/TopLevel.vhdl}
vcom -93 -work work {E:/EE214/lab/prob01/Gates.vhdl}
vcom -93 -work work {E:/EE214/lab/prob01/DUT.vhdl}
vcom -93 -work work {E:/EE214/lab/prob01/XOR.vhd}
vcom -93 -work work {E:/EE214/lab/prob01/ADDER_SUBTRACTOR.vhd}
vcom -93 -work work {E:/EE214/lab/prob01/FULL_ADDER.vhdl}
vcom -93 -work work {E:/EE214/lab/prob01/MULTIPLIER.vhd}

vcom -93 -work work {E:/EE214/lab/prob01/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -L v_jtag -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
