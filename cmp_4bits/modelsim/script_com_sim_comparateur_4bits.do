vcom -work work C:/Vhdl/TP2/comparateur_4bits/src/comparateur_4bits.VHD
vcom -work work C:/Vhdl/TP2/comparateur_4bits/test_bench/comparateur_4bits_tb.VHD
vsim -voptargs=+acc work.comparateur_4bits_tb
add wave -position insertpoint sim:/comparateur_4bits_tb/*
