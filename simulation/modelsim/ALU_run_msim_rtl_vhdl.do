transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

<<<<<<< HEAD
vcom -93 -work work {D:/Project_A/ALU.vhd}
vcom -93 -work work {D:/Project_A/XOR2.vhd}
vcom -93 -work work {D:/Project_A/XOR1.vhd}
vcom -93 -work work {D:/Project_A/gp_cal.vhd}
vcom -93 -work work {D:/Project_A/node_op.vhd}
vcom -93 -work work {D:/Project_A/KS_ADDER.vhd}
vcom -93 -work work {D:/Project_A/and_2.vhd}
vcom -93 -work work {D:/Project_A/or_2.vhd}
vcom -93 -work work {D:/Project_A/subtractor.vhd}
vcom -93 -work work {D:/Project_A/twos_complement.vhd}
vcom -93 -work work {D:/Project_A/nand1.vhd}

vcom -93 -work work {D:/Project_A/Testbench.vhd}
=======
vcom -93 -work work {S:/VHDL Projects/Project_A/ALU.vhd}
vcom -93 -work work {S:/VHDL Projects/Project_A/XOR2.vhd}
vcom -93 -work work {S:/VHDL Projects/Project_A/XOR1.vhd}
vcom -93 -work work {S:/VHDL Projects/Project_A/gp_cal.vhd}
vcom -93 -work work {S:/VHDL Projects/Project_A/node_op.vhd}
vcom -93 -work work {S:/VHDL Projects/Project_A/KS_ADDER.vhd}
vcom -93 -work work {S:/VHDL Projects/Project_A/ones_complement.vhd}
vcom -93 -work work {S:/VHDL Projects/Project_A/and_2.vhd}
vcom -93 -work work {S:/VHDL Projects/Project_A/or_2.vhd}
vcom -93 -work work {S:/VHDL Projects/Project_A/subtractor.vhd}
vcom -93 -work work {S:/VHDL Projects/Project_A/twos_complement.vhd}
vcom -93 -work work {S:/VHDL Projects/Project_A/nand1.vhd}

vcom -93 -work work {S:/VHDL Projects/Project_A/Testbench.vhd}
>>>>>>> 47f827e7533566b52134ccb0d7f351eac89b4831

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
