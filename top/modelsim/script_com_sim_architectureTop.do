vcom -work work C:/Vhdl/TP2/Codeur/src/codeur.VHD
vcom -work work C:/Users/dell/Downloads/Bascule_D.vhd
vcom -work work C:/Vhdl/TP2/registre_parallele_4bits/src/registre_parallele_4bits.VHD
vcom -work work C:/Vhdl/TP2/memoire/src/memoire.VHD
vcom -work work C:/Vhdl/TP2/comparateur_4bits/src/comparateur_4bits.VHD
vcom -work work C:/Vhdl/TP2/comparateur_16bits/src/comparateur_16bits.VHD
vcom -work work C:/Vhdl/TP2/Detection_caractère/src/detection_caractere.VHD
vcom -work work C:/Vhdl/TP2/Architecture_top/src/serrure_top.VHD
vcom -work work C:/Vhdl/TP2/Architecture_top/test_bench/serrure_top_tb.VHD
vsim -voptargs=+acc work.serrure_top_tb
add wave -position insertpoint sim:/serrure_top_tb/*