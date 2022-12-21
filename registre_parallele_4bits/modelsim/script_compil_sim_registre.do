vcom -work work C:/Users/dell/Downloads/Bascule_D.vhd
vcom -work work C:/Vhdl/TP2/registre_parallele_4bits/src/registre_parallele_4bits.VHD
vcom -work work C:/Users/dell/Desktop/registre_parallele_4bits_tb.VHD
vsim -voptargs=+acc work.registre_parallele_4bits_tb
add wave -position insertpoint sim:/registre_parallele_4bits_tb/*