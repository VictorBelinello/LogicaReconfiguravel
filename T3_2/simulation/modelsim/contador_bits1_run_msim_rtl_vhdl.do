transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/belin/Documents/Devel/Quartus/T3_2/contador_bits1.vhd}

vcom -93 -work work {C:/Users/belin/Documents/Devel/Quartus/T3_2/contador_bits1_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_contador_bits1

add wave *
view structure
view signals
run 2 us
