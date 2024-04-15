onerror {exit -code 1}
vlib work
vlog -work work multiplexer.vo
vlog -work work Waveform1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.multiplexer_vlg_vec_tst -voptargs="+acc"
vcd file -direction multiplexer.msim.vcd
vcd add -internal multiplexer_vlg_vec_tst/*
vcd add -internal multiplexer_vlg_vec_tst/i1/*
run -all
quit -f
