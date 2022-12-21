vcom -work work C:/Users/dell/Downloads/Bascule_D.vhd
vcom -work work C:/Vhdl/TP2/registre_parallele_4bits/src/registre_parallele_4bits.VHD
vcom -work work C:/Vhdl/TP2/memoire/src/memoire.VHD
vcom -work work C:/Vhdl/TP2/memoire/test_bench/memoire_tb.VHD
vsim -voptargs=+acc work.memoire_tb
add wave -position insertpoint sim:/memoire_tb/*
