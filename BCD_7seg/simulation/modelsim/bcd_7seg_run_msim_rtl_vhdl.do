transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {F:/Others/Quartus-Projects/LogicaReconfiguravel/BCD_7seg/bcd_7seg.vhd}

