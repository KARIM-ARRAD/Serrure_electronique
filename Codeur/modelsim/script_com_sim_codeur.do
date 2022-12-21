vcom -work work C:/Vhdl/TP2/Codeur/src/codeur.VHD
vcom -work work C:/Vhdl/TP2/Codeur/test_bench/codeur_tb.VHD
vsim -voptargs=+acc work.codeur_tb
add wave -position insertpoint sim:/codeur_tb/*
