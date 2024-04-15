onerror {exit -code 1}
vlib work
vlog -work work hgh.vo
vlog -work work hgh.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.hgh_vlg_vec_tst -voptargs="+acc"
vcd file -direction hgh.msim.vcd
vcd add -internal hgh_vlg_vec_tst/*
vcd add -internal hgh_vlg_vec_tst/i1/*
run -all
quit -f
