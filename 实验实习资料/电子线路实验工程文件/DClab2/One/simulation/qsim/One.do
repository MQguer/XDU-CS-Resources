onerror {exit -code 1}
vlib work
vlog -work work One.vo
vlog -work work One.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.One_vlg_vec_tst -voptargs="+acc"
vcd file -direction One.msim.vcd
vcd add -internal One_vlg_vec_tst/*
vcd add -internal One_vlg_vec_tst/i1/*
run -all
quit -f
