transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/captain/Project_A/ALU.vhd}
vcom -93 -work work {/home/captain/Project_A/XOR2.vhd}
vcom -93 -work work {/home/captain/Project_A/XOR1.vhd}
vcom -93 -work work {/home/captain/Project_A/gp_cal.vhd}
vcom -93 -work work {/home/captain/Project_A/node_op.vhd}
vcom -93 -work work {/home/captain/Project_A/KS_ADDER.vhd}
vcom -93 -work work {/home/captain/Project_A/AND_2.vhd}
vcom -93 -work work {/home/captain/Project_A/OR_2.vhd}
vcom -93 -work work {/home/captain/Project_A/subtractor.vhd}
vcom -93 -work work {/home/captain/Project_A/twos_complement.vhd}
vcom -93 -work work {/home/captain/Project_A/NAND1.vhd}

vcom -93 -work work {/home/captain/Project_A/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
