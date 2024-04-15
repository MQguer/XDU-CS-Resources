onerror {exit -code 1}
vlib work
vlog -work work Decoder.vo
vlog -work work Decoder.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Decoder_vlg_vec_tst -voptargs="+acc"
vcd file -direction Decoder.msim.vcd
vcd add -internal Decoder_vlg_vec_tst/*
vcd add -internal Decoder_vlg_vec_tst/i1/*
run -all
quit -f
