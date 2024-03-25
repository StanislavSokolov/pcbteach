onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_03/clk_tb
add wave -noupdate /tb_03/en_write_tb
add wave -noupdate /tb_03/en_read_tb
add wave -noupdate /tb_03/address_write_tb
add wave -noupdate /tb_03/data_write_tb
add wave -noupdate /tb_03/address_read_tb
add wave -noupdate /tb_03/data_read_tb
add wave -noupdate /tb_03/memory_tb
add wave -noupdate /tb_03/array
add wave -noupdate /tb_03/inLog
add wave -noupdate /tb_03/outLog
add wave -noupdate /tb_03/count
add wave -noupdate /tb_03/i
add wave -noupdate /tb_03/j
add wave -noupdate /tb_03/bufData
add wave -noupdate /tb_03/test/clk
add wave -noupdate /tb_03/test/en_write
add wave -noupdate /tb_03/test/address_write
add wave -noupdate /tb_03/test/data_write
add wave -noupdate /tb_03/test/en_read
add wave -noupdate /tb_03/test/address_read
add wave -noupdate /tb_03/test/data_read
add wave -noupdate /tb_03/test/memory
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {588 ns}
