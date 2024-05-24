onerror {exit -code 1}
vlib work
vlog -work work fourB.vo
vlog -work work fourB.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.fourB_vlg_vec_tst -voptargs="+acc"
vcd file -direction fourB.msim.vcd
vcd add -internal fourB_vlg_vec_tst/*
vcd add -internal fourB_vlg_vec_tst/i1/*
run -all
quit -f
