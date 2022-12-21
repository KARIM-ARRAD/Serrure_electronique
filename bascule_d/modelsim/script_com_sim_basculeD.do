vcom -work work C:/Users/dell/Downloads/Bascule_D.vhd
vcom -work work C:/Users/dell/Downloads/Bascule_D_tb.vhd
vsim -voptargs=+acc work.bascule_d_tb
add wave -position insertpoint sim:/bascule_d_tb/*
