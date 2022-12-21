vcom -work work C:/Vhdl/TP2/Detection_caractere/src/detection_caractere.VHD
vcom -work work C:/Vhdl/TP2/Detection_caractere/test_bench/detection_caractere_tb.VHD
vsim -voptargs=+acc work.detection_caractere_tb
add wave -position insertpoint sim:/detection_caractere_tb/*
