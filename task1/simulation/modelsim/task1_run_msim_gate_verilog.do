transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {task1_7_1200mv_100c_slow.vo}

vlog -vlog01compat -work work +incdir+C:/Users/admin/dev/le2hardware3/task1/simulation/modelsim {C:/Users/admin/dev/le2hardware3/task1/simulation/modelsim/test_mainlogic.vt}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  mainlogic

add wave *
view structure
view signals
run -all
