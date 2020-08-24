transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {contador_bits1.vho}

vcom -93 -work work {C:/Users/belin/Documents/Devel/Quartus/T3/tb_contador_bits1.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /UUT=contador_bits1_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  tb_contador_bits1

add wave *
view structure
view signals
run 2 us
