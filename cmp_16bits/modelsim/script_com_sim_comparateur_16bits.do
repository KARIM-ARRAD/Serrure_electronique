vcom -work work C:/Vhdl/TP2/comparateur_4bits/src/comparateur_4bits.VHD
vcom -work work C:/Vhdl/TP2/comparateur_16bits/src/comparateur_16bits.VHD
vcom -work work C:/Vhdl/TP2/comparateur_16bits/test_bench/comparateur_16bits_tb.VHD
vsim -voptargs=+acc work.comparateur_16bits_tb
add wave -position insertpoint sim:/comparateur_16bits_tb/*
