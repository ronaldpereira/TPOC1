transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/user/Downloads/TPOC1-master/TPFinal/register_bank {C:/Users/user/Downloads/TPOC1-master/TPFinal/register_bank/register_bank.v}
vlog -vlog01compat -work work +incdir+C:/Users/user/Downloads/TPOC1-master/TPFinal/multiplexer {C:/Users/user/Downloads/TPOC1-master/TPFinal/multiplexer/multiplexer.v}
vlog -vlog01compat -work work +incdir+C:/Users/user/Downloads/TPOC1-master/TPFinal/extensor {C:/Users/user/Downloads/TPOC1-master/TPFinal/extensor/extensor.v}
vlog -vlog01compat -work work +incdir+C:/Users/user/Downloads/TPOC1-master/TPFinal/decoder {C:/Users/user/Downloads/TPOC1-master/TPFinal/decoder/decoder.v}
vlog -vlog01compat -work work +incdir+C:/Users/user/Downloads/TPOC1-master/TPFinal/counter {C:/Users/user/Downloads/TPOC1-master/TPFinal/counter/counter.v}
vlog -vlog01compat -work work +incdir+C:/Users/user/Downloads/TPOC1-master/TPFinal/control_unit {C:/Users/user/Downloads/TPOC1-master/TPFinal/control_unit/control_unit.v}
vlog -vlog01compat -work work +incdir+C:/Users/user/Downloads/TPOC1-master/TPFinal/complement {C:/Users/user/Downloads/TPOC1-master/TPFinal/complement/complement.v}
vlog -vlog01compat -work work +incdir+C:/Users/user/Downloads/TPOC1-master/TPFinal/alu {C:/Users/user/Downloads/TPOC1-master/TPFinal/alu/alu.v}
vlog -vlog01compat -work work +incdir+C:/Users/user/Downloads/TPOC1-master/TPFinal {C:/Users/user/Downloads/TPOC1-master/TPFinal/processor.v}

